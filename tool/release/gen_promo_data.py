#!/usr/bin/env python3
"""Generate promo-video/data.js and build/release/counts.json from the app's Dart sources.

Run from hpp_flutter/:

    python3 tool/release/gen_promo_data.py           # write both files
    python3 tool/release/gen_promo_data.py --check   # exit 1 if either file is out of date, write nothing

Inputs (read only):
    lib/data/all_questions.dart      order of the question files (allQuestions)
    lib/data/questions_YYYY.dart     Question(id, exam, q, options, correct, explanation)
    lib/data/flashcards_data.dart    Flashcard(text, tags)
    lib/data/glossary_data.dart      glossary + glossaryAliases (Map<String, String>)
    lib/services/exam_modes.dart     examSize (questions per practice exam), examDaySeconds, passRatio
    promo-video/curation.json        which content the promo shows (see the "_about" entry there)

Everything that can be derived is derived (counts, flashcard positions, tag counts, glossary
matches, exam-day score ...). Only the selection itself lives in curation.json. The output is
byte-stable: same input, same bytes. Exit code 1 on parse or curation errors.

Python 3.9+, standard library only.
"""
from __future__ import annotations

import argparse
import difflib
import json
import math
import re
import sys
from fractions import Fraction
from pathlib import Path
from typing import Any, Dict, List, Optional, Tuple

ROOT = Path(__file__).resolve().parents[2]  # hpp_flutter/


class GenError(Exception):
    """Parse or curation error; reported without a traceback, exit code 1."""


# ----------------------------------------------------------------------------------------------
# Dart subset: tokenizer
# ----------------------------------------------------------------------------------------------
class Tok:
    __slots__ = ('kind', 'value', 'pos')

    def __init__(self, kind: str, value: Any, pos: int):
        self.kind, self.value, self.pos = kind, value, pos

    def __repr__(self) -> str:
        return f'{self.kind}:{self.value!r}'


_ESCAPES = {'n': '\n', 'r': '\r', 't': '\t', 'b': '\b', 'f': '\f', 'v': '\v'}
_NUM = re.compile(r'0[xX][0-9a-fA-F]+|(?:\d+\.?\d*|\.\d+)(?:[eE][+-]?\d+)?')
_IDENT = re.compile(r'[A-Za-z_$][A-Za-z0-9_$]*')
_OPS = ('...', '=>', '??', '?.', '~/')


class Source:
    def __init__(self, path: Path, text: Optional[str] = None):
        self.path = path
        try:
            self.text = path.read_text(encoding='utf-8') if text is None else text
        except FileNotFoundError:
            raise GenError(f'{path}: file not found') from None
        except UnicodeDecodeError as e:
            raise GenError(f'{path}: not UTF-8 ({e})') from None

    def where(self, pos: int) -> str:
        line = self.text.count('\n', 0, pos) + 1
        col = pos - (self.text.rfind('\n', 0, pos) + 1) + 1
        return f'{self.path}:{line}:{col}'

    def error(self, pos: int, msg: str) -> GenError:
        return GenError(f'{self.where(pos)}: {msg}')


