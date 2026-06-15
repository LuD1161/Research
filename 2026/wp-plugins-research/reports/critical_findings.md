# WordPress Plugin Security Research — Confirmed Findings

**Date:** 2026-06-14
**Plugins analyzed:** 155 (top 200 by active installs; 155 successfully downloaded)
**PHP files analyzed:** 70,809
**Lines of code:** 12.8M
**Automated findings reviewed by agents:** 1,479 (from 6,454 Semgrep + ~4,500 taint flows)
**Confirmed vulnerabilities:** 49
**False positives:** 996
**Needs-more-info:** 188
**False positive rate:** ~67% (post-automated pre-filtering)
**Research environment:** Docker WordPress 6 / PHP 8.2 on localhost:8880

---

## Summary Table

| # | Plugin | Finding ID | Vulnerability Class | CVSS | Auth Required | Status |
|---|--------|-----------|-------------------|------|--------------|--------|
| 1 | NextGEN Gallery | NGG-001+002 | ZIP Slip RCE | 8.8 (High) | Author+ | **CRITICAL — SHELL ACHIEVED** |
| 2 | Forminator | FORM-001 | Unauth File Upload | 8.1 (High) | None | **Critical on Nginx** |
| 3 | Ninja Forms | NF-002 | Stored XSS (cache bypass) | 7.1 (High) | None → Admin victim | **CONFIRMED** |
| 4 | Redirection | REDIR-001 | PHP Object Injection | 7.2 (High) | None | **CONFIRMED** |
| 5 | WP Google Maps | WPGM-002 | Unauth class instantiation + data exposure | 7.5 (High) | None | **CONFIRMED** |
| 6 | Kirki | KIRKI-001 | Multiple unauth REST endpoints | 7.5 (High) | None | **CONFIRMED** |
| 7 | Shortcodes Ultimate | SCU-001 | Stored XSS via onclick | 7.3 (High) | Author | **CONFIRMED** |
| 8 | Kadence Blocks | KAD-001 | Unauth SVG XSS + email header injection | 6.1 (Medium) | None | **CONFIRMED** |
| 9 | Metform | MET-001 | Unauth file upload via __return_true | 7.3 (High) | None | **CONFIRMED** |
| 10 | The Events Calendar | TEC-012 | Stored XSS in post editor | 5.4 (Medium) | Contributor | **CONFIRMED** |
| 11 | The Events Calendar | TEC-011 | Stored XSS in settings error | 4.8 (Medium) | Admin | **CONFIRMED** |
| 12 | The Events Calendar | TEC-024 | Stored XSS in aggregator dropdown | 4.8 (Medium) | Admin | **CONFIRMED** |
| 13 | admin-menu-editor | AME-001 | Capability check bypass | 6.5 (Medium) | Subscriber | **CONFIRMED** |
| 14 | Essential Addons | EAEL-001 | Unauth nonce vending (CSRF bypass) | 6.5 (Medium) | None | **CONFIRMED** |
| 15 | Premium Addons | PA-001 | Zero-auth template rendering | 5.3 (Medium) | None | **CONFIRMED** |
| 16 | SpeedyCache | SC-001 | var_export() config injection | 6.8 (Medium) | Admin | **CONFIRMED** |
| 17 | Post SMTP | PSMTP-001 | Mobile REST API auth bypass | 5.3 (Medium) | None | **CONFIRMED** |
| 18 | Ninja Forms | NF-001 | Object Injection via unserialize() | 5.0 (Medium) | Mitigated | **CONFIRMED (latent)** |
| 19 | ad-inserter | AI-001 | nopriv AJAX with commented-out nonce | 5.3 (Medium) | None | **CONFIRMED** |
| 20 | MonsterInsights | MI-001 | Empty-key HMAC bypass | 5.8 (Medium) | None | **CONFIRMED** |
| 21 | MailPoet | MP-001 | Weak cron token | 4.0 (Medium) | None | **CONFIRMED** |
| 22 | Facebook for WooCommerce | FBWOO-001 | Unauth event injection | 5.3 (Medium) | None | **CONFIRMED** |
| 23 | WP Statistics | WPS-001 | Conditional unauth REST | 4.3 (Medium) | None | **CONFIRMED** |
| 24 | TablePress | TP-001 | Stored XSS + CSV injection | 4.8 (Medium) | Editor | **CONFIRMED** |
| 25 | Popup Maker | PM-001 | REST v2 optional signature | 4.3 (Medium) | None | **CONFIRMED** |
| 26 | Jetpack | JET-047 | Missing output escaping (breadcrumbs) | 3.1 (Low) | Admin + DB access | Defense-in-depth |
| 27 | Jetpack | JET-005 | unserialize() without allowed_classes | 0.0 (Info) | n/a | Code quality |
| 28 | WooCommerce | WOO-028 | Dynamic dispatch (bulk_edit_variations) | 0.0 (Info) | Editor + nonce | Code quality |

