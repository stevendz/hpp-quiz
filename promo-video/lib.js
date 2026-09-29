// Tiny deterministic animation toolkit: everything is a pure function of time.

const clamp = (x, a = 0, b = 1) => Math.min(b, Math.max(a, x));
const lerp = (a, b, p) => a + (b - a) * p;
const range = (t, t0, t1) => clamp((t - t0) / (t1 - t0));

// CSS-style cubic-bezier solver.
function bezier(x1, y1, x2, y2) {
  const cx = 3 * x1, bx = 3 * (x2 - x1) - cx, ax = 1 - cx - bx;
  const cy = 3 * y1, by = 3 * (y2 - y1) - cy, ay = 1 - cy - by;
  const sx = (u) => ((ax * u + bx) * u + cx) * u;
  const sy = (u) => ((ay * u + by) * u + cy) * u;
  const dx = (u) => (3 * ax * u + 2 * bx) * u + cx;
  return (p) => {
    if (p <= 0) return 0;
    if (p >= 1) return 1;
    let u = p;
    for (let i = 0; i < 8; i++) {
      const e = sx(u) - p;
      if (Math.abs(e) < 1e-6) break;
      const d = dx(u);
      if (Math.abs(d) < 1e-6) break;
      u -= e / d;
    }
    let lo = 0, hi = 1;
    if (Math.abs(sx(u) - p) > 1e-5) {
      u = p;
      for (let i = 0; i < 40; i++) {
        const v = sx(u);
        if (Math.abs(v - p) < 1e-6) break;
        if (v < p) lo = u; else hi = u;
        u = (lo + hi) / 2;
      }
    }
    return sy(u);
  };
}

const E = {
  linear: (p) => p,
  inSine: (p) => 1 - Math.cos((p * Math.PI) / 2),
  outSine: (p) => Math.sin((p * Math.PI) / 2),
  inOutSine: (p) => -(Math.cos(Math.PI * p) - 1) / 2,
  inCubic: (p) => p * p * p,
  outCubic: (p) => 1 - Math.pow(1 - p, 3),
  inOutCubic: (p) => (p < 0.5 ? 4 * p * p * p : 1 - Math.pow(-2 * p + 2, 3) / 2),
  inQuint: (p) => p ** 5,
  outQuint: (p) => 1 - Math.pow(1 - p, 5),
  inOutQuint: (p) => (p < 0.5 ? 16 * p ** 5 : 1 - Math.pow(-2 * p + 2, 5) / 2),
  inExpo: (p) => (p <= 0 ? 0 : Math.pow(2, 10 * p - 10)),
  outExpo: (p) => (p >= 1 ? 1 : 1 - Math.pow(2, -10 * p)),
  inOutExpo: (p) =>
    p <= 0 ? 0 : p >= 1 ? 1 : p < 0.5 ? Math.pow(2, 20 * p - 10) / 2 : (2 - Math.pow(2, -20 * p + 10)) / 2,
  outBack: (p) => {
    const s = 1.70158;
    return 1 + (s + 1) * Math.pow(p - 1, 3) + s * Math.pow(p - 1, 2);
  },
  // Designer curves
  out: bezier(0.16, 1, 0.3, 1),
  in: bezier(0.7, 0, 0.84, 0),
  inOut: bezier(0.65, 0, 0.35, 1),
  whip: bezier(0.83, 0, 0.17, 1),
  snap: bezier(0.2, 0.9, 0.1, 1),
};

// Piecewise keyframes: [[t, value, easeIntoThisKey], ...]
function kf(t, keys) {
  if (t <= keys[0][0]) return keys[0][1];
  for (let i = 1; i < keys.length; i++) {
    const k = keys[i];
    if (t <= k[0]) {
      const a = keys[i - 1];
      const p = (t - a[0]) / (k[0] - a[0] || 1);
      return lerp(a[1], k[1], (k[2] || E.inOut)(p));
    }
  }
  return keys[keys.length - 1][1];
}

// Damped spring, 0 -> 1 (overshoots when underdamped). t = seconds since start.
function spring(t, stiffness = 170, damping = 14, mass = 1) {
  if (t <= 0) return 0;
  const w0 = Math.sqrt(stiffness / mass);
  const z = damping / (2 * Math.sqrt(stiffness * mass));
  if (z < 1) {
    const wd = w0 * Math.sqrt(1 - z * z);
    return 1 - Math.exp(-z * w0 * t) * (Math.cos(wd * t) + ((z * w0) / wd) * Math.sin(wd * t));
  }
  return 1 - Math.exp(-w0 * t) * (1 + w0 * t);
}

function rng(seed) {
  let a = seed >>> 0;
  return () => {
    a |= 0;
    a = (a + 0x6d2b79f5) | 0;
    let t = Math.imul(a ^ (a >>> 15), 1 | a);
    t = (t + Math.imul(t ^ (t >>> 7), 61 | t)) ^ t;
    return ((t ^ (t >>> 14)) >>> 0) / 4294967296;
  };
}

// Smooth pseudo-noise for drift / handheld feel.
const wobble = (t, f, ph = 0) =>
  Math.sin(t * f * 6.2832 + ph) * 0.6 + Math.sin(t * f * 2.71 * 6.2832 + ph * 1.7) * 0.4;

