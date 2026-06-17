# Android validation pipeline — A2-shaped design

Design for the Android client-side vulnerability pipeline. Modeled on **A2**
(arXiv 2508.21579): SAST/dataflow *feeder* → LLM *finder + dedup* → emulator + ADB
*executor* → independent *validator*. Reuses the find→adversarial-verify pattern already
used in the WordPress Workflow.

Status: **design only** — not built, toolchain not installed. Build order is MobSF-first
(see [../../HARNESS.md](../../HARNESS.md)).

```
 corpus → decompile/normalize → FEED (SAST+dataflow) → FIND (LLM agents) → DEDUP
        → PLAN → EXECUTE (emulator+ADB) → VALIDATE (independent oracle) → REPORT
                                   ▲___________ retry / refine ___________│
```

---

## Stage 0 — Corpus & normalization
- **Acquire APKs**: pull target apps (by install count / category). Keep `pkg@versionCode`
  pinned per artifact. Store under `targets/android-apps/apps/<pkg>/apk/`.
- **Decompile**: Jadx → Java source; `apktool` → resources + `AndroidManifest.xml`.
- **Normalize**: strip third-party libraries + Android framework code (A2 does this — cuts noise
  and token cost). Extract a manifest summary: exported components, permissions, intent filters,
  `provider` authorities, deeplink schemes, `minSdk`/`targetSdk`, `usesCleartextTraffic`,
  `networkSecurityConfig`.
- Output: `analysis/<pkg>/{src/, manifest.json, surface.json}`.

## Stage 1 — FEED (SAST + dataflow, the high-signal baseline)
The lesson from the WP effort and from Oversecured: **grep-style finders flood false positives;
dataflow is what makes it high-signal.**
- Run **MobSF** (static) + **APKHunt** for breadth → raw warnings.
- Where possible, add **taint/dataflow** signal (source→sink across exported entry points). This is
  the differentiator; MobSF alone is a feeder, not the verdict.
- Output: `findings/<pkg>/raw_warnings.json` (expect ~1K+ per large app — that's fine, it's a feed).

## Stage 2 — FIND (LLM agents) + DEDUP
- LLM agents read normalized source + `surface.json` and produce **speculative findings** with
  contextual reasoning (catches logic/authz bugs rule engines miss). Feed Stage-1 warnings as hints.
- **Semantic dedup + evidence synthesis** collapse the feed (A2: 1.4K → 116). Merge by
  (component, sink, vuln-class), keep the strongest evidence per cluster.
- Each candidate finding carries: vuln class, affected component + version, source root cause
  (file:line, source→sink), and a *hypothesized* trigger.
- Output: `findings/<pkg>/candidates.json` (deduped, ranked by severity × confidence).

## Stage 3 — PLAN (PoC Planner agent)
- For each candidate, an agent proposes a **read-only, step-by-step validation strategy**: which
  exported component to fire, what intent/extras/URI, expected observable effect, and the **oracle**
  (what proves it — toast, file write, log line, network callback, returned data).
- Output: `findings/<pkg>/<id>.plan.json`.

## Stage 4 — EXECUTE (emulator + ADB function library)
- Runs against the **golden emulator snapshot** (Google-APIs image, CA injected, frida-server,
  drozer) — restore → install → exercise → discard.
- The executor agent calls a fixed **ADB/function library** (A2 uses 29 functions across 8
  categories). Minimum set to build:
  - *device control*: `am start` / `am broadcast` / `am startservice`, press keys, set clipboard.
  - *content providers*: `content query|insert|update|delete` against exported authorities.
  - *UI interaction*: dump UI hierarchy (uiautomator), tap by selector, capture **screenshot**.
  - *file ops*: pull app-private/external files, read shared prefs.
  - *code exec / instrumentation*: `adb shell`, Frida hook, objection sslpinning disable.
  - *traffic*: start/stop `mitmdump`, fetch captured flows.
  - *APK generation*: build a malicious companion APK to test intent redirection / permission theft.
  - *logs*: `logcat` capture + filter.
- Output: per-attempt artifacts → `findings/<pkg>/<id>/captures/` (screenshots, flows, logcat, files).

## Stage 5 — VALIDATE (independent validator agent)
- A **separate** agent (do NOT trust the executor's own claim — adversarial verify) checks the
  collected artifacts against the plan's oracle: did the expected effect actually occur on the live
  instance? Yes → `reproduced`; ambiguous → loop back to Stage 3 with refinement (bounded retries);
  no → `rejected`.
- This is the gate: **no finding is `confirmed` without an independent oracle pass on a running
  instance.** Mirrors the multi-vote verify stage in the WP Workflow.
- Output: verdict appended to `findings/<pkg>/<id>.md` (uses the finding template).

## Stage 6 — REPORT
- Promote `reproduced` findings into the per-target `findings/` with full repro + PoC + impact.
- Roll status up to `INDEX.md`. Triage disclosure (vendor bounty scope vs CVE/GitHub advisory).

---

## Orchestration & scale
- Single-app first: `orchestrate.sh <pkg>` runs Stages 0→6 against one emulator.
- Scale later via **`docker-android`** fan-out (one ephemeral emulator per app, cluster-scheduled —
  the Andlantis pattern). Pipeline the per-app chain so app B validates while app A is still finding,
  matching the Workflow `pipeline()` default.
- Concurrency bound = available emulator slots, not agent count.

## Scope guardrail
Client-side surface (exported components, providers, deeplinks, WebView, local storage, pinning) is
locally validatable and in-scope. Server-side bugs reached through the app require the vendor's
bounty scope — route to a separate, authorized track; never test out of scope.

## Build order (recap)
1. MobSF turnkey (Stage 1 feeder) + one Google-APIs AVD golden snapshot.
2. ADB function library + PoC Planner/Executor/Validator agents (Stages 3–5) for confirmed candidates.
3. drozer + mitmdump wiring; semantic dedup (Stage 2).
4. `docker-android` parallel fan-out (scale).

Prior art & rationale: [../../HARNESS.md](../../HARNESS.md).
