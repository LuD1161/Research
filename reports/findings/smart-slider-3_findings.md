# smart-slider-3 — Confirmed findings (harness review, 2026-06-16)

Plugin: smart-slider-3 (latest in corpus). Review: Opus 4.8 discovery + adversarial verify
(exp 03), with Sonnet 4.6 cross-checks (exp 05/06). Baseline prior manual review had 3 confirmed
(SS3-002/003/004).

## Confirmed by this harness

### F1 — AJAX media-listing missing capability check (reproduces baseline SS3-002)
- **File:** `Nextend/Framework/Browse/ControllerAjaxBrowse.php:17` (`actionIndex`).
- **Class:** Broken access control / information disclosure. **Severity:** low.
- **Reachability:** `wp_ajax_smart-slider3` → `AdminHelper::display_admin_ajax()` dispatches
  `actionIndex()` **without** `checkForCap()`. Only guard is `validateToken()` (nonce, static action
  `nextend_security`). Any logged-in user (Subscriber+) who obtains the nonce (mintable via the
  TinyMCE editor integration for Contributor/Author with `edit_posts`/`edit_pages`) can enumerate
  the media/images directory contents + URLs and leak the absolute server path (`fullPath`).
- **Missing check:** `current_user_can('smartslider_edit')` (or similar) before listing.
- **Verifier:** CONFIRMED (low). Path traversal beyond the images root is mitigated by
  `realpath()` + prefix check; impact is enumeration, not arbitrary read.

### F2 — Case-sensitive `javascript:` filter bypass (NEW; not in baseline)
- **File:** `Nextend/Framework/Sanitize.php:684` (`filter_attributes_on`).
- **Class:** Stored XSS via sanitizer bypass. **Severity:** low.
- **Detail:** `strpos($value,'javascript:')` is **case-sensitive**, so `href="JaVaScRiPt:..."`
  survives the filter and renders verbatim (only sanitizer on that path; no later `wp_kses`). The
  `on*` attribute strip closes auto-firing vectors, so the surviving vector is a click-triggered
  `<a href>`.
- **Auth/impact caveat (verifier):** `smartslider_edit` is granted by default only to administrators
  (who also have `unfiltered_html`), so on a default single-site install impact is minimal; the bug
  matters for multisite admins / lower roles manually granted the cap. Real defect; **fix:** use
  `stripos` and extend beyond `href`.

### F3 — Stored XSS via Vimeo `start` in inline JS (NEW; not in baseline)
- **File:** `Nextend/SmartSlider3/Renderable/Item/Vimeo/ItemVimeoFrontend.php:102`.
- **Class:** Stored/DOM XSS, JS-context injection. **Severity:** medium.
- **Detail:** the slide `start` value is passed through `$owner->fill()` (template substitution,
  no JS/HTML escaping) and concatenated **raw** into an inline `new _N2.FrontendItemVimeo(..., <start>)`
  script string → JS-context breakout executes on the public frontend for every visitor.
- **Verifier:** CONFIRMED (medium).

## Raised but refuted (verifier refute-by-default)
- `ControllerAjaxSliders.php:285` — path traversal in local import (= **baseline SS3-003**): refuted
  as admin + `unfiltered_html` gated.
- `GeneratorGroupPosts.php:92` — `unserialize` object injection (≈ **baseline SS3-004** class): refuted.
- query-var injection (`WordPressContent.php:20`), predictable session token (`AbstractStorage.php:25`),
  preview missing-cap (`ControllerPreview.php:51`), SlideEvent onclick XSS (`SlideEvent.php:14`).

## Note on baseline disagreement
The baseline counted SS3-003/004 (admin-gated) as confirmed; this harness's verifier refuted them
(an admin already has `unfiltered_html` / equivalent power). Severity judgment is harness-dependent.