// Decaying camera shake that starts at t0.
function shake(t, t0, amp, decay = 0.35, freq = 17) {
  const d = t - t0;
  if (d < 0 || d > decay * 3) return [0, 0, 0];
  const env = amp * Math.exp(-d / decay) * Math.min(1, d * 40);
  return [
    env * Math.sin(d * freq * 6.2832),
    env * 0.8 * Math.sin(d * freq * 1.31 * 6.2832 + 1.3),
    env * 0.06 * Math.sin(d * freq * 0.87 * 6.2832 + 0.4),
  ];
}

// 3D helpers mirroring CSS: translate3d(x,y,z) rotateX(rx) rotateY(ry) rotateZ(rz) scale(s)
const D2R = Math.PI / 180;
function applyPose(p, pose) {
  let [x, y, z] = [p[0] * pose.s, p[1] * pose.s, p[2] * pose.s];
  const cz = Math.cos(pose.rz * D2R), sz = Math.sin(pose.rz * D2R);
  [x, y] = [x * cz - y * sz, x * sz + y * cz];
  const cy = Math.cos(pose.ry * D2R), sy = Math.sin(pose.ry * D2R);
  [x, z] = [x * cy + z * sy, -x * sy + z * cy];
  const cx = Math.cos(pose.rx * D2R), sx = Math.sin(pose.rx * D2R);
  [y, z] = [y * cx - z * sx, y * sx + z * cx];
  return [x + pose.x, y + pose.y, z + pose.z];
}
const poseCSS = (q) =>
  `translate3d(${q.x.toFixed(2)}px,${q.y.toFixed(2)}px,${q.z.toFixed(2)}px) rotateX(${q.rx.toFixed(3)}deg) rotateY(${q.ry.toFixed(3)}deg) rotateZ(${q.rz.toFixed(3)}deg) scale(${q.s.toFixed(4)})`;

// Split text into individually animatable units while preserving the exact
// kerned layout: measure every glyph/word with a Range, then overlay clones.
function splitText(el, { by = 'chars', mask = true, pad = [0.12, 0.08, 0.22, 0.08] } = {}) {
  const base = el.getBoundingClientRect();
  const units = [];
  const walker = document.createTreeWalker(el, NodeFilter.SHOW_TEXT);
  const nodes = [];
  while (walker.nextNode()) nodes.push(walker.currentNode);
  const overlay = document.createElement('div');
  overlay.className = 'split-ov';
  for (const node of nodes) {
    const text = node.textContent;
    const host = node.parentElement;
    const cs = getComputedStyle(host);
    const fs = parseFloat(cs.fontSize);
    const spans = [];
    if (by === 'chars') {
      for (let i = 0; i < text.length; i++) if (text[i] !== ' ') spans.push([i, i + 1]);
    } else {
      const re = /\S+/g;
      let m;
      while ((m = re.exec(text))) spans.push([m.index, m.index + m[0].length]);
    }
    for (const [a, b] of spans) {
      const r = document.createRange();
      r.setStart(node, a);
      r.setEnd(node, b);
      const rects = r.getClientRects();
      const rc = rects[0];
      if (!rc) continue;
      const w = document.createElement('div');
      w.className = 'su' + (mask ? ' mask' : '');
      const [pt, pr, pb, pl] = pad.map((v) => v * fs);
      Object.assign(w.style, {
        left: `${rc.left - base.left - pl}px`,
        top: `${rc.top - base.top - pt}px`,
        width: `${rc.width + pl + pr}px`,
        height: `${rc.height + pt + pb}px`,
      });
      const inner = document.createElement('div');
      inner.className = 'sui';
      inner.textContent = text.slice(a, b);
      Object.assign(inner.style, {
        fontFamily: cs.fontFamily,
        fontSize: cs.fontSize,
        fontWeight: cs.fontWeight,
        fontStyle: cs.fontStyle,
        fontVariantNumeric: cs.fontVariantNumeric,
        fontVariationSettings: cs.fontVariationSettings,
        letterSpacing: cs.letterSpacing,
        color: cs.color,
        paddingLeft: `${pl}px`,
        paddingTop: `${pt}px`,
        lineHeight: `${rc.height}px`,
        fontFeatureSettings: cs.fontFeatureSettings,
      });
      w.appendChild(inner);
      overlay.appendChild(w);
      units.push({ wrap: w, el: inner, text: text.slice(a, b), host });
    }
  }
  // Hide the source glyphs but keep them for layout.
  for (const node of nodes) {
    const hide = document.createElement('span');
    hide.style.visibility = 'hidden';
    node.parentNode.insertBefore(hide, node);
    hide.appendChild(node);
  }
  if (getComputedStyle(el).position === 'static') el.style.position = 'relative';
  el.appendChild(overlay);
  return units;
}

// Minimal style setter that avoids redundant DOM writes.
function css(el, props) {
  const c = el.__c || (el.__c = {});
  for (const k in props) {
    const v = props[k];
    if (c[k] !== v) {
      el.style[k] = v;
      c[k] = v;
    }
  }
}
const $ = (s, r = document) => r.querySelector(s);
const $$ = (s, r = document) => [...r.querySelectorAll(s)];
const f2 = (n) => n.toFixed(2);
