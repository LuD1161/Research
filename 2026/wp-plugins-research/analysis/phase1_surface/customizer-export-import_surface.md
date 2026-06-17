# Attack Surface: customizer-export-import

> Generated: 2026-06-16T19:03:56Z

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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/customizer-export-import/classes/class-cei-core.php:256:		if ( ! function_exists( 'wp_handle_upload' ) ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/customizer-export-import/classes/class-cei-core.php:279:		$file      = wp_handle_upload( $_FILES['cei-import-file'], $overrides );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/customizer-export-import/classes/class-cei-core.php:405:		if ( ! function_exists( 'media_handle_sideload' ) ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/customizer-export-import/classes/class-cei-core.php:426:			$id = media_handle_sideload( $file_array, 0 );
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
None found
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
None found
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/customizer-export-import/classes/class-cei-control.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/customizer-export-import/classes/class-cei-core.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/customizer-export-import/classes/class-cei-option.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/customizer-export-import/customizer-export-import.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/customizer-export-import/includes/control.php
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/customizer-export-import/classes/class-cei-core.php:274:			unlink( $_FILES['cei-import-file']['tmp_name'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/customizer-export-import/classes/class-cei-core.php:297:		unlink( $file['file'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/customizer-export-import/classes/class-cei-core.php:428:			// If error storing permanently, unlink.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/customizer-export-import/classes/class-cei-core.php:430:				@unlink( $file_array['tmp_name'] );
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/customizer-export-import/classes/class-cei-core.php:294:		$data = @unserialize( trim( $raw ), array( 'allowed_classes' => false ) );
```

