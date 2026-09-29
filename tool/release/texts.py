#!/usr/bin/env python3
"""Store-Texte aus promo-video/appstore-texte/ rendern und nach fastlane/metadata/ schreiben.

Platzhalter in den Vorlagen: {{FRAGEN}}, {{PRUEFUNGEN}}, {{LERNKARTEN}}, {{BEGRIFFE}}
(Werte aus build/release/counts.json, erzeugt von gen_promo_data.py).

  python3 tool/release/texts.py --build 13

App Store (fastlane/metadata/ios/de-DE/):   description, promotional_text, release_notes
Google Play (fastlane/metadata/android/de-DE/): full_description, changelogs/<build>.txt
Fehlende Vorlagen werden übersprungen – der Store behält dann seinen aktuellen Text.
"""
import argparse
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
SRC = ROOT / 'promo-video' / 'appstore-texte'
COUNTS = ROOT / 'build' / 'release' / 'counts.json'
IOS = ROOT / 'fastlane' / 'metadata' / 'ios' / 'de-DE'
ANDROID = ROOT / 'fastlane' / 'metadata' / 'android' / 'de-DE'

# Quelle -> [(Ziel, Zeichenlimit)]
TARGETS = {
    'beschreibung.txt': [(IOS / 'description.txt', 4000), (ANDROID / 'full_description.txt', 4000)],
    'werbetext.txt': [(IOS / 'promotional_text.txt', 170)],
    'kurzbeschreibung-play.txt': [(ANDROID / 'short_description.txt', 80)],
}


def render(text, values):
    out = re.sub(r'\{\{([A-Z_]+)\}\}', lambda m: str(values[m.group(1)]) if m.group(1) in values else m.group(0), text)
    left = re.findall(r'\{\{[A-Z_]+\}\}', out)
    if left:
        sys.exit(f'Unbekannte Platzhalter: {", ".join(sorted(set(left)))}')
    return out.strip() + '\n'


def write(path, text, limit):
    body = text.rstrip('\n')
    if len(body) > limit:
        sys.exit(f'{path.relative_to(ROOT)}: {len(body)} Zeichen, erlaubt sind {limit}')
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(body + '\n', encoding='utf-8')
    print(f'  {path.relative_to(ROOT)} ({len(body)}/{limit} Zeichen)')


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--build', type=int, required=True, help='Build-Nummer = Android versionCode')
    a = ap.parse_args()

    if not COUNTS.exists():
        sys.exit(f'{COUNTS.relative_to(ROOT)} fehlt – erst gen_promo_data.py ausführen')
    c = json.loads(COUNTS.read_text(encoding='utf-8'))
    values = {'FRAGEN': c['questions'], 'PRUEFUNGEN': c['exams'], 'LERNKARTEN': c['flashcards'], 'BEGRIFFE': c['glossary']}

    for src, targets in TARGETS.items():
        f = SRC / src
        if not f.exists():
            continue
        text = render(f.read_text(encoding='utf-8'), values)
        for path, limit in targets:
            write(path, text, limit)

    # Changelog (von changelog.py erzeugt und freigegeben, ggf. von Hand angepasst)
    for name in ('neu-in-dieser-version.txt', 'neu-in-dieser-version-play.txt'):
        if not (SRC / name).exists():
            sys.exit(f'promo-video/appstore-texte/{name} fehlt – erst den Changelog erzeugen (make changelog)')
    write(IOS / 'release_notes.txt', render((SRC / 'neu-in-dieser-version.txt').read_text(encoding='utf-8'), values), 4000)
    write(ANDROID / 'changelogs' / f'{a.build}.txt', render((SRC / 'neu-in-dieser-version-play.txt').read_text(encoding='utf-8'), values), 500)


if __name__ == '__main__':
    main()
