# Harness Experiments: CVE Rediscovery (a) + Less-Hardened Plugin (b)

All runs: Opus 4.8, open-ended discovery + adversarial verify, throttled waves.
Worktree only; `main` untouched.

## Test (a): CVE-2021-32790 rediscovery in WooCommerce 5.5.0 (blind)

Sink: `includes/data-stores/class-wc-webhook-data-store.php:280` — `search` param
concatenated into a quoted `LIKE '%...%'` literal, executed via `$wpdb->get_col($query)`
with NO `prepare()`. `esc_like` only escapes wildcards; `sanitize_text_field` doesn't
escape quotes → quote breakout → UNION SQLi. Auth: `manage_woocommerce` (shop_manager/admin)
via REST API key, or admin via settings page. Fixed in 5.5.1 with `$wpdb->prepare`.

| Configuration | Webhook file's batch | Result |
|---|---|---|
| 18 files / batch | assigned among 18 | **MISS** — agent returned empty |
| **1 file / batch** | file alone | **HIT** — SQLi found, verifier-CONFIRMED (high) |

**Conclusion: batch granularity (pure harness engineering), not model capability,
determined catch vs. miss.** Same Opus 4.8, same file, same prompt. 18-file context
dilution starved the reasoning that — given the file alone — fully nailed the CVE,
including both source paths and the sanitizer-illusion analysis.

Note: neither the original 5-layer baseline (which analyzed the PATCHED 10.8.1) nor its
rules would have caught this — the custom SQLi rules don't even cover `get_col`, and the
interpolation rules require a superglobal at the sink (here it's a REST param several hops away).

## Test (b): smart-slider-3 (less-hardened, 742 files)

Discovery+verify: **9 raised → 3 confirmed, 6 refuted.**

Confirmed:
- `ControllerAjaxBrowse.php:17` — AJAX media-listing missing `current_user_can` (low).
  Reproduces baseline **SS3-002** and deepened it (Contributor/Author can mint the nonce
  via TinyMCE integration → real low-priv gap).
- `Sanitize.php:684` — case-sensitive `javascript:` check (`strpos` vs `stripos`) bypass (low). **NEW.**
- `ItemVimeoFrontend.php:102` — stored XSS via Vimeo `start` into inline JS (medium). **NEW.**

Refuted (incl. baseline disagreements):
- `ControllerAjaxSliders.php:285` path traversal = **baseline SS3-003**, raised but REFUTED
  (admin + `unfiltered_html` gated).
- `GeneratorGroupPosts.php:92` `unserialize` object injection (≈ baseline **SS3-004** class), REFUTED.
- plus query-var injection, predictable session token, preview missing-cap, SlideEvent onclick XSS.

### Baseline vs. new harness (smart-slider-3)
- Baseline: 3 confirmed (SS3-002 + two **admin-gated** bugs).
- New: 3 confirmed = 1 baseline reproduced+improved + **2 novel bugs**, while the stricter
  verifier **discounts admin-gated findings** (consistent with the WooCommerce coupon-XSS refutation).
- **Exploitability/severity judgment is not stable across harness designs** — the stricter
  verifier trades 2 admin-gated confirms for 2 new real bugs and far less noise.

## Cross-cutting takeaways
1. **Harness > model on the margin:** batch size flipped a real CVE from miss to catch.
2. **Discovery harness shines on less-hardened targets** (novel bugs + reproduction).
3. **Adversarial verify is the precision engine** (6/9 candidates refuted with specific reasoning).
4. **Operational constraint:** server-side rate limiting repeatedly capped concurrency;
   small batches + low concurrency + retry/backoff is required for reliable full sweeps.
