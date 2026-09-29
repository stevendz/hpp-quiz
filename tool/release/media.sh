#!/bin/zsh
# Store-Screenshots rendern (bei jedem Release) und geänderte in die fastlane-Ordner übernehmen.
#   tool/release/media.sh
# Voraussetzung: promo-video/data.js ist aktuell (tool/release/gen_promo_data.py).
# Die App-Preview-Videos rendert nur `make video` (tool/release/video.sh).
set -euo pipefail
ROOT=${0:A:h:h:h}
PV=$ROOT/promo-video

[[ -d $PV/node_modules ]] || (cd $PV && npm ci --silent)
echo "Screenshots rendern (iPhone, iPad, Android-Phone, Android-Tablet) …"
(cd $PV && node render-screenshots.mjs >/dev/null)
python3 $ROOT/tool/release/sync_screenshots.py
