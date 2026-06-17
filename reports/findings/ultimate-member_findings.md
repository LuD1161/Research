# ultimate-member 2.12.0 — end-to-end value run (harness findings)

Harness: per-file **Sonnet 4.6** discovery + access-control/SQLi lenses + adversarial
verify (refute-by-default). 93 attack-surface files, 138 agents, ~5.38M subagent tokens.
Run: `analysis/experiments/um_value/raw/w80qbnmp4_result.json`. Date: 2026-06-16.

## Headline numbers (and a harness caveat)
- **45 raw findings → 35 "confirmed" → ~13 DISTINCT bugs.**
- The 35→13 gap is a measurement artifact, not 35 bugs: (a) overlapping batches reviewed
  the same file twice, (b) the same bug was tagged under multiple classes
  (`class-files.php` upload appears 13× across authz / csrf / auth-bypass). **Lesson:
  dedup must key on (file, root-cause), and "confirmed_count" is not "bug count."**

## Distinct findings (deduped)

| # | File | Class | Sev | Auth (verifier) | Status |
|---|------|-------|-----|-----------------|--------|
| 1 | `includes/admin/core/class-admin-settings.php` `same_page_update_ajax()` | Broken access control / priv-esc | ~~HIGH~~ → **config-cond. LOW/MED** | **LIVE-VALIDATED**: subscriber+editor both blocked from wp-admin at default → cannot get `um-admin-nonce`; attack → `Wrong Nonce`. Real-but-not-default-exploitable | see `validation.md` |
| 2 | `includes/core/class-files.php` upload (`wp_ajax_nopriv_*`) | Unauth file upload / missing nonce | MED | unauthenticated | needs live validation |
| 3 | `includes/core/class-member-directory.php` `default_filter_settings` AJAX | Broken access control | MED | any logged-in | candidate |
| 4 | `includes/admin/core/class-admin-notices.php` `dismiss_notice` | Missing cap on AJAX | MED | any logged-in | candidate |
| 5 | `includes/core/class-actions-listener.php` default action path | Missing nonce (CSRF-ish) | MED | any logged-in | candidate |
| 6 | `includes/core/class-logout.php` | CSRF logout | MED | n/a (anon victim) | low impact |
| 7 | `includes/admin/core/class-admin-settings.php` IN()-clause | 2nd-order SQLi via `implode()` | LOW | (gated by #1) | refuted as non-injectable by verifier |
| 8 | `includes/core/class-users.php` sub-admin edit | IDOR (commented-out cap check) | LOW | sub-admin | candidate |
| 9 | `includes/core/class-form.php` `ajax_select_options` | Usermeta enumeration | LOW | unauth/any | candidate |
| 10 | `includes/admin/core/class-forms.php` `um_get_icons` | Missing cap | LOW | any logged-in | low impact |
| 11 | `includes/core/class-query.php` `ajax_paginate` | Missing cap | LOW | any logged-in | low impact |
| 12 | `includes/core/class-logout.php` / `password-reset.php` | CSRF on pw-reset init | LOW | anon | low impact |
| 13 | `includes/um-short-functions.php` | IP blocklist bypass via `HTTP_CLIENT_IP` spoof | LOW | anon | candidate |

⚠ = top exploitation candidate.

## The #1 finding (privilege escalation) — why live validation is decisive
`wp_ajax_um_same_page_update` (registered in `class-admin-ajax-hooks.php:32`, **no
`nopriv` variant**) dispatches `same_page_update_ajax()` which runs only
`check_ajax_nonce()` (`um-admin-nonce`) — **no `current_user_can()`**. Reachable sinks:
`update_option('um_usermeta_fields', …)`, a bulk `INSERT INTO {prefix}um_metadata`, and
`do_action('um_same_page_update_ajax_action', $cb_func)` with an attacker-controlled key.

**The entire severity hinges on one empirical question the verifiers could not agree on
from source alone:** can a *subscriber* obtain `um-admin-nonce`? The nonce is localized
on `admin_enqueue_scripts` (`class-enqueue.php:501`), which only fires on a wp-admin page
load; `um_block_wpadmin_by_user_role()` may redirect subscribers away from wp-admin (but
exempts `DOING_AJAX`). 4 agents assumed the nonce is reachable (→ HIGH, subscriber); 3
argued only `can_access_wpadmin` roles get it (→ MED, editor/shop-manager).

→ **Resolution = one curl as the `lowpriv` subscriber against `localhost:8880`.** This is
exactly the case where source-review splits and a live PoC is the only arbiter. Tracked in
`analysis/experiments/um_value/validation.md`.

## Novelty / dedup vs known CVEs (to verify against OSV/WPScan)
UM has prior upload + privilege CVEs; #1 (`um_same_page_update`) and #2 (nopriv upload)
must be checked against the known set — an *incomplete-patch bypass* of a fixed CVE is
still novel and in-scope. Pending.
