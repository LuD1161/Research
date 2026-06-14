# XSS-047: Missing Output Escaping in Jetpack Breadcrumb Term Names

## Finding ID
`jetpack-xss-047`

## Severity
**Low** (Downgraded from initial 5.4 Medium)

## Status
Confirmed code-level vulnerability, but **practically unexploitable** under standard WordPress configurations due to WordPress core input sanitization on taxonomy term names.

---

## Vulnerability Description

The `jetpack_get_term_parents()` function in Jetpack's Site Breadcrumbs module outputs taxonomy term names (`$parent->name`) without applying `esc_html()`, directly concatenating them into HTML anchor tag content. This violates WordPress coding standards for output escaping (defense-in-depth principle).

However, WordPress core applies three sanitization filters to all term names at the storage layer (`pre_term_name` filter):
1. `sanitize_text_field()` -- strips HTML tags and extra whitespace
2. `wp_filter_kses()` -- strips disallowed HTML via KSES
3. `_wp_specialchars()` -- encodes `& < > "` to HTML entities

This means `<script>`, `<img>`, `<svg>`, and all other HTML tags are **stripped before they reach the database** through any standard WordPress API (`wp_insert_term`, `wp_update_term`, REST API, admin UI, XML-RPC).

## Affected Files

### Primary (Legacy - deprecated since Jetpack 13.8)
**File:** `plugins/src/jetpack/modules/theme-tools/site-breadcrumbs.php`
**Line:** 98

```php
$chain .= '<a href="' . esc_url( get_category_link( $parent->term_id ) ) . '">' . $parent->name . '</a>';
```

### Secondary (Active vendor package)
**File:** `plugins/src/jetpack/jetpack_vendor/automattic/jetpack-classic-theme-helper/src/site-breadcrumbs.php`
**Line:** 89

```php
$chain .= '<a href="' . esc_url( get_category_link( $parent->term_id ) ) . '">' . $parent->name . '</a>';
```

### Affected Versions
- Jetpack 15.9 (tested version)
- `jetpack-classic-theme-helper` package v0.14.30
- Legacy code deprecated since Jetpack 13.8, but still present and conditionally loaded

## Attack Chain Analysis

### Required Conditions for Exploitation

1. **Jetpack must be active** -- the breadcrumbs module is loaded automatically by the Classic Theme Helper
2. **Theme must call `jetpack_breadcrumbs()`** -- this is a template tag, NOT auto-hooked; the active theme must explicitly call this function in its template files
3. **Page must display a hierarchical taxonomy** (category) with parent terms -- the vulnerable code path is only triggered for parent terms in `jetpack_get_term_parents()`, not for the current term (which IS escaped with `esc_html()`)
4. **Attacker must inject raw HTML/JS into `wp_terms.name` column** -- this is the critical barrier

### Why Standard Exploitation Fails

| Injection Vector | Result | Exploitable? |
|---|---|---|
| `wp_insert_term('<script>alert(1)</script>')` | Tags stripped, stored as empty or text-only | No |
| `wp_update_term()` with HTML | Same sanitization applied | No |
| REST API `POST /wp/v2/categories` | Same sanitization | No |
| Admin UI category editor | Same sanitization | No |
| WP-CLI `wp term create` | Same sanitization | No |
| Direct `$wpdb->update()` | Bypasses sanitization, stores raw HTML | Yes, but requires code execution |
| SQL injection in another plugin | Would bypass sanitization | Yes, but requires separate vuln |

### Tested Payloads

```
Input: <script>alert(1)</script>TestCat
Stored: TestCat (tags stripped)

Input: <img src=x onerror=alert(1)>
Result: Invalid term name (rejected)

Input: "onmouseover="alert(1)
Stored: test"onmouseover="alert(1)
Context: Appears in anchor TEXT content, quotes don't break HTML structure -- NOT exploitable

Input: &lt;script&gt;alert(1)&lt;/script&gt;
Stored: &lt;script&gt;... (entities preserved, rendered as literal text)
```

## PoC (Requires Direct DB Access)

This PoC demonstrates the vulnerability by bypassing WordPress sanitization via direct database manipulation. **This is NOT achievable through any standard WordPress API.**

```bash
# Step 1: Create parent and child categories normally
wp term create category "ParentCategory" --skip-plugins
# Returns: Created category 16

wp term create category "ChildCategory" --parent=16 --skip-plugins
# Returns: Created category 17

# Step 2: Inject XSS payload directly into database (bypasses wp_insert_term sanitization)
wp eval 'global $wpdb; $wpdb->update($wpdb->terms, array("name" => "<script>alert(document.cookie)</script>"), array("term_id" => 16));'

# Step 3: Visit the child category archive page (requires theme that calls jetpack_breadcrumbs())
curl -s "http://localhost:8880/category/childcategory/" | grep -o '<script>alert(document.cookie)</script>'

# Expected output (if theme calls jetpack_breadcrumbs):
# <script>alert(document.cookie)</script>
```

**Note:** Step 2 requires either:
- Direct database access (hosting panel, phpMyAdmin)
- Code execution on the server (which already implies full compromise)
- A SQL injection vulnerability in another plugin

## Reachability Analysis

### Is Site Breadcrumbs a Default Module?
**Yes** -- it is loaded automatically by the Classic Theme Helper (`class-main.php` line 31). The `site-breadcrumbs.php` file is always `require_once`'d when Jetpack is active.

