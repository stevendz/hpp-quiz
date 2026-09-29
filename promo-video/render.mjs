// Frame-accurate renderer: drives window.renderAt(t) in headless Chromium,
// captures every (sub)frame and pipes it into ffmpeg.
//
//   node render.mjs                         -> out/video.mp4 (silent), full quality
//   node render.mjs --stills 0.5,3,7.25     -> out/stills/t_0.50.png ...
//   node render.mjs --sub 1 --scale 1       -> fast draft
//   node render.mjs --from 5 --to 9         -> render a time range only
import puppeteer from 'puppeteer-core';
import { spawn } from 'node:child_process';
import { mkdirSync, existsSync, writeFileSync } from 'node:fs';
import path from 'node:path';
import { fileURLToPath, pathToFileURL } from 'node:url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));

const args = Object.fromEntries(
  process.argv.slice(2).reduce((acc, a, i, arr) => {
    if (a.startsWith('--')) acc.push([a.slice(2), arr[i + 1] && !arr[i + 1].startsWith('--') ? arr[i + 1] : true]);
    return acc;
  }, []),
);

const PAGE = args.page ?? 'index.html';
const W = Number(args.vw ?? 1920); // viewport in CSS px
const H = Number(args.vh ?? 1080);
const OW = Number(args.ow ?? W); // encoded frame size
const OH = Number(args.oh ?? H);
const FPS = Number(args.fps ?? 60);
let DURATION = Number(args.duration ?? 15);
const SUB = Number(args.sub ?? 6); // motion-blur samples per frame
const SHUTTER = Number(args.shutter ?? 0.5); // fraction of frame interval the shutter is open (180°)
const SCALE = Number(args.scale ?? 2); // supersampling factor
const FROM = Number(args.from ?? 0);
let TO = args.to != null ? Number(args.to) : null;
const OUT = path.resolve(__dirname, args.out ?? 'out/video.mp4');
const BROWSER =
  process.env.CHROME_PATH ?? '/Applications/Brave Browser.app/Contents/MacOS/Brave Browser';

const browser = await puppeteer.launch({
  executablePath: BROWSER,
  headless: true,
  args: [
    `--window-size=${W},${H}`,
    '--hide-scrollbars',
    '--force-color-profile=srgb',
    '--disable-lcd-text',
    '--font-render-hinting=none',
    '--disable-features=TranslateUI',
    '--allow-file-access-from-files',
  ],
});
const page = await browser.newPage();
await page.setViewport({ width: W, height: H, deviceScaleFactor: SCALE });
page.on('console', (m) => console.log('[page]', m.text()));
page.on('pageerror', (e) => console.error('[page error]', e.message));
const [pageFile, pageQuery] = PAGE.split('?');
await page.goto(pathToFileURL(path.join(__dirname, pageFile)).href + (pageQuery ? `?${pageQuery}` : ''), { waitUntil: 'load' });
await page.evaluate(() => window.ready);
if (args.duration == null) DURATION = (await page.evaluate(() => window.DURATION)) ?? DURATION;

async function frameAt(t) {
  await page.evaluate((tt) => window.renderFrame(tt), t);
  return Buffer.from(await page.screenshot({ type: 'png', optimizeForSpeed: true }));
}

if (args.stills) {
  const dir = path.join(__dirname, 'out/stills');
  mkdirSync(dir, { recursive: true });
  const times = String(args.stills).split(',').map(Number);
  for (const t of times) {
    const file = path.join(dir, `t_${t.toFixed(2)}.png`);
    writeFileSync(file, await frameAt(t));
    console.log('still', file);
  }
  await browser.close();
  process.exit(0);
}

if (TO == null) TO = DURATION;
mkdirSync(path.dirname(OUT), { recursive: true });
const firstFrame = Math.round(FROM * FPS);
const lastFrame = Math.round(TO * FPS); // exclusive
const total = lastFrame - firstFrame;

const OUT4K = args.out4k ? path.resolve(__dirname, args.out4k) : null;
const pre = [];
if (SUB > 1) {
  pre.push(`tmix=frames=${SUB}`);
  pre.push(`select='eq(mod(n+1\\,${SUB})\\,0)'`);
}
pre.push(`setpts=N/(${FPS}*TB)`);
// sRGB frames -> BT.709 YUV (ffmpeg would default to BT.601 and shift the teals)
const toYuv = 'out_color_matrix=bt709:out_range=tv,format=yuv420p';
const enc = (crf, file) => [
  '-c:v', 'libx264', '-preset', 'slow', '-crf', String(crf), '-tune', 'film',
  '-profile:v', 'high', '-pix_fmt', 'yuv420p',
  '-color_primaries', 'bt709', '-color_trc', 'bt709', '-colorspace', 'bt709', '-color_range', 'tv',
  '-r', String(FPS), '-movflags', '+faststart', file,
];
const crf = Number(args.crf ?? 15);
const graph = OUT4K
  ? ['-filter_complex', `[0:v]${pre.join(',')},split=2[a][b];[a]scale=${W}:${H}:flags=lanczos:${toYuv}[v1];[b]scale=${toYuv}[v2]`,
     '-map', '[v1]', ...enc(crf, OUT), '-map', '[v2]', ...enc(crf + 2, OUT4K)]
  : ['-vf', `${pre.join(',')},scale=${OW}:${OH}:flags=lanczos:${toYuv}`, ...enc(crf, OUT)];

const ff = spawn(
  'ffmpeg',
  ['-y', '-loglevel', 'error', '-f', 'image2pipe', '-framerate', String(FPS * SUB), '-c:v', 'png', '-i', '-', ...graph],
  { stdio: ['pipe', 'inherit', 'inherit'] },
);
const ffDone = new Promise((res, rej) => ff.on('close', (c) => (c === 0 ? res() : rej(new Error('ffmpeg exit ' + c)))));

const write = (buf) =>
  new Promise((res) => (ff.stdin.write(buf) ? res() : ff.stdin.once('drain', res)));

const started = Date.now();
for (let f = firstFrame; f < lastFrame; f++) {
  for (let k = 0; k < SUB; k++) {
    // Samples spread across the open shutter, centred on the frame time.
    const off = SUB > 1 ? ((k + 0.5) / SUB - 0.5) * SHUTTER : 0;
    await write(await frameAt((f + off) / FPS));
  }
  const done = f - firstFrame + 1;
  if (done % 30 === 0 || done === total) {
    const el = (Date.now() - started) / 1000;
    const eta = (el / done) * (total - done);
    process.stdout.write(`\rframe ${done}/${total}  ${el.toFixed(0)}s elapsed  eta ${eta.toFixed(0)}s   `);
  }
}
ff.stdin.end();
await ffDone;
await browser.close();
console.log(`\nwrote ${OUT}`);
