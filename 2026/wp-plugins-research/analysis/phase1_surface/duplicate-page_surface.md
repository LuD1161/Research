# Attack Surface: duplicate-page

> Generated: 2026-06-16T19:03:57Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-page/duplicatepage.php:44:            add_action('wp_ajax_mk_dp_close_dp_help', array($this, 'mk_dp_close_dp_help'));
```

### WordPress AJAX Handlers (unauthenticated)
```
None found
```

### admin-post Handlers (authenticated)
```
None found
```

### admin-post Handlers (UNAUTHENTICATED)
```
None found
```

### REST API Routes
```
None found
```

### REST permission_callback => __return_true (public REST)
```
None found
```

### Admin Pages / Menu Items
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-page/duplicatepage.php:91:            add_options_page(__('Duplicate Page', 'duplicate-page'), __('Duplicate Page', 'duplicate-page'), 'manage_options', 'duplicate_page_settings', array(&$this, 'duplicate_page_settings'));
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

### Block render_callback (server-rendered blocks)
```
None found
```

### Settings API / Meta Box save handlers
```
None found
```

### Widgets
```
None found
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-page/duplicatepage.php:27:            register_activation_hook(__FILE__, array(&$this, 'duplicate_page_install'));
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
None found
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-page/duplicatepage.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **7**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **3**

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

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-page/duplicatepage.php:209:                        // get_post_meta returns already-unserialized values safely
```

