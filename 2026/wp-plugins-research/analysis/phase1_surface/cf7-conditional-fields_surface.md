# Attack Surface: cf7-conditional-fields

> Generated: 2026-06-16T19:03:54Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cf7-conditional-fields/wpcf7cf-options.php:320:add_action( 'wp_ajax_wpcf7cf_dismiss_notice', 'wpcf7cf_dismiss_notice' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cf7-conditional-fields/cf7cf.php:16:        add_action('wp_ajax_cf7mls_validation', array($this,'cf7mls_validation_callback'),9);
```

### WordPress AJAX Handlers (unauthenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cf7-conditional-fields/cf7cf.php:17:        add_action('wp_ajax_nopriv_cf7mls_validation', array($this,'cf7mls_validation_callback'),9);
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cf7-conditional-fields/wpcf7cf-options.php:85:    add_submenu_page('wpcf7', __( 'Conditional Fields', 'cf7-conditional-fields' ), __( 'Conditional Fields', 'cf7-conditional-fields' ), WPCF7_ADMIN_READ_WRITE_CAPABILITY, 'wpcf7cf', 'wpcf7cf_options_page' );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cf7-conditional-fields/wpcf7cf-options.php:313:    register_setting( WPCF7CF_OPTIONS, WPCF7CF_OPTIONS, 'wpcf7cf_options_sanitize' );
```

### Widgets
```
None found
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cf7-conditional-fields/cf7cf.php:35:        register_activation_hook(__FILE__, array($this, 'activate'));
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
None found
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cf7-conditional-fields/tg_pane_group.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cf7-conditional-fields/init.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cf7-conditional-fields/Wpcf7cfMailParser.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cf7-conditional-fields/conditional-fields.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cf7-conditional-fields/wpcf7cf-options.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cf7-conditional-fields/admin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cf7-conditional-fields/cf7cf.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **5**

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