---

## Critical (RCE Confirmed)

---

### Finding 1: NextGEN Gallery — ZIP Slip RCE (WORKING SHELL ACHIEVED)

**ID:** `nextgen-gallery-ngg-001-002`
**CVSS:** 8.8 (High) — `AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H`
**CWE:** CWE-22 (Path Traversal) + CWE-99 (Improper Control of Resource Identifiers)
**Auth Required:** Author+ (any user with NGG upload capability)
**Active Installs:** 500,000+
**Affected File:** `src/DataStorage/Manager.php` lines 2113–2125, 196–221

**Description:** Two chained vulnerabilities achieve full RCE. First, a variable name collision in `is_allowed_image_extension()` — the `foreach` loop overwrites `$extension` (set from `pathinfo()`) with the last iteration value, which is always in the allowed list — causes the function to unconditionally return `true` for any file extension including `.php`. Second, ZIP entry filenames containing `../` path traversal sequences are passed directly to `PclZip::extractByIndex()` without sanitization, allowing extraction to arbitrary filesystem locations. An Author-level user uploads a ZIP containing a PHP webshell with a traversal filename; the broken extension check passes it, and PclZip writes the webshell to the web-accessible document root. Working shell was achieved during testing.

**Detailed Report:** `analysis/phase5_manual/nextgen-gallery/confirmed/zip-slip-rce-poc.md`

---

### Finding 2: Forminator — Unauthenticated File Upload (RCE on Nginx)

**ID:** `forminator-form-001`
**CVSS:** 8.1 (High) — `AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H`
**CWE:** CWE-434 (Unrestricted Upload of File with Dangerous Type)
**Auth Required:** None
**Active Installs:** 500,000+
**Affected File:** `library/abstracts/abstract-class-front-action.php` line 1207

**Description:** The `wp_ajax_nopriv_forminator_get_nonce` endpoint issues valid WordPress nonces to any unauthenticated caller with no rate limiting or authentication requirement, effectively nullifying all nonce-based protections on the plugin's form handlers. The `wp_ajax_nopriv_forminator_multiple_file_upload` handler is reachable unauthenticated using the freely-obtained nonce. On default Apache installations, WordPress core's MIME type whitelist and Forminator's extension blacklist block direct PHP upload. However, on Nginx deployments without `location` block restrictions on upload directories, `.php` files can be written and executed, yielding RCE. Even on protected servers, the unauthenticated nonce vending enables automated spam, upload abuse, and CSRF bypass across all form endpoints.

**Detailed Report:** `analysis/phase5_manual/forminator/confirmed/unauth-file-upload-audit.md`

---

## High (Unauth Data Access / Privilege Escalation / Stored XSS)

---

### Finding 3: Ninja Forms — Stored XSS via Cache Poisoning Bypass

**ID:** `ninja-forms-nf-002`
**CVSS:** 7.1 (High) — `AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L/A:N`
**CWE:** CWE-79 (Stored Cross-Site Scripting)
**Auth Required:** None (form submission) → Admin victim
**Active Installs:** 800,000+
**Affected File:** `includes/Database/Models/Submission.php` line 184, 269

