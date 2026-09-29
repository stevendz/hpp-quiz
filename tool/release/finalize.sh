#!/bin/zsh
# Release abschließen: Versions- und Textänderungen committen, taggen, pushen.
#   tool/release/finalize.sh            # Version aus pubspec.yaml
#   tool/release/finalize.sh 1.1.2 13
set -euo pipefail
ROOT=${0:A:h:h:h}
cd $ROOT
if [[ $# -ge 2 ]]; then
  NAME=$1 BUILD=$2
else
  v=$(sed -n 's/^version:[[:space:]]*//p' pubspec.yaml); NAME=${v%%+*} BUILD=${v##*+}
fi
git rev-parse -q --verify "refs/tags/v$NAME" >/dev/null && { echo "Tag v$NAME existiert bereits." >&2; exit 1 }

git add pubspec.yaml promo-video/data.js promo-video/curation.json promo-video/appstore-texte
git diff --cached --quiet || git commit -q -m "Release $NAME ($BUILD)"
git tag -a "v$NAME" -m "Release $NAME ($BUILD)"
git push -q origin HEAD
git push -q origin --tags
echo "Commit und Tag v$NAME gepusht."