def _read_string(src: Source, i: int, raw: bool) -> Tuple[str, int]:
    s, n = src.text, len(src.text)
    start = i - (1 if raw else 0)
    q = s[i]
    triple = s.startswith(q * 3, i)
    j = i + (3 if triple else 1)
    if triple:  # a first line that is only whitespace is not part of the string
        k = j
        while k < n and s[k] in ' \t':
            k += 1
        if s.startswith('\r\n', k):
            j = k + 2
        elif k < n and s[k] == '\n':
            j = k + 1
    out: List[str] = []
    while True:
        if j >= n:
            raise src.error(start, 'unterminated string literal')
        ch = s[j]
        if triple:
            if s.startswith(q * 3, j):
                return ''.join(out), j + 3
        elif ch == q:
            return ''.join(out), j + 1
        elif ch in '\r\n':
            raise src.error(start, 'line break in a single-line string literal')
        if ch == '\\' and not raw:
            if j + 1 >= n:
                raise src.error(j, 'dangling backslash')
            e = s[j + 1]
            if e in _ESCAPES:
                out.append(_ESCAPES[e])
                j += 2
            elif e == 'x':
                h = s[j + 2:j + 4]
                if not re.fullmatch(r'[0-9a-fA-F]{2}', h):
                    raise src.error(j, r'bad \x escape')
                out.append(chr(int(h, 16)))
                j += 4
            elif e == 'u':
                if s.startswith('{', j + 2):
                    end = s.find('}', j + 3)
                    h = s[j + 3:end] if end > 0 else ''
                    if not re.fullmatch(r'[0-9a-fA-F]{1,6}', h):
                        raise src.error(j, r'bad \u{...} escape')
                    out.append(chr(int(h, 16)))
                    j = end + 1
                else:
                    h = s[j + 2:j + 6]
                    if not re.fullmatch(r'[0-9a-fA-F]{4}', h):
                        raise src.error(j, r'bad \u escape')
                    out.append(chr(int(h, 16)))
                    j += 6
            elif e in '\r\n':
                raise src.error(j, 'backslash before a line break')
            else:  # \' \" \\ \$ and any other character stand for themselves
                out.append(e)
                j += 2
        elif ch == '$' and not raw:
            raise src.error(j, 'string interpolation is not supported in data files')
        else:
            out.append(ch)
            j += 1


def tokenize(src: Source) -> List[Tok]:
    s, n = src.text, len(src.text)
    toks: List[Tok] = []
    i = 0
    while i < n:
        c = s[i]
        if c in ' \t\r\n﻿':
            i += 1
        elif s.startswith('//', i):
            j = s.find('\n', i)
            i = n if j < 0 else j
        elif s.startswith('/*', i):
            depth, j = 1, i + 2
            while depth:
                if j >= n:
                    raise src.error(i, 'unterminated block comment')
                if s.startswith('/*', j):
                    depth, j = depth + 1, j + 2
                elif s.startswith('*/', j):
                    depth, j = depth - 1, j + 2
                else:
                    j += 1
            i = j
        elif c == 'r' and i + 1 < n and s[i + 1] in '\'"':
            v, j = _read_string(src, i + 1, raw=True)
            toks.append(Tok('str', v, i))
            i = j
        elif c in '\'"':
            v, j = _read_string(src, i, raw=False)
            toks.append(Tok('str', v, i))
            i = j
        elif c.isdigit() or (c == '.' and i + 1 < n and s[i + 1].isdigit()):
            m = _NUM.match(s, i)
            txt = m.group(0)
            if txt.lower().startswith('0x'):
                v: Any = int(txt, 16)
            elif re.fullmatch(r'\d+', txt):
                v = int(txt)
            else:
                v = float(txt)
            toks.append(Tok('num', v, i))
            i = m.end()
        elif c.isalpha() or c in '_$':
            m = _IDENT.match(s, i)
            toks.append(Tok('id', m.group(0), i))
            i = m.end()
        else:
            op = next((o for o in _OPS if s.startswith(o, i)), c)
            toks.append(Tok('op', op, i))
            i += len(op)
    toks.append(Tok('eof', None, n))
    return toks


# ----------------------------------------------------------------------------------------------
# Dart subset: parser for const data (literals, lists, maps, constructor calls)
# ----------------------------------------------------------------------------------------------
class Call:
    """A constructor call such as Question(id: 1, ...)."""

    def __init__(self, name: str, args: List[Any], kwargs: Dict[str, Any], pos: int):
        self.name, self.args, self.kwargs, self.pos = name, args, kwargs, pos