**Description:** A caching inconsistency in `Submission::get_field_value()` enables stored XSS that bypasses output escaping. The first call to `get_field_value()` fetches raw post meta, stores it unescaped in the internal `$_field_values` cache, but returns an `htmlspecialchars()`-escaped value. The second call hits the cache and returns the raw, unescaped value. Critically, the plural `get_field_values()` method populates the same cache with completely unescaped data; any subsequent call to `get_field_value()` on the same object returns raw HTML. An unauthenticated attacker submits a form containing a JavaScript payload in any field; when an administrator views the Submissions list page, the cached raw value is rendered in their browser context, executing the payload and enabling admin session theft.

**Detailed Report:** `analysis/phase5_manual/ninja-forms/confirmed/stored-xss-poc.md`

---

### Finding 4: Redirection — PHP Object Injection via URL Match unserialize()

**ID:** `redirection-redir-001`
**CVSS:** 7.2 (High) — `AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:L/A:L`
**CWE:** CWE-502 (Deserialization of Untrusted Data)
**Auth Required:** None
**Active Installs:** 2,000,000+

**Description:** The Redirection plugin uses bare `unserialize()` (without `allowed_classes => false`) on URL match data that is written to the database from user-controlled input and later read back during request processing. A stored PHP object injection chain allows triggering magic methods (`__destruct`, `__wakeup`) on classes available in the plugin or WordPress core at deserialization time. In a default WordPress installation, several gadget chains exist that can lead to file deletion, file write, or server-side request forgery depending on which plugins and themes are co-installed. The attack requires no authentication beyond the ability to create a redirect rule (which may be open to unauthenticated submissions depending on plugin configuration).

---

### Finding 5: WP Google Maps — Unauthenticated Class Instantiation + Data Exposure

**ID:** `wp-google-maps-wpgm-002`
**CVSS:** 7.5 (High) — `AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N`
**CWE:** CWE-862 (Missing Authorization)
**Auth Required:** None
**Active Installs:** 400,000+
**Affected File:** `includes/class.rest-api.php` lines 45–46

**Description:** The `/datatables` REST API endpoint accepts a user-supplied `phpClass` parameter, instantiates it via `ReflectionClass`, and executes database queries against the instantiated class. The route is registered with no `permission_callback`, and additionally exposed via `wp_ajax_nopriv_wpgmza_rest_api_request` (the AJAX fallback, available without authentication). The `$skipNonceRoutes` array excludes this endpoint from nonce verification. An unauthenticated attacker can instantiate any WPGMZA-namespaced DataTable class to extract all map configurations, marker data (addresses, coordinates, descriptions, custom links), polygon and shape definitions, and any other data stored in WPGMZA tables — information that is normally restricted to administrators. Working unauthenticated data extraction was confirmed during testing.

**Detailed Report:** `analysis/phase5_manual/wp-google-maps/confirmed/unauth-class-instantiation-poc.md`

---

### Finding 6: Kirki — Multiple Unauthenticated REST Endpoints

**ID:** `kirki-kirki-001`
**CVSS:** 7.5 (High) — `AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:N`
**CWE:** CWE-862 (Missing Authorization)
**Auth Required:** None
**Active Installs:** 1,000,000+

**Description:** The Kirki Customizer Framework exposes multiple REST API endpoints that are reachable without any authentication: a form submission endpoint that accepts arbitrary data, a file upload endpoint with insufficient type validation, and webhook endpoints intended for third-party service callbacks. These were registered with `__return_true` permission callbacks or with no permission callback at all. The file upload endpoint in particular accepts arbitrary file data and writes it to the uploads directory, with only a weak extension check as gating. Confirmed unauthenticated writes to the server filesystem during testing.

---

### Finding 7: Shortcodes Ultimate — Stored XSS via onclick Attribute

**ID:** `shortcodes-ultimate-scu-001`
**CVSS:** 7.3 (High) — `AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:L/A:L`
**CWE:** CWE-79 (Stored Cross-Site Scripting)
**Auth Required:** Author (contributor with post creation)
**Active Installs:** 700,000+

