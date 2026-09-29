#!/bin/zsh
# Kompletter Release für App Store und Google Play – Aufruf über `make release` (siehe Makefile).
#
# Variablen:  BUMP=patch|minor|major  VERSION=X.Y.Z  PLATFORM=all|ios|android
#             SKIP_MEDIA=1  DRY_RUN=1  YES=1 (Changelog ohne Rückfrage)
# Zugangsdaten: ~/.config/hpp-release/env (siehe tool/release/README.md)
set -euo pipefail
ROOT=${0:A:h:h:h}
cd $ROOT

BUMP=${BUMP:-patch}
VERSION=${VERSION:-}
PLATFORM=${PLATFORM:-all}
SKIP_MEDIA=${SKIP_MEDIA:-0}
DRY_RUN=${DRY_RUN:-0}
SECRETS=${HPP_RELEASE_ENV:-$HOME/.config/hpp-release/env}

export PATH="/opt/homebrew/opt/ruby@3.4/bin:$PATH"
export LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export FASTLANE_SKIP_UPDATE_CHECK=1 FASTLANE_HIDE_CHANGELOG=1 FASTLANE_HIDE_TIMESTAMP=1 SKIP_MEDIA
FLUTTER=(fvm flutter)
FASTLANE=(bundle exec fastlane)

step() { print -P "\n%F{cyan}%B▶ $1%b%f" }
info() { print -P "  $1" }
fail() { print -P "%F{red}%B✗ $1%b%f" >&2; exit 1 }
want() { [[ $PLATFORM == all || $PLATFORM == $1 ]] }

[[ $PLATFORM == (all|ios|android) ]] || fail "PLATFORM muss all, ios oder android sein"
[[ $BUMP == (patch|minor|major) ]] || fail "BUMP muss patch, minor oder major sein"

# ---------------------------------------------------------------- Vorabprüfung
step "Vorabprüfung"
[[ -f $SECRETS ]] && { set -a; source $SECRETS; set +a }
have_asc=0; have_play=0
[[ -n ${ASC_KEY_ID:-} && -n ${ASC_ISSUER_ID:-} && -f ${~ASC_KEY_PATH:-/nonexistent} ]] && have_asc=1
[[ -f ${~PLAY_JSON_KEY:-/nonexistent} ]] && have_play=1
if [[ $DRY_RUN != 1 ]]; then
  want ios && (( ! have_asc )) && fail "App-Store-Connect-Schlüssel fehlt (ASC_KEY_ID, ASC_ISSUER_ID, ASC_KEY_PATH in $SECRETS)"
  want android && (( ! have_play )) && fail "Google-Play-Schlüssel fehlt (PLAY_JSON_KEY in $SECRETS)"
  [[ -z $(git status --porcelain) ]] || fail "Arbeitskopie nicht sauber – erst committen:\n$(git status --short)"
  [[ $(git branch --show-current) == main ]] || fail "Release nur von main (aktuell: $(git branch --show-current))"
else
  info "%F{yellow}DRY_RUN: es wird nichts hochgeladen, committet oder getaggt.%f"
fi
for tool in fvm node ffmpeg claude python3; do command -v $tool >/dev/null || fail "$tool nicht gefunden"; done
python3 -c "import PIL" 2>/dev/null || fail "Python-Paket Pillow fehlt: pip3 install --user pillow"
[[ -x /opt/homebrew/opt/ruby@3.4/bin/ruby ]] || fail "Ruby 3.4 fehlt: brew install ruby@3.4"
bundle check >/dev/null 2>&1 || bundle install --quiet
$FLUTTER pub get >/dev/null
$FLUTTER analyze --no-pub || fail "flutter analyze meldet Probleme"
$FLUTTER test --no-pub >/dev/null || fail "Tests schlagen fehl (flutter test)"
info "Analyse und Tests grün"

MARK=build/release/changelog.approved
# Im Probelauf alle Dateien, die der Release verändert, am Ende wiederherstellen
if [[ $DRY_RUN == 1 ]]; then
  BACKUP=$(mktemp -d)
  TRACKED=(pubspec.yaml promo-video/appstore-texte/neu-in-dieser-version.txt promo-video/appstore-texte/neu-in-dieser-version-play.txt $MARK)
  for f in $TRACKED; do [[ -f $f ]] && { mkdir -p $BACKUP/${f:h}; cp $f $BACKUP/$f }; done
  restore() { for f in $TRACKED; do [[ -f $BACKUP/$f ]] && cp $BACKUP/$f $f || rm -f $f; done; rm -rf $BACKUP }
  trap restore EXIT
fi

# ---------------------------------------------------------------- Version
step "Version bestimmen"
read NAME BUILD <<< $(python3 tool/release/version.py --bump $BUMP ${VERSION:+--version $VERSION})
info "Neue Version: %B$NAME ($BUILD)%b – letzter Release-Tag: $(git tag --list 'v*' --sort=-v:refname | head -1)"

