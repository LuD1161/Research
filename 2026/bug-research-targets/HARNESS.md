# Reusable validation harnesses

"Set up once, reuse for every app/extension." These rigs live OUTSIDE individual targets so the
expensive setup (rooted emulator, CA, Frida, traffic capture) is done a single time and every
target just feeds config through it. Per-target folders only hold per-app config + captured
artifacts.

Status: **planned (documentation only)** — scripts not yet built, toolchain not yet installed.

```
bug-research-targets/
├── harness/
│   ├── android/      ← MobSF + rootable emulator rig (Android client-side validation)
│   └── extensions/   ← Playwright rig (browser-extension validation)
└── targets/
    └── android-apps/apps/<pkg>/{config.yml, captures/}
```

---

## Android harness

### Decision: MobSF-first, then a custom rig for deep PoCs
- **Phase A — MobSF turnkey (build first).** Use [MobSF](https://github.com/MobSF/Mobile-Security-Framework-MobSF)
  for batch static + dynamic triage. Its dynamic analyzer installs the APK on an emulator, runs
  Frida, captures HTTP(S) traffic, exercises activities, and emits a report. Run *every* candidate
  APK through MobSF → rank by attack surface. Fastest path to first results.
- **Phase B — custom AVD rig (build later, for confirmed candidates).** When a MobSF hit looks
  real, drop into a controlled rig (drozer + mitmdump + GUI crawler) to produce a clean,
  reproducible PoC. Documented below so it's ready when needed.

### Why emulator, not a physical rooted device
- Resettable + parallelizable. Boot once, snapshot a clean state, restore per app.
- **Google APIs image (not Play)** → `adb root` + `adb remount` work natively. Root is free; no
  Magisk required. (Magisk only needed if a specific app detects emulator/root and we must hide it.)

### One-time setup baked into the snapshot
1. **TLS interception** — push mitmproxy/Burp CA into the system store:
   `adb root; adb remount; adb push ca.pem /system/etc/security/cacerts/<hash>.0`.
2. **frida-server** (arch-matched) running as root → universal SSL-unpinning via
   `objection ... android sslpinning disable` for apps that pin past the system CA.
3. **mitmproxy / `mitmdump`** as proxy (`adb shell settings put global http_proxy host:8080`).
   Headless, scriptable, writes every flow to a file = automated packet capture.
4. **drozer** agent installed for exported-component probing.
5. Snapshot → `emulator -snapshot clean`. Every run = restore snapshot → install → test → discard.

### Automating interaction (no hand-clicking)
- **Direct attack-surface firing (highest yield for client-side CVEs):** parse manifest for exported
  activities/services/receivers/providers, then fire directly — `adb shell am start`,
  `am broadcast`, `content query`. **drozer** automates this whole sweep → intent redirection,
  provider IDOR, permission bypass, all without the UI.
- **GUI crawlers (for flows behind the UI):** Fastbot2 or DroidBot drive activities/inputs for N
  minutes while capture runs. Fallbacks: `adb shell monkey`, Appium/uiautomator2 for scripted flows.

### Orchestration (the "once for all apps" part)
`orchestrate.sh <pkg>` (to be written):
restore snapshot → `adb install` → start mitmdump + logcat + frida → run drozer sweep + crawler →
collect flows / logcat / screenshots / decompiled src into `targets/android-apps/apps/<pkg>/captures/`.
Per app you only write `config.yml` (package, deeplinks, creds, scope notes).

### Scale option (later)
`docker-android` (emulator + ADB + VNC per container) to fan out many apps in parallel, mirroring
the WP batch workflow. Heaviest setup; defer until the single-instance rig is proven.

### Scope guardrail
Client-side validation (exported components, local storage, deeplinks, WebView, pinning) is fully
local and fair game. Bugs on the **vendor backend reached through the app** require the vendor's
bounty scope/authorization — log those separately, do not test out of scope.

### Toolchain to install when we build (Phase A)
MobSF (Docker), Android SDK + emulator, a Google-APIs AVD, mitmproxy, frida + objection, drozer,
jadx/apktool. (Not installed yet — documentation only.)

---

## How the best labs do this at scale (prior art — target this architecture)

Three models, from oldest to frontier:

1. **Emulator farms (academic scale primitive).** Andlantis: scheduler spins up ephemeral
   emulators + fake-network (`iNetSim`) per app across a cluster, installs APK, drives main activity
   ~5 min, snapshots disk for offline analysis. Traffic via mitmproxy CA injected per emulator
   (Aparoid logs flows to Kafka). → Our `docker-android` fan-out is this pattern. The scale unit is
   *ephemeral emulator + injected CA + timed auto-drive + artifact dump*, scheduled.

2. **Dataflow SAST+DAST scanners with auto-PoC (commercial SOTA — Oversecured).** Operates on
   binaries (no source), core differentiator is **taint/dataflow analysis** over all execution
   paths (source→sink), 175+ Android categories, <3% FP, generates working PoCs, CI/CD-integrated.
   → The bar for "high-signal": dataflow + auto-PoC is what avoids the grep-style false-positive
   flood we hit in the WP effort.

3. **Agentic LLM discovery + auto-validation (frontier — A2, arXiv 2508.21579, 2025).**
   This is essentially our intended pipeline. Jadx decompile → strip libs/framework → extract
   manifest. LLM agents produce speculative findings (optionally fed by MobSF/APKHunt SAST) +
   semantic dedup (1.4K warnings → 116). Validation = 3 LangGraph agents: **PoC Planner**
   (read-only strategy), **Task Executor** (29 ADB-driven functions: code exec, device control,
   file ops, UI interaction, screenshots, logs, APK gen, web hosting on an API-36 emulator),
   **Task Validator** (independent oracles, refuses to trust executor claims = adversarial verify).
   Results: 78.3% Ghera coverage; on 169 production APKs → **104 true-positive zero-days, 57 (54.8%)
   self-validated with auto-generated PoCs.**

**Target for our build:** A2-shaped. MobSF/dataflow = feeder → LLM finder + semantic dedup →
emulator + ADB function-calling executor → independent validator agent (mirrors the find→verify
pattern already used in the WordPress Workflow). The "set up once" rig = emulator + injected CA +
Frida + the ADB function library the executor calls.

Sources: Andlantis (arXiv 1410.7751); Oversecured (oversecured.com); A2 (arXiv 2508.21579);
MobSF (mobsf.github.io); Aparoid (github.com/stefan2200/aparoid).

## Browser-extension harness

Easier than Android — no emulator. **Playwright** (or Puppeteer) launches Chrome with the extension
loaded unpacked, drives a malicious test page, and captures all traffic + extension messaging via the
Chrome DevTools Protocol (CDP) network domain. Fully headless and parallelizable.

Per-extension config supplies the `.crx`/unpacked path and any host permissions to exercise. The rig
drives: content-script ↔ background message passing, `externally_connectable`, DOM sinks,
`chrome.*` misuse. High-signal artifact = a test page that triggers the bug in the loaded extension.

Status: planned; build after the Android Phase-A rig.