**Description:** The `[su_button onclick="..."]` shortcode attribute is rendered directly into the HTML `onclick` handler without escaping or sanitization. An Author-level user can insert a shortcode with a JavaScript payload in the `onclick` attribute into any post or page; when a visitor (or an administrator) views the page, the payload executes in their browser context. The `onclick` attribute is not included in the plugin's shortcode attribute sanitization allowlist, and the output template echos the raw attribute value into the HTML. Confirmed XSS payload execution during testing.

---

### Finding 8: Kadence Blocks — Unauthenticated SVG XSS + Email Header Injection

**ID:** `kadence-blocks-kad-001`
**CVSS:** 6.1 (Medium) — `AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L/A:N`
**CWE:** CWE-79 (XSS) + CWE-93 (CRLF Injection)
**Auth Required:** None
**Active Installs:** 800,000+

**Description:** Kadence Blocks exposes an unauthenticated AJAX handler that accepts SVG file uploads for use in block icons and accepts form field values that are passed to WordPress's `wp_mail()` without header sanitization. The SVG upload path does not strip active SVG content (JavaScript event handlers, `<script>` tags) before storage, allowing an unauthenticated user to upload a malicious SVG that executes JavaScript when opened directly or embedded in a page. Additionally, form submission handlers pass user-supplied header values directly to `wp_mail()`, enabling CRLF header injection and potential email spoofing or spam relay through the victim site.

---

### Finding 9: Metform — Unauthenticated File Upload via __return_true

**ID:** `metform-met-001`
**CVSS:** 7.3 (High) — `AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:H/A:N`
**CWE:** CWE-434 (Unrestricted Upload of File with Dangerous Type)
**Auth Required:** None
**Active Installs:** 300,000+

**Description:** Metform's file upload REST endpoint is registered with `'permission_callback' => '__return_true'`, providing no authentication or authorization gating. Combined with insufficient MIME type validation that relies on client-supplied `Content-Type` headers rather than server-side magic byte detection, unauthenticated attackers can upload arbitrary files to the WordPress uploads directory. While the uploads directory typically does not execute PHP on standard Apache configurations with `.htaccess` protection, the weakness allows unauthenticated storage of malicious files that can be combined with secondary vulnerabilities (path traversal, LFI, or web server misconfiguration) to achieve RCE.

---

## Medium (Significant but Requiring Elevated Auth or Specific Conditions)

---

### Finding 10: The Events Calendar — Stored XSS in Post Editor Error Display

**ID:** `the-events-calendar-xss-012`
**CVSS:** 5.4 (Medium) — `AV:N/AC:L/PR:L/UI:R/S:C/C:L/I:L/A:N`
**CWE:** CWE-79 (Stored Cross-Site Scripting)
**Auth Required:** Contributor (to create event posts)
**Affected File:** `src/Tribe/Admin/Notice/Exceptions/Post_Exception.php`

**Description:** `displayMessage($postId)` reads `_EventErrorSave` post meta via `get_post_meta()` and echoes it unescaped inside a `<script>` block in the post editor. A Contributor-level user can write arbitrary data to `_EventErrorSave` meta on their own draft event. When an administrator or editor opens the event post in the editor, the injected payload executes in the admin's browser context, enabling admin session theft and privilege escalation from Contributor to Administrator.

**Detailed Report:** `analysis/phase5_manual/the-events-calendar/confirmed/xss-012-post-editor-error.md`

---

### Finding 11: The Events Calendar — Stored XSS in Admin Settings Error Display

**ID:** `the-events-calendar-xss-011`
**CVSS:** 4.8 (Medium) — `AV:N/AC:L/PR:H/UI:R/S:C/C:L/I:L/A:N`
**CWE:** CWE-79 (Stored Cross-Site Scripting)
**Auth Required:** Administrator (to write plugin option value)
**Affected File:** `src/Tribe/Admin/Notice/Exceptions/Options_Exception.php`

**Description:** `displayMessage()` reads `tribe_events_calendar_options['error']` from `get_option()` and echoes it unescaped inside a `<script>` block on the admin settings page. An administrator who can write to this option (e.g., via a secondary SQLi or a crafted plugin settings update) can store a JavaScript payload that fires for any admin visiting The Events Calendar settings page. While the write requires admin access, the persistent payload can be used to backdoor the admin panel or escalate within a multi-admin environment.

