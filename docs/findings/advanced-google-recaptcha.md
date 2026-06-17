# advanced-google-recaptcha — routed-pipeline findings (first fresh-target run)

Pipeline: `tools/lens_router.py` (registration-aware static routing) → `review_pipeline.js`
(durable discover + adversarial verify), Sonnet 4.6, 1 file/agent. 15 files reviewed.
Raw: `analysis/pipeline/recaptcha/raw/result.json`. Date: 2026-06-16.

## Funnel
**29 raw → 10 "confirmed" (pipeline verifier) → 7 distinct → after reachability/secrecy
triage: 0 default-exploitable medium+; 2 real LOW.**

The 10→7 is dedup (same bug seen from registrar + definition files). The 7→reality step is the
important one: the pipeline's adversarial verifier **confirmed code paths but did not check
whether the attacker can obtain the gating secret/nonce** — so it over-rated the two
broken-access-control findings. Manual reachability triage (or live validation) corrects them.

## Distinct findings (with deeper-check verdict)

| # | Handler | Class | Pipeline sev | After reachability/secrecy check |
|---|---|---|---|---|
| 1 | `handle_unblock()` (functions.php:805) | BAC, **unauth** | **HIGH** | ❌ **OVER-RATED** — gated by `global_unblock_key = 'agr'.md5(wp_generate_password(24))`, a 35-char random secret (setup.php:220). Unauth path is real but needs the secret → not exploitable. |
| 2 | `install_template()` (functions.php:1317, `admin_action_`) | BAC | MED | ❌ **OVER-RATED** — `check_admin_referer('wpcaptcha_install_template')`; that nonce is only rendered on the admin Design tab (`manage_options`). Non-admins can't obtain it → same gating as UM #1. |
| 3 | `captcha_fields()` (functions.php:597) | stored XSS | MED | ⚠ real-but-admin: `captcha_challenge_text` echoed unescaped into public captcha form; admin-set. On default single-site admins have `unfiltered_html` → low real impact; matters for multisite / cap-without-unfiltered_html. Worth fixing (add `esc_html`). |
| 4 | `login_head()` (functions.php:929) | CSS injection | LOW | ⚠ real-but-admin: `design_background_image` via `esc_attr()` breaks out of CSS `url()`. Admin-controlled. (sibling `design_form_background_image` uses `esc_url()` → safe.) |
| 5 | `login_head()` (functions.php:1074, `design_custom_css`) | stored CSS | LOW | by-design: admin custom-CSS field. |
| 6 | `get_activity_logs()` (ajax.php:482) | sensitive data exposure | MED | admin-only AND PRO-only — free build never populates `failed_pass` (write path absent in `incrementFails()`). Design-level, not exploitable in free. |
| 7 | `handle_captcha()` (functions.php:297) | url-param injection | LOW | ⚠ real, **unauth**, low impact (reflected param into redirect/verify URL). The only genuinely unauth-reachable defect. |

## Bottom line
No default-exploitable medium+ vulnerability. Real LOW default issues: #7 (unauth url-param,
low) and #3/#4 (admin-trust-boundary output-escaping gaps worth a hardening patch). Like
WooCommerce-latest and Ultimate Member, a recent, maintained plugin survives the harness — the
honest signal.

## The methodology result (why this run matters)
This is the **first end-to-end run of the full router pipeline on a fresh target**, and it
worked: routing culled 363→15 files, per-file Sonnet review produced 29 candidates,
adversarial verify cut to 10. But it **re-exposed the one gap that keeps recurring**: the
LLM verifier over-rates access-control findings because it doesn't establish whether the
attacker can actually obtain the gating secret/nonce. Both BAC "confirms" (#1 random secret,
#2 admin-only nonce) fell to that check — exactly as UM #1 did.

→ **Next build:** add a REACHABILITY/SECRECY verification lens as a mandatory verify stage:
"for each access-control finding, prove the attacker can obtain the nonce/secret/capability at
default config, or downgrade." That, plus live curl validation, is what converts
"reasoning-confirmed" into "exploitable." The pipeline is otherwise complete.
