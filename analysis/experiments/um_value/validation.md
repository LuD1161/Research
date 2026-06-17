# Live validation — ultimate-member finding #1 (`um_same_page_update`)

Validation-first per PIPELINE.md ("no curl proof = not confirmed"; "does the sink fire
under DEFAULT options?"). Target: local Docker WP 6 / PHP 8.2 at `http://localhost:8880`,
UM 2.12.0 active. Date: 2026-06-16.

## The question live validation had to settle
The discovery harness raised finding #1 (missing `current_user_can` on
`wp_ajax_um_same_page_update`) and **7 verifier agents split on severity purely from
source**:
- 4 agents: **HIGH** — any **subscriber** can exploit.
- 3 agents: **MEDIUM** — only roles with wp-admin access (editor/shop-manager).

The crux none could resolve from code: **can a non-admin obtain a valid `um-admin-nonce`?**

## What the curl proved (test accounts: `lowpriv`=subscriber, `umeditor`=editor)

| Step | Observed | Meaning |
|---|---|---|
| subscriber → `GET /wp-admin/profile.php` | **302 → frontend homepage** | UM `um_block_wpadmin_by_user_role()` ejects non-admins before `admin_enqueue_scripts` runs |
| editor → `GET /wp-admin/` | **302 → frontend homepage** | even a wp-admin-capable role is blocked at default config |
| page source (subscriber/editor) | only `um_scripts` (frontend nonce); **no `um_admin_scripts`** | `um-admin-nonce` is never delivered to non-admins |
| default role meta `wp_admin` (admin/editor/subscriber) | all **unset** → UM blocks wp-admin for all non-admins by default | no role except administrator reaches the nonce |
| subscriber → `POST admin-ajax.php action=um_same_page_update` w/ frontend nonce | **`{"success":false,"data":"Wrong Nonce"}`** | attack fails; nonce action mismatch |

Code fact (confirms missing-cap is real, just not the gate): `same_page_update_ajax()`
calls only `UM()->admin()->check_ajax_nonce()` — **no `current_user_can`** anywhere in the
handler. Registered as `wp_ajax_` (not `nopriv`).

## Verdict: severity OVERSTATED by all reasoning verifiers
**Not exploitable cross-privilege at default configuration.** The `um-admin-nonce` is
emitted only via `admin_enqueue_scripts → load_global_scripts()` on a wp-admin **page**,
and UM redirects every non-admin role away from wp-admin by default. No non-admin can
obtain the nonce → the missing capability check is not reachable by a lower-privilege user.

**Real but config-conditional (LOW/MED):** if an admin grants a lower role wp-admin access
(UM "Access" settings — a non-default change), that role then receives `um-admin-nonce` and
can invoke admin-only operations (`update_option`, bulk `INSERT INTO um_metadata`,
`do_action('um_same_page_update_ajax_action', …)`) without `manage_options`. The fix is
still warranted (add `current_user_can`), but it is **not** the default-config HIGH the
harness reported.

## Why this is the headline result for the thesis
Source-review consensus (7/7 agents "real", 4 of them "HIGH/subscriber") was **wrong on the
exploitation premise**. One curl as a real subscriber falsified it. This is the precise
value of validation-first: discovery + adversarial-verify still inherited a shared false
assumption ("non-admins can get the admin nonce"); only the live instance broke the tie.
→ Reasoning-confirmed ≠ curl-confirmed. Default-config reachability must be a measured fact.

## Test-instance notes (for reproducibility)
- Created `umeditor`/`edit123` (editor) and reused `lowpriv`/`lowpriv123` (subscriber).
- Reset `admin` password and set `admin_email_lifespan` far-future to skip the WP6 admin-
  email interstitial. Admin form login is additionally blocked by a broken TFA from the
  unrelated `all-in-one-wp-security-and-firewall` plugin (mcrypt/openssl decrypt failure) —
  an instance artifact, not part of this finding.
- The "admin can call its own endpoint" leg was not pursued: an admin invoking an admin
  endpoint is not a vulnerability, and WP session-bound nonces make a CLI-minted cookie
  leg ("Wrong Nonce") not worth the effort. The security conclusion stands without it.