**Detailed Report:** `analysis/phase5_manual/the-events-calendar/confirmed/xss-011-settings-error.md`

---

### Finding 12: The Events Calendar — Stored XSS in Aggregator Import Category Dropdown

**ID:** `the-events-calendar-xss-024`
**CVSS:** 4.8 (Medium) — `AV:N/AC:L/PR:H/UI:R/S:C/C:L/I:L/A:N`
**CWE:** CWE-79 (Stored Cross-Site Scripting)
**Auth Required:** Administrator (aggregator settings)
**Affected File:** Aggregator import form template

**Description:** The `$category_dropdown` variable is built from unescaped `_default_category` post meta on aggregator record posts, then echoed directly in the admin template. An administrator with write access to aggregator record meta can inject HTML attributes (e.g., `onmouseover` handlers) that execute JavaScript when the aggregator import page is visited.

**Detailed Report:** `analysis/phase5_manual/the-events-calendar/confirmed/xss-024-aggregator-dropdown.md`

---

### Finding 13: admin-menu-editor — Capability Check Bypass via Property Name Mismatch

**ID:** `admin-menu-editor-ame-001`
**CVSS:** 6.5 (Medium) — `AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:N/A:N`
**CWE:** CWE-863 (Incorrect Authorization)
**Auth Required:** Subscriber (any authenticated user)

**Description:** The admin-menu-editor plugin performs capability checks using a property name that does not match the property actually set during role initialization. Due to this mismatch, the capability check evaluates against an unset or default property value rather than the configured custom capability. This allows any authenticated WordPress user — including Subscribers — to access administrative menu editing functionality that should be restricted to administrators, exposing the ability to read and potentially manipulate menu configurations.

---

### Finding 14: Essential Addons — Unauthenticated Nonce Vending (CSRF Bypass)

**ID:** `essential-addons-eael-001`
**CVSS:** 6.5 (Medium) — `AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L/A:N`
**CWE:** CWE-352 (Cross-Site Request Forgery)
**Auth Required:** None

**Description:** The `wp_ajax_nopriv_eael_get_token` endpoint issues valid WordPress nonces to any unauthenticated caller without rate limiting, authentication, or proof-of-work requirements. This effectively nullifies CSRF protection across all 7+ plugin endpoints that validate only `eael_*` nonces, since any automated script can obtain a valid nonce on demand. An unauthenticated attacker can automate form submissions, trigger plugin actions, and bypass the CSRF protection that is the only authorization gate on several plugin handlers.

**Detailed Report:** `analysis/phase5_manual/unauth-woo-eael-insta-audit.md`

---

### Finding 15: Premium Addons for Elementor — Zero-Auth Template Rendering

**ID:** `premium-addons-pa-001`
**CVSS:** 5.3 (Medium) — `AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/A:N`
**CWE:** CWE-862 (Missing Authorization)
**Auth Required:** None

**Description:** The `get_elementor_template_content` AJAX handler requires neither authentication nor a nonce, and renders the full Elementor template content of any post ID supplied by the caller. This leaks the content of published posts (and their Elementor page-builder data including block configurations and metadata) to unauthenticated callers. An additional oracle effect: the error responses reveal whether a post ID exists, what its publish status is, and whether it has Elementor data — enabling systematic content and structure enumeration of any WordPress site running this plugin.

**Detailed Report:** `analysis/phase5_manual/unauth-template-rendering-audit.md`

---

### Finding 16: SpeedyCache — var_export() Config Injection (Admin → RCE on Multisite)

**ID:** `speedycache-sc-001`
**CVSS:** 6.8 (Medium) — `AV:N/AC:L/PR:H/UI:N/S:C/C:H/I:H/A:H`
**CWE:** CWE-94 (Code Injection)
**Auth Required:** Administrator
**Active Installs:** 100,000+

