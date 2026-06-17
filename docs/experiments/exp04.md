# Exp 04 — Batch-dilution control: 1 file per batch (WooCommerce 5.5.0)

**Question (the control for exp 02):** With everything held constant except batch size, does
1-file-per-batch let the harness catch CVE-2021-32790 that 18-file batches missed?

## Setup
- Target: WooCommerce 5.5.0 `includes/data-stores/` — **23 files, 1 file per batch**.
- Model: Opus 4.8, effort high. **Same discovery prompt and verify pass as exp 02.**
- Only variable changed vs exp 02: **batch granularity (18 → 1).**

## Result — **CVE CAUGHT**
- Batch `wooR_22` = `class-wc-webhook-data-store.php` alone → agent flagged **CVE-2021-32790 at
  line 280**, traced both source paths (REST `/wc/v1/webhooks?search=` and admin `?s=`), explained
  why `esc_like`/`sanitize_text_field` don't escape the quote, and the **adversarial verifier
  CONFIRMED** it (genuine authenticated UNION-based SQLi, high).
- Caveat: 16 of 23 batches were server-side rate-limited, so the sweep was partial — but the
  decisive webhook batch ran and succeeded.

## Side-by-side with exp 02

| Config | Webhook file's batch | Outcome |
|---|---|---|
| 18 files/batch (exp 02) | shared among 18 | **MISS** (empty) |
| **1 file/batch (exp 04)** | file alone | **HIT** (found + verified) |

## Value
- **Decisive proof:** same model, same file, same prompt — only batch size differs → miss vs catch.
  **Harness granularity dominates** for camouflaged bugs. This is the cleanest single result of the series.

## Artifacts
`analysis/ab_review_result.json` (a-retry run), task `wiju94rbq.output`. CVE report:
`reports/findings/CVE-2021-32790_woocommerce_webhooks_sqli.md`.