class Parser:
    def __init__(self, src: Source):
        self.src = src
        self.toks = tokenize(src)
        self.i = 0

    def peek(self, k: int = 0) -> Tok:
        return self.toks[min(self.i + k, len(self.toks) - 1)]

    def take(self) -> Tok:
        t = self.toks[self.i]
        self.i = min(self.i + 1, len(self.toks) - 1)
        return t

    def is_op(self, v: str, k: int = 0) -> bool:
        t = self.peek(k)
        return t.kind == 'op' and t.value == v

    def expect_op(self, v: str) -> Tok:
        t = self.take()
        if t.kind != 'op' or t.value != v:
            raise self.src.error(t.pos, f'expected {v!r}, found {t.value!r}')
        return t

    def skip_type_args(self) -> None:
        depth = 0
        while True:
            t = self.take()
            if t.kind == 'eof':
                raise self.src.error(t.pos, 'unterminated type arguments')
            if t.kind == 'op' and t.value == '<':
                depth += 1
            elif t.kind == 'op' and t.value == '>':
                depth -= 1
                if depth == 0:
                    return

    def value(self) -> Any:
        t = self.peek()
        if t.kind == 'id' and t.value in ('const', 'new'):
            self.take()
            t = self.peek()
        if t.kind == 'str':
            parts = []
            while self.peek().kind == 'str':  # adjacent literals concatenate
                parts.append(self.take().value)
            return ''.join(parts)
        if t.kind == 'num':
            return self.take().value
        if self.is_op('-') and self.peek(1).kind == 'num':
            self.take()
            return -self.take().value
        if t.kind == 'id' and t.value in ('true', 'false', 'null'):
            self.take()
            return {'true': True, 'false': False, 'null': None}[t.value]
        if self.is_op('<'):
            self.skip_type_args()
            t = self.peek()
        if self.is_op('['):
            return self.list_literal()
        if self.is_op('{'):
            return self.map_literal()
        if t.kind == 'id':
            return self.call()
        raise self.src.error(t.pos, f'unsupported expression starting with {t.value!r}')

    def list_literal(self) -> list:
        self.expect_op('[')
        out = []
        while not self.is_op(']'):
            out.append(self.value())
            if not self.is_op(']'):
                self.expect_op(',')
        self.take()
        return out

    def map_literal(self) -> dict:
        self.expect_op('{')
        out: Dict[Any, Any] = {}
        while not self.is_op('}'):
            kt = self.peek()
            k = self.value()
            self.expect_op(':')
            v = self.value()
            if k in out:
                raise self.src.error(kt.pos, f'duplicate map key {k!r}')
            out[k] = v
            if not self.is_op('}'):
                self.expect_op(',')
        self.take()
        return out

    def call(self) -> Call:
        t = self.take()
        name = t.value
        while self.is_op('.'):  # Named.constructor
            self.take()
            nt = self.take()
            if nt.kind != 'id':
                raise self.src.error(nt.pos, 'expected an identifier after "."')
            name += '.' + nt.value
        if self.is_op('<'):
            self.skip_type_args()
        if not self.is_op('('):
            raise self.src.error(t.pos, f'unsupported expression {name!r} (only literals and constructor calls)')
        self.take()
        args: List[Any] = []
        kwargs: Dict[str, Any] = {}
        while not self.is_op(')'):
            if self.peek().kind == 'id' and self.is_op(':', 1):
                key = self.take().value
                self.take()
                if key in kwargs:
                    raise self.src.error(t.pos, f'duplicate argument {key!r}')
                kwargs[key] = self.value()
            else:
                args.append(self.value())
            if not self.is_op(')'):
                self.expect_op(',')
        self.take()
        return Call(name, args, kwargs, t.pos)

    def declarations(self) -> Dict[str, Tuple[Any, int]]:
        """Top-level `const|final|var [Type] name = value;` → {name: (value, pos)}; imports are skipped."""
        out: Dict[str, Tuple[Any, int]] = {}
        while self.peek().kind != 'eof':
            t = self.take()
            if t.kind == 'id' and t.value in ('import', 'export', 'part', 'library'):
                while not self.is_op(';'):
                    if self.peek().kind == 'eof':
                        raise self.src.error(t.pos, 'missing ";"')
                    self.take()
                self.take()
                continue
            if t.kind == 'id' and t.value in ('const', 'final', 'var', 'late', 'static'):
                depth, name = 0, None
                while True:
                    u = self.take()
                    if u.kind == 'eof':
                        raise self.src.error(t.pos, 'declaration without "="')
                    if u.kind == 'op' and u.value == '<':
                        depth += 1
                    elif u.kind == 'op' and u.value == '>':
                        depth -= 1
                    elif u.kind == 'op' and u.value == '=' and depth == 0:
                        break
                    elif u.kind == 'id':
                        name = u.value
                    elif u.kind == 'op' and u.value == '?':
                        pass
                    elif not (u.kind == 'op' and u.value == ','):
                        raise self.src.error(u.pos, f'unexpected {u.value!r} in declaration')
                if not name:
                    raise self.src.error(t.pos, 'declaration without a name')
                v = self.value()
                self.expect_op(';')
                if name in out:
                    raise self.src.error(t.pos, f'duplicate declaration {name!r}')
                out[name] = (v, t.pos)
                continue
            raise self.src.error(t.pos, f'unexpected top-level token {t.value!r}')
        return out


