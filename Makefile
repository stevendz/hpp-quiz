# Release-Automatisierung – Details: tool/release/README.md
#
#   make release                      Patch-Release für App Store + Google Play
#   make release BUMP=minor           oder: BUMP=major, VERSION=1.2.0 (Build = 120)
#   make release DRY_RUN=1            alles bauen und erzeugen, nichts hochladen/committen
#   make release SKIP_MEDIA=1         ohne Screenshots (Rendern und Upload)
#   make video                        App-Preview-Videos neu rendern (Upload beim nächsten release)
#   make release PLATFORM=ios         nur eine Plattform (danach: make release-tag)
#
# Einzelschritte: make media | make texts | make changelog | make store-data

.PHONY: release release-tag media video texts changelog store-data setup

release:
	@tool/release/release.sh

release-tag:
	@tool/release/finalize.sh

store-data:
	@python3 tool/release/gen_promo_data.py

changelog:
	@python3 tool/release/changelog.py

texts: store-data
	@python3 tool/release/texts.py --build $$(sed -n 's/^version:.*+//p' pubspec.yaml)

media: store-data
	@tool/release/media.sh

video:
	@tool/release/video.sh

setup:
	@command -v /opt/homebrew/opt/ruby@3.4/bin/ruby >/dev/null || brew install ruby@3.4
	@brew unlink ruby@3.4 >/dev/null 2>&1 || true # System-Ruby bleibt Standard (CocoaPods-Plugins brauchen es)
	@PATH="/opt/homebrew/opt/ruby@3.4/bin:$$PATH" bundle config set --local path vendor/bundle >/dev/null
	@PATH="/opt/homebrew/opt/ruby@3.4/bin:$$PATH" bundle install --quiet
	@python3 -c "import PIL" 2>/dev/null || pip3 install --user --quiet pillow
	@cd promo-video && npm ci --silent
	@echo "Setup fertig. Zugangsdaten: siehe tool/release/README.md"