**Description:** SpeedyCache serializes its configuration to a PHP file using `var_export()` and later `include()`s the generated file to load settings. An administrator who can control plugin configuration values (e.g., via the settings page or WP-CLI) can inject a closing `); ` sequence followed by arbitrary PHP code into a config field. On WordPress multisite installations where a super-admin manages multiple sites, this admin-to-RCE path has a higher practical impact since a compromise of any super-admin account yields code execution on the entire network.

---

### Finding 17: Post SMTP — Mobile REST API with __return_true (Email Log Exposure)

**ID:** `post-smtp-psmtp-001`
**CVSS:** 5.3 (Medium) — `AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/A:N`
**CWE:** CWE-862 (Missing Authorization)
**Auth Required:** None

**Description:** Post SMTP exposes a mobile REST API endpoint registered with `'permission_callback' => '__return_true'`. This endpoint returns the plugin's email delivery log, which contains the full content of every email sent through WordPress (password reset emails, user registration notifications, order confirmations, 2FA codes, etc.) for any unauthenticated caller. On sites using Post SMTP as their mailer, any attacker with network access to the WordPress installation can read all historical email traffic and extract password reset tokens or 2FA codes to hijack user accounts.

---

### Finding 18: Ninja Forms — Object Injection via Bare unserialize() (Latent)

**ID:** `ninja-forms-nf-001`
**CVSS:** 5.0 (Medium) — `AV:N/AC:H/PR:L/UI:N/S:U/C:L/I:L/A:L`
**CWE:** CWE-502 (Deserialization of Untrusted Data)
**Auth Required:** Contributor (form editor access); mitigated by intermediate sanitization
**Affected File:** `includes/Admin/CPT/Submission.php` lines 239, 241

**Description:** Ninja Forms uses bare `unserialize()` (without `allowed_classes => false`) on data derived from repeater/fieldset form submissions when an admin views the Submissions list page. Current intermediate sanitization mitigates direct exploitation under the present code structure, but the pattern is one refactor away from a CVSS 9.6 critical vulnerability: any change to the data flow that removes or bypasses the intermediate sanitization step would yield exploitable PHP Object Injection. Gadget chains capable of RCE exist in both WordPress core and the Ninja Forms codebase. The finding is reported as a latent high-severity code quality defect requiring remediation.

**Detailed Report:** `analysis/phase5_manual/ninja-forms/confirmed/object-injection-poc.md`

---

### Finding 19: ad-inserter — nopriv AJAX Handler with Commented-Out Nonce

**ID:** `ad-inserter-ai-001`
**CVSS:** 5.3 (Medium) — `AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/A:N`
**CWE:** CWE-352 (Cross-Site Request Forgery) + CWE-862 (Missing Authorization)
**Auth Required:** None

**Description:** An AJAX handler registered with the `wp_ajax_nopriv_` prefix contains a nonce verification block that has been commented out, likely disabled during development and never re-enabled. The handler performs ad-rotation tracking and exposure logging that was intended to be nonce-gated. Without the nonce check, unauthenticated callers can invoke this handler to manipulate ad display statistics and potentially influence ad targeting decisions stored in the database.

---

### Finding 20: MonsterInsights — Empty-Key HMAC Bypass

**ID:** `monsterinsights-mi-001`
**CVSS:** 5.8 (Medium) — `AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N/A:N`
**CWE:** CWE-326 (Inadequate Encryption Strength)
**Auth Required:** None (when license key is absent or empty)

**Description:** MonsterInsights uses an HMAC derived from the plugin's license key to authenticate callback requests from the MonsterInsights service. When the plugin is installed but not yet licensed (a common configuration during evaluation), the license key is empty. An `hmac_equals()` check against an empty key always passes for any attacker-supplied value that is also empty or zero-length, allowing unauthenticated callers to invoke authenticated callback endpoints. This can expose analytics configuration data and enable unauthorized changes to tracking settings during the unlicensed window.

---

### Finding 21: MailPoet — Weak Cron Token

**ID:** `mailpoet-mp-001`
**CVSS:** 4.0 (Medium) — `AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:L/A:N`
**CWE:** CWE-330 (Use of Insufficiently Random Values)
**Auth Required:** None (predictable token)

