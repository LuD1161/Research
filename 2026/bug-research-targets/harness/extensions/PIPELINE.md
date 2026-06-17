# Browser-extension validation pipeline — design

Validation-first pipeline for Chrome/Firefox/Edge extensions: static + LLM finder (recall) →
**dynamic PoC against a loaded extension** (precision) → independent adversarial verifier (FP kill).
Mirrors the A2/WordPress find→verify pattern. The extension analog is *easier* than Android — no
emulator/jailbreak, headless + parallel via Playwright.

Status: **design only** — sourced from an exploratory research pass (2026-06-16), nothing built.

> **Read first — ROI caveat.** The *disclosure/CVE* pipeline is mature and free, but the *cash*
> pipeline is narrow. **No major marketplace pays for third-party extension bugs** (Chrome VRP &
> Chrome Extensions VRP = Google-owned extensions only; Mozilla bounty excludes third-party add-on
> code; Google's data-abuse DDPRP effectively dead since Aug 2024; huntr pivoted to AI/ML-only).
> Default outcome per bug = **CVE + takedown + reputation, $0 cash.** Cash requires one of:
> (a) the extension's vendor runs its own program (HackerOne/Bugcrowd/Intigriti), (b) it's a
> Google-owned extension, or (c) it's actually an AI/ML library (huntr). **Target selection should
> therefore prioritize extensions from vendors with active bounty programs and bundled
> desktop-agent + companion-extension products (native-messaging RCE).**

---

## Why the validation loop is mandatory (prior art)
Every prior lab is recall-rich but **precision-bound by manual PoC verification** — automating that
step is the whole value:
- **DoubleX** (CCS 2021, open source) — Extension Dependence Graph dataflow; 154K extensions →
  278 flagged, **184 confirmed exploitable**, 89% flows attacker-influenceable. Use as the cheap
  high-recall static finder.
- **EmPoWeb** (S&P 2019) — static analysis of message-passing interfaces; 197 vulnerable extensions
  (web→privileged escalation). Defines the most productive bug class.
- **Mystique** (CCS 2018) — hybrid dynamic taint in V8; 178K extensions → privacy exfil.
- **Hulk** (USENIX 2014) — dynamic behavior elicitation (HoneyPages).
- **Cautionary tale** — supervised ML (Fass 2025) hit 98% lab accuracy but **~20% real-world
  precision** (concept drift); VirusTotal missed 97.6% of known-malicious. **Classification doesn't
  transfer to the live store → the dynamic validator is what saves you.**

## Attack surface (ranked by CVE/bounty productivity)
1. **Message passing (most productive)** — `onMessage`/`onMessageExternal` doing privileged actions
   without checking `sender.id`/`origin`; content scripts relaying unchecked `window.postMessage`.
2. **`externally_connectable` abuse** — wildcard `matches` → any page messages the extension directly.
3. **Native messaging (highest per-bug severity)** — `connectNative` to a full-OS-privilege binary;
   command injection from unvalidated JSON. Recent: CVE-2026-1079, CVE-2026-11658 (re-verify on NVD).
4. **Content-script DOM XSS** — attacker DOM/`location.hash`/`postMessage` → `innerHTML`/`eval`;
   **survives MV3** (runs in host-page world).
5. **Overbroad host perms (`<all_urls>`)** — blast-radius multiplier, rarely standalone.
6. **`chrome.*` misuse** (`cookies.getAll`, `downloads.download`, `scripting.executeScript`) — impact stage.
7. **Supply chain** (account takeover / ownership-transfer flips, e.g. Cyberhaven Dec-2024) — dominates
   real impact but is an attacker *operation*, not a discoverable code bug.

**MV2→MV3:** MV3 closed remote code / persistent background / blocking `webRequest`. It did **not**
close classes 1–6 above. Net: smaller dynamic-code surface, most bounty-productive classes intact.

---

## Pipeline

### Stage 0 — Corpus
- **Firefox (.xpi)**: official AMO API `addons.mozilla.org/api/v5/` (`sort=users` ranks by true daily
  users; detail → `current_version.file.url`). `.xpi` = ZIP. Friendliest, sanctioned.
- **Chrome (.crx)**: `clients2.google.com/service/update2/crx?...x=id%3D<ID>%26uc&acceptformat=crx2,crx3`
  → strip `Cr24` header → unzip. Ranking via **chrome-stats.com** (~260K ext, exports + versioned CRX).
- **Legal:** redistribute only IDs/hashes/derived features + scripts, **not raw binaries**; throttle.
- Store `{id, version, manifest.json, source, hash}`. Target top ~5–10K by install count.

### Stage 1 — Static finders (high recall, cheap)
- **DoubleX** (EDG dataflow) for message-passing/source→sink. + heuristics (crx-analyzer/Tarnish:
  perms, CSP, Retire.js, web-accessible resources). Validate your setup by reproducing DoubleX's
  confirmed-exploitable rate on a known sample.

### Stage 2 — LLM finder + dedup
- LLM reads manifest + code → **machine-readable findings**: `{class, file, sink, source,
  manifest matches, proposed PoC page, expected observable}`. Semantic dedup. Focus classes 1–3.

### Stage 3 — Validation harness (precision filter)
Per finding, in an isolated container:
- **Playwright + bundled Chromium** (`channel:'chromium'`), `--headless=new` (Chrome 112+ loads
  extensions; **`chrome-headless-shell` cannot** — needs full Chromium). Unzip `.crx` → unpacked dir →
  `--disable-extensions-except=<dir> --load-extension=<dir>` via `launchPersistentContext`
  (own `userDataDir` per run — never share).
- Get extension id from the service worker (`ctx.serviceWorkers()` / `waitForEvent('serviceworker')`,
  `backgroundPages()` for MV2). MV3 caveat: SW suspends ~30s idle → retry on "Service worker restarted".
- **CDP capture**: `Target.setAutoAttach({autoAttach:true, flatten:true})` to reach SW + content
  scripts; `Network.enable` (outbound from `chrome-extension://<id>` to 3rd-party host = exfil signal;
  `Fetch.enable` to inject responses); `Runtime.enable` (console/exceptions; `evaluate` against SW for
  manifest/storage). **Message passing has no CDP domain** → monkey-patch `onMessage`/`onMessageExternal`
  + `window.postMessage`/`runtime.sendMessage` and route observations out.
- **PoC page**: harness controls the host so the served page satisfies the target's content-script /
  `externally_connectable` `matches`. Drive PoC → **diff CDP events vs a no-PoC baseline**.
- **Verdict**: did the expected observable fire (privileged fetch / cookie read / DOM exec / file
  download / storage write)?

### Stage 4 — Adversarial verifier (independent)
- Separate agent, **no access to the finder's reasoning**: re-derives the bug from source + the
  captured CDP trace, tries to **refute** (sender check elsewhere? sanitizer? unreachable?). 2/3-vote,
  majority "confirmed exploitable" to pass. Survivors → disclosure-ready report w/ PoC + trace.

### Stage 5 — Disclosure
- Open-source on GitHub → **GHSA draft → Request CVE** (GitHub is the CNA; ~72h). MITRE web form
  fallback for off-GitHub/unresponsive. Malicious finds → marketplace abuse report. CVE is free and
  decoupled from bounty.

---

## Scale
- Isolation unit = unique `userDataDir` + dedicated Chromium process. One **Docker container per
  extension/shard** (`mcr.microsoft.com/playwright`, `--headless=new`), fanned out via runner sharding
  / k8s Jobs. Cap workers ≈ cores; per-extension timeout; **hung SW = a result, not a harness failure**
  (kill + record). Popup/action UI is flaky headless → headful under `Xvfb` only if testing popups.

## First-90-days (condensed)
1. **D1–15** corpus (AMO API + chrome-stats) + DoubleX/heuristic finders; reproduce DoubleX rate.
2. **D16–40** Playwright/CDP validation MVP; prove end-to-end on a rebuilt EmPoWeb-class bug.
3. **D41–65** LLM finder + adversarial verifier; tune FP on a labeled set.
4. **D66–90** scale to thousands; stand up GHSA/CVE track; first validated PoC-backed disclosures —
   prioritizing vendors with active bounty programs + native-messaging desktop-agent products.

Full sourced report retained in conversation/observations (2026-06-16 research pass).
