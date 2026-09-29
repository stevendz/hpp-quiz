# HPP Prüfungstrainer – promo, App Store previews and store screenshots

Code-driven motion graphics. Every frame is a pure function of time, rendered in headless
Chromium (Brave) and encoded with ffmpeg. The soundtrack is fully synthesized in Python and
shares its cue sheet with the visuals.

Two compositions:

- **Promo** (`index.html`, 1920×1080 / 3840×2160, 60 fps, 15 s): 3D phone mock-up, for web and social.
- **App Store preview** (`appstore.html`, portrait, 30 fps, 20 s): the app full screen like a screen
  capture (no device frame, instant state changes, Material ink, 150 ms dialog fades), with chapter
  copy over a frosted capture. Follows Apple's app preview specs and content guidelines: no other
  platforms named, no dates, only real app content.

Plus five **store screenshots** each for iPhone, iPad (App Store), an Android phone and a 10" Android tablet (Google Play).

| File | What it is |
| --- | --- |
| `timeline.js` / `timeline-appstore.js` | Cue sheets (seconds) used by the visuals *and* the soundtrack |
| `main.js` / `appstore.js` / `screenshots.js` | Scene build + `renderFrame(t)` for every shot / the screenshot layouts |
| `lib.js` | Easing, springs, keyframes, 3D pose math, kerning-safe text splitter, `demoProgress()` |
| `style.css`, `index.html` / `appstore.css`, `appstore.html` / `screenshots.css`, `screenshots.html` | Stages and app screens (colours from `lib/theme/app_theme.dart`) |
| `data.js` | **Generated – do not edit.** Real app content and totals, see [Content and numbers](#content-and-numbers) |
| `curation.json` | Which questions, flashcards and glossary terms the videos and screenshots show |
| `fonts/` | Plus Jakarta Sans + Instrument Serif (captions); Roboto + Noto Color Emoji subsets for the Android screenshots |
| `audio.py` | 120 BPM track in D major + sound design → `out/audio.wav`, `--variant appstore` → `out/audio-appstore.wav` |
| `render.mjs` | Frame renderer (motion blur via sub-frames, supersampling, any page/viewport) |
| `render-final.sh` | Promo: parallel render + concat + loudness-normalised mux |
| `render-appstore.sh` | App Store: parallel render + 2-pass H.264 High@4.0, ~11 Mbit/s, AAC 256k |
| `render-screenshots.mjs` | Store screenshots, PNG 8-bit RGB without alpha |

## Content and numbers

`data.js` is written by `tool/release/gen_promo_data.py` (Python 3.9+, standard library only) from the app's Dart
sources and `curation.json`:

- `lib/data/all_questions.dart` (order), `lib/data/questions_*.dart`, `lib/data/flashcards_data.dart`,
  `lib/data/glossary_data.dart` – parsed as Dart (escapes, adjacent/multi-line literals); any parse error or a curated key
  that no longer exists stops with exit code 1 and the file/line or the closest matches.
- `lib/main.dart` (`examSize`) and `lib/services/exam_modes.dart` (`examDaySeconds`, `passRatio`) for the app rules.
- `curation.json` holds only the *selection*: questions as `["<exam label>", <Question.id>]`, flashcards by title (first
  line), glossary terms by key, the exam day (`label`, the answer `pick` per question id, earlier scores in `last`).
  Everything else is derived: question texts/options/answer keys/explanations, the number within the exam, flashcard
  positions (`flash[].n`), `topicCounts`, `appstore.tags`, `appstore.qterms` (the app's own glossary matching on
  `qtermsQuestion`), `glossList`, exam labels, `ok` per exam-day answer and the score.

`window.DATA.counts` has every number the material shows – never type them into HTML/JS:

| Key | Now | Used for |
| --- | --- | --- |
| `questions`, `exams`, `firstYear`–`lastYear` | 560, 20, 2016–2026 | „560 Prüfungsfragen aus 20 (vergangenen) Prüfungen“, home subtitle, counter wheels |
| `flashcards`, `topics` | 277, 13 | „277 Lernkarten“, flashcard counter `79 / 277` |
| `glossary` | 359 | „359 Fachbegriffe“ |
| `examSize` | 30 | practice exam „Frage 7/30“, „30 pro Prüfung“ |
| `examDayQuestions`, `examDayMinutes`, `examDayPassMark`, `passPercent` | 28, 55, 21, 75 | exam day („28 Fragen · 55 Minuten“, „Bestanden ab 21“) |

In HTML use `<span data-count="questions"></span>` (filled by the small script after `data.js`), in JS
`window.DATA.counts`. The fictional progress (412 seen, 356 right, 56 wrong, 27 of 30) comes from `demoProgress()` in
`lib.js` and is capped at the real totals. The same numbers are written to `../build/release/counts.json` for the store
texts.

Run the generator after every change to `lib/data/*.dart` (the preview, the promo and the screenshots only read
`data.js`). `--check` exits 1 without writing if `data.js` or `counts.json` is out of date.

## Commands

```bash
python3 tool/release/gen_promo_data.py             # (from hpp_flutter/) regenerate data.js + build/release/counts.json
python3 tool/release/gen_promo_data.py --check     # exit 1 if either is stale

npm install                                        # puppeteer-core only; uses the installed Brave browser
open "index.html?play"                             # live preview of the promo
open "appstore.html?device=iphone&play"            # live preview of the App Store edit (device=ipad for iPad)
node render.mjs --scale 1 --stills 2.5,7.4,13.6    # promo stills to out/stills/
node render.mjs --page "appstore.html?device=iphone" --vw 443 --vh 960 --scale 2 --stills 3,11   # App Store stills
JOBS=5 ./render-final.sh                           # promo: 1080p60 + 4K60 with sound
./render-appstore.sh iphone                        # App Store iPhone 6.9"/6.5"/6.3"/6.1": 886×1920
./render-appstore.sh ipad                          # App Store iPad 13"/12.9"/11"/10.5": 1200×1600
node render-screenshots.mjs                        # all screenshots: iphone, ipad, android, atablet (5 each)
node render-screenshots.mjs --only android         # one device
node render-screenshots.mjs --only atablet:3       # one screenshot
```

Set `CHROME_PATH` to use another Chromium-based browser.

## Promo structure (120 BPM, cuts on the beat)

Numbers in bold are `DATA.counts` (current values shown).

| Time | Shot |
| --- | --- |
| 0.0 – 2.5 | *„Welche Aussage trifft zu?“* → pull back onto a wall of 132 real exam questions → **560 Prüfungsfragen** aus **20** Prüfungen · **2016 – 2026** → fly-through |
| 2.5 – 5.5 | Phone lands on the home screen → **Lernen.** · **277** Lernkarten, topic cards orbit the phone |
| 5.5 – 6.1 | Whip-spin of the phone (the back shows the logo) |
| 6.1 – 8.9 | **Verstehen.** · multiple-choice answer, explanation, glossary cards lift off the text, **359** Fachbegriffe |
| 8.9 – 9.4 | Fast-forward through the rest of the exam |
| 9.4 – 11.9 | **Bestehen.** · 27/**30**, confetti, rays |
| 11.9 – 15.0 | „Bestehen.“ morphs into the tagline, logo reveal, end card |

## App Store structure (same beats, 20 s)

| Time | Shot |
| --- | --- |
| 0.0 – 2.5 | Same intro; the wall flies through onto the (frosted) home screen |
| 2.6 – 3.6 | Chapter **Lernen.** · **277** Lernkarten |
| 3.6 – 5.5 | Home → „Lernkarten“ → topic dialog „Themen auswählen“ → „Starten (13)“ → flashcard swipe (79 → 80 / **277**) |
| 5.5 – 6.1 | Whip-pan |
| 6.1 – 7.1 | Chapter **Verstehen.** · **359** Fachbegriffe im Glossar |
| 7.1 – 9.9 | Multiple choice, „✓ Richtig!“ with explanation, glossary dialog, „Schließen“, bookmark → „Zur Merkliste hinzugefügt“ |
| 9.9 – 10.6 | Lead-in (the groove drops out, riser) |
| 10.6 – 11.7 | Chapter **Bestehen.** · Prüfungstag simulieren · **28** Fragen · **55** Minuten, confetti |
| 11.7 – 12.6 | Home → gold „Prüfungstag simulieren“ → exam picker → „März 2026“ |
| 12.6 – 14.6 | Exam day: countdown 55:00, time-lapse through the questions, question 25 answered without feedback, „Abgeben“, confirmation |
| 14.6 – 16.3 | Result: Bestanden! 24 / **28** · Prüfungstag März 2026 |
| 16.3 – 20.0 | Logo, name, tagline, „**560** Fragen · **277** Lernkarten · **359** Begriffe“ |

The app screens of the preview and the screenshots were checked against the real app in the iOS simulator (iPhone 17 Pro Max).

## Screenshots

`screenshots.html?device=iphone|ipad|android|atablet&shot=1..5` (`screenshots.js`) shows the real app screens in a
device frame with a caption and one lifted-out detail, anchored to the real element in the screen. The device runs off
the bottom edge. The background is one panorama across all five, so neighbours join seamlessly in the store carousel.
Output is 8-bit RGB without alpha (`out/screenshots/<device>/0N-<slug>.png`).

| Device | Store | Output | Emulated screen | Frame |
| --- | --- | --- | --- | --- |
| `iphone` | App Store 6.9" | 1320×2868 | 440×956 pt | Dynamic Island, iOS status bar |
| `ipad` | App Store 13" | 2064×2752 | 768×1024 pt | iPad, bezel camera |
| `android` | Google Play phone | 1242×2208 (9:16) | 412×915 dp | current Pixel style: even narrow bezels, centred punch-hole camera, power + volume on the right, Material status bar (clock left; mobile, Wi-Fi, battery right; 32 dp), gesture handle (24 dp) |
| `atablet` | Google Play 10" tablet | 1600×2560 (10:16) | 800×1280 dp | Android tablet, bezel camera, buttons on the right, status bar 28 dp, gesture handle |

On Android the app text is Roboto (as Flutter renders it there) with Noto Color Emoji; captions are the same on all
devices and never name a platform. Google Play accepts these as they are (24-bit PNG, ≤ 8 MB, aspect ratio ≤ 2:1). In
the Android phone's shorter 9:16 frame the exam screen of shot 1 is scrolled by 58 dp so the explanation stays in view.

| # | Motif |
| --- | --- |
| 1 | **560 Prüfungsfragen** · answered question with explanation (lifted), bookmark set |
| 2 | **Prüfungstag simulieren.** · exam-day result 24 / 28, the countdown and question strip lifted out, confetti |
| 3 | **277 Lernkarten** · flashcard with topic cards |
| 4 | **359 Fachbegriffe** · glossary with one term lifted out |
| 5 | **Gezielt wiederholen.** · home screen, „Fehler & Merkliste üben“ lifted out |