### Does It Require Theme Support?
**Yes** -- the function `jetpack_breadcrumbs()` is only a template tag. It is **not** hooked into any WordPress action. The theme must explicitly call `jetpack_breadcrumbs()` in its template files. WordPress default themes (Twenty Twenty-One through Twenty Twenty-Five) do **not** call this function. Only specific third-party themes that integrate with Jetpack breadcrumbs are affected.

### Attack Surface Summary
- Function is defined: Always (when Jetpack active)
- Function is called: Only by themes that explicitly invoke it
- Malicious data can reach it: Only through direct DB manipulation or SQL injection chain
- XSS fires: Only on category archive pages with parent categories, viewed by any visitor

## Impact Assessment

### If Exploitable (Direct DB Manipulation Scenario)
- **Cookie theft**: `document.cookie` exfiltration for all visitors
- **Session hijacking**: Steal admin session cookies if admin views category page
- **Admin takeover**: Inject JS to create new admin user via WordPress REST API
- **Defacement**: Modify page content for all visitors
- **Drive-by downloads**: Redirect visitors to malicious sites
- **Persistence**: Payload persists in database until term is edited

### Practical Impact
**Very Low** -- The vulnerability requires a pre-existing compromise (direct DB access or SQL injection in another plugin) to inject the payload. If an attacker already has direct DB access, they can do far more damage than XSS (backdoors, data exfiltration, etc.). This makes the breadcrumb XSS a **secondary/chained vulnerability** rather than a primary attack vector.

## CVSS 3.1 Score

### Adjusted Score: 3.1 (Low)

**Vector String:** `CVSS:3.1/AV:N/AC:H/PR:H/S:C/C:N/I:L/A:N`

| Metric | Value | Justification |
|---|---|---|
| Attack Vector (AV) | Network | Payload delivered via web |
| Attack Complexity (AC) | High | Requires either: (a) direct DB access bypassing WP APIs, (b) SQL injection chain, (c) theme that calls `jetpack_breadcrumbs()` |
| Privileges Required (PR) | High | Editor+ to create terms, but standard APIs sanitize payloads; true exploitation requires admin/DB access |
| User Interaction (UI) | None | XSS fires automatically for visitors |
| Scope (S) | Changed | Affects visitors beyond the vulnerable component |
| Confidentiality (C) | None | With WP core sanitization, no data exfiltration possible via standard paths |
| Integrity (I) | Low | Theoretical output manipulation if DB is compromised |
| Availability (A) | None | No availability impact |

### Why Downgraded from 5.4 to 3.1
The initial assessment of 5.4 assumed an Editor could inject HTML into term names through the WordPress admin UI. Testing confirmed that WordPress core sanitizes all term names at the storage layer, preventing any HTML injection through standard APIs. The vulnerability is a defense-in-depth gap, not a directly exploitable XSS.

## CWE Classification

- **Primary:** CWE-79: Improper Neutralization of Input During Web Page Generation ('Cross-site Scripting')
- **Sub-type:** Stored XSS (Type 2)
- **Secondary:** CWE-116: Improper Encoding or Escaping of Output

## Known CVE Status

**No known CVE.** Web searches for CVEs related to `jetpack_get_term_parents`, `site-breadcrumbs.php`, and Jetpack breadcrumb XSS returned no matches. The closest analogous vulnerability is a Drupal Taxonomy Breadcrumb XSS (pre-2010) in the same pattern (unescaped term name in breadcrumbs).

The legacy `jetpack_breadcrumbs()` and `jetpack_get_term_parents()` functions were deprecated in Jetpack 13.8, but the same unescaped output exists in the replacement `jetpack-classic-theme-helper` package (v0.14.30).

## Remediation

### Fix (Both Files)

**File 1:** `modules/theme-tools/site-breadcrumbs.php` line 98
**File 2:** `jetpack_vendor/automattic/jetpack-classic-theme-helper/src/site-breadcrumbs.php` line 89

```diff
- $chain .= '<a href="' . esc_url( get_category_link( $parent->term_id ) ) . '">' . $parent->name . '</a>';
+ $chain .= '<a href="' . esc_url( get_category_link( $parent->term_id ) ) . '">' . esc_html( $parent->name ) . '</a>';
```

### Verification That Fix Won't Break Display

Testing confirmed that `esc_html()` does NOT double-encode term names stored by WordPress:

```
Stored in DB: "Tom &amp; Jerry &lt;3 Cats"
esc_html() output: "Tom &amp; Jerry &lt;3 Cats"  (identical -- no double encoding)
```

WordPress's `esc_html()` (via `_wp_specialchars()`) has built-in double-encode prevention, so applying it is safe and correct.

### Additional Recommendation

The `phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped` comment on line 66 (legacy) / line 61 (vendor) in `jetpack_breadcrumbs()` suppresses the PHPCS output escaping warning for the entire breadcrumb `<nav>` element. While the `$home` and `$breadcrumb` variables are built from individually-escaped components (mostly), this blanket suppression masks the unescaped `$parent->name` deeper in the call chain. Consider removing this suppression and properly escaping all outputs.

## Conclusion

This finding represents a **defense-in-depth violation** rather than a directly exploitable vulnerability. The missing `esc_html()` call is a genuine code defect that violates WordPress output escaping best practices, and it should be fixed. However, WordPress core's input sanitization on taxonomy term names prevents exploitation through any standard API. The vulnerability would only become exploitable in a chained attack scenario where another vulnerability (SQL injection, direct DB access) is used to inject raw HTML into the `wp_terms` table -- at which point the attacker likely already has greater access than what this XSS would provide.

**Recommendation:** Fix the escaping (trivial one-line change), but classify as Low severity for triage prioritization.
