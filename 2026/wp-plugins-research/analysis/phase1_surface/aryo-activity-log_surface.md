# Attack Surface: aryo-activity-log

> Generated: 2026-06-16T19:03:52Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aryo-activity-log/classes/class-aal-admin-ui.php:181:		add_action( 'wp_ajax_aal_promotion_dismiss', [ $this, 'ajax_aal_promotion_dismiss' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aryo-activity-log/classes/class-aal-admin-ui.php:182:		add_action( 'wp_ajax_aal_promotion_campaign', [ $this, 'ajax_aal_promotion_campaign' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aryo-activity-log/classes/class-aal-settings.php:17:		add_action( 'wp_ajax_aal_reset_items', array( &$this, 'ajax_aal_reset_items' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aryo-activity-log/classes/class-aal-settings.php:18:		add_action( 'wp_ajax_aal_get_properties', array( &$this, 'ajax_aal_get_properties' ) );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aryo-activity-log/classes/class-aal-admin-ui.php:16:		$this->_screens['main'] = add_menu_page( _x( 'Activity Log', 'Page and Menu Title', 'aryo-activity-log' ), _x( 'Activity Log', 'Page and Menu Title', 'aryo-activity-log' ), $menu_capability, 'activity-log-page', array( &$this, 'activity_log_page_func' ), '', '2.1' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aryo-activity-log/classes/class-aal-settings.php:41:		$this->hook = add_submenu_page(
```

### Shortcodes
```
None found
```

### Cron Jobs
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aryo-activity-log/classes/class-aal-api.php:15:			wp_schedule_event( time(), 'daily', 'aal/maintenance/clear_old_items' );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aryo-activity-log/classes/class-aal-settings.php:12:		add_action( 'admin_init', array( &$this, 'register_settings' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aryo-activity-log/classes/class-aal-settings.php:53:		// add_action( "load-$this->hook", array( $this, 'register_settings' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aryo-activity-log/classes/class-aal-settings.php:66:	public function register_settings() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aryo-activity-log/classes/class-aal-settings.php:76:		register_setting( 'aal-options', $this->slug, array( $this, 'validate_options' ) );
```

### Widgets
```
None found
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aryo-activity-log/classes/class-aal-maintenance.php:104:register_activation_hook( ACTIVITY_LOG_BASE, array( 'AAL_Maintenance', 'activate' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aryo-activity-log/classes/class-aal-maintenance.php:105:register_uninstall_hook( ACTIVITY_LOG_BASE, array( 'AAL_Maintenance', 'uninstall' ) );
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
- `current_user_can` calls: **6**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **4**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **13**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **11**

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

