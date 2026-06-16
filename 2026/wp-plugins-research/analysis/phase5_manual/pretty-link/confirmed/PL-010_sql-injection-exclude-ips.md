# PL-010: SQL Injection in Click Exclusion Filter via Admin Options

## Severity: Low (CVSS 2.0)
## Vulnerability Class: SQL Injection
## Unauthenticated: No (requires admin access to set options)

## Location

- **File**: `app/models/PrliClick.php`
- **Lines**: 57-63, 80-85
- **Method**: `get_exclude_where_clause()`

## Description

The `get_exclude_where_clause()` method builds SQL WHERE clauses by directly interpolating IP addresses from admin-configured options without using `$wpdb->prepare()`.

```php
public function get_exclude_where_clause( $where = '', $abbr = 'cl') {
    global $prli_options;
    $exclude_list = trim($prli_options->prli_exclude_ips);
    // ...
    
    $exclude_ips = explode(',',$exclude_list);
    for($i = 0; $i < count($exclude_ips); $i++) {
      $exclude_ip = trim(preg_replace('#\*#','%%',$exclude_ips[$i]));
      // ...
      $return_stmt .= " {$abbr}.ip NOT LIKE '{$exclude_ip}'";  // SQL INJECTION
    }
    
    // Also for whitelist:
    $whitelist_ips = explode(',',$whitelist);
    for($i = 0; $i <= count($whitelist_ips); $i++) {
      $whitelist_ip = trim(preg_replace('#\*#','%%',$whitelist_ips[$i]));
      // ...
      $return_stmt .= " {$abbr}.ip LIKE '{$whitelist_ip}'";  // SQL INJECTION
    }
}
```

## Technical Analysis

The `prli_exclude_ips` and `whitelist_ips` values come from `$prli_options`, which is loaded from the `prli_options` WordPress option. These values are set by administrators via the Pretty Link settings page.

The values are:
1. Split by comma
2. Asterisks replaced with `%%` for LIKE wildcards
3. Trimmed
4. Directly concatenated into a SQL string with single-quote wrapping

A payload like `' OR 1=1 -- ` set as an excluded IP would break out of the LIKE clause.

### Where this SQL is used
`get_exclude_where_clause()` is called from multiple query methods:
- `getOne()` (line 99)
- `getAll()` (line 108)
- `getRecordCount()` (line 162)
- `getPage()` (line 178)
- `get_counts_by_days()` (line 197)
- `get_distinct_ip_count()` (line 152)

All of these are called only from admin-context pages (click reports, link statistics).

## Impact

- Full SQL injection (read/write DB) if admin enters a crafted value in the excluded IPs field
- Self-exploitation: the admin already has full DB access via WordPress
- Could be meaningful if a lower-privileged role (editor/author) with Pretty Link settings access exists in the Pro version

## Remediation

```php
// Fix: Use $wpdb->prepare() for each IP
$return_stmt .= $wpdb->prepare(" {$abbr}.ip NOT LIKE %s", $exclude_ip);
```
