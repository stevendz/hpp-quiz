// App Store screenshots: iPhone 6.9" 1320×2868 and iPad 13" 2064×2752, PNG without alpha.
//   node render-screenshots.mjs                 -> out/screenshots/{iphone,ipad}/0N-<slug>.png
//   node render-screenshots.mjs --only ipad:3   -> a single one
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
};
const BROWSER = process.env.CHROME_PATH ?? '/Applications/Brave Browser.app/Contents/MacOS/Brave Browser';

const browser = await puppeteer.launch({
  executablePath: BROWSER,
  headless: true,
  args: ['--hide-scrollbars', '--force-color-profile=srgb', '--disable-lcd-text', '--font-render-hinting=none', '--allow-file-access-from-files'],
});
const page = await browser.newPage();
page.on('pageerror', (e) => console.error('[page error]', e.message));

for (const [dev, v] of Object.entries(DEVICES)) {
  if (only && !only.startsWith(dev)) continue;
  const dir = path.join(__dirname, 'out/screenshots', dev);
  mkdirSync(dir, { recursive: true });
  await page.setViewport({ width: v.vw, height: v.vh, deviceScaleFactor: v.dsf });
  for (let shot = 1; shot <= 5; shot++) {
    if (only && only.includes(':') && Number(only.split(':')[1]) !== shot) continue;
    const url = pathToFileURL(path.join(__dirname, 'screenshots.html')).href + `?device=${dev}&shot=${shot}`;
    await page.goto(url, { waitUntil: 'load' });
    await page.evaluate(() => window.ready);
    const slug = await page.evaluate(() => window.SHOT_SLUG);
    const raw = path.join(dir, `_raw_${shot}.png`);
    writeFileSync(raw, await page.screenshot({ type: 'png' }));
    const file = path.join(dir, `0${shot}-${slug}.png`);
    // exact App Store size, 8-bit RGB, no alpha channel
    execFileSync('ffmpeg', ['-v', 'error', '-y', '-i', raw, '-vf', `scale=${v.out[0]}:${v.out[1]}:flags=lanczos`, '-pix_fmt', 'rgb24', file]);
    rmSync(raw);
    console.log(file);
  }
}
await browser.close();
