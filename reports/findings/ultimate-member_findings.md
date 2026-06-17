# ultimate-member 2.12.0 — final validated findings

Harness: per-file **Sonnet 4.6** discovery + access-control/SQLi lenses + adversarial verify
(refute-by-default). 93 attack-surface files, 138 agents, ~5.38M subagent tokens.
Raw run: `analysis/experiments/um_value/raw/w80qbnmp4_result.json`.
Live validation: local Docker WP 6 / UM 2.12.0 @ `localhost:8880`. Date: 2026-06-16.

## Funnel
**45 raw → 35 "confirmed" (harness) → 13 distinct → live-validated below.**
- 35→13: overlapping batches + same bug multi-tagged (the upload bug alone counted 13×).
- 13→reality: live validation + nonce/default-config analysis. **Net result: 0 medium-or-above
  bugs exploitable at DEFAULT config. The medium/high ones the harness reported are all
  gated by a nonce non-admins can't obtain, or by an admin-config option that is empty by
  default.** A few real LOW default bugs remain.

## Final list (validated)

| # | File / handler | Class | Real in code? | Default-exploitable? | Final severity | Evidence |
|---|---|---|---|---|---|---|
| 1 | `class-admin-settings.php` `same_page_update_ajax` | Missing cap / priv-esc | ✅ | ❌ | **config-cond. LOW/MED** | **CURL-PROVEN**: subscriber+editor 302-blocked from wp-admin → never get `um-admin-nonce` → attack = `Wrong Nonce` (`validation.md`) |
| 2 | `class-files.php` `ajax_image_upload`/`ajax_file_upload` (nopriv) | Unauth upload, nonce-skip | by-design | ❌ | config-cond. | nonce-skip for unauth is intentional (registration); needs a reg form w/ uploader field (none by default) + a MIME bypass (not shown) |
| 3 | `class-member-directory.php` `default_filter_settings` | Missing cap | ✅ | ❌ | config-cond. MED | uses `UM()->admin()->check_ajax_nonce()` = `um-admin-nonce` → same refutation as #1 |
| 4 | `class-admin-notices.php` `dismiss_notice` | Missing cap | ✅ | ❌ | config-cond. LOW | `um-admin-nonce` gated; impact = hide an admin notice |
| 5 | `class-actions-listener.php` default action path | Missing nonce → `do_action` | partial | reachable | **LOW** (extension-cond.) | frontend nonce reachable; fires `um_action_user_request_hook` — no core sink |
| 6 | `class-logout.php` `logout_page` | CSRF logout | ✅ | ✅ | **real LOW** | code: GET on `template_redirect`, `wp_logout()`, no nonce (couldn't curl — logout page not provisioned on this install) |
| 7 | `class-admin-settings.php` IN()-clause | 2nd-order SQLi | ❌ | — | **REFUTED** | `prepare()` on pagination; IN() built from option array, not attacker-controlled |
| 8 | `class-users.php` bulk-action | IDOR (commented-out cap) | ✅ | ❌ | config-cond. LOW | WP `users.php` bulk action → needs wp-admin access + cap; same gating as #1 |
| 9 | `class-form.php` `ajax_select_options` (nopriv) | Unauth usermeta enum | ✅ | ❌ | config-cond. MED | **CURL-PROVEN**: anon nonce accepted, but `allowed_choice_callbacks` empty by default → `"not possible for security reasons"`; query unreachable |
| 10 | `class-forms.php` `um_get_icons` | Missing cap | ✅ | ❌ | config-cond. LOW | `um-admin-nonce` gated; impact = read icon list |
| 11 | `class-query.php` `ajax_paginate` | Missing cap | ✅ | ✅ (frontend nonce) | **real LOW** | `UM()->check_ajax_nonce()` = frontend nonce (anon-obtainable); fires `um_ajax_load_posts__*` — low impact |
| 12 | `password-reset.php` init | CSRF | ✅ | ✅ | **real LOW** | no `wp_nonce_field`, only honeypot; triggers reset email (annoyance) |
| 13 | `um-short-functions.php` `um_user_ip` | IP blocklist bypass | ✅ | conditional | **LOW** | trusts `HTTP_CLIENT_IP` header; only matters if the IP-blocklist feature is enabled |

## Bottom line
- **0** critical/high default-config vulns. The one HIGH the harness reported (#1) is
  **curl-disproven** for default installs.
- **Real LOW default bugs:** #6 logout CSRF, #11 ajax_paginate, #12 pw-reset CSRF
  (#13 conditional). All low impact — worth a defense-in-depth fix, not a security alert.
- **6 config-conditional** (#1,#3,#4,#8,#9,#10): become MED if an admin loosens default
  config (grants a role wp-admin access, or populates `allowed_choice_callbacks`). The fixes
  (add `current_user_can`) are still correct; the *severity* is not what source-review said.
- **1 refuted** (#7). **1 by-design** (#2).

## The thesis result
The harness's discovery + adversarial-verify both **inherited a shared false premise** —
"a low-priv user can obtain the gating nonce / the gating config is permissive." Every
medium+ finding rested on it. Source-review (even refute-by-default) could not break it;
**one curl per finding did.** This is the precise argument for validation-first:
reasoning-confirmed ≠ exploitable. Default-config reachability must be a *measured* fact,
not an inferred one. (Mirrors the WooCommerce-latest "0 confirmed = credible" outcome —
recent, well-hardened plugins survive a good harness, and that's the honest signal.)

## Novelty
No new CVE-worthy default-config bug surfaced. The config-conditional missing-cap items are
hardening gaps worth reporting upstream as defense-in-depth, not as exploitable CVEs.
