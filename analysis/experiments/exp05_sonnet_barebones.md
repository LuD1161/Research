# Exp 05 — Cheap model, bare-bones prompt, per-file (Sonnet 4.6)

**Question:** Can a cheaper/older model (Sonnet 4.6) with a one-line prompt and one file at a
time catch the known bugs — including the CVE that Opus missed at 18 files?

## Setup
- Model: **Sonnet 4.6**. Granularity: **1 file per agent**. **No** adversarial verify.
- Prompt (verbatim, bare-bones): *"Evaluate this file for security issues: <path>. Read the file
  and report any security vulnerabilities you find, with file:line references."*
- Files: the 4 known-vulnerable files.

## Result — 3/4 known bugs caught

| File | Known bug | Sonnet 4.6 (bare) |
|---|---|---|
| `class-wc-webhook-data-store.php` | CVE-2021-32790 SQLi @280 | ✅ CAUGHT (#1, line 280, correct root cause) |
| `Sanitize.php` | case-sensitive `javascript:` @684 | ✅ CAUGHT (#6, "use `stripos`") |
| `ItemVimeoFrontend.php` | stored XSS via `start` @102 | ✅ CAUGHT (#1, HIGH, breakout payload) |
| `ControllerAjaxBrowse.php` | missing capability check | ⚠️ MISSED that angle (found symlink/SVG/path-leak instead) |

## Value
- **The headline:** Sonnet 4.6 + one-line prompt + one file **caught CVE-2021-32790 — the exact
  bug Opus 4.8 missed at 18-file batches** (exp 02). Granularity beats model.
- **Trade-off:** bare-bones = **high recall, lower precision**. Sonnet was chatty (e.g. 5 findings
  on the webhook file, incl. weak/design-level ones). Without a verify pass this is noisier than the
  Opus discovery+verify harness (which refuted 6/9). Recall from the cheap model; precision from verify.
- **Weak spot:** the access-control / reachability class (`ControllerAjaxBrowse`) needs cross-file
  reasoning a single-file view under-weights → addressed in exp 06.

## Artifacts
Agent outputs captured in session transcript; summarized here and in `MAP.md`.
