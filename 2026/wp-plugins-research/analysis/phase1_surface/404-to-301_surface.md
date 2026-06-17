# Attack Surface: 404-to-301

> Generated: 2026-06-16T19:03:50Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/404-to-301/includes/admin/class-jj4t3-admin.php:46:		add_action( 'wp_ajax_jj4t3_redirect_thickbox', array( 'JJ4T3_Log_Listing', 'open_redirect' ), 100 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/404-to-301/includes/admin/class-jj4t3-admin.php:47:		add_action( 'wp_ajax_jj4t3_redirect_form', array( 'JJ4T3_Log_Listing', 'save_redirect' ) );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/404-to-301/includes/admin/class-jj4t3-admin.php:166:	 * @uses   add_submenu_page() Action hook to add new admin menu sub page.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/404-to-301/includes/admin/class-jj4t3-admin.php:173:		$hook = add_menu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/404-to-301/includes/admin/class-jj4t3-admin.php:190:		add_submenu_page(
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/404-to-301/includes/admin/class-jj4t3-admin.php:43:		add_action( 'admin_init', array( $this, 'register_settings' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/404-to-301/includes/admin/class-jj4t3-admin.php:325:	 * @uses   hooks  register_setting Hook to register i4t3 options in db.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/404-to-301/includes/admin/class-jj4t3-admin.php:329:	public function register_settings() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/404-to-301/includes/admin/class-jj4t3-admin.php:331:		register_setting( 'i4t3_gnrl_options', 'i4t3_gnrl_options' );
```

### Widgets
```
None found
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/404-to-301/404-to-301.php:88: * @uses   register_activation_hook() To register activation hook.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/404-to-301/404-to-301.php:90:register_activation_hook(
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
None found
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/404-to-301/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/404-to-301/includes/admin/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/404-to-301/includes/admin/views/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/404-to-301/includes/public/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/404-to-301/includes/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/404-to-301/includes/functions/index.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **4**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **4**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **8**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **4**

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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/404-to-301/includes/public/class-jj4t3-404-actions.php:252:		$options = empty( $result->options ) ? array() : maybe_unserialize( $result->options );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/404-to-301/includes/admin/class-jj4t3-log-listing.php:927:		$options = empty( $result->options ) ? array() : maybe_unserialize( $result->options );
```

