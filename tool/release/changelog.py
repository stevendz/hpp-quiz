#!/usr/bin/env python3
"""Changelog für App Store und Google Play per Claude CLI erzeugen und freigeben lassen.

  python3 tool/release/changelog.py            # erzeugt, zeigt an, fragt nach Freigabe
  YES=1 python3 tool/release/changelog.py      # ohne Rückfrage übernehmen (nicht empfohlen)

Ergebnis (Quelle für texts.py, wird mit dem Release committet):
  promo-video/appstore-texte/neu-in-dieser-version.txt       – App Store
  promo-video/appstore-texte/neu-in-dieser-version-play.txt  – Google Play
"""
import json
import os
import re
import subprocess
import sys
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
PROMPT = Path(__file__).with_name('changelog_prompt.md')
NOTES = {
    'ios': ROOT / 'promo-video' / 'appstore-texte' / 'neu-in-dieser-version.txt',
    'android': ROOT / 'promo-video' / 'appstore-texte' / 'neu-in-dieser-version-play.txt',
}
LIMITS = {'ios': 4000, 'android': 500}
MAX_DIFF = 60_000


def git(*args, check=True):
    return subprocess.run(['git', *args], cwd=ROOT, capture_output=True, text=True, check=check).stdout


def last_tag():
    for tag in git('tag', '--list', 'v*', '--sort=-v:refname').split():
        if re.fullmatch(r'v\d+\.\d+\.\d+', tag):
            return tag
    sys.exit('Kein Release-Tag (vX.Y.Z) gefunden – ohne Ausgangspunkt kein Changelog.')


def counts_at(ref):
    """Inhaltszahlen zu einem Git-Stand (ref=None: Arbeitskopie)."""
    def read(path):
        if ref is None:
            p = ROOT / path
            return p.read_text(encoding='utf-8') if p.exists() else ''
        return git('show', f'{ref}:{path}', check=False)

    files = git('ls-tree', '--name-only', ref or 'HEAD', 'lib/data/').split() if ref else \
        [str(p.relative_to(ROOT)) for p in (ROOT / 'lib' / 'data').glob('*.dart')]
    questions = sum(read(f).count('Question(') for f in files if re.search(r'questions_\d{4}\.dart$', f))
    exams = set()
    for f in files:
        if re.search(r'questions_\d{4}\.dart$', f):
            exams |= set(re.findall(r"exam:\s*'([^']+)'", read(f)))
    flash = read('lib/data/flashcards_data.dart').count('Flashcard(') - read('lib/data/flashcards_data.dart').count('class Flashcard(')
    glossary_src = read('lib/data/glossary_data.dart')
    block = re.search(r'Map<String, String> glossary = \{(.*?)^\};', glossary_src, re.S | re.M)
    gloss = len(re.findall(r"^\s{2}'(?:[^'\\]|\\.)+':", block.group(1), re.M)) if block else 0
    return {'Prüfungsfragen': questions, 'Prüfungen': len(exams), 'Lernkarten': flash, 'Glossarbegriffe': gloss}


def context(tag):
    before, now = counts_at(tag), counts_at(None)
    lines = [f'Letztes Release: {tag}', '', '## Inhaltszahlen (vorher → jetzt)']
    lines += [f'- {k}: {before[k]} → {now[k]}' for k in now]
    lines += ['', '## Commits seit dem letzten Release', git('log', f'{tag}..HEAD', '--no-merges', '--format=- %s%n%b').strip() or '(keine)']
    lines += ['', '## Geänderte Dateien', git('diff', '--stat=120', f'{tag}..HEAD', '--', '.', ':!promo-video', ':!fastlane', ':!tool').strip()]
    diff = git('diff', f'{tag}..HEAD', '--', 'lib', ':!lib/data')
    if len(diff) > MAX_DIFF:
        diff = diff[:MAX_DIFF] + '\n[… gekürzt …]'
    lines += ['', '## Code-Diff (App, ohne Inhaltsdaten)', diff or '(keine Code-Änderungen)']
    data_stat = git('diff', '--stat=120', f'{tag}..HEAD', '--', 'lib/data').strip()
    lines += ['', '## Geänderte Inhaltsdateien', data_stat or '(keine)']
    prev = git('show', f'{tag}:promo-video/appstore-texte/neu-in-dieser-version.txt', check=False).strip()
    if prev:
        lines += ['', '## Stilbeispiel: Hinweise des vorherigen Release', prev]
    return '\n'.join(lines)


