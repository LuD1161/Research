# Exp 02 — CVE rediscovery (blind), 18-file batches (WooCommerce 5.5.0)

**Question:** Pointed at a version with a known CVE — but blind to its location — does the
harness rediscover it?

## Setup
- Target: WooCommerce **5.5.0**, vulnerable to **CVE-2021-32790** (authenticated SQLi in the
  webhooks REST/admin search → `class-wc-webhook-data-store.php:280`; fixed in 5.5.1).
- Scope: REST + data-store subsystem, **126 files, 7 batches × 18 files** (the vulnerable file
  shared a batch with 17 others). Blind — agents told to review the whole layer, not the bug.
- Model: Opus 4.8, effort high. Prompt included a general hint that `esc_like`/`sanitize_text_field`
  don't escape quotes and to flag concatenation into queries without `prepare`.

## Result
- **0 findings raised, 0 confirmed → MISS.**
- The agent assigned `class-wc-webhook-data-store.php` returned `{"findings": []}`. The
  camouflaged-as-sanitized SQLi (it *uses* `esc_like(sanitize_text_field(...))`, which look like
  sanitizers) slipped through.

## Value
- Demonstrates that **even Opus 4.8 with a targeted hint misses a real CVE** when the vulnerable
  file is diluted among 18 files in one review unit. Motivated the 1-file control (exp 04).

## Cross-check: would the original 5-layer baseline have caught it?
No. (1) The baseline analyzed the **patched 10.8.1** — the bug wasn't present. (2) Even on 5.5.0,
the custom SQLi Semgrep rules **don't cover `get_col`** (the sink) and the interpolation rules
require a **superglobal at the sink** (here it's a REST param several hops away); Layer-5 was
triage-only. See `methodology_fixes.md`.

## Artifacts
`analysis/ab_review_result.json` (woo_cve target), task `w7f5jkyr6.output`.
