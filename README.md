# HPP Prüfungstrainer

Flutter-App (iOS, Android) zur Vorbereitung auf die schriftliche Heilpraktiker-Psychotherapie-Prüfung.

- Bundle-ID / Paketname: `dev.webrabbits.hpp`, Apple-Team `DJB7TXFLUC`
- 560 Prüfungsfragen aus 20 Prüfungen (2016–2026), 277 Lernkarten, 359 Glossarbegriffe
- Übungsprüfung (30 Fragen, 75 %) und Prüfungstag (28 Fragen, 55 Min., bestanden ab 21)
- Merkliste, Fehler wiederholen, Frage melden, Fortschritt lokal auf dem Gerät

## Entwicklung

- Flutter 3.41.4 über fvm: `fvm flutter run`, `fvm flutter analyze`, `fvm flutter test`
- Firebase: Analytics sowie Firestore für `feedback` und `question_reports` (Regeln: `firestore.rules`)

## Struktur

- `lib/data/`: Inhalte als Dart
  - `questions_YYYY.dart`: Prüfungsfragen
  - `flashcards_data.dart`: Lernkarten; die erste Zeile ist der Titel und dient als Schlüssel
  - `glossary_data.dart`: Glossar
- `lib/screens/`, `lib/services/`, `lib/models/`, `lib/theme/`: App-Code
- `test/`: Widget- und Logiktests
- `promo-video/`: Store-Screenshots, App Previews und Promo-Video als HTML, gerendert mit Brave und ffmpeg
  - `appstore-texte/`: Store-Texte mit Platzhaltern wie `{{LERNKARTEN}}`
  - `curation.json`: Welche Inhalte die Medien zeigen
- `tool/release/`: Release-Skripte ([Details](tool/release/README.md))
- `fastlane/`: Lanes für App Store Connect und Google Play

## Release

- `make release`: Version hochzählen, Changelog (per Claude, mit Freigabe), Store-Texte, Screenshots, Builds, Upload in beide Stores, Commit, Tag und Push
  - Nichts wird eingereicht: Review in App Store Connect und in der Play Console selbst anstoßen
  - Google Play: Entwurf in Production
  - Versionsschema: 1.1.2 → Build 112; nach x.y.9 folgt x.(y+1).0
  - Nur geänderte Screenshots werden hochgeladen
- `make release DRY_RUN=1`: alles bauen und prüfen, ohne Upload
- Weitere Varianten: `BUMP=minor|major`, `VERSION=X.Y.Z`, `PLATFORM=ios|android`, `SKIP_MEDIA=1`
- `make video`: App-Preview-Videos neu rendern; sie werden beim nächsten Release hochgeladen
- `make media`, `make texts`, `make changelog`: Einzelschritte
- Einmalig: `make setup` (Ruby 3.4, fastlane, Pillow, Node-Pakete)
- Zugangsdaten außerhalb des Repos in `~/.config/hpp-release/`
- iOS-Signing über den in Xcode angemeldeten Apple-Account