def generate(ctx):
    cmd = ['claude', '-p', PROMPT.read_text(encoding='utf-8'), '--no-session-persistence',
           '--disallowedTools', 'Bash', 'Edit', 'Write', 'Read', 'Glob', 'Grep', 'WebFetch', 'WebSearch', 'Task', 'Agent']
    r = subprocess.run(cmd, input=ctx, capture_output=True, text=True, cwd=ROOT)
    if r.returncode != 0:
        sys.exit(f'Claude CLI fehlgeschlagen:\n{r.stderr or r.stdout}')
    raw = r.stdout.strip()
    raw = re.sub(r'^```(?:json)?\s*|\s*```$', '', raw)
    m = re.search(r'\{.*\}', raw, re.S)
    try:
        data = json.loads(m.group(0) if m else raw)
    except (json.JSONDecodeError, AttributeError):
        sys.exit(f'Antwort von Claude ist kein JSON:\n{r.stdout}')
    return {k: data[k].strip() for k in ('ios', 'android')}


def problems(cl):
    return [f'{k}: {len(cl[k])} Zeichen (max. {LIMITS[k]})' for k in LIMITS if len(cl[k]) > LIMITS[k]]


def show(cl):
    for k, title in (('ios', 'App Store'), ('android', 'Google Play')):
        print(f'\n──── {title} ({len(cl[k])}/{LIMITS[k]} Zeichen) ────\n{cl[k]}')
    for p in problems(cl):
        print(f'\n⚠ {p}')


def edit(cl):
    sep = '\n\n===== GOOGLE PLAY (ab hier, max. 500 Zeichen) =====\n\n'
    with tempfile.NamedTemporaryFile('w+', suffix='.txt', delete=False, encoding='utf-8') as f:
        f.write(cl['ios'] + sep + cl['android'] + '\n')
        path = f.name
    editor = os.environ.get('EDITOR') or 'nano'
    subprocess.run(f'{editor} "{path}"', shell=True, stdin=open('/dev/tty'), stdout=open('/dev/tty', 'w'))
    text = Path(path).read_text(encoding='utf-8')
    os.unlink(path)
    if sep.strip() not in text:
        print('Trennzeile fehlt – Änderung verworfen.')
        return cl
    ios, android = text.split(sep.strip(), 1)
    return {'ios': ios.strip(), 'android': android.strip()}


def ask(prompt):
    with open('/dev/tty') as tty:
        print(prompt, end='', flush=True)
        return tty.readline().strip().lower()


def main():
    tag = last_tag()
    ctx = context(tag)
    print(f'Changelog seit {tag} wird mit Claude erstellt …')
    cl = generate(ctx)
    while True:
        show(cl)
        if os.environ.get('YES') == '1' and not problems(cl):
            break
        choice = ask('\n[j] übernehmen  [b] bearbeiten  [n] neu erzeugen  [a] abbrechen: ')
        if choice == 'j':
            if problems(cl):
                print('Erst die Längenprobleme beheben.')
                continue
            break
        if choice == 'b':
            cl = edit(cl)
        elif choice == 'n':
            cl = generate(ctx)
        elif choice == 'a':
            sys.exit('Abgebrochen.')
    for k, path in NOTES.items():
        path.write_text(cl[k] + '\n', encoding='utf-8')
        print(f'Gespeichert: {path.relative_to(ROOT)}')


if __name__ == '__main__':
    main()
