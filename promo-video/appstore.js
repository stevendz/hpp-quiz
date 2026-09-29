// HPP Prüfungstrainer – App Store preview (portrait). The app is shown full screen exactly as a
// screen capture would show it (instant state changes, Material ink, 150 ms dialog fades);
// chapter copy sits on top of a frosted capture. Every pixel is a pure function of t.
(() => {
  'use strict';
  const D = window.DATA;
  const A = D.appstore;
  const T = window.TIMELINE_AS;
  const DUR = T.end;

  // ------------------------------------------------------------------
  // Device configuration (CSS px = points of the emulated screen)
  // ------------------------------------------------------------------
  const DEVICES = {
    iphone: {
      W: 443, H: 960, safeTop: 59, safeBot: 34, grad: 167,
      status: { timeCx: 67, timeY: 17, iconsR: 26, iconsY: 21 },
      type: { label: 11, bigMax: 78, bigFit: 372, sub: 25, sub2: 16.5, padX: 34, cy: 0.5, gap: [20, 18, 8] },
      hook: { phrase: 62, cardW: 200, cardH: 74, pitchX: 214, pitchY: 88, cols: 7, rows: 17, persp: 700, zNear: 380, zFar: -760, zDrift: -840, zFly: 1250, nearA: 170, nearB: 280,
        digits: 124, cl: 30, cs: 10.5, label: 7, wt: 10.4, hero: 17 },
      end: { logo: 148, logoY: 318, name: 40, nameY: 470, sub: 25.5, subY: 522, tag: 19, tagY: 584, pill: 12.5, pillY: 646, leafR: [330, 520] },
      conf: { size: 0.55, speed: [1500, 3050], g: 1150, amp: [9, 20] },
      shapes: 26, shapeScale: 1, drift: 30, shake: 1,
    },
    // iPad Pro 13"/12.9"/11", iPad Air, iPad (10.5"/11") – 1200 x 1600 = 768 x 1024 pt @ 1.5625
    ipad: {
      W: 768, H: 1024, safeTop: 24, safeBot: 20, grad: 159,
      status: { ipad: true, timeX: 20, timeY: 5, iconsR: 20, iconsY: 7 },
      type: { label: 15, bigMax: 132, bigFit: 610, sub: 40, sub2: 26, padX: 76, cy: 0.5, gap: [30, 28, 12] },
      hook: { phrase: 112, cardW: 320, cardH: 118, pitchX: 342, pitchY: 141, cols: 7, rows: 12, persp: 1200, zNear: 660, zFar: -1320, zDrift: -1460, zFly: 2170, nearA: 295, nearB: 485,
        digits: 204, cl: 50, cs: 17, label: 11, wt: 16.5, hero: 27 },
      end: { logo: 216, logoY: 318, name: 66, nameY: 520, sub: 42, subY: 598, tag: 30, tagY: 690, pill: 19, pillY: 782, leafR: [480, 760] },
      conf: { size: 0.8, speed: [1650, 3350], g: 1250, amp: [14, 30] },
      shapes: 34, shapeScale: 1.5, drift: 44, shake: 1.5,
    },
  };
  const DEVICE = new URLSearchParams(location.search).get('device') || 'iphone';
  const C = DEVICES[DEVICE];
  const W = C.W, H = C.H, CX = W / 2, CY = H / 2;

  const R = {}; // element refs
  const S = {}; // measured points (UI coordinates)
  const splits = {};
  let wallCards = [], shapes = [], leaves = [], drifts = [], conf = [], chapters = [];

  const show = (el, on) => css(el, { display: on ? '' : 'none' });
  const px = (v) => `${v}px`;

  // ------------------------------------------------------------------
  // Build: app UI
  // ------------------------------------------------------------------
  const icon = (id, cls = 'ic') => `<svg class="${cls}"><use href="#${id}"/></svg>`;
  const gradBg = `linear-gradient(${C.grad}deg, #0f1f20 0%, #1a2f31 50%, #0f1f20 100%)`;
  const esc = (s) => s.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
  // Flutter LinearGradient(topLeft -> bottomRight): the CSS angle depends on the box ratio
  const tlbr = (el) => {
    const a = (Math.atan2(el.offsetWidth, -el.offsetHeight) * 180) / Math.PI;
    el.style.backgroundImage = `linear-gradient(${a.toFixed(2)}deg, ${el.dataset.tlbr})`;
  };
  const clock = (s) => `${String(Math.floor(s / 60)).padStart(2, '0')}:${String(s % 60).padStart(2, '0')}`;
  const qActs = (marked, help) =>
    `<div class="q-acts"><div class="gbtn${marked ? ' on' : ''}" data-mark>${icon(marked ? 'i-bookmark' : 'i-bookmark-o', '')}</div><div class="gbtn">${icon('i-flag', '')}</div>${help ? `<div class="gbtn" data-gbtn>${icon('i-help', '')}</div>` : ''}</div>`;

  function optsHTML(options, prefix = '') {
    return options
      .map((o, i) => `<div class="opt" ${prefix ? `id="${prefix}${i}"` : ''}><div class="cb">✓</div><div class="ot">${o}</div><div class="mark"></div></div>`)
      .join('');
  }

  function examHTML(id, { timer, score, n, label, q, options, feedback, button, answered = false }) {
    return `<div class="scr a-exam" id="${id}" style="padding-top:${px(C.safeTop)};background:${gradBg}">
      <div class="ex-head"><div class="ex-menu">← Menü</div><div class="pill" data-timer>${timer}</div><div class="pill teal" data-score>${score}</div></div>
      <div class="ex-prog"><div class="ex-bar"><div class="ex-fill" style="width:${((n / 30) * 100).toFixed(2)}%"></div></div><div class="ex-count">Frage ${n}/30</div></div>
      <div class="ex-scroll"><div class="ex-content" data-content>
        <div class="q-card gcard${answered ? ' answered' : ''}" data-card>
          <div class="q-row"><div class="q-label">${label}</div>${qActs(false, true)}</div>
          <div class="q-text">${q}</div>
          <div class="opts">${options}</div>
          <div class="confirm" data-confirm>Antwort bestätigen (0 gewählt)</div>
          ${feedback}
          <div class="next inkable" data-next>${button}</div>
        </div>
      </div></div>
    </div>`;
  }

  // Prüfungstag: one question card (exam_day_screen.dart), options with radio buttons, no feedback
  const EXD = D.examDay;
  const DAY_MARKS = new Set([22]); // bookmarked earlier in this exam
  function dayCardHTML(n, sel) {
    const q = EXD.questions[n - 1];
    const nl = q.q.indexOf('\n');
    const qt = nl < 0 ? `<div class="q-text">${esc(q.q)}</div>` : `<div class="q-text multi">${esc(q.q.slice(0, nl))}<span class="st">${esc(q.q.slice(nl))}</span></div>`;
    const opts = q.options
      .map((o, i) => `<div class="opt${sel.includes(i) ? ' sel' : ''}" data-i="${i}">${q.multi ? '<div class="cb">✓</div>' : '<div class="rd"></div>'}<div class="ot">${esc(o)}</div><div class="mark"></div></div>`)
      .join('');
    return `<div class="q-row"><div class="q-label">FRAGE ${n}${q.multi ? ' · MEHRFACHAUSWAHL' : ''}</div>${qActs(DAY_MARKS.has(n), false)}</div>${qt}<div class="opts">${opts}</div>`;
  }

  function buildUI() {
    const ui = $('#ui');
    const [fa, fb] = D.flash;
    const chips = (tags) => tags.map((t) => `<div class="chip">${t}</div>`).join('');
    const target = ['Opiate', 'Benzodiazepine', 'LSD (Lysergsäurediethylamid)', 'Nikotin', 'Ecstasy'];
    const targetExpl =
      'LSD und Ecstasy (MDMA) verursachen keine körperliche Abhängigkeit, sondern allenfalls eine psychische. Opiate, Benzodiazepine und Nikotin hingegen führen zu einer ausgeprägten körperlichen Abhängigkeit mit Entzugssymptomatik.';
    const fbBox = (ok, text) => `<div class="feedback${ok ? '' : ' bad'}"><div class="fb-badge">${ok ? '✓ Richtig!' : '✗ Falsch!'}</div><div class="fb-text">${text}</div></div>`;

    const SUBG = 'rgba(78, 122, 124, 0.59), rgba(78, 122, 124, 0.15)';
    let html = '';
    // HOME
    html += `<div class="scr a-home" id="aHome" style="background:${gradBg}"><div class="safe" style="top:${px(C.safeTop)};bottom:${px(C.safeBot)}">
      <div class="home-card gcard">
        <div class="home-top">${icon('i-person')}</div>
        <div class="home-logo"><img src="assets/logo.png"></div>
        <div class="home-title">HPP Prüfungstrainer</div>
        <div class="home-subtitle">560 Fragen · 30 pro Prüfung</div>
        <div class="progress-sec">
          <div class="stats">
            <div class="stat"><div class="v" style="color:var(--tealLL)">412/560</div><div class="l">Gesehen</div></div>
            <div class="stat"><div class="v" style="color:var(--green)">356</div><div class="l">Korrekt</div></div>
            <div class="stat"><div class="v" style="color:var(--red)">56</div><div class="l">Falsch</div></div>
          </div>
          <div class="pbar"><div class="g" style="width:${((356 / 560) * 100).toFixed(2)}%"></div><div class="r" style="width:${((56 / 560) * 100).toFixed(2)}%"></div></div>
        </div>
        <div class="hbtn start inkable">Prüfung starten</div>
        <div class="mbtn gold inkable" id="aBtnDay" data-tlbr="#f3d27a, #d9a441, #b47f25"><div class="mt">Prüfungstag simulieren</div><div class="ms">Vergangene Prüfung · 28 Fragen · 55 Min.</div></div>
        <div class="mbtn inkable" data-tlbr="${SUBG}"><div class="mt">Fehler &amp; Merkliste üben</div><div class="ms">59 Fragen</div></div>
        <div class="hbtn sub inkable" id="aBtnLern" data-tlbr="${SUBG}">Lernkarten</div>
        <div class="hbtn sub inkable" data-tlbr="${SUBG}">Begriffe</div>
      </div></div></div>`;
    // TAG FILTER DIALOG (real flow: Lernkarten -> Themen auswählen -> Starten)
    html += `<div class="dlg" id="aTagDlg"><div class="barrier"></div><div class="dbox">
      <div class="dtitle">Themen auswählen</div>
      <div class="dcontent">
        <div class="trow all"><div class="cbx">✓</div><div>Alle auswählen</div></div>
        <div class="ddiv"></div>
        ${A.tags.map((t) => `<div class="trow"><div class="cbx">✓</div><div>${t}</div></div>`).join('')}
      </div>
      <div class="dactions"><div class="dbtn muted">Abbrechen</div><div class="dbtn teal inkable" id="aStartBtn">Starten (${A.tags.length})</div></div>
    </div></div>`;
    // FLASHCARDS
    html += `<div class="scr a-flash" id="aFlash" style="padding-top:${px(C.safeTop)};padding-bottom:${px(C.safeBot)};background:${gradBg}">
      <div class="topbar"><div class="iconbtn">${icon('i-back')}</div><div class="title">Lernkarten</div><div style="width:48px"></div></div>
      <div class="fc-prog"><div class="fc-count" id="aFcCount">38 / 240</div><div class="fc-bar"><div class="fc-fill" id="aFcFill" style="width:${((38 / 240) * 100).toFixed(2)}%"></div></div></div>
      <div class="fc-area" id="aFcArea">
        <div class="fc-card" id="aFcB"><div class="chips"><div class="wrap">${chips(fb.tags)}</div><div class="gbtn">${icon('i-help', '')}</div></div><div class="fc-text"></div></div>
        <div class="fc-card" id="aFcA"><div class="chips"><div class="wrap">${chips(fa.tags)}</div><div class="gbtn">${icon('i-help', '')}</div></div><div class="fc-text"></div></div>
      </div>
      <div class="fc-nav"><div class="navbtn">${icon('i-left', '')}</div><div class="navbtn">${icon('i-del', '')}</div><div class="navbtn">${icon('i-right', '')}</div></div>
    </div>`;
    // EXAM (Frage 7, multiple choice)
    html += examHTML('aExam', {
      timer: '08:36', score: '✓ 6/6', n: 7, label: 'FRAGE 7 · MEHRFACHAUSWAHL',
      q: 'Welche der folgenden Substanzen verursachen keine körperliche Abhängigkeit? (Wählen Sie zwei Antworten)',
      options: optsHTML(target, 'aOpt'), feedback: fbBox(true, targetExpl), button: 'Nächste Frage →',
    });
    // GLOSSARY DIALOG (terms the app finds in this question)
    html += `<div class="dlg" id="aGlossDlg"><div class="barrier"></div><div class="dbox">
      <div class="dtitle small">Fachbegriffe in dieser Frage</div>
      <div class="dcontent">${A.qterms.map(([k, v]) => `<div class="gitem"><div class="gk">${k}</div><div class="gv">${v}</div></div>`).join('')}</div>
      <div class="dactions"><div class="dbtn teal inkable" id="aGlossClose">Schließen</div></div>
    </div></div>`;
    // EXAM DAY PICKER (exam_day_dialog.dart)
    const chev = icon('i-right', '');
    html += `<div class="dlg" id="aDayDlg" style="padding:${px(C.safeTop + 24)} 40px ${px(C.safeBot + 24)}"><div class="barrier"></div><div class="dbox">
      <div class="dtitle">Prüfungstag simulieren</div>
      <div class="dcontent">
        <div class="pk-text">Eine vergangene Prüfung wie am Prüfungstag: 28 Fragen, 55 Minuten, Auswertung erst nach dem Abgeben. Bestanden ab 21 richtigen Antworten.</div>
        <div class="pk-list">${EXD.labels
          .map((l, i) => {
            const r = EXD.last[l];
            const right = r ? `<div class="pc${r[0] >= 21 ? '' : ' bad'}">${r[0]}/${r[1]}</div>` : '<div class="pn">neu</div>';
            return `<div class="pk-item${i === 0 ? ' inkable" id="aDayLabel' : ''}"><div class="pl">${l}</div>${right}${chev}</div>`;
          })
          .join('')}</div>
      </div>
      <div class="dactions"><div class="dbtn muted">Abbrechen</div></div>
    </div></div>`;
    // EXAM DAY (exam_day_screen.dart)
    html += `<div class="scr a-day" id="aDay" style="padding-top:${px(C.safeTop)};padding-bottom:${px(C.safeBot)};background:${gradBg}">
      <div class="dy-head"><div class="ex-menu">← Menü</div><div class="sp"></div><div class="dpill" data-dtime>${icon('i-timer', '')}<span>55:00</span></div><div class="sp"></div><div class="dpill cnt">${icon('i-checklist', '')}<span data-dcnt>0/28</span></div></div>
      <div class="dy-meta"><div class="l">PRÜFUNGSTAG · ${EXD.label.toUpperCase()}</div><div class="c" data-dnum>Frage 1/28</div></div>
      <div class="dy-nav"><div class="dy-strip" data-dstrip>${EXD.questions.map((q) => `<div class="ndot${DAY_MARKS.has(q.n) ? ' mk' : ''}"><i>${q.n}</i></div>`).join('')}</div></div>
      <div class="ex-scroll"><div class="ex-content"><div class="q-card gcard" data-dcard>${dayCardHTML(1, [])}</div></div></div>
      <div class="dy-bot"><div class="dnav dis" data-dprev>${icon('i-left', '')}</div><div class="dsub inkable" data-dsub data-tlbr="#4e7a7c, #6a9a9c">Abgeben</div><div class="dnav" data-dnext>${icon('i-right', '')}</div></div>
    </div>`;
    // SUBMIT CONFIRMATION
    html += `<div class="dlg" id="aSubDlg"><div class="barrier"></div><div class="dbox">
      <div class="dtitle big">Prüfung abgeben?</div>
      <div class="dcontent"><div class="sub-text">Alle Fragen sind beantwortet. Nach dem Abgeben siehst du deine Auswertung.</div></div>
      <div class="dactions"><div class="dbtn muted">Weiter bearbeiten</div><div class="dbtn teal inkable" id="aSubOk">Abgeben</div></div>
    </div></div>`;
    // RESULT (exam day)
    const pct = Math.round((EXD.score / 28) * 100);
    const stem = (q) => esc(q.split('\n')[0]);
    html += `<div class="scr a-result" id="aResult" style="background:${gradBg}"><div class="rs-wrap" style="top:${px(C.safeTop + 12)}">
      <div class="rs-card gcard">
        <div class="rs-emoji">🏆</div>
        <div class="rs-title">Bestanden! 🎉</div>
        <div class="rs-score">${EXD.score} / 28</div>
        <div class="rs-pct">${pct}% richtig</div>
        <div class="rs-meta">Prüfungstag ${EXD.label} · 47:12 min</div>
        <div class="rs-msg">Hervorragend! Mit ${EXD.score} von 28 richtigen Antworten hast du diese Prüfung bestanden.</div>
        <div class="rs-btns"><div class="rs-new">Weitere Prüfung</div><div class="rs-back">Zurück</div></div>
      </div>
      <div class="rs-h">Auswertung</div>
      <div class="rs-row"><div>Alle aufklappen</div><div>Alle zuklappen</div></div>
      ${EXD.questions.slice(0, 6).map((q) => `<div class="tile${q.ok ? '' : ' bad'}"><div class="tc">${q.ok ? '✓' : '✗'}</div><div class="tb"><div class="tl">FRAGE ${q.n}</div><div class="tt">${stem(q.q)}</div></div>${icon('i-more', '')}</div>`).join('')}
    </div></div>`;
    // status bar, touch hotspot
    const st = C.status;
    const timeStyle = st.ipad
      ? `left:${px(st.timeX)};top:${px(st.timeY)};text-align:left;font-size:13px;line-height:14px`
      : `left:${px(st.timeCx - 40)};width:80px;top:${px(st.timeY)}`;
    html += `<div class="statusbar" style="height:${px(st.ipad ? C.safeTop : C.safeTop - 5)}">
      <div class="time" style="${timeStyle}">9:41</div>
      <div class="icons" style="right:${px(st.iconsR)};top:${px(st.iconsY)};${st.ipad ? 'transform:scale(0.8);transform-origin:100% 0' : ''}">
        ${st.ipad ? '' : '<svg width="19" height="12" viewBox="0 0 19 12"><rect x="0" y="8" width="3.2" height="4" rx="1" fill="#fff"/><rect x="5" y="5.5" width="3.2" height="6.5" rx="1" fill="#fff"/><rect x="10" y="3" width="3.2" height="9" rx="1" fill="#fff"/><rect x="15" y="0" width="3.2" height="12" rx="1" fill="#fff"/></svg>'}
        <svg width="17" height="12" viewBox="0 0 17 12"><path d="M8.5 2.6c2.3 0 4.4.9 6 2.4l1.2-1.2C13.8 2 11.3.9 8.5.9S3.2 2 1.3 3.8L2.5 5c1.6-1.5 3.7-2.4 6-2.4zm0 3.4c1.4 0 2.6.5 3.6 1.4l1.2-1.2C12 5 10.3 4.3 8.5 4.3S5 5 3.7 6.2l1.2 1.2c1-.9 2.2-1.4 3.6-1.4zm0 3.4c-.6 0-1.1.2-1.5.6l1.5 1.6L10 10c-.4-.4-.9-.6-1.5-.6z" fill="#fff"/></svg>
        <svg width="27" height="13" viewBox="0 0 27 13"><rect x="0.5" y="0.5" width="23" height="12" rx="3.8" fill="none" stroke="rgba(255,255,255,.4)"/><rect x="2" y="2" width="20" height="9" rx="2.4" fill="#fff"/><path d="M25 4.5v4c.8-.3 1.3-1.1 1.3-2s-.5-1.7-1.3-2z" fill="rgba(255,255,255,.45)"/></svg>
      </div></div>
      <div class="ripple" id="aRipple"></div><div class="tap" id="aTap"></div>`;
    ui.innerHTML = html;
    const snack = document.createElement('div');
    snack.className = 'snack';
    snack.id = 'aSnack';
    snack.style.bottom = px(C.safeBot + 10);
    snack.textContent = 'Zur Merkliste hinzugefügt';
    $('#aExam').appendChild(snack);
    $('#aFcA .fc-text').textContent = fa.text;
    $('#aFcB .fc-text').textContent = fb.text;
    for (const el of $$('.inkable', ui)) {
      const ink = document.createElement('div');
      ink.className = 'ink';
      el.appendChild(ink);
    }
  }

  // ------------------------------------------------------------------
  // Build: graphics
  // ------------------------------------------------------------------
  function buildBG() {
    const blobCol = { blobA: '78,122,124', blobB: '138,180,182', blobC: '34,197,94', blobD: '46,90,92' };
    for (const [id, c] of Object.entries(blobCol)) {
      const el = document.getElementById(id);
      const s = Math.max(W, H) * 1.1;
      Object.assign(el.style, { width: px(s), height: px(s), marginLeft: px(-s / 2), marginTop: px(-s / 2), background: `radial-gradient(circle closest-side, rgba(${c},1) 0%, rgba(${c},0.45) 42%, rgba(${c},0) 100%)` });
    }
    const SH = {
      circle: '<circle cx="50" cy="50" r="38"/>', square: '<rect x="15" y="15" width="70" height="70" rx="8"/>',
      triangle: '<path d="M50 14 L88 82 L12 82 Z"/>', diamond: '<path d="M50 10 L90 50 L50 90 L10 50 Z"/>',
      zig: '<path d="M10 30 H42 V70 H90"/>', cross: '<path d="M22 22 L78 78 M78 22 L22 78"/>',
    };
    const types = Object.keys(SH);
    const rnd = rng(19);
    const host = $('#shapes');
    for (let i = 0; i < C.shapes; i++) {
      const d = 0.25 + rnd() * 0.75;
      const size = (13 + rnd() * 15) * (0.7 + d * 0.6) * C.shapeScale;
      const svg = document.createElementNS('http://www.w3.org/2000/svg', 'svg');
      svg.setAttribute('viewBox', '0 0 100 100');
      svg.setAttribute('width', size);
      svg.setAttribute('height', size);
      svg.innerHTML = `<g fill="none" stroke="#8AB4B6" stroke-width="${(7 / (0.7 + d * 0.6)).toFixed(2)}" stroke-linecap="round" stroke-linejoin="round">${SH[types[i % 6]]}</g>`;
      host.appendChild(svg);
      shapes.push({ el: svg, x: -60 + rnd() * (W + 120), y: -60 + rnd() * (H + 120), d, size, rot: rnd() * 360, vr: (rnd() - 0.5) * 40, ph: rnd() * 6, a: 0.07 + d * 0.13 });
    }
    const g = document.createElement('canvas');
    g.width = g.height = 256;
    const gc = g.getContext('2d');
    const img = gc.createImageData(256, 256);
    const r2 = rng(77);
    for (let i = 0; i < img.data.length; i += 4) {
      const v = Math.floor(r2() * 255);
      img.data[i] = img.data[i + 1] = img.data[i + 2] = v;
      img.data[i + 3] = 255;
    }
    gc.putImageData(img, 0, 0);
    const tile = (256 * 2) / (window.devicePixelRatio || 1);
    Object.assign($('#grain').style, { left: px(-tile), top: px(-tile), width: px(W + 2 * tile), height: px(H + 2 * tile), backgroundImage: `url(${g.toDataURL()})`, backgroundSize: `${tile}px ${tile}px` });
    R.grainTile = tile;
  }

  function buildHook() {
    const h = C.hook;
    const wall = $('#wall');
    Object.assign($('#wallWrap').style, { perspective: px(h.persp), perspectiveOrigin: '50% 50%' });
    Object.assign(wall.style, { left: px(CX), top: px(CY) });
    const rnd = rng(3);
    let k = 0;
    const hr = Math.floor(h.rows / 2), hc = Math.floor(h.cols / 2);
    for (let r = 0; r < h.rows; r++) {
      for (let c = 0; c < h.cols; c++) {
        const hero = r === hr && c === hc;
        const s = D.stems[k++ % D.stems.length];
        const x = (c - (h.cols - 1) / 2) * h.pitchX + (r % 2 ? h.pitchX / 4 : -h.pitchX / 4);
        const y = (r - (h.rows - 1) / 2) * h.pitchY;
        const z = hero ? 0 : (rnd() - 0.5) * 90;
        const st = rnd();
        const dd = Math.hypot(x / (h.pitchX * h.cols * 0.55), y / (h.pitchY * h.rows * 0.5));
        const base = hero ? 1 : clamp(1.2 - dd * 1.05, 0.18, 1) * (0.72 + rnd() * 0.28);
        const el = document.createElement('div');
        el.className = 'wcard' + (hero ? ' hero' : '');
        const ic = hero ? '' : st < 0.13 ? '<i class="ok">✓</i>' : st < 0.2 ? '<i class="no">✗</i>' : '';
        el.innerHTML = hero
          ? `<div class="wl">HPP · PRÜFUNGSFRAGE</div><div class="wt">Welche Aussage trifft zu?</div>`
          : `<div class="wl">${s[0]} · FRAGE ${s[1]}${ic}</div><div class="wt">${s[2]}</div>`;
        const shade = Math.round(lerp(10, 22, base));
        Object.assign(el.style, {
          width: px(h.cardW), height: px(h.cardH), padding: `${px(h.cardH * 0.12)} ${px(h.cardW * 0.052)}`,
          transform: `translate3d(${x - h.cardW / 2}px,${y - h.cardH / 2}px,${z}px)`,
          background: `rgb(${shade},${shade + 20},${shade + 22})`, borderColor: `rgba(138,180,182,${(0.05 + base * 0.14).toFixed(3)})`,
        });
        const wl = $('.wl', el), wt = $('.wt', el);
        wl.style.fontSize = px(h.label * 0.8);
        wl.style.marginBottom = px(h.cardH * 0.07);
        wt.style.fontSize = px(hero ? h.hero : h.wt);
        $$('i', el).forEach((i) => Object.assign(i.style, { width: px(h.label * 1.4), height: px(h.label * 1.4), fontSize: px(h.label * 0.8) }));
        wl.style.opacity = wt.style.opacity = (0.25 + base * 0.75).toFixed(3);
        wall.appendChild(el);
        wallCards.push({ el, x, y, z });
      }
    }
    // counter wheels
    const wheels = [5, 16, 20];
    const digits = $('#digits');
    digits.style.fontSize = px(h.digits);
    digits.innerHTML = wheels.map(() => `<div class="wheel"><div class="strip">${Array.from({ length: 30 }, (_, i) => `<div>${i % 10}</div>`).join('')}</div></div>`).join('');
    const probe = document.createElement('span');
    probe.style.cssText = `position:absolute;visibility:hidden;font:800 ${h.digits}px/1 "Plus Jakarta Sans";font-variant-numeric:tabular-nums;letter-spacing:-0.04em`;
    probe.textContent = '0';
    document.body.appendChild(probe);
    const dw = probe.getBoundingClientRect().width;
    probe.remove();
    $$('.wheel', digits).forEach((w) => Object.assign(w.style, { width: px(dw), height: px(h.digits) }));
    $$('.strip div', digits).forEach((d) => (d.style.height = px(h.digits)));
    R.strips = $$('.strip', digits);
    R.wheelTargets = wheels;
    Object.assign($('#cl').style, { fontSize: px(h.cl), marginTop: px(h.cl * 0.1) });
    Object.assign($('#cs').style, { fontSize: px(h.cs), marginTop: px(h.cs * 1.3) });
    $('#phrase').style.fontSize = px(h.phrase);
  }

  function buildChapters() {
    const host = $('#chapters');
    const defs = [
      { idx: '01', label: 'Lernkarten', big: 'Lernen', sub: '<span class="num" data-n="240">240</span> Lernkarten', sub2: 'zu <em class="s">allen</em> Prüfungsthemen', t0: T.ch1, t1: T.ch1Out },
      { idx: '02', label: 'Erklärungen &amp; Glossar', big: 'Verstehen', sub: 'Jede Antwort <em class="s">erklärt.</em>', sub2: `<span class="num" data-n="${A.glossCount}">${A.glossCount}</span> Fachbegriffe im Glossar`, t0: T.ch2, t1: T.ch2Out },
      { idx: '03', label: 'Prüfungstag', big: 'Bestehen', sub: 'Prüfungstag <em class="s">simulieren.</em>', sub2: '28 Fragen · 55 Minuten · wie in der Prüfung', t0: T.ch3, t1: T.ch3Out },
    ];
    const ty = C.type;
    defs.forEach((d) => {
      const el = document.createElement('div');
      el.className = 'chap';
      el.innerHTML = `<div class="label"><span class="idx">${d.idx}</span><span class="ln"></span><span>${d.label}</span></div>
        <div class="big">${d.big}<span class="acc">.</span></div><div class="sub">${d.sub}</div><div class="sub2">${d.sub2}</div>`;
      host.appendChild(el);
      chapters.push({ el, ...d });
    });
    // shared big-word size: the longest word ("Verstehen.") fits the text column
    chapters.forEach((c) => (c.el.style.display = 'block'));
    const probe = chapters[1].el.querySelector('.big');
    probe.style.fontSize = px(100);
    const fs = Math.min(ty.bigMax, (100 * ty.bigFit) / probe.getBoundingClientRect().width);
    chapters.forEach((c) => {
      const q = (s) => c.el.querySelector(s);
      q('.label').style.fontSize = px(ty.label);
      q('.big').style.fontSize = px(fs);
      q('.sub').style.fontSize = px(ty.sub);
      q('.sub2').style.fontSize = px(ty.sub2);
      q('.label').style.marginBottom = px(ty.gap[0]);
      q('.big').style.marginBottom = px(ty.gap[1]);
      q('.sub').style.marginBottom = px(ty.gap[2]);
      for (const n of c.el.querySelectorAll('.num')) {
        n.style.width = px(n.getBoundingClientRect().width + 1);
      }
      c.nums = [...c.el.querySelectorAll('.num')].map((n) => ({ el: n, v: Number(n.dataset.n) }));
      c.label = q('.label');
      c.subEl = q('.sub');
      c.sub2El = q('.sub2');
      const r = c.el.getBoundingClientRect();
      c.el.style.left = px(ty.padX);
      c.el.style.top = px(H * ty.cy - r.height / 2);
      c.units = splitText(q('.big'), { by: 'chars' });
      c.units.forEach((u) => {
        if (u.host.classList.contains('acc')) return;
        Object.assign(u.el.style, { backgroundImage: 'linear-gradient(180deg, #FFFFFF 35%, #BFD5D7 100%)', webkitBackgroundClip: 'text', backgroundClip: 'text', webkitTextFillColor: 'transparent' });
      });
      c.el.style.display = 'none';
    });
  }

  const LEAF = 'M0 -62 C 30 -36 36 18 4 62 C -26 34 -32 -22 0 -62 Z';
  function buildEnd() {
    const e = C.end;
    const lw = $('#logoWrap');
    Object.assign(lw.style, { left: px(CX), top: px(e.logoY) });
    const L = e.logo;
    for (const el of [$('#lg'), $('#ring1'), $('#ring2')]) Object.assign(el.style, { left: px(-L / 2), top: px(-L / 2), width: px(L), height: px(L) });
    const G = L * 3.6;
    Object.assign($('#lglow').style, { left: px(-G / 2), top: px(-G / 2), width: px(G), height: px(G) });
    const O = L * 0.78;
    const orbit = $('#orbit');
    Object.assign(orbit.style, { left: px(-O * 1.1), top: px(-O * 1.1), width: px(O * 2.2), height: px(O * 2.2) });
    orbit.setAttribute('viewBox', `${-O * 1.1} ${-O * 1.1} ${O * 2.2} ${O * 2.2}`);
    $('#orbitC').setAttribute('r', O);
    $('#od1').setAttribute('r', 3);
    $('#od1').setAttribute('cx', O);
    $('#od2').setAttribute('r', 2);
    $('#od2').setAttribute('cx', -O);
    R.orbitR = O;
    const cols = ['#8AB4B6', '#C5D8DA', '#6A9A9C', '#DCE8E9', '#4E7A7C', '#8AB4B6', '#C5D8DA'];
    const rnd = rng(8);
    for (let i = 0; i < 7; i++) {
      const el = document.createElementNS('http://www.w3.org/2000/svg', 'svg');
      el.setAttribute('class', 'leaf');
      el.setAttribute('width', '140');
      el.setAttribute('height', '140');
      el.setAttribute('viewBox', '-70 -70 140 140');
      el.innerHTML = `<path d="${LEAF}" fill="${cols[i]}"/><path d="M2 -48 C 8 -10 8 20 3 54" stroke="rgba(15,31,32,.45)" stroke-width="3" fill="none" stroke-linecap="round"/>`;
      lw.insertBefore(el, $('#lg'));
      leaves.push({ el, a0: (i / 7) * Math.PI * 2 + rnd() * 0.5, r0: e.leafR[0] + rnd() * (e.leafR[1] - e.leafR[0]), spin: 1.6 + rnd() * 1.2, s: (0.3 + rnd() * 0.28) * (L / 148), delay: rnd() * 0.12 });
    }
    const P = [[0.14, 0.1], [0.86, 0.14], [0.1, 0.82], [0.9, 0.86], [0.3, 0.95], [0.72, 0.97], [0.8, 0.04], [0.06, 0.45]];
    const host = $('#drifts');
    P.forEach(([x, y], i) => {
      const el = document.createElementNS('http://www.w3.org/2000/svg', 'svg');
      el.setAttribute('class', 'drift');
      el.setAttribute('viewBox', '-70 -70 140 140');
      el.setAttribute('width', C.drift);
      el.setAttribute('height', C.drift);
      el.innerHTML = `<path d="${LEAF}" fill="${['#8AB4B6', '#C5D8DA', '#6A9A9C'][i % 3]}"/>`;
      host.appendChild(el);
      drifts.push({ el, x: x * W, y: y * H, s: 0.5 + rnd() * 0.6, r0: rnd() * 360, vr: (rnd() - 0.5) * 30, ph: rnd() * 6, a: 0.1 + rnd() * 0.12 });
    });
    $('#appname').style.fontSize = px(e.name);
    $('#appsub').style.fontSize = px(e.sub);
    $('#tagline').style.fontSize = px(e.tag);
    Object.assign($('#pill').style, { fontSize: px(e.pill), padding: `${px(e.pill * 0.95)} ${px(e.pill * 1.6)}` });
    $('#pill').textContent = `560 Fragen · 240 Lernkarten · ${A.glossCount} Begriffe`;
  }

  function buildConfetti() {
    const cf = C.conf;
    const rnd = rng(42);
    const PAL = ['#22C55E', '#86EFAC', '#86EFAC', '#8AB4B6', '#C5D8DA', '#FBBF24', '#F1F5F9', '#6A9A9C', '#DCE8E9'];
    const make = (x0, y0, ang, spread, v0, v1, t0) => () => {
      const a = (ang + (rnd() - 0.5) * spread) * D2R;
      const v = v0 + rnd() * (v1 - v0);
      const kind = rnd();
      const sz = cf.size;
      return {
        x0: x0 + (rnd() - 0.5) * 30, y0, t0: t0 + rnd() * rnd() * 0.16, vx: Math.cos(a) * v, vy: Math.sin(a) * v,
        w: (kind < 0.72 ? 10 + rnd() * 9 : kind < 0.9 ? 9 + rnd() * 4 : 4) * sz, h: (kind < 0.72 ? 6 + rnd() * 5 : kind < 0.9 ? 9 + rnd() * 4 : 20 + rnd() * 10) * sz,
        round: kind >= 0.72 && kind < 0.9, col: PAL[Math.floor(rnd() * PAL.length)], rot: rnd() * 6.28, vrot: (rnd() - 0.5) * 14,
        flip: rnd() * 6.28, vflip: 6 + rnd() * 10, z: rnd() * 2 - 1, fa: cf.amp[0] + rnd() * (cf.amp[1] - cf.amp[0]), ff: 1.2 + rnd() * 1.6, fph: rnd() * 6.28, k: 1.9 + rnd() * 0.9,
      };
    };
    const add = (n, fn) => {
      for (let i = 0; i < n; i++) conf.push(fn());
    };
    add(80, make(W * 0.06, H + 20, -74, 38, cf.speed[0], cf.speed[1], T.ch3));
    add(80, make(W * 0.94, H + 20, -106, 38, cf.speed[0], cf.speed[1], T.ch3));
    add(60, make(CX, H * 0.42, -90, 150, cf.speed[0] * 0.45, cf.speed[1] * 0.5, T.ch3 + 0.02));
    const c = $('#conf');
    R.dpr = window.devicePixelRatio || 1;
    c.width = W * R.dpr;
    c.height = H * R.dpr;
    Object.assign(c.style, { width: px(W), height: px(H) });
    R.cctx = c.getContext('2d');
  }

  // ------------------------------------------------------------------
  // Layout / measuring
  // ------------------------------------------------------------------
  function centerAt(el, x, y) {
    const r = el.getBoundingClientRect();
    el.style.left = px(x - r.width / 2);
    el.style.top = px(y - r.height / 2);
  }
  function pt(el, fx = 0.5, fy = 0.5) {
    const r = el.getBoundingClientRect();
    return [r.left + r.width * fx, r.top + r.height * fy];
  }

  function layout() {
    for (const id of ['stage', 'uiWrap', 'ui']) Object.assign(document.getElementById(id).style, { width: px(W), height: px(H) });
    document.documentElement.style.width = document.body.style.width = px(W);
    document.documentElement.style.height = document.body.style.height = px(H);
    // measure every screen while it is laid out
    const scr = ['aHome', 'aTagDlg', 'aFlash', 'aExam', 'aGlossDlg', 'aDayDlg', 'aDay', 'aSubDlg', 'aResult'];
    scr.forEach((id) => (document.getElementById(id).style.opacity = '1'));
    for (const el of $$('[data-tlbr]')) tlbr(el);
    S.lern = pt($('#aBtnLern'));
    S.start = pt($('#aStartBtn'));
    S.lernRect = $('#aBtnLern').getBoundingClientRect();
    S.startRect = $('#aStartBtn').getBoundingClientRect();
    const area = $('#aFcArea').getBoundingClientRect();
    S.swipeFrom = [area.left + area.width * 0.74, area.top + area.height * 0.42];
    S.swipeTo = [area.left + area.width * 0.2, area.top + area.height * 0.44];
    S.opt = [0, 1, 2, 3, 4].map((i) => pt($(`#aOpt${i}`)));
    const ex = $('#aExam');
    S.confirm = pt($('[data-confirm]', ex));
    S.gbtn = pt($('[data-gbtn]', ex));
    S.mark = pt($('[data-mark]', ex));
    const rect = (el) => el.getBoundingClientRect();
    S.glossClose = pt($('#aGlossClose'));
    S.glossCloseRect = rect($('#aGlossClose'));
    S.day = pt($('#aBtnDay'));
    S.dayRect = rect($('#aBtnDay'));
    S.dayLabel = pt($('#aDayLabel'), 0.3);
    S.dayLabelRect = rect($('#aDayLabel'));
    // exam day, question 25: where the user taps "Gedankenentzug"
    const day = $('#aDay');
    $('[data-dcard]', day).innerHTML = dayCardHTML(25, []);
    S.dayOpt = pt($('[data-i="3"]', day), 0.3);
    S.dayNext = pt($('[data-dnext]', day));
    S.daySub = pt($('[data-dsub]', day), 0.42);
    S.daySubRect = rect($('[data-dsub]', day));
    S.subOk = pt($('#aSubOk'));
    S.subOkRect = rect($('#aSubOk'));
    S.stripMax = Math.max(0, $('[data-dstrip]', day).scrollWidth - W);
    // answered target question: does the feedback fit?
    ex.querySelector('[data-card]').classList.add('answered');
    const cb = $('[data-card]', ex).getBoundingClientRect();
    S.examScroll = Math.max(0, cb.bottom - (H - C.safeBot - 6));
    ex.querySelector('[data-card]').classList.remove('answered');
    scr.forEach((id) => (document.getElementById(id).style.opacity = ''));

    centerAt($('#phrase'), CX, CY);
    centerAt($('#counter'), CX, CY + 6);
    const e = C.end;
    centerAt($('#appname'), CX, e.nameY);
    const shine = $('#appname').cloneNode(true);
    shine.id = 'appshine';
    $('#end').appendChild(shine);
    Object.assign(shine.style, { left: $('#appname').style.left, top: $('#appname').style.top, fontSize: px(e.name) });
    R.appshine = shine;
    centerAt($('#appsub'), CX, e.subY);
    centerAt($('#tagline'), CX, e.tagY);
    centerAt($('#pill'), CX, e.pillY);
    const rays = $('#rays');
    const rs = Math.max(W, H) * 2.2;
    Object.assign(rays.style, { left: px(CX - rs / 2), top: px(H * 0.3 - rs / 2), width: px(rs), height: px(rs) });
  }

  function splitAll() {
    splits.phrase = splitText($('#phrase'), { by: 'words', pad: [0.15, 0.3, 0.3, 0.25] });
    splits.cl = splitText($('#cl'), { by: 'chars' });
    splits.name = splitText($('#appname'), { by: 'chars' });
    splits.name.forEach((u) =>
      Object.assign(u.el.style, { backgroundImage: 'linear-gradient(180deg, #FFFFFF 35%, #BFD5D7 100%)', webkitBackgroundClip: 'text', backgroundClip: 'text', webkitTextFillColor: 'transparent' }),
    );
    splits.appsub = splitText($('#appsub'), { by: 'words', mask: false, pad: [0.15, 0.35, 0.3, 0.3] });
    splits.tw = ['#tw1', '#tw2', '#tw3'].map((id) => splitText($(id), { by: 'chars' }));
  }

  function refs() {
    for (const id of ['cam', 'uiWrap', 'ui', 'tint', 'hook', 'wallWrap', 'wall', 'scrim', 'phrase', 'counter', 'cs', 'end', 'lg', 'lglow', 'ring1', 'ring2', 'orbit', 'orbitC', 'orbitDots',
      'pill', 'flash', 'grain', 'fade', 'rays', 'blobA', 'blobB', 'blobC', 'blobD', 'aHome', 'aTagDlg', 'aFlash', 'aExam', 'aGlossDlg', 'aDayDlg', 'aDay', 'aSubDlg', 'aResult', 'aSnack', 'aTap', 'aRipple', 'aFcA', 'aFcB', 'aFcCount', 'aFcFill']) {
      R[id] = document.getElementById(id);
    }
    R.exCard = $('[data-card]', R.aExam);
    R.exContent = $('[data-content]', R.aExam);
    R.exConfirm = $('[data-confirm]', R.aExam);
    R.exTimer = $('[data-timer]', R.aExam);
    R.exScore = $('[data-score]', R.aExam);
    R.opts = [0, 1, 2, 3, 4].map((i) => document.getElementById(`aOpt${i}`));
    R.inkLern = $('#aBtnLern .ink');
    R.inkStart = $('#aStartBtn .ink');
    R.exMark = $('[data-mark]', R.aExam);
    R.inkGlossClose = $('#aGlossClose .ink');
    R.inkDay = $('#aBtnDay .ink');
    R.inkDayLabel = $('#aDayLabel .ink');
    R.inkSub = $('[data-dsub] .ink', R.aDay);
    R.inkSubOk = $('#aSubOk .ink');
    R.dCard = $('[data-dcard]', R.aDay);
    R.dTime = $('[data-dtime]', R.aDay);
    R.dTimeTxt = $('[data-dtime] span', R.aDay);
    R.dCnt = $('[data-dcnt]', R.aDay);
    R.dNum = $('[data-dnum]', R.aDay);
    R.dStrip = $('[data-dstrip]', R.aDay);
    R.dDots = $$('.ndot', R.aDay);
    R.dPrev = $('[data-dprev]', R.aDay);
    R.dNext = $('[data-dnext]', R.aDay);
  }

  // ------------------------------------------------------------------
  // Render helpers
  // ------------------------------------------------------------------
  function tapFx(t, t0, [x, y], dragTo = null) {
    const d = t - t0;
    if (d < -0.08 || d > 0.5) return false;
    const inP = E.out(range(d, -0.08, 0.02));
    const outP = E.outCubic(range(d, dragTo ? 0.26 : 0.12, dragTo ? 0.44 : 0.32));
    let tx = x, ty = y;
    if (dragTo) {
      const m = E.inOutCubic(range(d, 0.0, 0.26));
      tx = lerp(x, dragTo[0], m);
      ty = lerp(y, dragTo[1], m);
    }
    css(R.aTap, { transform: `translate(${f2(tx)}px,${f2(ty)}px) scale(${f2(lerp(1.35, 1, inP) + outP * 0.25)})`, opacity: f2(inP * (1 - outP) * 0.9) });
    const rp = E.outCubic(range(d, 0.05, 0.36));
    css(R.aRipple, { transform: `translate(${f2(tx)}px,${f2(ty)}px) scale(${f2(0.6 + rp * 1.5)})`, opacity: f2((d > 0.05 && !dragTo ? 1 : 0) * (1 - rp) * 0.5) });
    return true;
  }

  // Material ink splash inside a button (touch point in UI coordinates)
  function ink(el, t, t0, [x, y], host) {
    const d = t - t0;
    if (d < 0 || d > 0.6) return css(el, { opacity: '0' });
    const lx = x - host.left, ly = y - host.top;
    const R0 = Math.hypot(Math.max(lx, host.width - lx), Math.max(ly, host.height - ly));
    const g = E.outCubic(range(d, 0, 0.3));
    const size = 2 * R0 * g;
    css(el, { left: px(lx - size / 2), top: px(ly - size / 2), width: px(size), height: px(size), opacity: f2(1 - E.inOutSine(range(d, 0.24, 0.55))) });
  }

  const frostAt = (t) =>
    kf(t, [[0, 1], [T.ch1Out + 0.02, 1], [T.ui1, 0, E.inOut], [T.whip + 0.1, 0], [T.whip + 0.44, 1, E.inOut], [T.ch2Out + 0.02, 1], [T.ui2, 0, E.inOut],
      [T.ch3 - 0.34, 0], [T.ch3 + 0.06, 1, E.inOut], [T.ch3Out + 0.02, 1], [T.ui3, 0, E.inOut], [T.outro, 0], [T.logo - 0.08, 1, E.inOut]]);
  const WM = (T.whip + T.ch2) / 2;

  // ------------------------------------------------------------------
  // Render
  // ------------------------------------------------------------------
  function renderCamera(t) {
    const shakes = [shake(t, T.ch1 + 0.02, 3, 0.3, 13), shake(t, T.ch2, 2, 0.3, 13), shake(t, T.ch3, 3.2, 0.35, 12), shake(t, T.logo + 0.04, 2.4, 0.3, 12)];
    let x = wobble(t, 0.19, 0.5) * 0.8, y = wobble(t, 0.16, 2.1) * 0.8, r = 0;
    for (const s of shakes) {
      x += s[0];
      y += s[1];
      r += s[2];
    }
    x *= C.shake;
    y *= C.shake;
    css(R.cam, { transform: `translate(${f2(x)}px,${f2(y)}px) rotate(${r.toFixed(3)}deg)` });
  }

  function renderBG(t) {
    const endP = range(t, T.outro, T.logo);
    css(R.blobA, { transform: `translate(${f2(CX + wobble(t, 0.05) * 30)}px,${f2(lerp(H * 0.46, C.end.logoY, endP) + wobble(t, 0.04, 1) * 24)}px) scale(${f2(0.7 + 0.12 * Math.sin(t * 0.7))})`, opacity: f2(kf(t, [[0, 0.24], [2, 0.3], [T.logo, 0.55], [DUR, 0.5]])) });
    css(R.blobB, { transform: `translate(${f2(W * 0.2 + Math.sin(t * 0.3) * 40)}px,${f2(H * 0.12 + Math.cos(t * 0.25) * 30)}px) scale(0.7)`, opacity: f2(kf(t, [[0, 0.1], [2.5, 0.18], [DUR, 0.2]])) });
    css(R.blobD, { transform: `translate(${f2(W * 0.85 + Math.sin(t * 0.2) * 40)}px,${f2(H * 0.9 + Math.cos(t * 0.33) * 40)}px) scale(0.9)`, opacity: f2(kf(t, [[0, 0.3], [2.5, 0.4], [DUR, 0.42]])) });
    // brand shapes (only seen in the intro and the end frame)
    const zm = kf(t, [[0, 0.82], [T.pull, 0.86], [T.pull + 0.57, 0.72, E.out], [T.fly, 0.74], [T.logo, 0.95], [DUR, 1.04]]);
    const shA = kf(t, [[0, 0.35], [T.pull, 0.45], [T.fly, 0.5], [T.logo, 0.9], [DUR, 1]]);
    for (const s of shapes) {
      const k = 1 + (zm - 1) * s.d * 1.4;
      let x = s.x + Math.sin(t * 0.25 + s.ph) * 8 * s.d;
      let y = s.y + Math.sin(t * 0.35 + s.ph) * 7 * s.d - t * 5 * s.d;
      x = CX + (x - CX) * k;
      y = CY + (y - CY) * k;
      css(s.el, { transform: `translate(${f2(x - s.size / 2)}px,${f2(y - s.size / 2)}px) rotate(${f2(s.rot + s.vr * t)}deg) scale(${f2(k)})`, opacity: f2(s.a * shA) });
    }
  }

  function renderHook(t) {
    const h = C.hook;
    const on = t < T.fly + 0.45;
    show(R.hook, on);
    if (!on) return;
    const shrink = E.inOutCubic(range(t, T.pull, T.pull + 0.4));
    const ps = lerp(lerp(1, 1.045, E.inOutSine(range(t, 0, T.pull))), 0.16, shrink);
    show(R.phrase, t < T.pull + 0.5);
    css(R.phrase, { transform: `scale(${ps.toFixed(4)})`, opacity: f2(1 - E.inOutCubic(range(t, T.pull + 0.08, T.pull + 0.34))), filter: `blur(${f2(shrink * 3)}px)` });
    splits.phrase.forEach((u, i) => {
      const k = Math.min(i, 3);
      const p = E.out(range(t, T.phraseIn + k * 0.09 + (i === 4 ? 0.07 : 0), T.phraseIn + k * 0.09 + 0.95));
      css(u.el, { transform: `translateY(${f2((1 - p) * 118)}%) rotate(${f2((1 - p) * 4)}deg)` });
    });
    // question wall
    const wz = kf(t, [[T.pull, h.zNear], [T.pull + 0.62, h.zFar, E.out], [T.fly, h.zDrift, E.linear], [T.fly + 0.38, h.zFly, E.inCubic]]);
    const wrx = kf(t, [[T.pull, 2], [T.pull + 0.62, 15, E.out], [T.fly, 17], [T.fly + 0.36, 6, E.in]]);
    const wry = kf(t, [[T.pull, 4], [T.pull + 0.62, -12, E.out], [T.fly, -15, E.linear], [T.fly + 0.36, -4, E.in]]);
    const wrz = kf(t, [[T.pull, 8], [T.pull + 0.62, -3, E.out], [T.fly, -4.5], [T.fly + 0.36, -1]]);
    const wo = kf(t, [[T.pull - 0.02, 0], [T.pull + 0.22, 1, E.out]]);
    const wallOn = t > T.pull - 0.05 && t < T.fly + 0.4;
    show(R.wallWrap, wallOn);
    if (wallOn) {
      css(R.wall, { transform: `translateZ(${f2(wz)}px) rotateX(${f2(wrx)}deg) rotateY(${f2(wry)}deg) rotateZ(${f2(wrz)}deg)` });
      const wp = { x: 0, y: 0, z: wz, rx: wrx, ry: wry, rz: wrz, s: 1 };
      for (const c of wallCards) {
        const zw = applyPose([c.x, c.y, c.z], wp)[2];
        const near = clamp((zw - h.nearA) / h.nearB);
        css(c.el, { opacity: f2(wo * (1 - near)), visibility: near >= 1 ? 'hidden' : 'visible' });
      }
    }
    // counter
    const cOn = t > T.counter - 0.05 && t < T.fly + 0.45;
    show(R.counter, cOn);
    css(R.scrim, { opacity: f2(kf(t, [[T.counter - 0.1, 0], [T.counter + 0.35, 1, E.out], [T.fly, 1], [T.fly + 0.3, 0]])) });
    if (cOn) {
      css(R.counter, {
        transform: `scale(${kf(t, [[T.counter, 1.22], [T.counter + 0.75, 1, E.out], [T.fly, 0.985, E.linear], [T.fly + 0.36, 3.4, E.in]]).toFixed(4)})`,
        opacity: f2(kf(t, [[T.counter, 0], [T.counter + 0.16, 1, E.out], [T.fly + 0.12, 1], [T.fly + 0.32, 0, E.linear]])),
        filter: `blur(${f2(E.in(range(t, T.fly, T.fly + 0.34)) * 8)}px)`,
      });
      R.strips.forEach((s, i) => {
        const p = E.out(range(t, T.counter, T.counter + 0.55 + i * 0.08));
        css(s, { transform: `translateY(${f2(-p * R.wheelTargets[i] * h.digits)}px)` });
      });
      splits.cl.forEach((u, i) => {
        const p = E.out(range(t, T.counter + 0.2 + i * 0.018, T.counter + 0.85 + i * 0.018));
        css(u.el, { transform: `translateY(${f2((1 - p) * 110)}%)` });
      });
      const p2 = E.out(range(t, T.counter + 0.38, T.counter + 1.1));
      css(R.cs, { opacity: f2(p2), letterSpacing: `${(0.3 + (1 - p2) * 0.25).toFixed(3)}em` });
    }
  }

  function setExamTarget(t) {
    const answered = t >= T.tapC + 0.06;
    const sel = [];
    if (t >= T.tap1 + 0.06) sel.push(2);
    if (t >= T.tap2 + 0.06) sel.push(4);
    const marked = t >= T.tapMark + 0.06;
    const key = `${answered}|${sel.join(',')}|${marked}`;
    if (R.exState !== key) {
      R.exState = key;
      R.exMark.classList.toggle('on', marked);
      R.exMark.innerHTML = icon(marked ? 'i-bookmark' : 'i-bookmark-o', '');
      R.exCard.classList.toggle('answered', answered);
      R.opts.forEach((o, i) => {
        const correct = i === 2 || i === 4;
        o.className = 'opt' + (answered ? (correct ? ' ok' : ' dim') : sel.includes(i) ? ' sel' : '');
        o.querySelector('.mark').textContent = answered && correct ? '✓' : '';
      });
      R.exConfirm.textContent = `Antwort bestätigen (${sel.length} gewählt)`;
      R.exConfirm.classList.toggle('dis', sel.length === 0);
      R.exScore.textContent = answered ? '✓ 7/7' : '✓ 6/6';
    }
    const secs = 516 + Math.max(0, Math.floor(t - WM));
    const tt = `${String(Math.floor(secs / 60)).padStart(2, '0')}:${String(secs % 60).padStart(2, '0')}`;
    if (R.exTimer.textContent !== tt) R.exTimer.textContent = tt;
    css(R.exContent, { transform: `translateY(${f2(-E.inOut(range(t, T.tapC + 0.3, T.tapC + 0.7)) * S.examScroll)}px)` });
  }

  // Exam day as a function of time: question, answers, clock, strip position
  const LAPSE = [2, 5, 8, 11, 14, 17, 20, 23];
  function dayState(t) {
    const q = EXD.questions;
    let n, answered, sel, secs, vi;
    if (t < T.lapse) {
      n = 1;
      answered = 0;
      sel = [];
      secs = Math.floor(Math.max(0, t - T.dayOut) / 0.16);
      vi = 0;
    } else if (t < T.q25) {
      const p = range(t, T.lapse, T.q25);
      n = LAPSE[Math.min(LAPSE.length - 1, Math.floor(p * LAPSE.length))];
      answered = n; // the question on screen is already answered
      sel = q[n - 1].pick;
      secs = Math.round(lerp(2, 2746, E.inOutSine(p)));
      vi = lerp(0, 24, E.inOutSine(p));
    } else if (t < T.tapNext + 0.06) {
      n = 25;
      const picked = t >= T.tapOpt + 0.06;
      answered = picked ? 25 : 24;
      sel = picked ? [3] : [];
      secs = 2746 + Math.floor((t - T.q25) / 0.5);
      vi = 24;
    } else {
      const k = Math.min(2, Math.floor(Math.max(0, t - T.lapse2) / 0.07));
      n = 26 + k;
      answered = Math.min(28, 25 + Math.floor(Math.max(0, t - T.lapse2 + 0.02) / 0.07));
      sel = q[n - 1].pick;
      secs = t < T.tapSubmit ? Math.round(lerp(2747, 2832, E.inOut(range(t, T.lapse2, T.lapse2 + 0.22)))) : 2832 + Math.floor((t - T.tapSubmit) / 1);
      vi = lerp(24, 27, E.inOut(range(t, T.tapNext, T.lapse2 + 0.3)));
    }
    return { n, answered, sel, remaining: 3300 - secs, vi };
  }

  function renderDay(t) {
    const d = dayState(t);
    const key = `${d.n}|${d.sel.join(',')}`;
    if (R.dayKey !== key) {
      R.dayKey = key;
      R.dCard.innerHTML = dayCardHTML(d.n, d.sel);
      R.dNum.textContent = `Frage ${d.n}/28`;
      R.dPrev.classList.toggle('dis', d.n === 1);
      R.dNext.classList.toggle('dis', d.n === 28);
    }
    if (R.dayAns !== d.answered || R.dayCur !== d.n) {
      R.dayAns = d.answered;
      R.dayCur = d.n;
      R.dDots.forEach((el, i) => {
        el.classList.toggle('ans', i < d.answered);
        el.classList.toggle('cur', i === d.n - 1);
      });
      R.dCnt.textContent = `${d.answered}/28`;
    }
    const tt = clock(d.remaining);
    if (R.dTimeTxt.textContent !== tt) {
      R.dTimeTxt.textContent = tt;
      R.dTime.className = `dpill${d.remaining <= 120 ? ' crit' : d.remaining <= 600 ? ' warn' : ''}`;
    }
    const sx = clamp(d.vi * 40 - W / 2 + 20 + 12, 0, S.stripMax);
    css(R.dStrip, { transform: `translateX(${f2(-sx)}px)` });
  }

  function renderUI(t) {
    const on = t > T.fly + 0.05 && t < T.logo + 0.02;
    show(R.uiWrap, on);
    if (!on) return;
    // capture fade-in behind the flying wall, fade-out into the end frame
    const op = kf(t, [[T.fly + 0.05, 0], [T.fly + 0.32, 1, E.inOut], [T.outro, 1], [T.logo - 0.02, 0, E.inOut]]);
    const f = frostAt(t);
    css(R.uiWrap, { opacity: f2(op), filter: f > 0.001 ? `blur(${f2(f * 13)}px) brightness(${f2(1 - f * 0.42)}) saturate(${f2(1 + f * 0.15)})` : 'none' });
    css(R.tint, { opacity: f2(f * op) });
    // whip-pan between chapter 1 and 2
    let x = 0;
    if (t > T.whip && t < T.ch2) x = t < WM ? -E.in(range(t, T.whip, WM)) * W * 1.15 : (1 - E.out(range(t, WM, T.ch2))) * W * 1.15;
    css(R.ui, { transform: `translateX(${f2(x)}px)` });

    // which screen is on (the app switches views instantly); chapter 3 starts a new scene on the home screen
    const home3 = T.ch3 + 0.3;
    show(R.aHome, t < T.dlgOut || (t >= home3 && t < T.dayOut));
    show(R.aFlash, t >= T.dlgOut && t < WM);
    show(R.aExam, t >= WM && t < home3);
    show(R.aDay, t >= T.dayOut && t < T.result);
    show(R.aResult, t >= T.result);
    const dlg = (el, t0, t1) => {
      const a = E.outCubic(range(t, t0, t0 + 0.15)) * (1 - E.outCubic(range(t, t1, t1 + 0.15)));
      show(el, a > 0);
      css(el, { opacity: f2(a) });
    };
    dlg(R.aTagDlg, T.dlgIn, T.dlgOut);
    dlg(R.aGlossDlg, T.glossIn, T.glossOut);
    dlg(R.aDayDlg, T.dayIn, T.dayOut);
    dlg(R.aSubDlg, T.subIn, T.tapConfirm + 0.06);

    // flashcards: swipe changes the card on release
    const swiped = t >= T.swipe + 0.27;
    show(R.aFcA, !swiped);
    show(R.aFcB, swiped);
    const fcTxt = swiped ? '39 / 240' : '38 / 240';
    if (R.aFcCount.textContent !== fcTxt) {
      R.aFcCount.textContent = fcTxt;
      R.aFcFill.style.width = `${(((swiped ? 39 : 38) / 240) * 100).toFixed(2)}%`;
    }
    if (t >= WM && t < home3) setExamTarget(t);
    // "Zur Merkliste hinzugefügt" (floating snackbar: fades and rises in)
    const sa = E.outCubic(range(t, T.snack, T.snack + 0.25));
    css(R.aSnack, { opacity: f2(sa), transform: `translateY(${f2((1 - sa) * 12)}px)` });
    if (t >= T.dayOut && t < T.result) renderDay(t);

    // ink + touch hotspots
    ink(R.inkLern, t, T.tapLern, S.lern, S.lernRect);
    ink(R.inkStart, t, T.tapStart, S.start, S.startRect);
    ink(R.inkGlossClose, t, T.tapClose, S.glossClose, S.glossCloseRect);
    ink(R.inkDay, t, T.tapDay, S.day, S.dayRect);
    ink(R.inkDayLabel, t, T.tapLabel, S.dayLabel, S.dayLabelRect);
    ink(R.inkSub, t, T.tapSubmit, S.daySub, S.daySubRect);
    ink(R.inkSubOk, t, T.tapConfirm, S.subOk, S.subOkRect);
    const up = (p) => [p[0], p[1] - S.examScroll];
    const taps = [
      [T.tapLern, S.lern], [T.tapStart, S.start], [T.swipe, S.swipeFrom, S.swipeTo], [T.tap1, S.opt[2]], [T.tap2, S.opt[4]],
      [T.tapC, S.confirm], [T.tapGloss, up(S.gbtn)], [T.tapClose, S.glossClose], [T.tapMark, up(S.mark)],
      [T.tapDay, S.day], [T.tapLabel, S.dayLabel], [T.tapOpt, S.dayOpt], [T.tapNext, S.dayNext], [T.tapSubmit, S.daySub], [T.tapConfirm, S.subOk],
    ];
    // the most recent touch wins, so quick taps in a row all show
    let cur = null;
    for (const tp of taps) if (t >= tp[0] - 0.08 && t - tp[0] <= 0.5 && (!cur || tp[0] > cur[0])) cur = tp;
    if (!cur || !tapFx(t, cur[0], cur[1], cur[2])) {
      css(R.aTap, { opacity: '0' });
      css(R.aRipple, { opacity: '0' });
    }
  }

  function renderChapters(t) {
    for (const [i, c] of chapters.entries()) {
      const on = t > c.t0 - 0.12 && t < c.t1 + 0.32;
      show(c.el, on);
      if (!on) continue;
      const out = E.in(range(t, c.t1, c.t1 + 0.28));
      // chapter 2 rides in with the whip
      const slide = i === 1 ? (1 - E.out(range(t, WM, T.ch2))) * W * 0.55 : 0;
      css(c.el, { transform: `translate(${f2(slide)}px,${f2(-out * 46)}px)`, opacity: f2(1 - out), filter: out > 0 ? `blur(${f2(out * 8)}px)` : 'none' });
      c.units.forEach((u, k) => {
        const p = E.out(range(t, c.t0 - 0.04 + k * 0.03, c.t0 + 0.66 + k * 0.03));
        css(u.el, { transform: `translateY(${f2((1 - p) * 112)}%) rotate(${f2((1 - p) * 10)}deg)` });
      });
      const lp = E.out(range(t, c.t0, c.t0 + 0.55));
      css(c.label, { opacity: f2(lp), transform: `translateX(${f2((1 - lp) * -20)}px)` });
      const sp = E.out(range(t, c.t0 + 0.2, c.t0 + 0.8));
      css(c.subEl, { opacity: f2(sp), transform: `translateY(${f2((1 - sp) * 18)}px)` });
      const sp2 = E.out(range(t, c.t0 + 0.32, c.t0 + 0.92));
      css(c.sub2El, { opacity: f2(sp2), transform: `translateY(${f2((1 - sp2) * 18)}px)` });
      c.nums.forEach((n) => {
        const v = Math.round(n.v * E.outCubic(range(t, c.t0 + 0.2, c.t0 + 0.95)));
        if (n.el.__v !== v) {
          n.el.textContent = v;
          n.el.__v = v;
        }
      });
    }
    // celebration light for chapter 3 (above the frosted capture)
    const rOn = kf(t, [[T.ch3 - 0.06, 0], [T.ch3 + 0.3, 0.9, E.out], [T.ch3Out, 0.8], [T.ch3Out + 0.3, 0]]);
    css(R.rays, { opacity: f2(rOn), transform: `rotate(${(t * 7).toFixed(2)}deg)` });
    css(R.blobC, { transform: `translate(${f2(CX)}px,${f2(H * 0.46)}px) scale(${f2(0.75 + 0.2 * E.out(range(t, T.ch3, T.ch3 + 1)))})`, opacity: f2(kf(t, [[T.ch3 - 0.06, 0], [T.ch3 + 0.3, 0.5, E.out], [T.ch3Out, 0.42], [T.ch3Out + 0.3, 0]])) });
  }

  function renderConfetti(t) {
    const ctx = R.cctx, dpr = R.dpr;
    ctx.setTransform(1, 0, 0, 1, 0, 0);
    ctx.clearRect(0, 0, W * dpr, H * dpr);
    if (t < T.ch3 - 0.05 || t > T.ui3 + 0.4) return;
    // confetti belongs to the chapter card: it leaves with it
    const fadeAll = 1 - E.inOut(range(t, T.ch3Out, T.ui3 + 0.1));
    const g = C.conf.g;
    for (const c of conf) {
      const a = t - c.t0;
      if (a <= 0) continue;
      const e = Math.exp(-c.k * a);
      const vt = g / c.k;
      let x = c.x0 + (c.vx * (1 - e)) / c.k;
      const y = c.y0 + vt * a + ((c.vy - vt) * (1 - e)) / c.k;
      x += Math.sin(a * c.ff * 6.28 + c.fph) * c.fa * clamp(a * 1.5);
      if (y > H + 40 || y < -80) continue;
      const flip = Math.cos(c.flip + c.vflip * a);
      const sz = 1 + c.z * 0.3;
      ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
      ctx.translate(x, y);
      ctx.rotate(c.rot + c.vrot * a);
      ctx.scale(sz, sz * (c.round ? 1 : Math.abs(flip) * 0.9 + 0.1));
      ctx.globalAlpha = fadeAll * (c.z < -0.4 ? 0.75 : 1);
      ctx.fillStyle = c.col;
      if (c.round) {
        ctx.beginPath();
        ctx.arc(0, 0, c.w / 2, 0, 6.2832);
        ctx.fill();
      } else {
        ctx.fillRect(-c.w / 2, -c.h / 2, c.w, c.h);
        if (flip < 0) {
          ctx.fillStyle = 'rgba(0,0,0,0.22)';
          ctx.fillRect(-c.w / 2, -c.h / 2, c.w, c.h);
        }
      }
    }
    ctx.globalAlpha = 1;
  }

  function renderEnd(t) {
    const on = t > T.outro;
    show(R.end, on);
    if (!on) return;
    css(R.end, { transform: `scale(${(1 + E.inOutSine(range(t, T.logo, DUR)) * 0.03).toFixed(4)})`, transformOrigin: `${CX}px ${H * 0.5}px` });
    for (const l of leaves) {
      const p = range(t, T.outro + 0.04 + l.delay, T.logo + 0.02);
      const vis = p > 0 && p < 1;
      css(l.el, { visibility: vis ? 'visible' : 'hidden' });
      if (!vis) continue;
      const e = E.inOutCubic(p);
      const r = l.r0 * (1 - e);
      const a = l.a0 + e * l.spin * Math.PI;
      const rot = (a * 180) / Math.PI + 90 + e * 120;
      css(l.el, { transform: `translate(${f2(Math.cos(a) * r - 70)}px,${f2(Math.sin(a) * r * 0.8 - 70)}px) rotate(${f2(rot)}deg) scale(${f2(l.s * lerp(1.3, 0.25, e))})`, opacity: f2(clamp(p * 5) * (1 - clamp((p - 0.85) / 0.15))) });
    }
    const lp = spring(t - T.logo, 210, 13);
    css(R.lg, { transform: `scale(${f2(Math.max(0, lp))}) rotate(${f2((1 - lp) * -40)}deg)`, opacity: t > T.logo ? '1' : '0' });
    css(R.lglow, { opacity: f2(kf(t, [[T.logo - 0.1, 0], [T.logo + 0.12, 1, E.out], [T.logo + 1.2, 0.55, E.inOut], [DUR, 0.6]])), transform: `scale(${f2(0.7 + 0.3 * E.out(range(t, T.logo, T.logo + 1)) + Math.sin(t * 2) * 0.02)})` });
    [[R.ring1, 0], [R.ring2, 0.14]].forEach(([el, dl]) => {
      const p = range(t, T.logo + 0.04 + dl, T.logo + 1.1 + dl);
      css(el, { opacity: f2(p > 0 ? (1 - E.out(p)) * 0.8 : 0), transform: `scale(${f2(1 + E.out(p) * 1.25)})` });
    });
    const oc = 2 * Math.PI * R.orbitR;
    const od = E.inOut(range(t, T.logo + 0.12, T.logo + 1.15));
    R.orbitC.setAttribute('stroke-dasharray', oc.toFixed(1));
    R.orbitC.setAttribute('stroke-dashoffset', ((1 - od) * oc).toFixed(1));
    css(R.orbit, { transform: `rotate(${f2(-90 + (t - T.logo) * 14)}deg)`, opacity: t > T.logo ? '1' : '0' });
    css(R.orbitDots, { transform: `rotate(${f2(od * 200 + (t - T.logo) * 26)}deg)`, opacity: f2(E.out(range(t, T.logo + 0.6, T.logo + 1.1))) });
    for (const d of drifts) {
      const a = E.out(range(t, T.logo + 0.1, T.logo + 1.2));
      css(d.el, { transform: `translate(${f2(d.x - C.drift / 2 + Math.sin(t * 0.6 + d.ph) * 9 * C.shake)}px,${f2(d.y - C.drift / 2 - (t - T.logo) * 8 * C.shake + (1 - a) * 20)}px) rotate(${f2(d.r0 + d.vr * t)}deg) scale(${f2(d.s)})`, opacity: f2(a * d.a) });
    }
    splits.name.forEach((u, i) => {
      const p = E.out(range(t, T.name + i * 0.022, T.name + 0.75 + i * 0.022));
      css(u.el, { transform: `translateY(${f2((1 - p) * 110)}%) rotate(${f2((1 - p) * 8)}deg)` });
    });
    splits.appsub.forEach((u, i) => {
      const p = E.out(range(t, T.sub + i * 0.07, T.sub + 0.8 + i * 0.07));
      css(u.el, { opacity: f2(p), transform: `translateY(${f2((1 - p) * 14)}px)`, filter: `blur(${f2((1 - p) * 6)}px)` });
    });
    splits.tw.forEach((units, w) =>
      units.forEach((u, i) => {
        const p = E.out(range(t, T.tag + w * 0.12 + i * 0.02, T.tag + w * 0.12 + 0.6 + i * 0.02));
        css(u.el, { transform: `translateY(${f2((1 - p) * 110)}%)` });
      }),
    );
    const pp = spring(t - T.pill, 170, 16);
    css(R.pill, { opacity: f2(clamp(pp * 1.4)), transform: `scale(${f2(lerp(0.85, 1, clamp(pp, 0, 1.1)))})` });
    const sw = range(t, T.sweep, T.sweep + 0.85);
    css(R.appshine, { opacity: sw > 0 && sw < 1 ? '1' : '0', backgroundPosition: `${f2(lerp(120, -20, E.inOutSine(sw)))}% 0` });
  }

  function renderFX(t) {
    const fl = Math.max(
      kf(t, [[T.ch1 - 0.03, 0], [T.ch1 + 0.02, 0.2, E.outCubic], [T.ch1 + 0.45, 0, E.outCubic]]),
      kf(t, [[T.ch3 - 0.02, 0], [T.ch3 + 0.05, 0.18, E.outCubic], [T.ch3 + 0.5, 0, E.outCubic]]),
      kf(t, [[T.logo - 0.02, 0], [T.logo + 0.05, 0.42, E.outCubic], [T.logo + 0.7, 0, E.outCubic]]),
    );
    css(R.flash, { opacity: f2(fl) });
    const rnd = rng(Math.round(t * 30) * 7919 + 13);
    const tile = R.grainTile;
    css(R.grain, { transform: `translate(${f2(Math.floor(rnd() * 256) * (tile / 256))}px,${f2(Math.floor(rnd() * 256) * (tile / 256))}px)` });
    css(R.fade, { opacity: f2(kf(t, [[0, 1], [0.12, 0, E.outCubic]])) });
  }

  function render(t) {
    renderCamera(t);
    renderBG(t);
    renderUI(t);
    renderChapters(t);
    renderConfetti(t);
    renderHook(t);
    renderEnd(t);
    renderFX(t);
  }

  // ------------------------------------------------------------------
  // Boot
  // ------------------------------------------------------------------
  window.ready = (async () => {
    await Promise.all(['800', '700', '600', '500'].map((w) => document.fonts.load(`${w} 100px "Plus Jakarta Sans"`)).concat(document.fonts.load('italic 400 100px "Instrument Serif"')));
    await document.fonts.ready;
    buildUI();
    buildBG();
    buildHook();
    buildChapters();
    buildEnd();
    buildConfetti();
    await Promise.all([...document.images].map((im) => im.decode().catch(() => {})));
    layout();
    refs();
    splitAll();
    render(0);
    return true;
  })();

  window.renderFrame = async (t) => {
    render(clamp(t, 0, DUR));
    await new Promise((r) => requestAnimationFrame(() => r()));
  };
  window.DURATION = DUR;

  const q = new URLSearchParams(location.search);
  if (q.has('play') || q.has('t')) {
    window.ready.then(() => {
      if (q.has('t')) return render(Number(q.get('t')));
      const t0 = performance.now();
      const loop = () => {
        render(((performance.now() - t0) / 1000) % DUR);
        requestAnimationFrame(loop);
      };
      loop();
    });
  }
})();
