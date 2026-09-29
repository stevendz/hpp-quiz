# Release-Automatisierung

`make release` bringt eine neue Version in den App Store und zu Google Play – **ohne** sie zur Prüfung einzureichen. Das Einreichen machst du danach selbst in App Store Connect bzw. der Play Console.

## Ablauf von `make release`

1. **Vorabprüfung**: Zugangsdaten vorhanden, Arbeitskopie sauber, Branch `main`, `flutter analyze` und `flutter test` grün.
2. **Version**: vom letzten Tag `vX.Y.Z` aus hochgezählt (`BUMP=patch` als Standard), Build-Nummer = Version ohne Punkte:
   - 1.1.2 → **112**, 1.1.3 → **113**, 2.4.5 → **245**. Jede Stelle bleibt einstellig.
   - Nach x.y.9 folgt x.(y+1).0, nach x.9.9 folgt (x+1).0.0.
   - Die Stores werden abgefragt:
     - Liegt dort schon ein höherer Build, bricht der Release ab.
     - Liegt genau dieser Build schon in einem Store (abgebrochener Lauf), wird diese Plattform übersprungen.
   - Das Ergebnis wird in `pubspec.yaml` geschrieben; iOS und Android übernehmen es von dort.
3. **Inhalte zählen**: `gen_promo_data.py` liest `lib/data/*.dart` und erzeugt `promo-video/data.js` sowie `build/release/counts.json`.
4. **Changelog**: `changelog.py` fasst die Änderungen seit dem letzten Tag mit der Claude CLI in Stichpunkte, einmal für den App Store und einmal für Play. Du siehst beide Texte und wählst **übernehmen / bearbeiten / neu erzeugen / abbrechen**. Die Texte landen in `promo-video/appstore-texte/neu-in-dieser-version*.txt`.
5. **Store-Texte**: `texts.py` setzt die aktuellen Zahlen in die Vorlagen aus `promo-video/appstore-texte/` ein und prüft die Zeichenlimits. Ergebnis: `fastlane/metadata/`.
6. **Screenshots** (bei jedem Release): `media.sh` rendert alle Screenshots für iPhone, iPad, Android-Phone und Android-Tablet.
   - `sync_screenshots.py` vergleicht jedes Bild visuell mit dem zuletzt vorbereiteten Stand. Nur sichtbar geänderte Bilder werden übernommen, unveränderte behalten ihre Datei.
   - Beim Upload gleichen App Store (`sync_screenshots`) und Google Play (`sync_image_upload`) per Prüfsumme ab. Hochgeladen werden also nur die Screenshots, auf denen sich etwas geändert hat.
7. **Builds**: `flutter build appbundle` und das iOS-Archiv über fastlane `gym`. Signiert wird über den in Xcode angemeldeten Apple-Account (Cloud-Signing).
8. **Upload**:
   - App Store Connect: Build, Texte und geänderte Screenshots, **nicht** eingereicht.
     - App Previews nur, wenn sie seit dem letzten Upload mit `make video` neu erzeugt wurden. Dann ersetzen sie die bisherigen.
   - Google Play: AAB in **Production als Entwurf**, dazu Texte, Changelog und Screenshots, **nicht** zur Prüfung gesendet.
9. **Abschluss**: Commit „Release X.Y.Z (N)“, Tag `vX.Y.Z`, Push.

Bricht ein Schritt ab, startest du `make release` einfach neu:
- Die Version wird nicht doppelt hochgezählt.
- Der freigegebene Changelog wird wiederverwendet.
- Bereits hochgeladene Screenshots und Previews werden erkannt und nicht erneut hochgeladen.

## Varianten

| Befehl | Wirkung |
|---|---|
| `make release BUMP=minor` | 1.1.x → 1.2.0 (`BUMP=major` → 2.0.0) |
| `make release VERSION=1.2.0` | Versionsnamen fest vorgeben (jede Stelle 0–9) |
| `make release DRY_RUN=1` | Alles bauen und erzeugen, **nichts** hochladen, committen oder taggen; `pubspec.yaml` und die Changelog-Dateien werden danach zurückgesetzt |
| `make release SKIP_MEDIA=1` | Ohne Screenshots (weder rendern noch hochladen) |
| `make video` | App-Preview-Videos (iPhone, iPad) neu rendern, das dauert einige Minuten. Hochgeladen werden sie beim nächsten `make release` |
| `make release PLATFORM=ios` | Nur eine Plattform (`ios` oder `android`); danach `make release-tag` |
| `make media` / `make texts` / `make changelog` | Einzelschritte zum Ausprobieren |