def parse_dart(path: Path) -> Tuple[Source, Dict[str, Tuple[Any, int]]]:
    src = Source(path)
    return src, Parser(src).declarations()


def _decl(src: Source, decls: Dict[str, Tuple[Any, int]], name: str) -> Any:
    if name not in decls:
        raise GenError(f'{src.path}: no top-level declaration {name!r} (found: {", ".join(decls) or "none"})')
    return decls[name][0]


# ----------------------------------------------------------------------------------------------
# App model
# ----------------------------------------------------------------------------------------------
def _fields(src: Source, call: Any, cls: str, required: List[str], optional: Dict[str, Any]) -> Dict[str, Any]:
    if not isinstance(call, Call) or call.name != cls:
        raise GenError(f'{src.path}: expected {cls}(...), found {type(call).__name__}')
    if call.args:
        raise src.error(call.pos, f'{cls}: positional arguments are not supported')
    unknown = set(call.kwargs) - set(required) - set(optional)
    if unknown:
        raise src.error(call.pos, f'{cls}: unknown argument(s) {", ".join(sorted(unknown))}')
    missing = [k for k in required if k not in call.kwargs]
    if missing:
        raise src.error(call.pos, f'{cls}: missing argument(s) {", ".join(missing)}')
    out = dict(optional)
    out.update(call.kwargs)
    return out


def _is_str_list(v: Any) -> bool:
    return isinstance(v, list) and all(isinstance(x, str) for x in v)


def load_questions(root: Path) -> List[Dict[str, Any]]:
    """allQuestions in app order; every entry gets its Dart `id`, `exam`, `n` (number within the exam) and `file`."""
    aq = Source(root / 'lib/data/all_questions.dart')
    names = re.findall(r'\.\.\.\s*(questions(\d{4}))\s*\.map\s*\(', aq.text)
    if not names:
        raise GenError(f'{aq.path}: no "...questionsYYYY.map(" spreads found')
    prefixes = re.findall(r"int\.parse\('(\d{4})\$\{q\.id\}'\)", aq.text)
    if prefixes != [y for _, y in names]:
        raise GenError(f'{aq.path}: id prefixes {prefixes} do not match the question lists {[y for _, y in names]}')
    out: List[Dict[str, Any]] = []
    for var, year in names:
        path = root / f'lib/data/questions_{year}.dart'
        src, decls = parse_dart(path)
        items = _decl(src, decls, var)
        if not isinstance(items, list):
            raise GenError(f'{path}: {var} is not a list')
        seen = set()
        for call in items:
            f = _fields(src, call, 'Question', ['id', 'exam', 'q', 'options', 'correct', 'explanation'], {})
            where = src.where(call.pos)
            if not isinstance(f['id'], int) or isinstance(f['id'], bool):
                raise GenError(f'{where}: id must be an int')
            if f['id'] in seen:
                raise GenError(f'{where}: duplicate id {f["id"]}')
            seen.add(f['id'])
            for k in ('exam', 'q', 'explanation'):
                if not isinstance(f[k], str) or not f[k].strip():
                    raise GenError(f'{where}: {k} must be a non-empty string')
            if not _is_str_list(f['options']) or len(f['options']) < 2:
                raise GenError(f'{where}: options must be a list of at least two strings')
            corr = f['correct']
            idx = corr if isinstance(corr, list) else [corr]
            if not idx or not all(isinstance(x, int) and not isinstance(x, bool) and 0 <= x < len(f['options']) for x in idx):
                raise GenError(f'{where}: correct must be an option index or a list of option indices')
            if not f['exam'].endswith(year):
                raise GenError(f'{where}: exam {f["exam"]!r} is not from {year}')
            out.append({
                'id': f['id'], 'exam': f['exam'], 'q': f['q'], 'options': f['options'], 'correct': corr,
                'correctIndices': idx, 'explanation': f['explanation'], 'file': path.name,
            })
    listed = {f'questions_{y}.dart' for _, y in names}
    for p in sorted((root / 'lib/data').glob('questions_*.dart')):
        if p.name not in listed:
            print(f'gen_promo_data: warning: {p} is not part of allQuestions', file=sys.stderr)
    counter: Dict[str, int] = {}
    for q in out:  # examDayQuestionIds(label): number within the exam = position in allQuestions order
        counter[q['exam']] = counter.get(q['exam'], 0) + 1
        q['n'] = counter[q['exam']]
    return out