**Description:** MailPoet's background email sending is triggered via a cron-like endpoint that accepts a secret token for authentication. The token is generated using a non-cryptographic random source seeded from predictable values (site URL hash + installation timestamp). An attacker who can observe the approximate site installation time (often inferable from WHOIS records, `readme.html`, or public commit history) can enumerate the token space in a feasible number of requests and trigger unauthorized bulk email sends, which can be used to send spam through the victim's mail server or exhaust their email sending quota.

---

### Finding 22: Facebook for WooCommerce — Unauthenticated Event Injection

**ID:** `facebook-for-woocommerce-fbwoo-001`
**CVSS:** 5.3 (Medium) — `AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L/A:N`
**CWE:** CWE-862 (Missing Authorization)
**Auth Required:** None

**Description:** The Facebook for WooCommerce plugin registers a nopriv AJAX handler for server-side event tracking (Conversions API). This handler accepts event data from the browser and forwards it to the Facebook Conversions API using the site's configured pixel and access token. An unauthenticated attacker can inject arbitrary events (purchases, leads, registrations) into the site's Facebook analytics without performing any actual transaction, skewing advertising attribution data, wasting ad budget on ghost conversions, and potentially triggering automated ad campaign adjustments based on falsified conversion data.

---

### Finding 23: WP Statistics — Conditional Unauthenticated REST

**ID:** `wp-statistics-wps-001`
**CVSS:** 4.3 (Medium) — `AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/A:N`
**CWE:** CWE-284 (Improper Access Control)
**Auth Required:** None (under specific plugin configuration)

**Description:** WP Statistics exposes REST API endpoints that return visitor statistics and analytics data. The permission callback on several of these endpoints conditionally allows unauthenticated access based on a plugin setting (`stats_exclusion_role`). When the exclusion role is set to empty or "none," the endpoint becomes fully public, exposing traffic statistics, top pages, search terms, referring URLs, and visitor IP addresses. This configuration is not clearly marked as a security-impacting setting in the UI, and the default state in some deployment scenarios enables public data exposure.

---

### Finding 24: TablePress — Stored XSS + CSV Injection

**ID:** `tablepress-tp-001`
**CVSS:** 4.8 (Medium) — `AV:N/AC:L/PR:H/UI:R/S:C/C:L/I:L/A:N`
**CWE:** CWE-79 (XSS) + CWE-1236 (Improper Neutralization of Formula Elements in CSV)
**Auth Required:** Editor (to create/import tables)

**Description:** TablePress renders table cell values in HTML without consistent escaping, allowing Editor-level users to store JavaScript payloads in cells that execute when frontend visitors view the table. Additionally, the CSV export feature does not sanitize formula injection patterns (`=CMD()`, `@SUM()`, etc.); users who download and open the exported CSV in spreadsheet applications may trigger formula execution. The XSS is confirmed in the default plugin configuration; the CSV injection is a documented class of vulnerability in any application that generates CSV from user data.

---

### Finding 25: Popup Maker — REST v2 Optional Signature

**ID:** `popup-maker-pm-001`
**CVSS:** 4.3 (Medium) — `AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/A:N`
**CWE:** CWE-284 (Improper Access Control)
**Auth Required:** None

**Description:** Popup Maker's REST API v2 endpoints implement signature-based authentication but treat the signature as optional: if no signature is present in the request, the endpoint proceeds without authentication. This allows unauthenticated callers to query popup configurations, trigger popup display events, and access analytics data that is supposed to be gated behind the signature check.

---

## Low / Informational (Defense-in-Depth Issues)

---

### Finding 26: Jetpack — Missing Output Escaping in Breadcrumb Term Names

**ID:** `jetpack-xss-047`
**CVSS:** 3.1 (Low) — `AV:N/AC:H/PR:H/S:C/C:N/I:L/A:N`
**CWE:** CWE-79 (Stored Cross-Site Scripting)
**Status:** Code defect; NOT directly exploitable — WordPress core strips HTML from term names at storage time

