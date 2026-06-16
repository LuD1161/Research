# BACKUPLY-005: Database Credentials Passed in HTTP POST Body During Restore

## Severity: MEDIUM (CVSS ~5.9)

## Summary

During the restore flow, Backuply passes the WordPress database credentials (username, password, host, database name) as POST body parameters in an HTTP request. If the request is intercepted or logged, the database credentials are exposed.

## Vulnerable Code

**File:** `functions.php`, lines 1658-1725:
```php
function backuply_init_restore($info){
    global $wpdb;
    // ...
    $info['softdb'] = $wpdb->dbname;
    $info['softdbhost'] = $wpdb->dbhost;
    $info['softdbuser'] = $wpdb->dbuser;
    $info['softdbpass'] = $wpdb->dbpassword;
    $info['tbl_prefix'] = $wpdb->prefix;
    // ...
    backuply_restore_curl($info);
}

function backuply_restore_curl($info = array()) {
    // ... $info now contains DB creds
    $args = array(
        'body' => $info,  // DB credentials in POST body
        'timeout' => 0.01,
        'blocking' => false,
        'sslverify' => false,  // SSL verification disabled!
        // ...
    );
    wp_remote_post($info['restore_curl_url'], $args);
}
```

## Key Issues

### 1. SSL Verification Disabled
`'sslverify' => false` means the HTTP request does not verify the server's SSL certificate. On HTTPS sites, this makes the request vulnerable to MITM attacks.

### 2. Credentials in HTTP POST Body
Even on HTTPS, the POST body containing database credentials may be:
- Logged by web servers (if POST body logging is enabled)
- Logged by WAF/reverse proxy
- Captured by HTTP intercepting proxies
- Visible in debug logs or error reports

### 3. Request Goes to Dynamic URL
The restore URL can be either:
- `site_url() . '/backuply-restore.php'` (web root file)
- `BACKUPLY_URL . '/restore_ins.php'` (plugin directory)

If the first option fails and falls back to the plugin URL, the credentials traverse a different path through the web server.

### 4. Additional Sensitive Data in Request
The POST body also contains:
- `restore_key` -- the RESTORE_KEY authentication token
- `backup_dir` -- absolute server paths
- `plugin_dir` -- absolute path to plugin
- `sess_key` -- session key for post-restore auth
- `site_url`, `home_url`, `admin_email` -- site information

## Impact

- Database credential exposure through MITM (SSL verification disabled)
- Database credential exposure through server-side logging
- Combined with database access, full site compromise

## Classification

- CWE-319: Cleartext Transmission of Sensitive Information
- CWE-295: Improper Certificate Validation
- CWE-532: Insertion of Sensitive Information into Log File

## Recommendation

1. Enable SSL verification (`sslverify => true`) or at minimum verify when the site uses HTTPS
2. Pass credentials through the database options table or a temporary encrypted file instead of HTTP POST
3. If HTTP transport is necessary, encrypt the sensitive fields using a shared secret
4. Minimize the data transmitted -- the restore process could read wp-config.php directly for DB credentials
