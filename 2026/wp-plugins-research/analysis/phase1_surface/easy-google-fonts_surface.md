# Attack Surface: easy-google-fonts

> Generated: 2026-06-16T19:03:58Z

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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/src/includes/api.php:22:		register_rest_route(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/src/includes/api.php:44:		register_rest_route(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/src/includes/api.php:77:		register_rest_route(
```

### REST permission_callback => __return_true (public REST)
```
None found
```

### Admin Pages / Menu Items
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/src/includes/admin.php:48:	add_options_page(
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/src/includes/settings.php:19:function register_settings() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/src/includes/settings.php:20:	register_setting(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/src/includes/settings.php:25:add_action( 'admin_init', __NAMESPACE__ . '\\register_settings' );
```

### Widgets
```
None found
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/easy-google-fonts.php:97:register_activation_hook(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/easy-google-fonts.php:107:register_deactivation_hook(
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
None found
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/uninstall.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/src/dist/preview.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/src/dist/customizer.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/src/dist/admin.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/src/dist/pointer.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/src/includes/sanitization.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/src/includes/customizer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/src/includes/setup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/src/includes/api.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/src/includes/deprecated.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/src/includes/utils.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/src/includes/frontend.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/src/includes/settings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/src/includes/data.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-google-fonts/src/includes/admin.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **8**

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

### Deserialization (object injection surface)
```
None found
```

