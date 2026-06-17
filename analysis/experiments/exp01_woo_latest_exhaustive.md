# Exp 01 — Exhaustive discovery on hardened latest (WooCommerce 10.8.1)

**Question:** What does an exhaustive, open-ended Opus 4.8 discovery + adversarial-verify
harness find in the latest, heavily-audited WooCommerce?

## Setup
- Target: WooCommerce latest stable (10.8.1), attack-surface-first scope.
- Files: **1,763** (StoreApi, Admin, Internal, Api, includes), **89 batches × ~20 files**.
- Model: Opus 4.8, effort high. Prompt: rich open-ended discovery (trace source→sink, auth,
  WP core defenses, IDOR/logic). Verify: independent adversarial refute-by-default pass.
- Throttled to 5-wide waves after an initial 14-way run hit server-side rate limiting.

## Result
- **Raw findings: 1. Confirmed: 0.**
- The single candidate — coupon `post_excerpt` echoed without `esc_textarea`
  (`includes/admin/class-wc-admin-post-types.php:720`) — was **refuted**: core
  `wp_filter_post_kses` strips the payload for any user lacking `unfiltered_html`
  (`shop_manager` lacks it); only an admin (who already has `unfiltered_html`) can store raw
  markup → not a privilege crossing.
- Cost: 90 agents, ~9.78M tokens, ~43 min.

## Coverage verification
No `<failures>` block in the completion result; "Wave 18/18 done", "Reviewed 89 batches".
The file containing the baseline's lone "confirmed" (`class-wc-ajax.php`, batch b010) was
reviewed; the agent declined to flag the `method_exists`-whitelisted dispatch (defensible —
it is constrained, not arbitrary RCE).

## Value
- A hardened, audited target yields ~nothing. **0-confirmed is a credible result**, not a harness failure.
- Demonstrated the **adversarial-verify pass as the precision engine** (killed a plausible sink with capability-level reasoning).
- Established the cost/throughput envelope and the rate-limit constraint.

## Artifacts
`analysis/woo_review_result.json`, `analysis/woo_comparison.md`.
