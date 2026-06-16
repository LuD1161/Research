# WooCommerce: Discovery-Harness Review vs. Baseline Triage

Run date: 2026-06-16. Plugin: woocommerce (latest stable), 3,965 PHP files.
Scope reviewed: attack-surface-first, **1,763 files / 89 batches**.

## Head-to-head

| | Baseline (existing) | This run |
|---|---|---|
| Approach | **Triage** of automated scanner candidates | **Open-ended discovery** on full file set |
| Model | sonnet-4-6 | **opus-4-8** (Opus 4.8) |
| Verification | single-pass agent verdict | **independent adversarial verify** (refute-by-default) |
| Raw candidates | 289 | **1** |
| False positives waded through | 280 | 0 (1 raised → refuted) |
| Needs-more-info | 8 | 0 |
| **Confirmed** | **1** (CVSS 3.8, borderline) | **0** |
| Cost | (cheaper model, scanner-gated) | ~9.78M tokens · 90 agents · 43 min |

## The one candidate this run raised (and refuted)

Stored XSS — `includes/admin/class-wc-admin-post-types.php:720`. Coupon
`post_excerpt` echoed raw (no `esc_textarea`) into a `<textarea>`.
**Verdict: REFUTED.** WordPress core `wp_filter_post_kses` runs on every write
path for any user lacking `unfiltered_html`; `shop_manager` lacks it, so `kses`
strips `</textarea>`/`<script>`. Only an administrator (who already has
`unfiltered_html`) can store raw markup — not a privilege-boundary crossing.
The missing `esc_textarea` is a hardening nit, not an exploitable bug.

## The baseline's one "confirmed" — not reproduced, and arguably correct to drop

`includes/class-wc-ajax.php:3154` `bulk_edit_variations()` —
`call_user_func` on `'variation_bulk_action_' . $bulk_action` guarded by
`method_exists(__CLASS__, ...)`. Baseline rated it CVSS **3.8 / editor / low**.

This file **was reviewed** (batch b010). The discovery agent declined to report
it. That is defensible: the `method_exists` whitelist restricts dispatch to
pre-existing `variation_bulk_action_*` methods — it is **not** arbitrary code
execution. The baseline "confirmed" is itself a borderline/dubious call.

## Honest interpretation

1. **Both approaches found nothing genuinely exploitable in WooCommerce latest.**
   That is a *credible* result, not a harness failure — WooCommerce is one of the
   most heavily audited plugins in existence (Automattic security team + active
   bug bounty). 0 novel confirmed is the expected outcome for a hardened target.

2. **Where the harness clearly won: precision and rigor.** It surfaced 1 candidate
   vs the baseline's 289, and killed it with capability-level reasoning
   (`kses` / `unfiltered_html`). No 280-FP haystack to hand-sort.

3. **The "harness lift on older models" thesis cannot be demonstrated on a target
   with no findable bugs.** To show lift you need a target where bugs exist:
   - **Known-CVE rediscovery:** check out a *pre-patch* version of a real
     WooCommerce CVE and see if the harness finds it cold (cleanest demo).
   - **A less-hardened plugin** from the corpus (the 201–300 batch had higher
     hit rates).

4. **Cost reality:** ~9.8M tokens / 43 min for a depth-N "this is clean" result.
   Exhaustive deep review is expensive; the negative result has value (assurance)
   but the demonstration of *model×harness lift* should be run where signal exists.

## Methodology bugs fixed along the way (in this worktree)

- `scripts/enumerate_surface.sh`: `rg --include` (invalid flag, silently errored
  → "None found" corpus-wide) → `-g`; now **fails loud** on scan error; expanded
  entry-point taxonomy.
- `tools/ast_surface.py`: AST-based generic registration inventory. On WooCommerce:
  6,373 registrations incl. **777 dynamic hook registrations invisible to grep**.
