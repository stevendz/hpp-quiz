#!/usr/bin/env python3
"""Nächste Release-Version bestimmen und in pubspec.yaml schreiben.

Schema: jede Stelle einstellig, Build-Nummer = Major·100 + Minor·10 + Patch
        1.1.2 → 112, 1.1.3 → 113, 2.4.5 → 245
Hochzählen vom letzten Release-Tag (vX.Y.Z) aus, mit Überlauf:
        patch: 1.1.8 → 1.1.9 → 1.2.0      (1.9.9 → 2.0.0)
        minor: 1.1.4 → 1.2.0              (1.9.x → 2.0.0)
        major: 1.1.4 → 2.0.0
Steht in pubspec.yaml bereits ein höherer Versionsname (abgebrochener Release), gewinnt dieser.

  python3 tool/release/version.py --bump patch [--version X.Y.Z] [--write]
Ausgabe (stdout): "1.1.2 112"
"""
import argparse
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
PUBSPEC = ROOT / 'pubspec.yaml'
VERSION_RE = re.compile(r'^version:\s*(\d+)\.(\d+)\.(\d+)\+(\d+)\s*$', re.M)


def parse(name):
    m = re.fullmatch(r'v?(\d+)\.(\d+)\.(\d+)', name.strip())
    if not m:
        sys.exit(f'Ungültige Version: {name!r} (erwartet X.Y.Z)')
    return tuple(int(x) for x in m.groups())


def check_digits(v):
    if any(x > 9 for x in v):
        sys.exit(f'Version {".".join(map(str, v))}: jede Stelle muss 0–9 sein (Build-Nummer = Major·100 + Minor·10 + Patch)')
    return v


def build_number(v):
    return v[0] * 100 + v[1] * 10 + v[2]


def bump(v, kind):
    major, minor, patch = v
    if kind == 'major':
        return (major + 1, 0, 0)
    if kind == 'minor' or patch == 9:
        return (major + 1, 0, 0) if minor == 9 else (major, minor + 1, 0)
    return (major, minor, patch + 1)


def last_tag():
    try:
        out = subprocess.run(['git', 'tag', '--list', 'v*', '--sort=-v:refname'], cwd=ROOT,
                             capture_output=True, text=True, check=True).stdout.split()
    except subprocess.CalledProcessError:
        return None
    for tag in out:
        if re.fullmatch(r'v\d+\.\d+\.\d+', tag):
            return tag
    return None


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--bump', choices=['patch', 'minor', 'major'], default='patch')
    ap.add_argument('--version', default='')
    ap.add_argument('--write', action='store_true')
    a = ap.parse_args()

    text = PUBSPEC.read_text(encoding='utf-8')
    m = VERSION_RE.search(text)
    if not m:
        sys.exit('pubspec.yaml: keine Zeile "version: X.Y.Z+N" gefunden')
    cur = tuple(int(x) for x in m.groups()[:3])

    if a.version:
        target = check_digits(parse(a.version))
    else:
        tag = last_tag()
        base = check_digits(parse(tag)) if tag else cur
        target = max(bump(base, a.bump), cur)
        check_digits(target)

    name = '.'.join(map(str, target))
    build = build_number(target)
    if a.write:
        PUBSPEC.write_text(VERSION_RE.sub(f'version: {name}+{build}', text, count=1), encoding='utf-8')
    print(name, build)


if __name__ == '__main__':
    main()