def load_flashcards(root: Path) -> List[Dict[str, Any]]:
    src, decls = parse_dart(root / 'lib/data/flashcards_data.dart')
    items = _decl(src, decls, 'allFlashcards')
    if not isinstance(items, list):
        raise GenError(f'{src.path}: allFlashcards is not a list')
    out = []
    titles: Dict[str, int] = {}
    for i, call in enumerate(items):
        f = _fields(src, call, 'Flashcard', ['text'], {'tags': []})
        where = src.where(call.pos)
        if not isinstance(f['text'], str) or not f['text'].strip():
            raise GenError(f'{where}: text must be a non-empty string')
        if not _is_str_list(f['tags']):
            raise GenError(f'{where}: tags must be a list of strings')
        title = f['text'].split('\n')[0]
        if title in titles:  # the app stores hidden cards by title (Flashcard.title)
            raise GenError(f'{where}: duplicate flashcard title {title!r} (also card {titles[title]})')
        titles[title] = i + 1
        out.append({'n': i + 1, 'title': title, 'text': f['text'], 'tags': f['tags']})
    return out


def load_glossary(root: Path) -> Tuple[Dict[str, str], Dict[str, str]]:
    src, decls = parse_dart(root / 'lib/data/glossary_data.dart')
    gl = _decl(src, decls, 'glossary')
    al = decls.get('glossaryAliases', ({}, 0))[0]
    for name, m in (('glossary', gl), ('glossaryAliases', al)):
        if not isinstance(m, dict) or not all(isinstance(k, str) and isinstance(v, str) for k, v in m.items()):
            raise GenError(f'{src.path}: {name} must be a Map<String, String>')
    return gl, al


def _const_int_expr(src: Source, name: str) -> int:
    m = re.search(rf'\bconst\s+int\s+{name}\s*=\s*([0-9\s*]+);', src.text)
    if not m:
        raise GenError(f'{src.path}: "const int {name} = ...;" not found')
    factors = [f.strip() for f in m.group(1).split('*')]
    if not all(re.fullmatch(r'\d+', f) for f in factors):
        raise GenError(f'{src.path}: cannot evaluate {name} = {m.group(1).strip()}')
    return math.prod(int(f) for f in factors)


