#!/usr/bin/env python3
"""Procedural soundtrack for the HPP Prüfungstrainer promo.

Everything is synthesized (no samples): a 120 BPM track in D major plus
sound design cued from timeline.js, so audio and picture share one cue sheet.

    python3 audio.py                      -> out/audio.wav           (promo, timeline.js)
    python3 audio.py --variant appstore   -> out/audio-appstore.wav  (App Store edit, timeline-appstore.js)
"""
import argparse
import json
import math
import os
import re
import wave

import numpy as np
from scipy.signal import butter, fftconvolve, sosfilt

ap = argparse.ArgumentParser()
ap.add_argument("--variant", choices=["promo", "appstore"], default="promo")
ap.add_argument("--out")
ARGS = ap.parse_args()
VARIANT = ARGS.variant
SR = 48000
HERE = os.path.dirname(os.path.abspath(__file__))
TL_FILE, TL_VAR = {"promo": ("timeline.js", "TIMELINE"), "appstore": ("timeline-appstore.js", "TIMELINE_AS")}[VARIANT]
T = json.loads(re.search(r"window\." + TL_VAR + r"\s*=\s*(\{.*?\});", open(os.path.join(HERE, TL_FILE)).read(), re.S).group(1))
DUR = float(T.get("end", 15.0))
N = int(SR * DUR)
rng = np.random.default_rng(1234)


def ns(d):
    return max(1, int(round(d * SR)))


def secs(n):
    return np.arange(n) / SR


def mtof(m):
    return 440.0 * 2 ** ((m - 69) / 12)


def beat(k):  # music grid: 120 BPM, first downbeat of the groove at 2.56 s (k = 5)
    return 0.06 + 0.5 * k


# ----------------------------------------------------------------------------
# Mix buses
# ----------------------------------------------------------------------------
class Bus:
    def __init__(self):
        self.x = np.zeros((2, N))

    def add(self, sig, t0, gain=1.0, pan=0.0):
        i0 = int(round(t0 * SR))
        if sig.ndim == 1:
            p = np.asarray(pan, float)
            if p.ndim == 0:
                a = (float(p) + 1) * math.pi / 4
                st = np.vstack([sig * math.cos(a), sig * math.sin(a)])
            else:  # per-sample pan trajectory
                a = (p + 1) * np.pi / 4
                st = np.vstack([sig * np.cos(a), sig * np.sin(a)])
        else:
            st = sig
        st = st * gain
        if i0 < 0:
            st = st[:, -i0:]
            i0 = 0
        n = min(st.shape[1], N - i0)
        if n > 0:
            self.x[:, i0 : i0 + n] += st[:, :n]


drums, bass_bus, pad_bus, arp_bus, fx, ui = (Bus() for _ in range(6))
send = Bus()  # reverb send
dsend = Bus()  # ping-pong delay send


def to_send(sig, t0, amt, pan=0.0):
    send.add(sig, t0, amt, pan)


# ----------------------------------------------------------------------------
# DSP helpers
# ----------------------------------------------------------------------------
def filt(x, kind, fc, order=2):
    sos = butter(order, fc, btype=kind, fs=SR, output="sos")
    return sosfilt(sos, x)


def svf(x, fc, q=0.707, mode="lp"):
    """TPT state-variable filter with a per-sample cutoff (for sweeps)."""
    n = len(x)
    fc = np.broadcast_to(np.asarray(fc, float), (n,))
    g = np.tan(np.pi * np.clip(fc, 15, SR * 0.45) / SR)
    k = 1.0 / q
    a1 = 1.0 / (1.0 + g * (g + k))
    a2 = g * a1
    a3 = g * a2
    xs, A1, A2, A3 = x.tolist(), a1.tolist(), a2.tolist(), a3.tolist()
    out = [0.0] * n
    ic1 = ic2 = 0.0
    m = {"lp": 0, "bp": 1, "hp": 2}[mode]
    for i in range(n):
        v3 = xs[i] - ic2
        v1 = A1[i] * ic1 + A2[i] * v3
        v2 = ic2 + A2[i] * ic1 + A3[i] * v3
        ic1 = 2 * v1 - ic1
        ic2 = 2 * v2 - ic2
        out[i] = v2 if m == 0 else (v1 if m == 1 else xs[i] - k * v1 - v2)
    return np.array(out)


def expcurve(n, a, b, shape=1.0):
    """Exponential glide from a to b over n samples (shape>1 = later)."""
    p = np.linspace(0, 1, n) ** shape
    return a * (b / a) ** p


def fade(x, fin=0.002, fout=0.01):
    n = x.shape[-1]
    a, b = min(ns(fin), n), min(ns(fout), n)
    y = x.copy()
    y[..., :a] *= np.linspace(0, 1, a)
    y[..., n - b :] *= np.linspace(1, 0, b)
    return y


def movavg(x, w):
    c = np.cumsum(np.concatenate([[0.0], x]))
    y = (c[w:] - c[:-w]) / w
    left = w // 2
    return np.concatenate([np.full(left, y[0]), y, np.full(len(x) - len(y) - left, y[-1])])


def noise(n):
    return rng.standard_normal(n)


def norm(x, peak=1.0):
    m = np.max(np.abs(x)) + 1e-12
    return x / m * peak