## Einmalige Einrichtung

```bash
make setup
```

Das installiert:
- Ruby 3.4 über Homebrew (das System-Ruby bleibt unverändert)
- fastlane über Bundler (`vendor/bundle`)
- Pillow für den Bildvergleich
- die Node-Pakete für `promo-video`

**iOS-Signing**: In Xcode → Einstellungen → Accounts muss dein Apple-Account (Team `DJB7TXFLUC`) angemeldet sein. Xcode signiert beim Export per Cloud-Signing, ein lokales Distributionszertifikat ist nicht nötig.

### Zugangsdaten

Die Zugangsdaten liegen **außerhalb des Repos** in `~/.config/hpp-release/`:

```
~/.config/hpp-release/
├── env                           (chmod 600)
├── AuthKey_XXXXXXXXXX.p8         App Store Connect API-Schlüssel
└── play-service-account.json     Google-Play-Dienstkonto
```

Inhalt von `env`:

```
ASC_KEY_ID=XXXXXXXXXX
ASC_ISSUER_ID=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
ASC_KEY_PATH=~/.config/hpp-release/AuthKey_XXXXXXXXXX.p8
PLAY_JSON_KEY=~/.config/hpp-release/play-service-account.json
```

**App Store Connect API-Schlüssel**
1. App Store Connect → Benutzer und Zugriff → Integrationen → App Store Connect API → Teamschlüssel → „+“.
2. Zugriff: **App-Manager** genügt. Der Schlüssel dient nur Abfragen und Uploads, signiert wird über den Xcode-Account.
3. Die `.p8`-Datei herunterladen (das geht nur einmal) und Key ID sowie Issuer ID notieren.

**Google-Play-Dienstkonto**
1. Google Cloud Console: Projekt wählen oder anlegen und die **Google Play Android Developer API** aktivieren.
2. IAM → Dienstkonten → Dienstkonto anlegen → Schlüssel → JSON herunterladen.
3. Play Console → Nutzer und Berechtigungen → die E-Mail-Adresse des Dienstkontos einladen. Für die App diese Rechte vergeben:
   - Releases in Produktion erstellen und bearbeiten
   - Store-Präsenz verwalten
   - App-Informationen ansehen
4. Es kann einige Minuten dauern, bis die Berechtigung greift.

## Dateien

| Pfad | Zweck |
|---|---|
| `Makefile` | Einstieg (`make release` …) |
| `tool/release/release.sh` | Gesamtablauf |
| `tool/release/version.py` | Versionsberechnung |
| `tool/release/gen_promo_data.py` | App-Inhalte → `promo-video/data.js`, `build/release/counts.json` |
| `tool/release/changelog.py`, `changelog_prompt.md` | Changelog per Claude CLI mit Freigabe |
| `tool/release/texts.py` | Store-Texte aus den Vorlagen |
| `tool/release/media.sh`, `sync_screenshots.py` | Screenshots rendern, nur geänderte übernehmen |
| `tool/release/video.sh` | App-Preview-Videos rendern (`make video`) |
| `tool/release/finalize.sh` | Commit, Tag, Push (`make release-tag`) |
| `fastlane/Fastfile` | Lanes: `ios latest_build/build/upload`, `android latest_code/upload` |
| `promo-video/appstore-texte/` | Textvorlagen mit Platzhaltern `{{FRAGEN}}`, `{{PRUEFUNGEN}}`, `{{LERNKARTEN}}`, `{{BEGRIFFE}}` |

Optional: Legst du `promo-video/appstore-texte/kurzbeschreibung-play.txt` an (max. 80 Zeichen), wird auch die Play-Kurzbeschreibung gepflegt. Ohne diese Datei bleibt die aktuelle Kurzbeschreibung in der Play Console unverändert. Das gilt genauso für alle anderen Store-Felder, zu denen es keine Vorlage gibt (App-Name, Untertitel, Keywords).
