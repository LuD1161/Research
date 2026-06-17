# Attack Surface: favicon-by-realfavicongenerator

> Generated: 2026-06-16T19:03:59Z

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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/favicon-by-realfavicongenerator/admin/class-favicon-by-realfavicongenerator-admin.php:102:		add_options_page(
```

### Shortcodes
```
None found
```

### Cron Jobs
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/favicon-by-realfavicongenerator/admin/class-favicon-by-realfavicongenerator-admin.php:89:			wp_schedule_event( time(), 'daily', Favicon_By_RealFaviconGenerator_Common::ACTION_CHECK_FOR_UPDATE );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/favicon-by-realfavicongenerator/favicon-by-realfavicongenerator.php:37:register_activation_hook( __FILE__, array( 'Favicon_By_RealFaviconGenerator', 'activate' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/favicon-by-realfavicongenerator/favicon-by-realfavicongenerator.php:38:register_deactivation_hook( __FILE__, array( 'Favicon_By_RealFaviconGenerator', 'deactivate' ) );
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
None found
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/favicon-by-realfavicongenerator/uninstall.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/favicon-by-realfavicongenerator/public/class-favicon-by-realfavicongenerator-common.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **0**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **3**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **1**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **0**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/favicon-by-realfavicongenerator/admin/class-favicon-by-realfavicongenerator-api-response.php:290:		$resp = wp_remote_get(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/favicon-by-realfavicongenerator/admin/class-favicon-by-realfavicongenerator-admin.php:212:		$resp = wp_remote_get( $url );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/favicon-by-realfavicongenerator/public/class-favicon-by-realfavicongenerator-common.php:395:		$resp     = wp_remote_get( $checkUrl );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/favicon-by-realfavicongenerator/public/class-favicon-by-realfavicongenerator-common.php:485:		$resp = wp_remote_post(
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/favicon-by-realfavicongenerator/admin/class-favicon-by-realfavicongenerator-api-response.php:162:				if ( ! wp_mkdir_p( $extractedPath ) ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/favicon-by-realfavicongenerator/admin/class-favicon-by-realfavicongenerator-admin.php:259:					if ( ! wp_mkdir_p( $zip_path ) ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/favicon-by-realfavicongenerator/admin/class-favicon-by-realfavicongenerator-admin.php:339:			unlink( $this->get_preview_path( $previous_preview ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/favicon-by-realfavicongenerator/admin/class-favicon-by-realfavicongenerator-admin.php:351:			wp_mkdir_p( dirname( $this->get_preview_path( $preview_file_name ) ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/favicon-by-realfavicongenerator/admin/class-favicon-by-realfavicongenerator-admin.php:366:				unlink( $file );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/favicon-by-realfavicongenerator/public/class-favicon-by-realfavicongenerator-common.php:456:					if ( ! wp_mkdir_p( $zip_path ) ) {
```

### Deserialization (object injection surface)
```
None found
```

