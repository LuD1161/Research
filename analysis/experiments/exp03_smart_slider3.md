# Exp 03 — Less-hardened plugin discovery (smart-slider-3)

**Question:** On a less-hardened plugin with known bugs, does the discovery+verify harness
reproduce the baseline and/or find new bugs?

## Setup
- Target: smart-slider-3 (all first-party PHP), **742 files, 42 batches × 18 files**.
- Model: Opus 4.8, effort high. Open-ended discovery + adversarial verify.
- Baseline to beat (prior manual review): **3 confirmed** — SS3-002 (subscriber AJAX
  broken-access), SS3-003 (admin path traversal in local import), SS3-004 (admin `unserialize`
  object injection).

## Result — 9 raised → **3 confirmed**, 6 refuted

**Confirmed:**
| Finding | Sev | vs baseline |
|---|---|---|
| `ControllerAjaxBrowse.php:17` — AJAX media-listing missing capability check | low | **Reproduces SS3-002** + deepened (Contributor/Author can mint the nonce via TinyMCE) |
| `Sanitize.php:684` — case-sensitive `javascript:` filter bypass (`strpos` vs `stripos`) | low | **NEW** |
| `ItemVimeoFrontend.php:102` — stored XSS via Vimeo `start` into inline JS | medium | **NEW** |

**Refuted (verifier working):** `ControllerAjaxSliders.php:285` path traversal (= baseline
SS3-003, admin+`unfiltered_html` gated), `GeneratorGroupPosts.php:92` object injection (≈ SS3-004
class), query-var injection, predictable session token, preview missing-cap, SlideEvent onclick XSS.

## Value
- The discovery harness **finds real and novel bugs** where they exist (2 new beyond the baseline).
- The adversarial verifier **discounts admin-gated bugs** that the baseline had confirmed
  (SS3-003/004) → **severity/exploitability judgment is not stable across harness designs**.
  Trade: 2 admin-gated confirms dropped for 2 new real bugs + far less noise.

## Artifacts
`analysis/ab_review_result.json` (smart_slider target). Confirmed-bug reports in
`reports/findings/`.
