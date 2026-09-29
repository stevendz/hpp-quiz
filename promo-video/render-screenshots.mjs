// Store screenshots, PNG without alpha (8-bit RGB):
//   App Store:   iPhone 6.9" 1320×2868, iPad 13" 2064×2752
//   Google Play: phone 1242×2208 (9:16), 10" tablet 1600×2560
//   node render-screenshots.mjs                   -> out/screenshots/{iphone,ipad,android,atablet}/0N-<slug>.png
//   node render-screenshots.mjs --only android    -> one device
//   node render-screenshots.mjs --only atablet:3  -> a single one
import puppeteer from 'puppeteer-core';
import { execFileSync } from 'node:child_process';
import { mkdirSync, writeFileSync, rmSync } from 'node:fs';
import path from 'node:path';
import { fileURLToPath, pathToFileURL } from 'node:url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const only = (() => {
  const i = process.argv.indexOf('--only');
  return i > 0 ? process.argv[i + 1] : null;
})();
const DEVICES = {
  iphone: { vw: 440, vh: 956, dsf: 3, out: [1320, 2868] },
  ipad: { vw: 1032, vh: 1376, dsf: 2, out: [2064, 2752] },
  android: { vw: 414, vh: 736, dsf: 3, out: [1242, 2208] },
  atablet: { vw: 800, vh: 1280, dsf: 2, out: [1600, 2560] },
};
const [onlyDev, onlyShot] = only ? only.split(':') : [null, null];
if (onlyDev && !DEVICES[onlyDev]) {
  console.error(`unknown device "${onlyDev}" – one of ${Object.keys(DEVICES).join(', ')}`);
  process.exit(1);
}
const BROWSER = process.env.CHROME_PATH ?? '/Applications/Brave Browser.app/Contents/MacOS/Brave Browser';

const browser = await puppeteer.launch({
  executablePath: BROWSER,
  headless: true,
  args: ['--disable-gpu', '--hide-scrollbars', '--force-color-profile=srgb', '--disable-lcd-text', '--font-render-hinting=none', '--allow-file-access-from-files'],
});
const page = await browser.newPage();
page.on('pageerror', (e) => console.error('[page error]', e.message));

for (const [dev, v] of Object.entries(DEVICES)) {
  if (onlyDev && onlyDev !== dev) continue;
  const dir = path.join(__dirname, 'out/screenshots', dev);
  mkdirSync(dir, { recursive: true });
  await page.setViewport({ width: v.vw, height: v.vh, deviceScaleFactor: v.dsf });
  for (let shot = 1; shot <= 5; shot++) {
    if (onlyShot && Number(onlyShot) !== shot) continue;
    const url = pathToFileURL(path.join(__dirname, 'screenshots.html')).href + `?device=${dev}&shot=${shot}`;
    await page.goto(url, { waitUntil: 'load' });
    await page.evaluate(() => window.ready);
    const slug = await page.evaluate(() => window.SHOT_SLUG);
    const raw = path.join(dir, `_raw_${shot}.png`);
    writeFileSync(raw, await page.screenshot({ type: 'png' }));
    const file = path.join(dir, `0${shot}-${slug}.png`);
    // exact store size, 8-bit RGB, no alpha channel
    execFileSync('ffmpeg', ['-v', 'error', '-y', '-i', raw, '-vf', `scale=${v.out[0]}:${v.out[1]}:flags=lanczos`, '-pix_fmt', 'rgb24', file]);
    rmSync(raw);
    console.log(file);
  }
}
await browser.close();