def saw_additive(f, n, phase=None, fmax=9000):
    t = secs(n)
    y = np.zeros(n)
    kmax = max(1, int(fmax // f))
    ph = rng.uniform(0, 2 * np.pi) if phase is None else phase
    for k in range(1, kmax + 1):
        y += np.sin(2 * np.pi * k * f * t + k * ph) / k
    return y * 0.55


# E.out from lib.js – cubic-bezier(0.16, 1, 0.3, 1)
def bezier(x1, y1, x2, y2):
    def f(p):
        if p <= 0:
            return 0.0
        if p >= 1:
            return 1.0
        lo, hi = 0.0, 1.0
        u = p
        for _ in range(60):
            x = 3 * (1 - u) ** 2 * u * x1 + 3 * (1 - u) * u ** 2 * x2 + u ** 3
            if x < p:
                lo = u
            else:
                hi = u
            u = (lo + hi) / 2
        return 3 * (1 - u) ** 2 * u * y1 + 3 * (1 - u) * u ** 2 * y2 + u ** 3

    return f


E_out = bezier(0.16, 1, 0.3, 1)


# ----------------------------------------------------------------------------
# Instruments & sound design
# ----------------------------------------------------------------------------
def kick(vel=1.0, dur=0.55, f0=150.0, f1=44.0):
    n = ns(dur)
    t = secs(n)
    f = f1 + (f0 - f1) * np.exp(-t / 0.032)
    body = np.sin(2 * np.pi * np.cumsum(f) / SR) * np.exp(-t / 0.19)
    click = filt(noise(n) * np.exp(-t / 0.0022), "bandpass", [1500, 6000]) * 0.35
    y = np.tanh(1.7 * (body + click))
    return fade(y * vel, 0.0005, 0.04)


def clap(vel=1.0):
    n = ns(0.5)
    t = secs(n)
    env = np.zeros(n)
    for off in (0.0, 0.0095, 0.0195):
        i = ns(off)
        env[i:] += np.exp(-t[: n - i] / 0.0055)
    i = ns(0.028)
    env[i:] += 0.85 * np.exp(-t[: n - i] / 0.085)
    y = filt(noise(n) * env, "bandpass", [900, 2600]) + 0.35 * filt(noise(n) * env, "bandpass", [3000, 7000])
    return fade(norm(y, vel), 0.0005, 0.05)


def hat(vel=1.0, decay=0.028, dur=0.18):
    n = ns(dur)
    t = secs(n)
    metal = sum(np.sign(np.sin(2 * np.pi * f * t + rng.uniform(0, 6))) for f in (205.3, 304.4, 369.6, 522.7, 540.0, 800.0))
    x = 0.5 * metal / 6 + noise(n)
    y = filt(x, "highpass", 7200, 4) * np.exp(-t / decay)
    return fade(norm(y, vel), 0.0003, 0.02)


def shaker(vel=1.0):
    n = ns(0.12)
    t = secs(n)
    env = (1 - np.exp(-t / 0.012)) * np.exp(-t / 0.035)
    y = filt(noise(n), "bandpass", [4500, 9500], 2) * env
    return fade(norm(y, vel), 0.001, 0.02)


def crash(vel=1.0, dur=2.2):
    n = ns(dur)
    t = secs(n)
    metal = sum(np.sign(np.sin(2 * np.pi * f * t + rng.uniform(0, 6))) for f in (263, 402, 587, 791, 1043, 1297))
    x = noise(n) + 0.35 * metal / 6
    y = filt(x, "highpass", 3800, 2) * (np.exp(-t / 0.55) * 0.8 + 0.2 * np.exp(-t / 0.08))
    y = filt(y, "lowpass", 14000, 2)
    st = np.vstack([y, np.roll(filt(noise(n), "highpass", 3800, 2) * np.exp(-t / 0.55), 37)])
    return fade(norm(st, vel), 0.0005, 0.3)


def rev_crash(dur=0.9, vel=1.0):
    c = crash(1.0, dur + 0.4)[:, : ns(dur)]
    y = c[:, ::-1] * np.linspace(0, 1, ns(dur)) ** 1.6
    return norm(y, vel)


def impact(vel=1.0, dur=1.6, f0=62.0, f1=31.0):
    n = ns(dur)
    t = secs(n)
    f = f1 + (f0 - f1) * np.exp(-t / 0.12)
    sub = np.sin(2 * np.pi * np.cumsum(f) / SR) * np.exp(-t / 0.55)
    thump = filt(noise(n) * np.exp(-t / 0.05), "lowpass", 900, 2) * 0.6
    air = filt(noise(n) * np.exp(-t / 0.18), "bandpass", [1200, 5000], 2) * 0.12
    return fade(np.tanh(1.4 * (sub + thump + air)) * vel, 0.0005, 0.2)


def whoosh(dur, f_a=350, f_peak=2600, f_b=500, peak_at=0.6, q=1.1, vel=1.0):
    n = ns(dur)
    p = np.linspace(0, 1, n)
    ia = int(n * peak_at)
    fc = np.concatenate([expcurve(ia, f_a, f_peak, 1.3), expcurve(n - ia, f_peak, f_b, 0.7)])
    x = noise(n)
    y = svf(x, fc, q, "bp") + 0.35 * svf(x, fc * 1.9, q * 1.4, "bp")
    env = np.where(p < peak_at, (p / peak_at) ** 2.2, ((1 - p) / (1 - peak_at)) ** 1.4)
    return fade(norm(y * env, vel), 0.002, 0.02)


def riser(dur, f0=180, f1=2600, vel=1.0):
    n = ns(dur)
    p = np.linspace(0, 1, n)
    fc = expcurve(n, 300, 7000, 1.4)
    nz = svf(noise(n), fc, 1.6, "bp")
    f = expcurve(n, f0, f1, 1.3)
    tone = np.sin(2 * np.pi * np.cumsum(f) / SR) + 0.4 * np.sin(2 * np.pi * np.cumsum(f * 1.5) / SR)
    y = norm(nz, 0.8) + 0.25 * tone
    return fade(y * p ** 2.2 * vel, 0.01, 0.012)


def pop(freq, vel=1.0, dur=0.12):
    n = ns(dur)
    t = secs(n)
    f = freq * (1 + 0.55 * (1 - np.exp(-t / 0.018)))
    y = np.sin(2 * np.pi * np.cumsum(f) / SR) * np.exp(-t / 0.035)
    y += 0.25 * filt(noise(n) * np.exp(-t / 0.002), "bandpass", [2000, 7000])
    return fade(y * vel, 0.0008, 0.02)


def click(freq=2500, vel=1.0):
    n = ns(0.06)
    t = secs(n)
    y = np.sin(2 * np.pi * freq * t) * np.exp(-t / 0.009)
    y += 0.5 * np.sin(2 * np.pi * freq * 0.5 * t) * np.exp(-t / 0.006)
    y += 0.3 * filt(noise(n) * np.exp(-t / 0.0015), "bandpass", [3000, 9000])
    return fade(y * vel, 0.0003, 0.01)


def tick(freq=1900, vel=1.0):  # clock / wood-block
    n = ns(0.09)
    t = secs(n)
    y = np.sin(2 * np.pi * freq * t) * np.exp(-t / 0.014) + 0.45 * np.sin(2 * np.pi * freq * 2.71 * t) * np.exp(-t / 0.006)
    y += 0.4 * filt(noise(n) * np.exp(-t / 0.002), "bandpass", [2500, 8000])
    return fade(y * vel, 0.0003, 0.01)


def bell(freq, vel=1.0, dur=1.8, ratio=3.5, index=2.4):
    n = ns(dur)
    t = secs(n)
    I = index * np.exp(-t / 0.35) + 0.15
    mod = np.sin(2 * np.pi * freq * ratio * t) * I
    y = np.sin(2 * np.pi * freq * t + mod) * np.exp(-t / 0.55)
    y += 0.3 * np.sin(2 * np.pi * freq * 2.0 * t) * np.exp(-t / 0.25)
    return fade(y * vel, 0.001, 0.2)


def pluck(freq, vel=1.0, dur=0.6):
    n = ns(dur)
    t = secs(n)
    I = 1.6 * np.exp(-t / 0.045) + 0.1
    y = np.sin(2 * np.pi * freq * t + I * np.sin(2 * np.pi * freq * 2 * t)) * np.exp(-t / 0.2)
    y += 0.18 * np.sin(2 * np.pi * freq * 4 * t) * np.exp(-t / 0.05)
    return fade(y * vel, 0.002, 0.05)


def pad_chord(notes, dur, vel=1.0, cutoff=1900, attack=0.35, release=0.45, detune=0.07):
    n = ns(dur + release)
    t = secs(n)
    L = np.zeros(n)
    R = np.zeros(n)
    for m in notes:
        f = mtof(m)
        for d, pan in ((-detune, -0.6), (0.0, 0.0), (detune, 0.6)):
            v = saw_additive(f * 2 ** (d / 12), n, fmax=cutoff * 2.5)
            a = (pan + 1) * math.pi / 4
            L += v * math.cos(a)
            R += v * math.sin(a)
    env = np.minimum(1, t / attack) * np.where(t < dur, 1.0, np.exp(-(t - dur) / (release / 3)))
    env *= 1 + 0.06 * np.sin(2 * np.pi * 0.35 * t)  # slow shimmer
    st = np.vstack([filt(L, "lowpass", cutoff, 2), filt(R, "lowpass", cutoff, 2)]) * env
    return fade(st / (len(notes) * 1.6) * vel, 0.005, 0.05)


def bass_note(midi, dur, vel=1.0):
    n = ns(dur + 0.05)
    t = secs(n)
    f = mtof(midi)
    sub = np.sin(2 * np.pi * f * t)
    body = saw_additive(f * 2, n, phase=0.0, fmax=1400)
    y = sub + 0.45 * filt(body, "lowpass", 520, 2)
    env = (1 - np.exp(-t / 0.004)) * (0.35 + 0.65 * np.exp(-t / 0.14)) * np.where(t < dur, 1, np.exp(-(t - dur) / 0.015))
    return fade(y * env * vel, 0.002, 0.03)


def chord_stab(notes, vel=1.0, dur=1.1):
    n = ns(dur)
    t = secs(n)
    y = sum(saw_additive(mtof(m), n, fmax=9000) for m in notes)
    fc = 900 + 5200 * np.exp(-t / 0.16)
    y = svf(y, fc, 0.9, "lp") * np.exp(-t / 0.45)
    return fade(norm(y, vel), 0.002, 0.1)


def crackle(t0, dur, rate0=60, vel=1.0):
    """Confetti paper rustle: a decaying Poisson rain of tiny clicks."""
    t = 0.0
    while t < dur:
        rate = rate0 * math.exp(-t / (dur * 0.45)) + 4
        t += rng.exponential(1 / rate)
        f = rng.uniform(2500, 7000)
        c = click(f, rng.uniform(0.15, 0.5)) * vel
        fx.add(c, t0 + t, 0.5, rng.uniform(-0.8, 0.8))


def popper(vel=1.0):
    n = ns(0.35)
    t = secs(n)
    crack = filt(noise(n) * np.exp(-t / 0.012), "bandpass", [900, 4200]) * 1.0
    body = np.sin(2 * np.pi * 140 * t) * np.exp(-t / 0.05) * 0.6
    tail = filt(noise(n) * np.exp(-t / 0.09), "highpass", 3000) * 0.25
    return fade(norm(crack + body + tail, vel), 0.0003, 0.05)


# ----------------------------------------------------------------------------
# Harmony (D major) – chords per section, voiced for smooth leading
# ----------------------------------------------------------------------------
CH = {
    "Bm9": ([59, 62, 66, 73], 35),
    "Gmaj7": ([55, 59, 62, 66], 31),
    "D/F#": ([62, 66, 69, 54], 30),
    "A": ([57, 61, 64, 69], 33),
    "Em7": ([55, 59, 62, 64], 28),
    "A7": ([57, 61, 64, 67], 33),
    "D": ([62, 66, 69, 74], 38),
    "Bm7": ([59, 62, 66, 69], 35),
    "G": ([55, 59, 62, 67], 31),
    "Dmaj9": ([62, 66, 69, 73, 76], 38),
}
PROG = [  # (chord, start_beat_k, end_beat_k)
    ("Gmaj7", 5, 9),
    ("D/F#", 9, 11),
    ("A", 11, 12),
    ("Em7", 12, 16),
    ("A7", 16, 19),
    ("D", 19, 22),
    ("Bm7", 22, 23),
    ("G", 23, 24),
    ("A", 24, 25),
]
if VARIANT == "appstore":  # 20 s edit: two more beats for "Verstehen.", chapter 3 (Prüfungstag) runs k 21-33
    PROG = [
        ("Gmaj7", 5, 9),
        ("D/F#", 9, 11),
        ("A", 11, 12),
        ("Em7", 12, 16),
        ("D/F#", 16, 18),
        ("A7", 18, 21),
        ("D", 21, 23),
        ("Bm7", 23, 25),
        ("G", 25, 27),
        ("A", 27, 29),
        ("D", 29, 31),
        ("G", 31, 32),
        ("A", 32, 33),
    ]
KEND = PROG[-1][2]  # the logo downbeat
SUCCESS_K = 19 if VARIANT == "promo" else 21  # brighter voicing from the "Bestehen." chapter on
BREAKS = (11, 18) if VARIANT == "promo" else (11, 20)  # beats without drums: whip, lead-in to the last chapter

# ----------------------------------------------------------------------------
# Arrangement
# ----------------------------------------------------------------------------
if VARIANT == "promo":
    land, whip0, whip1 = T["land"], T["whip"], T["whipEnd"]
    ff, result, conf, logo = T["ff"], T["result"], T["confetti"], T["logo"]
else:  # App Store edit: chapter slams sit on the same beats
    land, whip0, whip1 = T["ch1"], T["whip"], T["ch2"]
    ff, result, conf, logo = T["brk"], T["result"], T["ch3"], T["logo"]
TAIL = DUR - logo - 2.44  # extra ring-out after the logo (the promo ends 2.44 s after it)

# --- Intro: suspense pad + clock ticks ---------------------------------------
intro = pad_chord(CH["Bm9"][0], land - 0.02, vel=0.9, cutoff=900, attack=1.3, release=0.25)
pad_bus.add(intro, 0.0, 0.34)
to_send(intro[0] + intro[1], 0.0, 0.12)
for k in range(5):
    tk = tick(2100 if k % 2 == 0 else 1500, 0.9)
    ui.add(tk, beat(k), 0.28, 0.15 if k % 2 == 0 else -0.15)
    to_send(tk, beat(k), 0.05)
# word reveal breath
fx.add(whoosh(0.7, 900, 3200, 1200, 0.55, 0.8), 0.0, 0.07)
# pull-back: whoosh out + low bloom as the question wall appears
fx.add(whoosh(0.62, 3800, 1400, 260, 0.25, 0.9), T["pull"] - 0.08, 0.26, -0.1)
fx.add(impact(0.8, 1.4, 70, 34), T["pull"] + 0.02, 0.32)
# counter odometer: a click every time a digit wheel advances
wheels = [(5, 0.55), (16, 0.63), (20, 0.71)]
for wi, (target, dur) in enumerate(wheels):
    last = 0
    for i in range(int(dur * 1000)):
        tt = i / 1000
        v = int(target * E_out(tt / dur))
        if v != last:
            last = v
            c = click(2300 + 350 * wi, 0.5)
            ui.add(c, T["counter"] + tt, 0.2, (wi - 1) * 0.35)
# build into the drop
fx.add(riser(0.95, 160, 1900), land - 0.95, 0.22)
fx.add(whoosh(0.42, 500, 5200, 900, 0.7, 1.0), T["fly"], 0.42)
fx.add(rev_crash(0.5), land - 0.5, 0.22)

# --- Drums -------------------------------------------------------------------
kicks = [beat(k) for k in range(5, KEND) if k not in BREAKS] + [logo]
for tk in kicks:
    drums.add(kick(1.0), tk, 0.74)
for k in range(6, KEND, 2):
    if k in BREAKS:
        continue
    c = clap(1.0)
    drums.add(c, beat(k), 0.34, 0.05)
    to_send(c, beat(k), 0.22)
for k in range(5, KEND):
    if k in BREAKS:
        continue
    drums.add(hat(0.9), beat(k) + 0.25, 0.13, 0.25)
    if k >= 12:  # second half: 16th shaker for lift
        for s in (0.125, 0.375):
            drums.add(shaker(0.8), beat(k) + s, 0.07, -0.3)
for tk, g in ((land, 0.3), (whip1, 0.16), (conf, 0.34), (logo, 0.3)):
    drums.add(crash(1.0), tk, g)
    to_send(crash(1.0)[0], tk, 0.05)
drums.add(rev_crash(0.55), whip1 - 0.55, 0.2)
if VARIANT == "appstore":  # "Bestanden!" on the exam-day result
    drums.add(crash(1.0), result, 0.2)
    to_send(crash(1.0)[0], result, 0.04)

# --- Bass (8th pulses, octave bounce) -----------------------------------------
for name, k0, k1 in PROG:
    root = CH[name][1]
    for e in range((k1 - k0) * 2):
        te = beat(k0) + e * 0.25
        if 11 * 1.0 <= k0 + e / 2 < 12 and name == "A":  # breathe during the whip
            continue
        if ff + 0.1 < te < conf - 0.02:  # fast-forward break
            continue
        m = root + (12 if e % 2 else 0)
        bass_bus.add(bass_note(m, 0.2, 0.95 if e % 2 == 0 else 0.7), te, 0.56)
bass_bus.add(bass_note(38, 2.2 + TAIL, 1.0), logo, 0.55)

# --- Pads ---------------------------------------------------------------------
for name, k0, k1 in PROG:
    dur = beat(k1) - beat(k0)
    pc = pad_chord(CH[name][0], dur, 1.0, cutoff=2300 if k0 >= SUCCESS_K else 1700, attack=0.08, release=0.35)
    pad_bus.add(pc, beat(k0), 0.36)
    to_send(pc[0] + pc[1], beat(k0), 0.18)
final = pad_chord(CH["Dmaj9"][0], 1.7 + TAIL, 1.0, cutoff=2600, attack=0.03, release=0.8)
pad_bus.add(final, logo, 0.33)
to_send(final[0] + final[1], logo, 0.3)

# --- Arp (16ths, FM pluck, ping-pong) -------------------------------------------
PAT = [0, 2, 1, 3, 2, 1, 3, 2]
for name, k0, k1 in PROG:
    tones = [m + 12 for m in sorted(CH[name][0])[:4]]
    if k0 >= SUCCESS_K:
        tones = [m + 12 for m in tones]  # brighter for the success section
    steps = (k1 - k0) * 4
    for sidx in range(steps):
        ts = beat(k0) + sidx * 0.125
        if whip0 + 0.05 < ts < whip1 - 0.02:
            continue
        if ff + 0.12 < ts < conf - 0.02:
            continue
        m = tones[PAT[sidx % 8] % len(tones)]
        vel = (1.0 if sidx % 4 == 0 else 0.72) * (0.8 if k0 < 12 else 1.0)
        pl = pluck(mtof(m), vel)
        pan = 0.32 if sidx % 2 else -0.32
        arp_bus.add(pl, ts, 0.21, pan)
        dsend.add(pl, ts, 0.1)
        to_send(pl, ts, 0.14)

# --- UI & story sound design -----------------------------------------------------
if VARIANT == "promo":
    PANL, PANR = -0.3, 0.3
    fx.add(impact(1.0), land, 0.62)
    ui.add(click(2600, 1.0), T["tapLern"], 0.3, PANR)
    fx.add(whoosh(0.34, 700, 3600, 900, 0.45, 1.3), T["push"] - 0.04, 0.16, np.linspace(0.6, 0.1, ns(0.34)))
    pent = [74, 76, 78, 81, 83, 86, 88, 90]  # D-major pentatonic
    for i, m in enumerate(pent):
        p = pop(mtof(m) * 0.5, 0.9)
        tp = T["sats"] + i * 0.045 + 0.04
        ui.add(p, tp, 0.2, [0.1, 0.55, -0.1, 0.6, -0.2, 0.35, 0.2, -0.35][i])
        to_send(p, tp, 0.12)
    fx.add(whoosh(0.36, 600, 3000, 700, 0.5, 1.3), T["swipe"] - 0.02, 0.2, np.linspace(0.55, -0.1, ns(0.36)))
    # whip spin: big whoosh travelling right -> left, light impact on landing
    fx.add(whoosh(0.62, 280, 4200, 520, 0.62, 0.9), whip0 - 0.02, 0.5, np.linspace(0.75, -0.75, ns(0.62)))
    fx.add(impact(0.5, 1.0, 70, 38), whip1, 0.3)
    # exam interaction
    for tt in (T["tap1"], T["tap2"]):
        ui.add(click(2300, 1.0), tt, 0.3, PANL)
        ui.add(pop(mtof(79), 0.5), tt + 0.02, 0.12, PANL)
    ui.add(click(2700, 1.0), T["tapC"], 0.32, PANL)
    for i, m in enumerate((81, 86, 90)):  # "Richtig!" chime: A5 D6 F#6
        b = bell(mtof(m), 0.9, 1.4, ratio=2.0, index=1.2)
        ui.add(b, T["reveal"] + i * 0.07, 0.22, PANL + i * 0.15)
        to_send(b, T["reveal"] + i * 0.07, 0.3)
    for tg in (T["g1"], T["g2"]):  # glossary cards lift off the phone
        fx.add(whoosh(0.3, 800, 3800, 1400, 0.55, 1.2), tg - 0.12, 0.2, np.linspace(-0.2, -0.7, ns(0.3)))
        p = pop(mtof(76), 0.9)
        ui.add(p, tg + 0.02, 0.2, -0.6)
        to_send(p, tg, 0.15)
    # fast-forward through the exam: accelerating page flicks + rising whir
    ui.add(click(2500, 1.0), ff - 0.1, 0.3)
    dur_ff = conf - ff
    n = ns(dur_ff)
    f = expcurve(n, 170, 1300, 1.2)
    whir = np.sin(2 * np.pi * np.cumsum(f) / SR) + 0.5 * np.sin(2 * np.pi * np.cumsum(f * 2.01) / SR)
    whir = svf(whir + 0.6 * noise(n), f * 2.2, 1.4, "bp") * np.linspace(0, 1, n) ** 1.5
    fx.add(fade(norm(whir, 1.0), 0.01, 0.01), ff, 0.2)
    tt, gap = 0.0, 0.085
    while tt < dur_ff - 0.04:
        ui.add(click(rng.uniform(1800, 3200), 0.7), ff + tt, 0.14, rng.uniform(-0.3, 0.3))
        tt += gap
        gap = max(0.022, gap * 0.87)
    fx.add(riser(dur_ff, 220, 2400, 1.0), ff, 0.2)
    fx.add(whoosh(0.3, 300, 1400, 200, 0.4, 0.8), result - 0.06, 0.25)
    # trophy + confetti celebration
    tp = pop(mtof(74), 1.0)
    ui.add(tp, T["trophy"], 0.28)
    for i, m in enumerate((86, 90, 93, 98)):
        b = bell(mtof(m), 0.7, 1.2, ratio=3.5, index=1.8)
        ui.add(b, T["trophy"] + 0.03 + i * 0.04, 0.1, (i - 1.5) * 0.3)
        to_send(b, T["trophy"], 0.25)
    fx.add(popper(1.0), conf, 0.55, -0.7)
    fx.add(popper(1.0), conf + 0.012, 0.55, 0.7)
    fx.add(impact(1.0), conf, 0.55)
    stab = chord_stab([50, 57, 62, 66, 69, 74], 1.0)
    fx.add(stab, conf, 0.3)
    to_send(stab, conf, 0.2)
    crackle(conf + 0.08, 2.1, 70, 0.8)
    last = 0
    for i in range(800):
        v = int(round(27 * E_out(i / 800)))
        if v != last:
            last = v
            ui.add(click(3000, 0.6), T["count"] + i / 1000, 0.12)
    # outro: phone drops, everything pulls into the logo
    fx.add(whoosh(0.55, 2600, 1500, 180, 0.3, 0.9), T["exit"] + 0.04, 0.3)
    fx.add(riser(logo - T["exit"], 240, 1800, 0.9), T["exit"], 0.16)
    fx.add(rev_crash(logo - T["exit"] - 0.05), T["exit"] + 0.05, 0.22)
    fx.add(impact(1.0, 2.2, 58, 29), logo, 0.7)
    for i, m in enumerate((86, 90, 93, 97, 100)):  # D6 F#6 A6 C#7 E7 shimmer
        b = bell(mtof(m), 0.8, 2.4, ratio=3.5, index=1.6)
        fx.add(b, logo + 0.02 + i * 0.03, 0.12, (i - 2) * 0.35)
        to_send(b, logo, 0.4)
    for i, tt in enumerate((T["tag"] + 0.02, T["tag"] + 0.12)):
        p = pluck(mtof(81 + i * 5), 0.7)
        ui.add(p, tt, 0.14, (-0.3, 0.3)[i])
        to_send(p, tt, 0.3)
    ui.add(pop(mtof(81), 0.8), T["pill"], 0.16)
    # final shine across the app name
    sh = whoosh(0.85, 3000, 9000, 5000, 0.5, 0.7, 0.8)
    fx.add(sh, T["sweep"], 0.08, np.linspace(-0.7, 0.7, ns(0.85)))
    for i, m in enumerate((98, 102, 105)):
        b = bell(mtof(m), 0.6, 1.4)
        fx.add(b, T["sweep"] + 0.2 + i * 0.09, 0.05, -0.4 + i * 0.4)
        to_send(b, T["sweep"], 0.3)

else:
    def clear_whoosh(t0):  # chapter card lifts off the capture
        fx.add(whoosh(0.36, 1800, 5200, 2600, 0.4, 0.8), t0 - 0.03, 0.1, np.linspace(-0.2, 0.2, ns(0.36)))

    fx.add(impact(1.0), land, 0.62)
    clear_whoosh(T["ch1Out"])
    ui.add(click(2600, 1.0), T["tapLern"], 0.3)
    p = pop(mtof(69), 0.6)
    ui.add(p, T["dlgIn"], 0.12)
    to_send(p, T["dlgIn"], 0.1)
    ui.add(click(2700, 1.0), T["tapStart"], 0.3, 0.25)
    fx.add(whoosh(0.3, 900, 3200, 1100, 0.45, 1.2), T["dlgOut"] - 0.02, 0.1)
    fx.add(whoosh(0.36, 600, 3000, 700, 0.5, 1.3), T["swipe"] - 0.02, 0.2, np.linspace(0.45, -0.35, ns(0.36)))
    ui.add(click(2000, 0.6), T["swipe"] + 0.27, 0.14)
    # whip-pan between the chapters
    fx.add(whoosh(0.62, 280, 4200, 520, 0.62, 0.9), whip0 - 0.02, 0.5, np.linspace(0.75, -0.75, ns(0.62)))
    fx.add(impact(0.5, 1.0, 70, 38), whip1, 0.3)
    clear_whoosh(T["ch2Out"])
    for tt in (T["tap1"], T["tap2"]):
        ui.add(click(2300, 1.0), tt, 0.3)
        ui.add(pop(mtof(79), 0.5), tt + 0.06, 0.12)
    ui.add(click(2700, 1.0), T["tapC"], 0.32)
    for i, m in enumerate((81, 86, 90)):  # "Richtig!" chime: A5 D6 F#6
        b = bell(mtof(m), 0.9, 1.4, ratio=2.0, index=1.2)
        ui.add(b, T["tapC"] + 0.06 + i * 0.07, 0.22, -0.15 + i * 0.15)
        to_send(b, T["tapC"] + 0.06 + i * 0.07, 0.3)
    ui.add(click(2400, 0.9), T["tapGloss"], 0.26)
    p = pop(mtof(76), 0.8)
    ui.add(p, T["glossIn"], 0.14)
    to_send(p, T["glossIn"], 0.12)
    ui.add(click(2500, 0.8), T["tapClose"], 0.24)
    fx.add(whoosh(0.3, 900, 3200, 1100, 0.45, 1.2), T["glossOut"] - 0.02, 0.08)
    # bookmark: click, a two-note "saved" pop, the snackbar rising
    ui.add(click(2600, 1.0), T["tapMark"], 0.3)
    for i, m in enumerate((79, 86)):
        p = pop(mtof(m), 0.7)
        ui.add(p, T["tapMark"] + 0.04 + i * 0.07, 0.13, 0.1)
        to_send(p, T["tapMark"] + 0.04 + i * 0.07, 0.15)
    fx.add(whoosh(0.28, 700, 2400, 900, 0.5, 1.2), T["snack"], 0.07)
    # lead-in: the groove drops out, a riser pulls into the chapter slam
    fx.add(riser(conf - ff, 200, 2600, 1.0), ff, 0.22)
    fx.add(rev_crash(0.5), conf - 0.5, 0.2)
    # chapter 3: celebration
    for i, m in enumerate((86, 90, 93, 98)):
        b = bell(mtof(m), 0.7, 1.2, ratio=3.5, index=1.8)
        ui.add(b, conf - 0.04 + i * 0.04, 0.1, (i - 1.5) * 0.3)
        to_send(b, conf, 0.25)
    fx.add(popper(1.0), conf, 0.55, -0.7)
    fx.add(popper(1.0), conf + 0.012, 0.55, 0.7)
    fx.add(impact(1.0), conf, 0.55)
    stab = chord_stab([50, 57, 62, 66, 69, 74], 1.0)
    fx.add(stab, conf, 0.3)
    to_send(stab, conf, 0.2)
    crackle(conf + 0.08, 1.2, 60, 0.7)
    clear_whoosh(T["ch3Out"])
    # exam day: home -> "Prüfungstag simulieren" -> pick a past exam
    ui.add(click(2600, 1.0), T["tapDay"], 0.3)
    p = pop(mtof(69), 0.6)
    ui.add(p, T["dayIn"], 0.12)
    to_send(p, T["dayIn"], 0.1)
    ui.add(click(2700, 1.0), T["tapLabel"], 0.3, 0.2)
    fx.add(whoosh(0.3, 900, 3200, 1100, 0.45, 1.2), T["dayOut"] - 0.02, 0.1)
    # the countdown: two clock ticks, then it races through the time-lapse
    for i, tt in enumerate((T["dayOut"], T["dayOut"] + 0.16)):
        tk = tick(2100 if i % 2 == 0 else 1500, 0.9)
        ui.add(tk, tt, 0.26, 0.15 if i % 2 == 0 else -0.15)
        to_send(tk, tt, 0.05)
    dur_l = T["q25"] - T["lapse"]
    n = ns(dur_l)
    f = expcurve(n, 170, 1100, 1.2)
    whir = np.sin(2 * np.pi * np.cumsum(f) / SR) + 0.5 * np.sin(2 * np.pi * np.cumsum(f * 2.01) / SR)
    whir = svf(whir + 0.6 * noise(n), f * 2.2, 1.4, "bp") * np.linspace(0.3, 1, n) ** 1.5
    fx.add(fade(norm(whir, 1.0), 0.01, 0.03), T["lapse"], 0.14)
    tt, gap, i = 0.0, 0.07, 0
    while tt < dur_l - 0.02:
        tk = tick(2100 if i % 2 == 0 else 1500, 0.7)
        ui.add(tk, T["lapse"] + tt, 0.16, 0.2 if i % 2 == 0 else -0.2)
        tt, gap, i = tt + gap, max(0.024, gap * 0.86), i + 1
    ui.add(click(2300, 1.0), T["tapOpt"], 0.3)
    ui.add(pop(mtof(79), 0.5), T["tapOpt"] + 0.05, 0.12)
    ui.add(click(2600, 0.9), T["tapNext"], 0.26)
    for i in range(3):
        ui.add(click(rng.uniform(2200, 3000), 0.7), T["lapse2"] + 0.02 + i * 0.07, 0.14, rng.uniform(-0.25, 0.25))
    ui.add(click(2700, 1.0), T["tapSubmit"], 0.3)
    p = pop(mtof(69), 0.6)
    ui.add(p, T["subIn"], 0.12)
    to_send(p, T["subIn"], 0.1)
    ui.add(click(2700, 1.0), T["tapConfirm"], 0.3, 0.2)
    fx.add(whoosh(0.3, 300, 1400, 200, 0.4, 0.8), result - 0.06, 0.22)
    # "Bestanden!": the result chime
    for i, m in enumerate((86, 90, 93, 98)):
        b = bell(mtof(m), 0.75, 1.3, ratio=3.5, index=1.8)
        ui.add(b, result + 0.02 + i * 0.05, 0.11, (i - 1.5) * 0.3)
        to_send(b, result, 0.25)
    # outro into the end frame
    fx.add(whoosh(0.5, 2600, 1500, 180, 0.3, 0.9), T["outro"] + 0.02, 0.26)
    fx.add(riser(logo - T["outro"], 240, 1800, 0.9), T["outro"], 0.14)
    fx.add(rev_crash(logo - T["outro"] - 0.02), T["outro"] + 0.02, 0.2)
    fx.add(impact(1.0, 2.2, 58, 29), logo, 0.7)
    for i, m in enumerate((86, 90, 93, 97, 100)):  # D6 F#6 A6 C#7 E7 shimmer
        b = bell(mtof(m), 0.8, 2.4, ratio=3.5, index=1.6)
        fx.add(b, logo + 0.02 + i * 0.03, 0.12, (i - 2) * 0.35)
        to_send(b, logo, 0.4)
    for i, m in enumerate((81, 86, 90)):  # "Lernen. Verstehen. Bestehen."
        p = pluck(mtof(m), 0.7)
        ui.add(p, T["tag"] + 0.02 + i * 0.12, 0.13, (i - 1) * 0.3)
        to_send(p, T["tag"] + i * 0.12, 0.3)
    ui.add(pop(mtof(81), 0.8), T["pill"], 0.16)
    sh = whoosh(0.85, 3000, 9000, 5000, 0.5, 0.7, 0.8)
    fx.add(sh, T["sweep"], 0.08, np.linspace(-0.7, 0.7, ns(0.85)))
    for i, m in enumerate((98, 102, 105)):
        b = bell(mtof(m), 0.6, 1.4)
        fx.add(b, T["sweep"] + 0.2 + i * 0.09, 0.05, -0.4 + i * 0.4)
        to_send(b, T["sweep"], 0.3)

# ----------------------------------------------------------------------------
# Mixdown
# ----------------------------------------------------------------------------
# Sidechain: music ducks under every kick.
duck = np.ones(N)
tt = secs(N)
for tk in kicks:
    i0 = int(tk * SR)
    seg = tt[i0:] - tk
    d = 1 - 0.42 * np.exp(-seg / 0.11) * np.minimum(1, seg / 0.004)
    duck[i0:] = np.minimum(duck[i0:], d)
music = (pad_bus.x + arp_bus.x + bass_bus.x) * duck

# Ping-pong delay on the arp (dotted eighth).
delay = np.zeros((2, N))
dm = dsend.x[0] + dsend.x[1]
d = ns(0.375)
dmf = filt(dm, "bandpass", [500, 6000])
for i in range(1, 5):
    g = 0.42 ** (i - 1)
    sh = d * i
    delay[(i - 1) % 2, sh:] += dmf[: N - sh] * g * 0.5

# Convolution reverb (synthetic, decorrelated stereo IR).
def make_ir(dur=2.6, pre=0.018):
    n = ns(dur)
    t = secs(n)
    out = []
    r = np.random.default_rng(99)
    for ch in range(2):
        nz = r.standard_normal(n)
        env = np.exp(-t * 6.91 / dur) * (1 - np.exp(-t / 0.006))
        bright = filt(nz * env, "bandpass", [200, 7000], 1)
        dark = filt(nz * env, "bandpass", [200, 2200], 1)
        mix = np.clip(t / (dur * 0.7), 0, 1)
        ir = np.concatenate([np.zeros(ns(pre)), bright * (1 - mix) + dark * mix])
        out.append(ir / np.sqrt(np.sum(ir ** 2)))
    return out


ir = make_ir()
wet_in = send.x[0] + send.x[1]
wet = np.vstack([fftconvolve(wet_in, ir[0])[:N], fftconvolve(wet_in, ir[1])[:N]]) * 0.13

def lvl(name, x):
    rms = np.sqrt(np.mean(x ** 2)) + 1e-12
    print(f"  {name:6s} rms {20 * np.log10(rms):6.1f} dBFS   peak {20 * np.log10(np.max(np.abs(x)) + 1e-12):6.1f} dBFS")


for name, x in (("music", music), ("drums", drums.x), ("fx", fx.x), ("ui", ui.x), ("delay", delay), ("verb", wet)):
    lvl(name, x)
mix = music + drums.x + fx.x + ui.x + delay + wet
mix = filt(mix, "highpass", 28, 2)

# Gentle glue: slow RMS compression, then soft saturation.
mono = np.sqrt(movavg((mix[0] ** 2 + mix[1] ** 2) / 2, ns(0.03)))
thr = 0.25
gain = np.where(mono > thr, (thr / mono) ** (1 - 1 / 2.0), 1.0)
gain = movavg(gain, ns(0.02))
mix = mix * gain
mix = np.tanh(mix * 1.15) / 1.15

# Brick-wall limiter with 3 ms look-ahead.
ceil = 0.89
peak = np.max(np.abs(mix), axis=0)
g = np.minimum(1.0, ceil / np.maximum(peak, 1e-9))
blk = ns(0.003)
pad_n = (-len(g)) % blk
gb = np.concatenate([g, np.ones(pad_n)]).reshape(-1, blk).min(axis=1)
gb = np.minimum(gb, np.concatenate([gb[1:], [1.0]]))  # look-ahead one block
rel = math.exp(-1 / (0.08 * SR / blk))
sm = np.empty_like(gb)
cur = 1.0
for i, v in enumerate(gb):
    cur = v if v < cur else v + (cur - v) * rel
    sm[i] = cur
gs = np.interp(np.arange(len(g)), np.arange(len(sm)) * blk, sm)
mix = mix * gs

# Start/end: 8 ms fade-in, ring out and fade to silence at the very end.
mix[:, : ns(0.008)] *= np.linspace(0, 1, ns(0.008))
fo = ns(0.55)
mix[:, -fo:] *= np.linspace(1, 0, fo) ** 1.5

mix = mix / (np.max(np.abs(mix)) + 1e-9) * 0.89

out = ARGS.out or os.path.join(HERE, "out", "audio.wav" if VARIANT == "promo" else "audio-appstore.wav")
os.makedirs(os.path.dirname(out), exist_ok=True)
pcm = (np.clip(mix.T, -1, 1) * (2 ** 23 - 1)).astype(np.int32)
b = pcm.astype("<i4").tobytes()
b24 = bytearray()
raw = np.frombuffer(b, dtype=np.uint8).reshape(-1, 4)[:, :3]
with wave.open(out, "wb") as w:
    w.setnchannels(2)
    w.setsampwidth(3)
    w.setframerate(SR)
    w.writeframes(raw.tobytes())
print("wrote", out, f"peak={np.max(np.abs(mix)):.3f}")