# Build-Nummer = Version (1.1.2 → 112). Mit den Stores abgleichen: höher → Abbruch,
# gleich → diese Plattform wurde schon hochgeladen (abgebrochener Lauf) und wird übersprungen.
DONE_IOS=0; DONE_ANDROID=0
tmp=$(mktemp)
check_store() { # $1=Plattform $2=Lane $3=Anzeigename
  OUT=$tmp $FASTLANE $1 $2 >/dev/null || fail "$3: Build-Stand konnte nicht abgefragt werden"
  local max=$(cat $tmp)
  info "$3: höchster Build $max"
  (( max > BUILD )) && fail "$3 hat schon Build $max > $BUILD – Version anheben (BUMP=minor oder VERSION=…)"
  (( max == BUILD ))
}
if want ios && (( have_asc )); then
  check_store ios latest_build "App Store Connect" && { DONE_IOS=1; info "%F{yellow}Build $BUILD ist schon in App Store Connect – iOS wird übersprungen%f" }
fi
if want android && (( have_play )); then
  check_store android latest_code "Google Play" && { DONE_ANDROID=1; info "%F{yellow}versionCode $BUILD ist schon bei Google Play – Android wird übersprungen%f" }
fi
rm -f $tmp
python3 tool/release/version.py --bump $BUMP ${VERSION:+--version $VERSION} --write >/dev/null
build_ios() { want ios && (( ! DONE_IOS )) }
build_android() { want android && (( ! DONE_ANDROID )) }

# ---------------------------------------------------------------- Inhalte & Texte
step "App-Inhalte für Store-Material auslesen"
python3 tool/release/gen_promo_data.py
info "$(python3 -c "import json;c=json.load(open('build/release/counts.json'));print(f\"{c['questions']} Fragen · {c['exams']} Prüfungen · {c['flashcards']} Lernkarten · {c['glossary']} Begriffe\")")"

step "Changelog"
# Freigabe gilt nur für genau diese Version UND genau diese Texte (Prüfsumme)
NOTES=(promo-video/appstore-texte/neu-in-dieser-version.txt promo-video/appstore-texte/neu-in-dieser-version-play.txt)
notes_sig() { print -r -- "$NAME $(cat $NOTES 2>/dev/null | shasum -a 256 | cut -c1-16)" }
if [[ -f $MARK && -f $NOTES[1] && -f $NOTES[2] && $(cat $MARK) == $(notes_sig) ]]; then
  info "Changelog für $NAME ist bereits freigegeben – wird wiederverwendet (neu erzeugen: rm $MARK)"
else
  python3 tool/release/changelog.py
  mkdir -p ${MARK:h}; notes_sig > $MARK
fi

step "Store-Texte erzeugen"
python3 tool/release/texts.py --build $BUILD

# ---------------------------------------------------------------- Medien
if [[ $SKIP_MEDIA == 1 ]]; then
  step "Screenshots übersprungen (SKIP_MEDIA=1) – die Stores behalten ihre bisherigen"
else
  step "Screenshots (hochgeladen werden nur geänderte)"
  tool/release/media.sh
fi
if [[ -n $(ls fastlane/app_previews/*/*.mp4 2>/dev/null) ]]; then
  info "App Previews: werden hochgeladen, falls seit dem letzten Upload mit \`make video\` neu erzeugt"
fi

# ---------------------------------------------------------------- Builds
if build_android; then
  step "Android App Bundle bauen"
  $FLUTTER build appbundle --release --no-pub
  info "build/app/outputs/bundle/release/app-release.aab"
fi
if build_ios; then
  step "iOS-Build erstellen"
  # Signiert über den in Xcode angemeldeten Apple-Account (Cloud-Signing)
  $FLUTTER build ios --release --config-only --no-pub
  $FASTLANE ios build
  info "build/ios/ipa/Runner.ipa"
fi

if [[ $DRY_RUN == 1 ]]; then
  step "Probelauf fertig"
  info "Version wäre $NAME ($BUILD). Texte: fastlane/metadata/, Screenshots: fastlane/screenshots/ und fastlane/metadata/android/de-DE/images/"
  exit 0
fi

# ---------------------------------------------------------------- Uploads
if build_ios; then
  step "Upload App Store Connect"
  $FASTLANE ios upload
fi
if build_android; then
  step "Upload Google Play (Production, Entwurf)"
  $FASTLANE android upload
fi

# ---------------------------------------------------------------- Abschluss
if [[ $PLATFORM != all ]]; then
  step "Nur $PLATFORM hochgeladen – kein Commit/Tag"
  info "Nach dem Upload der anderen Plattform (PLATFORM=… make release) abschließen mit: make release-tag"
  exit 0
fi
tool/release/finalize.sh $NAME $BUILD

step "Fertig: $NAME ($BUILD) liegt in beiden Stores bereit"
info "App Store Connect: Build auswählen und zur Prüfung einreichen – https://appstoreconnect.apple.com/apps"
info "Google Play Console: Entwurf in Production prüfen und zur Prüfung senden – https://play.google.com/console"
