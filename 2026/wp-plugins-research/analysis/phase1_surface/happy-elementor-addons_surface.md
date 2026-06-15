# Attack Surface: happy-elementor-addons

> Generated: 2026-06-15T02:06:23Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
None found
```

### WordPress AJAX Handlers (unauthenticated)
```
None found
```

### REST API Routes
```
None found
```

### Admin Pages / Menu Items
```
None found
```

### Shortcodes
```
None found
```

### Cron Jobs
```
None found
```

### File Upload Handlers
```
None found
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **0**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **0**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **0**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **0**

### External HTTP Requests
```
None found
```

### File System Operations (first 30 matches)
```
None found
```