def load_constants(root: Path) -> Dict[str, Any]:
    modes = Source(root / 'lib/services/exam_modes.dart')
    m = re.search(r'\bconst\s+double\s+passRatio\s*=\s*([0-9.]+)\s*;', modes.text)
    if not m:
        raise GenError(f'{modes.path}: "const double passRatio = ...;" not found')
    seconds = _const_int_expr(modes, 'examDaySeconds')
    if seconds % 60:
        raise GenError(f'{modes.path}: examDaySeconds = {seconds} is not a whole number of minutes')
    return {'examSize': _const_int_expr(modes, 'examSize'), 'examDayMinutes': seconds // 60, 'passRatio': Fraction(m.group(1))}


def pass_mark(total: int, ratio: Fraction) -> int:
    return math.ceil(total * ratio)  # exam_modes.dart passMark()


_MONTHS = {'März': 3, 'Oktober': 10}  # exam_modes.dart _monthOrder


def past_exam_labels(questions: List[Dict[str, Any]]) -> List[str]:
    """exam_modes.dart pastExamLabels(): every exam, newest first."""
    labels = list(dict.fromkeys(q['exam'] for q in questions))

    def key(label: str) -> int:
        parts = label.split(' ')
        year = int(parts[-1]) if re.fullmatch(r'-?\d+', parts[-1]) else 0
        return year * 100 + _MONTHS.get(parts[0], 0)

    return sorted(labels, key=key, reverse=True)


_LETTER = re.compile(r'[a-zäöüß]')


def find_glossary_terms(text: str, glossary: Dict[str, str], aliases: Dict[str, str]) -> List[Tuple[str, str]]:
    """glossary_lookup.dart findGlossaryTerms(): longest match wins, abbreviations only as whole words."""
    lower = text.lower()

    def is_abbr(t: str) -> bool:
        return t == t.upper()

    def letter_at(i: int) -> bool:
        return 0 <= i < len(lower) and bool(_LETTER.match(lower[i]))

    cands = [(k.lower(), k, is_abbr(k)) for k in glossary]
    cands += [(a.lower(), v, is_abbr(a)) for a, v in aliases.items() if v in glossary]
    cands.sort(key=lambda c: -len(c[0]))
    taken: List[Tuple[int, int]] = []
    keys: Dict[str, None] = {}
    for pat, key, whole in cands:
        if not pat:
            continue
        start = lower.find(pat)
        while start != -1:
            s, e = start, start + len(pat)
            if not (whole and (letter_at(s - 1) or letter_at(e))) and not any(s >= a and e <= b for a, b in taken):
                taken.append((s, e))
                keys[key] = None
            start = lower.find(pat, start + 1)
    return sorted(((k, glossary[k]) for k in keys), key=lambda kv: kv[0].lower())


# ----------------------------------------------------------------------------------------------
# Curation → data.js
# ----------------------------------------------------------------------------------------------
class Content:
    def __init__(self, root: Path):
        self.questions = load_questions(root)
        self.flashcards = load_flashcards(root)
        self.glossary, self.aliases = load_glossary(root)
        self.constants = load_constants(root)
        self.labels = past_exam_labels(self.questions)
        self.by_key = {(q['exam'], q['id']): q for q in self.questions}
        self.by_title = {c['title']: c for c in self.flashcards}

    def question(self, key: Any, ctx: str) -> Dict[str, Any]:
        if not (isinstance(key, list) and len(key) == 2 and isinstance(key[0], str) and isinstance(key[1], int)):
            raise GenError(f'curation {ctx}: a question key is ["<exam label>", <Question.id>], got {key!r}')
        q = self.by_key.get((key[0], key[1]))
        if q is None:
            if key[0] not in self.labels:
                raise GenError(f'curation {ctx}: unknown exam label {key[0]!r} (known: {", ".join(self.labels)})')
            raise GenError(f'curation {ctx}: {key[0]} has no question with id {key[1]}')
        return q

    def card(self, title: Any, ctx: str) -> Dict[str, Any]:
        c = self.by_title.get(title) if isinstance(title, str) else None
        if c is None:
            near = difflib.get_close_matches(str(title), list(self.by_title), n=3, cutoff=0.4)
            hint = f' – similar titles: {"; ".join(near)}' if near else ''
            raise GenError(f'curation {ctx}: no flashcard titled {title!r}{hint}')
        return c

    def term(self, key: Any, ctx: str, alias_ok: bool = False) -> str:
        """A glossary key (or, with alias_ok, a glossaryAliases spelling the app also recognises)."""
        known = self.glossary if not alias_ok else {**self.glossary, **{a: v for a, v in self.aliases.items() if v in self.glossary}}
        if not isinstance(key, str) or key not in known:
            near = difflib.get_close_matches(str(key), list(known), n=3)
            hint = f' – similar: {", ".join(near)}' if near else ''
            raise GenError(f'curation {ctx}: {key!r} is not a glossary key{" or alias" if alias_ok else ""}{hint}')
        return key


def _expect(cur: Dict[str, Any], key: str, typ: type) -> Any:
    if key not in cur or not isinstance(cur[key], typ):
        raise GenError(f'curation: "{key}" missing or not a {typ.__name__}')
    return cur[key]


def build(content: Content, cur: Dict[str, Any]) -> Tuple[str, Dict[str, Any]]:
    C = content
    stems = []
    for i, key in enumerate(_expect(cur, 'stems', list)):
        q = C.question(key, f'stems[{i}]')
        stems.append([q['exam'].upper(), q['n'], q['q'].split('\n')[0]])

    flash = []
    for i, title in enumerate(_expect(cur, 'flash', list)):
        c = C.card(title, f'flash[{i}]')
        flash.append({'n': c['n'], 'text': c['text'], 'tags': c['tags']})

    gloss = {C.term(k, f'gloss[{i}]'): C.glossary[k] for i, k in enumerate(_expect(cur, 'gloss', list))}
    terms = [C.term(k, f'terms[{i}]', alias_ok=True) for i, k in enumerate(_expect(cur, 'terms', list))]

    topic_counts: Dict[str, int] = {}
    for c in C.flashcards:  # first appearance order
        for t in c['tags']:
            topic_counts[t] = topic_counts.get(t, 0) + 1
    tags = sorted(topic_counts)  # main.dart _showTagFilterAndNavigate: allTags..sort()

    hero = C.question(_expect(cur, 'qtermsQuestion', list), 'qtermsQuestion')
    qterms = [list(kv) for kv in find_glossary_terms(f'{hero["q"]} {" ".join(hero["options"])}', C.glossary, C.aliases)]

    montage = []
    for i, m in enumerate(_expect(cur, 'montage', list)):
        if not isinstance(m, dict) or not isinstance(m.get('num'), int):
            raise GenError(f'curation montage[{i}]: expected {{"num": int, "question": [...], "wrong": int|null}}')
        q = C.question(m.get('question'), f'montage[{i}]')
        wrong = m.get('wrong')
        if wrong is not None and not (isinstance(wrong, int) and 0 <= wrong < len(q['options'])):
            raise GenError(f'curation montage[{i}]: wrong must be null or an option index')
        montage.append({'num': m['num'], 'q': q['q'], 'options': q['options'], 'correct': q['correct'], 'wrong': wrong, 'expl': q['explanation']})

    gl = _expect(cur, 'glossList', dict)
    head_n = gl.get('head')
    if not isinstance(head_n, int) or head_n < 1:
        raise GenError('curation glossList.head: number of glossary entries shown at the top of the list')
    ordered = sorted(C.glossary.items(), key=lambda kv: kv[0].lower())  # glossary_screen.dart
    anh = C.term(gl.get('anhedonie'), 'glossList.anhedonie')

    ed = _expect(cur, 'examDay', dict)
    label = ed.get('label')
    day_qs = [q for q in C.questions if q['exam'] == label]
    if not day_qs:
        raise GenError(f'curation examDay.label: unknown exam {label!r}')
    picks = ed.get('pick')
    if not isinstance(picks, dict):
        raise GenError('curation examDay.pick: {"<Question.id>": [option indices], ...} for every question of the exam')
    ids = {str(q['id']) for q in day_qs}
    extra = sorted(set(picks) - ids, key=lambda s: (len(s), s))
    missing = [q['id'] for q in day_qs if str(q['id']) not in picks]
    if extra or missing:
        raise GenError(f'curation examDay.pick: {label} – missing ids {missing}, unknown ids {extra}')
    questions = []
    for q in day_qs:
        pick = picks[str(q['id'])]
        if not (isinstance(pick, list) and pick and all(isinstance(x, int) and 0 <= x < len(q['options']) for x in pick)):
            raise GenError(f'curation examDay.pick["{q["id"]}"]: a non-empty list of option indices')
        questions.append({
            'n': q['n'], 'q': q['q'], 'options': q['options'], 'multi': len(q['correctIndices']) > 1,
            'pick': pick, 'ok': sorted(pick) == sorted(q['correctIndices']),  # exam_modes.dart isAnswerCorrect
        })
    exam_sizes = {lb: sum(1 for q in C.questions if q['exam'] == lb) for lb in C.labels}
    last = {}
    for lb, score in (ed.get('last') or {}).items():
        if lb not in exam_sizes or not isinstance(score, int) or not 0 <= score <= exam_sizes[lb]:
            raise GenError(f'curation examDay.last[{lb!r}]: a known exam label with a score from 0 to its question count')
        last[lb] = [score, exam_sizes[lb]]
    exam_day = {'label': label, 'labels': C.labels, 'last': last, 'questions': questions, 'score': sum(q['ok'] for q in questions)}

    k = C.constants
    pct = k['passRatio'] * 100
    if pct.denominator != 1:
        raise GenError(f'passRatio {k["passRatio"]} is not a whole percentage')
    pass_pct = int(pct)
    years = [int(lb.split(' ')[-1]) for lb in C.labels if re.fullmatch(r'\d{4}', lb.split(' ')[-1])]
    if not years:
        raise GenError('no exam label ends with a year')
    counts = {
        'questions': len(C.questions),
        'exams': len(C.labels),
        'flashcards': len(C.flashcards),
        'glossary': len(C.glossary),
        'topics': len(tags),
        'examSize': k['examSize'],
        'examDayQuestions': len(day_qs),
        'examDayMinutes': k['examDayMinutes'],
        'examDayPassMark': pass_mark(len(day_qs), k['passRatio']),
        'passPercent': pass_pct,
        'firstYear': min(years),
        'lastYear': max(years),
    }

    def js(v: Any) -> str:
        return json.dumps(v, ensure_ascii=False)

    main = {'stems': stems, 'flash': flash, 'gloss': gloss, 'terms': terms}
    appstore = {'tags': tags, 'qterms': qterms, 'glossCount': len(C.glossary), 'montage': montage}
    gloss_list = {'head': [list(kv) for kv in ordered[:head_n]], 'anhedonie': [anh, C.glossary[anh]]}
    year = label.split(' ')[-1]
    text = (
        '// Generated by tool/release/gen_promo_data.py from lib/data/*.dart + promo-video/curation.json – do not edit.\n'
        f'window.DATA = {json.dumps(main, indent=1, ensure_ascii=False)};\n'
        f'window.DATA.topicCounts = {js(topic_counts)};\n'
        f'window.DATA.appstore = {js(appstore)};\n'
        f'window.DATA.glossList = {js(gloss_list)};\n'
        '// App totals and constants (lib/services/exam_modes.dart) – use these instead of fixed numbers.\n'
        f'window.DATA.counts = {js(counts)};\n'
        '\n'
        f'// Prüfungstag ({label}) – generated from lib/data/questions_{year}.dart; "pick" = the answer shown in the preview.\n'
        f'window.DATA.examDay = {js(exam_day)};\n'
    )
    return text, counts


def main(argv: Optional[List[str]] = None) -> int:
    ap = argparse.ArgumentParser(description=__doc__.split('\n\n')[0])
    ap.add_argument('--root', type=Path, default=ROOT, help='project root with lib/ (default: hpp_flutter)')
    ap.add_argument('--curation', type=Path, default=ROOT / 'promo-video/curation.json')
    ap.add_argument('--out', type=Path, default=ROOT / 'promo-video/data.js')
    ap.add_argument('--counts', type=Path, default=ROOT / 'build/release/counts.json')
    ap.add_argument('--check', action='store_true', help='only compare, exit 1 if an output is out of date')
    a = ap.parse_args(argv)
    try:
        try:
            cur = json.loads(a.curation.read_text(encoding='utf-8'))
        except FileNotFoundError:
            raise GenError(f'{a.curation}: file not found') from None
        except json.JSONDecodeError as e:
            raise GenError(f'{a.curation}: invalid JSON ({e})') from None
        data_js, counts = build(Content(a.root.resolve()), cur)
    except GenError as e:
        print(f'gen_promo_data: error: {e}', file=sys.stderr)
        return 1
    counts_json = json.dumps(counts, indent=2, ensure_ascii=False) + '\n'
    outputs = [(a.out, data_js), (a.counts, counts_json)]
    if a.check:
        stale = [p for p, txt in outputs if not p.exists() or p.read_bytes() != txt.encode('utf-8')]
        for p in stale:
            print(f'gen_promo_data: {p} is out of date – run python3 tool/release/gen_promo_data.py', file=sys.stderr)
        return 1 if stale else 0
    for p, txt in outputs:
        p.parent.mkdir(parents=True, exist_ok=True)
        if not p.exists() or p.read_bytes() != txt.encode('utf-8'):
            p.write_bytes(txt.encode('utf-8'))
    print(f'gen_promo_data: {counts["questions"]} Fragen · {counts["exams"]} Prüfungen · {counts["flashcards"]} Lernkarten · '
          f'{counts["glossary"]} Begriffe → {a.out.name}, {a.counts}')
    return 0


if __name__ == '__main__':
    sys.exit(main())
