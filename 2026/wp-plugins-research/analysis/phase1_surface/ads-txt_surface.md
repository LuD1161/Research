# Attack Surface: ads-txt

> Generated: 2026-06-16T19:03:51Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ads-txt/inc/save.php:112:add_action( 'wp_ajax_adstxt-save', __NAMESPACE__ . '\save' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ads-txt/inc/save.php:113:add_action( 'wp_ajax_app-adstxt-save', __NAMESPACE__ . '\save' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ads-txt/inc/admin.php:587:add_action( 'wp_ajax_adstxts_check_for_existing_file', __NAMESPACE__ . '\adstxts_check_for_existing_file' );
```

### WordPress AJAX Handlers (unauthenticated)
```
None found
```

### admin-post Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ads-txt/inc/save.php:110:add_action( 'admin_post_adstxt-save', __NAMESPACE__ . '\save' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ads-txt/inc/save.php:111:add_action( 'admin_post_app-adstxt-save', __NAMESPACE__ . '\save' );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ads-txt/inc/admin.php:156:	add_options_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ads-txt/inc/admin.php:164:	add_options_page(
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ads-txt/inc/helpers.php:93:register_activation_hook( __FILE__, __NAMESPACE__ . '\add_capabilities' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ads-txt/inc/helpers.php:110:register_deactivation_hook( __FILE__, __NAMESPACE__ . '\remove_capabilities' );
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
None found
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ads-txt/inc/helpers.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ads-txt/inc/save.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ads-txt/inc/post-type.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ads-txt/inc/admin.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **2**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **2**

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
None found
```

