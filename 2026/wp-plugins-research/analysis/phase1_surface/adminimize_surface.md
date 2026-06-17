# Attack Surface: adminimize

> Generated: 2026-06-16T19:03:51Z

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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/adminimize.php:1211:	$pagehook = add_options_page(
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-options/write_cp_options.php:112:					if ( function_exists( 'sticky_add_meta_box' ) ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-options/write_cp_options.php:170:					if ( function_exists( 'sticky_add_meta_box' ) ) {
```

### Widgets
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-setup/widget.php:63:		add_action( 'widgets_init', '_mw_adminimize_unregister_widgets' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-setup/widget.php:73:function _mw_adminimize_unregister_widgets() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-setup/widget.php:107:					unregister_widget( $widgets );
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/adminimize.php:482:register_activation_hook( __FILE__, '_mw_adminimize_install' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/adminimize.php:483:register_uninstall_hook( __FILE__, '_mw_adminimize_uninstall' );
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
None found
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-options/settings_notice.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-options/global_options.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-options/deinstall_options.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-options/widget_options.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-options/write_page_options.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-options/dashboard_options.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-options/im_export_options.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-options/minimenu.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-options/menu_options.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-options/wp_nav_menu_options.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-options/admin_bar_frontend.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-options/backend_options.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-options/links_options.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-options/theme_options.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-options/write_cp_options.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-options/admin_bar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-options/write_post_options.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-options/self_settings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/adminimize.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-setup/meta-boxes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-setup/widget.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-setup/import.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-setup/export.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-setup/DebugListener.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-setup/remove-admin-notices.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-setup/admin-footer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-setup/admin-bar-items.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-setup/footer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-setup/remove-admin-bar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-setup/helping_hands.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-setup/messages.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-setup/dashboard.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **12**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **9**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **1**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **0**

### External HTTP Requests
```
None found
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-setup/import.php:76:	unlink( $path );
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/adminimize/inc-setup/helping_hands.php:114:  return array_unique( array_map( 'unserialize', array_diff_assoc( array_map( 'serialize', $array), array_map( 'serialize', array_unique( $array, SORT_REGULAR ) ) ) ), SORT_REGULAR );
```

