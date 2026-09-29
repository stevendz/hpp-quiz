# HPP Prüfungstrainer – promo & App Store previews

Code-driven motion graphics. Every frame is a pure function of time, rendered in headless
Chromium (Brave) and encoded with ffmpeg. The soundtrack is fully synthesized in Python and
shares its cue sheet with the visuals.

Two compositions:

- **Promo** (`index.html`, 1920×1080 / 3840×2160, 60 fps, 15 s): 3D phone mock-up, for web and social.
- **App Store preview** (`appstore.html`, portrait, 30 fps, 20 s): the app full screen like a screen
  capture (no device frame, instant state changes, Material ink, 150 ms dialog fades), with chapter
  copy over a frosted capture. Follows Apple's app preview specs and content guidelines: no other
  platforms named, no dates, only real app content.

| File | What it is |
| --- | --- |
| `timeline.js` / `timeline-appstore.js` | Cue sheets (seconds) used by the visuals *and* the soundtrack |
| `main.js` / `appstore.js` | Scene build + `renderFrame(t)` for every shot |
| `lib.js` | Easing, springs, keyframes, 3D pose math, kerning-safe text splitter |
| `style.css`, `index.html` / `appstore.css`, `appstore.html` | Stages and app screens (colours from `lib/theme/app_theme.dart`) |
| `data.js` | Real app content, generated from `lib/data/*.dart` (questions, flashcards, glossary: 359 terms, the exam day „März 2026“) |
| `audio.py` | 120 BPM track in D major + sound design → `out/audio.wav`, `--variant appstore` → `out/audio-appstore.wav` |
| `render.mjs` | Frame renderer (motion blur via sub-frames, supersampling, any page/viewport) |
| `render-final.sh` | Promo: parallel render + concat + loudness-normalised mux |
| `render-appstore.sh` | App Store: parallel render + 2-pass H.264 High@4.0, ~11 Mbit/s, AAC 256k |

## Commands

```bash
npm install                                        # puppeteer-core only; uses the installed Brave browser
open "index.html?play"                             # live preview of the promo
open "appstore.html?device=iphone&play"            # live preview of the App Store edit (device=ipad for iPad)
node render.mjs --scale 1 --stills 2.5,7.4,13.6    # promo stills to out/stills/
node render.mjs --page "appstore.html?device=iphone" --vw 443 --vh 960 --scale 2 --stills 3,11   # App Store stills
JOBS=5 ./render-final.sh                           # promo: 1080p60 + 4K60 with sound
./render-appstore.sh iphone                        # App Store iPhone 6.9"/6.5"/6.3"/6.1": 886×1920
./render-appstore.sh ipad                          # App Store iPad 13"/12.9"/11"/10.5": 1200×1600
node render-screenshots.mjs                        # 5 App Store screenshots each: iPhone 1320×2868, iPad 2064×2752
```

Screenshots (`screenshots.html?device=iphone|ipad&shot=1..5`, `screenshots.js`) show the real app screens in a
device frame with a caption and one lifted-out detail, anchored to the real element in the screen. The background is
one panorama across all five, so neighbours join seamlessly in the App Store carousel. Output is RGB without alpha.

Set `CHROME_PATH` to use another Chromium-based browser.

## Promo structure (120 BPM, cuts on the beat)

| Time | Shot |
| --- | --- |
| 0.0 – 2.5 | *„Welche Aussage trifft zu?“* → pull back onto a wall of 132 real exam questions → **560 Prüfungsfragen** → fly-through |
| 2.5 – 5.5 | Phone lands on the home screen → **Lernen.** · 240 flashcards, topic cards orbit the phone |
| 5.5 – 6.1 | Whip-spin of the phone (the back shows the logo) |
| 6.1 – 8.9 | **Verstehen.** · multiple-choice answer, explanation, glossary cards lift off the text |
| 8.9 – 9.4 | Fast-forward through the rest of the exam |
| 9.4 – 11.9 | **Bestehen.** · 27/30, confetti, rays |
| 11.9 – 15.0 | „Bestehen.“ morphs into the tagline, logo reveal, end card |

## App Store structure (same beats, 20 s)

| Time | Shot |
| --- | --- |
| 0.0 – 2.5 | Same intro; the wall flies through onto the (frosted) home screen |
| 2.6 – 3.6 | Chapter **Lernen.** · 240 Lernkarten |
| 3.6 – 5.5 | Home → „Lernkarten“ → topic dialog „Themen auswählen“ → „Starten (13)“ → flashcard swipe |
| 5.5 – 6.1 | Whip-pan |
| 6.1 – 7.1 | Chapter **Verstehen.** · 359 Fachbegriffe im Glossar |
| 7.1 – 9.9 | Multiple choice, „✓ Richtig!“ with explanation, glossary dialog, „Schließen“, bookmark → „Zur Merkliste hinzugefügt“ |
| 9.9 – 10.6 | Lead-in (the groove drops out, riser) |
| 10.6 – 11.7 | Chapter **Bestehen.** · Prüfungstag simulieren · 28 Fragen · 55 Minuten, confetti |
| 11.7 – 12.6 | Home → gold „Prüfungstag simulieren“ → exam picker → „März 2026“ |
| 12.6 – 14.6 | Exam day: countdown 55:00, time-lapse through the questions, question 25 answered without feedback, „Abgeben“, confirmation |
| 14.6 – 16.3 | Result: Bestanden! 24 / 28 · Prüfungstag März 2026 |
| 16.3 – 20.0 | Logo, name, tagline, „560 Fragen · 240 Lernkarten · 359 Begriffe“ |

The app screens of the preview and the screenshots were checked against the real app in the iOS simulator (iPhone 17 Pro Max).

## Screenshots

| # | Motif |
| --- | --- |
| 1 | **560 Prüfungsfragen** · answered question with explanation (lifted), bookmark set |
| 2 | **Prüfungstag simulieren.** · exam-day result 24 / 28, the countdown and question strip lifted out, confetti |
| 3 | **240 Lernkarten** · flashcard with topic cards |
| 4 | **359 Fachbegriffe** · glossary with one term lifted out |
| 5 | **Gezielt wiederholen.** · home screen, „Fehler & Merkliste üben“ lifted out |