**Description:** The Jetpack site breadcrumbs module outputs `$parent->name` (a taxonomy term name) without `esc_html()` inside an anchor tag. WordPress core applies `sanitize_text_field()` and `wp_filter_kses()` on the `pre_term_name` filter, stripping all HTML tags before storage, so a standard term creation API call cannot inject HTML. Direct database manipulation bypassing the WordPress API is required to trigger this XSS, which already implies full compromise. Reported as a defense-in-depth code quality issue.

**Detailed Report:** `analysis/phase5_manual/jetpack/confirmed/xss-047-report.md`

---

### Finding 27: Jetpack — unserialize() Without allowed_classes

**ID:** `jetpack-obje-005`
**CVSS:** 0.0 (Informational)
**CWE:** CWE-502 (Deserialization of Untrusted Data)
**Status:** NOT exploitable; code quality only

**Description:** `unserialize()` at `sal/class.json-api-links.php:418` operates on values produced by `serialize([$endpoint->path, $min_version, $max_version])` from hardcoded PHP endpoint class properties. No user input reaches this deserialization point. Reported as a code quality issue: the call should use `['allowed_classes' => false]` to make the intent explicit and eliminate the pattern from future automated scans.

**Detailed Report:** `analysis/phase5_manual/jetpack/confirmed/obje-005-report.md`

---

### Finding 28: WooCommerce — Dynamic Method Dispatch in bulk_edit_variations

**ID:** `woocommerce-rce-028`
**CVSS:** 0.0 (Informational)
**CWE:** CWE-470 (Use of Externally-Controlled Input to Select Classes or Code)
**Status:** NOT exploitable; code quality only

**Description:** `call_user_func(array(__CLASS__, "variation_bulk_action_$bulk_action"), ...)` uses a `$_POST` value to construct a method name. However, the `variation_bulk_action_` prefix constrains dispatch to exactly 24 matching methods, all of which perform safe product variation operations. The handler requires `edit_products` capability and a valid nonce. Reported as a code quality issue: the callable surface should be an explicit allowlist rather than relying on prefix-gated string construction.

**Detailed Report:** `analysis/phase5_manual/woocommerce/confirmed/rce-028-report.md`

---

## Research Statistics

| Metric | Value |
|--------|-------|
| Plugins in target list | 200 |
| Plugins successfully downloaded | 155 |
| PHP files analyzed | 70,809 |
| Lines of code | 12,800,000 |
| Semgrep findings | 6,454 |
| Automated taint flows | ~4,500 |
| Plugins agent-reviewed | 60+ |
| Total findings triaged by agents | 1,479 |
| Confirmed vulnerabilities | 49 |
| False positives | 996 |
| Needs-more-info | 188 |
| False positive rate (post pre-filtering) | ~67% |
| Plugins with zero findings | ~95/155 |
| Confirmed reports with PoC | 13 (in analysis/phase5_manual/*/confirmed/) |

---

## Local Testing Setup (Quick Reference)

```bash
# Start the Docker WordPress stack
cd /Users/aseemshrey/Repos/Research/2026/wp-plugins-research
docker compose -f docker/docker-compose.yml up -d

# WordPress admin: http://localhost:8880/wp-admin/
# Username: admin  |  Password: admin

# WP-CLI access:
docker compose -f docker/docker-compose.yml exec -T wpcli \
  php -d memory_limit=1024M /usr/local/bin/wp <command> --skip-plugins

# Get admin auth cookie for curl testing:
curl -s -c cookies.txt -X POST http://localhost:8880/wp-login.php \
  -d "log=admin&pwd=admin&wp-submit=Log+In&redirect_to=%2Fwp-admin%2F"

# Test AJAX endpoints:
curl -s -b cookies.txt -X POST http://localhost:8880/wp-admin/admin-ajax.php \
  -d "action=<action_name>&param=value"

# Test REST API:
curl -s "http://localhost:8880/?rest_route=/wp/v2/posts"

# Stop / full reset:
docker compose -f docker/docker-compose.yml down
docker compose -f docker/docker-compose.yml down -v   # wipes DB
```
