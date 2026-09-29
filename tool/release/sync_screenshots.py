#!/usr/bin/env python3
"""Frisch gerenderte Screenshots in die fastlane-Ordner übernehmen – nur die, die sich sichtbar geändert haben.

Der Renderer liefert bei gleichem Inhalt nicht immer byte-gleiche PNGs (winziges Rauschen).
Deshalb wird visuell verglichen: Ein Screenshot gilt als geändert, wenn mehr als MIN_PIXELS Pixel
um mehr als THRESHOLD Helligkeitsstufen abweichen (Rauschen: max. 1–11 Stufen, eine geänderte Zahl
oder Zeile: tausende Pixel). Unveränderte Screenshots behalten ihre bisherige Datei – so bleibt die
Prüfsumme gleich und die Stores (deliver sync_screenshots / supply sync_image_upload) laden sie nicht neu.

  python3 tool/release/sync_screenshots.py
"""
import shutil
import sys
from pathlib import Path

from PIL import Image, ImageChops

ROOT = Path(__file__).resolve().parents[2]
OUT = ROOT / 'promo-video' / 'out' / 'screenshots'
FL = ROOT / 'fastlane'
THRESHOLD = 32
MIN_PIXELS = 100

# Gerät -> (Zielordner, Dateinamen-Präfix)
TARGETS = {
    'iphone': (FL / 'screenshots' / 'ios' / 'de-DE', 'iphone_'),
    'ipad': (FL / 'screenshots' / 'ios' / 'de-DE', 'ipad_'),
    'android': (FL / 'metadata' / 'android' / 'de-DE' / 'images' / 'phoneScreenshots', ''),
    'atablet': (FL / 'metadata' / 'android' / 'de-DE' / 'images' / 'tenInchScreenshots', ''),
}


def changed(new, old):
    a = Image.open(new).convert('RGB')
    b = Image.open(old).convert('RGB')
    if a.size != b.size:
        return True
    hist = ImageChops.difference(a, b).convert('L').histogram()
    return sum(hist[THRESHOLD + 1:]) > MIN_PIXELS


def main():
    total = 0
    for dev, (dst, prefix) in TARGETS.items():
        src_files = sorted((OUT / dev).glob('*.png'))
        if not src_files:
            sys.exit(f'Keine Screenshots in {OUT / dev} – erst rendern (node render-screenshots.mjs)')
        dst.mkdir(parents=True, exist_ok=True)
        wanted = {prefix + f.name for f in src_files}
        # Screenshots, die es nicht mehr gibt, entfernen
        for old in dst.glob(prefix + '*.png' if prefix else '*.png'):
            if old.name not in wanted:
                old.unlink()
                print(f'  {dev}: {old.name} entfernt')
        updates = []
        for f in src_files:
            target = dst / (prefix + f.name)
            if target.exists() and not changed(f, target):
                continue
            shutil.copy2(f, target)
            updates.append(f.stem)
        total += len(updates)
        print(f'  {dev}: ' + (f'{len(updates)} geändert ({", ".join(updates)})' if updates else 'unverändert'))
    print(f'Screenshots: {total} geändert – hochgeladen werden nur diese.')


if __name__ == '__main__':
    main()
