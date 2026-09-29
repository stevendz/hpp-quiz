#!/bin/zsh
# App-Preview-Videos (iPhone 6,9" und iPad 13") neu rendern – nur auf ausdrücklichen Wunsch (`make video`).
# Der nächste `make release` lädt sie hoch, weil sie sich vom zuletzt hochgeladenen Stand unterscheiden.
set -euo pipefail
ROOT=${0:A:h:h:h}
PV=$ROOT/promo-video
DST=$ROOT/fastlane/app_previews/de-DE

python3 $ROOT/tool/release/gen_promo_data.py
[[ -d $PV/node_modules ]] || (cd $PV && npm ci --silent)
echo "App Previews rendern (iPhone, iPad) – das dauert einige Minuten …"
(cd $PV && ./render-appstore.sh iphone && ./render-appstore.sh ipad)

# deliver erkennt den Preview-Typ am Dateinamen (IPHONE_67 = 6,9", IPAD_PRO_3GEN_129 = 13")
mkdir -p $DST
cp $PV/out/hpp-appstore-iphone-886x1920.mp4 $DST/01_IPHONE_67.mp4
cp $PV/out/hpp-appstore-ipad-1200x1600.mp4 $DST/01_IPAD_PRO_3GEN_129.mp4
echo "Previews bereit in fastlane/app_previews/de-DE – werden beim nächsten make release hochgeladen."
