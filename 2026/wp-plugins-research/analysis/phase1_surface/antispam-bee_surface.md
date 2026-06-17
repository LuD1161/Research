# Attack Surface: antispam-bee

> Generated: 2026-06-16T19:03:52Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
None found
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/antispam-bee/antispam_bee.php:663:		$page = add_options_page(
```

### Shortcodes
```
None found
```

### Cron Jobs
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/antispam-bee/antispam_bee.php:1061:			wp_schedule_event(
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/antispam-bee/antispam_bee.php:2993:register_activation_hook(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/antispam-bee/antispam_bee.php:3002:register_deactivation_hook(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/antispam-bee/antispam_bee.php:3011:register_uninstall_hook(
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
None found
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
None (all PHP files guarded)
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **4**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **1**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **8**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **3**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/antispam-bee/antispam_bee.php:1549:		$response = wp_safe_remote_get(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/antispam-bee/antispam_bee.php:1839:		$response = wp_safe_remote_get(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/antispam-bee/antispam_bee.php:1981:		$response = wp_safe_remote_post(
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/antispam-bee/antispam_bee.php:2395:		file_put_contents(
```

### Deserialization (object injection surface)
```
None found
```

