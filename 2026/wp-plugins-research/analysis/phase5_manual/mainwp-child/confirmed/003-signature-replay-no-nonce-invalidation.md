# MWPC-2026-003: Signature Replay — No Nonce Invalidation After Use

## Severity: MEDIUM (CVSS ~5.3)

## Summary

The RSA signature authentication mechanism signs `function_name + nonce` but never invalidates the nonce after use. The `mainwp_child_nonce` option is set to `0` at registration and never updated. A network-level attacker who captures a valid signed request can replay it indefinitely.

## Affected Code

**File:** `class/class-mainwp-connect.php`  
**Method:** `auth()` lines 509-525

## Technical Details

### Signature Verification

```php
// Line 518 (simplified)
$result = openssl_verify( $func . $nonce, base64_decode($signature), base64_decode($pubkey), $algo );
```

The `$nonce` value comes directly from `$_REQUEST['nonce']` — it is entirely caller-supplied. The child site does not:
- Maintain a monotonic counter
- Check timestamps for freshness
- Store and reject previously-used nonces
- Compare the nonce against any server-side state

### Replay Scenario

1. Attacker captures a legitimate Dashboard-to-Child HTTP request (via MITM on non-HTTPS connection, shared hosting log access, WAF log, or reverse proxy log)
2. The captured request contains: `function`, `mainwpsignature`, `nonce`, and any operation-specific POST parameters
3. Attacker replays the exact same request at any later time
4. The signature validates because the same `function + nonce` signed by the same private key produces the same signature, and the child has no replay detection

### Additional Concern: Attacker-Controlled Algorithm

The `$_REQUEST['sign_algo']` parameter (lines 515-517) allows the caller to select from an allowlist: `OPENSSL_ALGO_SHA1`, SHA224, SHA256, SHA384, SHA512. An attacker replaying a captured request could also downgrade the algorithm to SHA1 (though this does not help with replay itself since they already have a valid signature).

Similarly, `$_REQUEST['verifylib']` switches verification to phpseclib3 instead of OpenSSL.

## Preconditions

- Network-level access to capture a valid authenticated request
- Most impactful when HTTPS is not enforced (the `MAINWP_ALLOW_NOSSL_CONNECT` constant can disable SSL requirement)

## Impact

An attacker can replay any captured operation: code execution, file writes, user creation, backup downloads. The replayed operation executes with the exact same parameters as the original.

## Remediation

1. Implement server-side nonce tracking with a monotonic counter (increment after each successful auth)
2. Add timestamp validation — reject requests older than N seconds
3. Store last-used nonce hash and reject duplicates
4. Remove client-controlled `sign_algo` and `verifylib` parameters — enforce server-side algorithm selection
