# Attack Surface: advanced-database-cleaner

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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/classes/class-adbc-routes.php:134:		register_rest_route( ADBC_REST_API_NAMESPACE, $route, [ 
```

### REST permission_callback => __return_true (public REST)
```
None found
```

### Admin Pages / Menu Items
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/classes/class-adbc-admin-init.php:67:			$this->left_menu = add_menu_page( 'Advanced DB Cleaner', 'WP DB Cleaner', 'manage_options', 'advanced_db_cleaner', [ $this, 'main_page_callback' ], $this->icon_svg, '80.01123' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/classes/class-adbc-admin-init.php:71:			$this->tools_submenu = add_submenu_page( 'tools.php', 'Advanced DB Cleaner', 'WP DB Cleaner', 'manage_options', 'advanced_db_cleaner', [ $this, 'main_page_callback' ], '80.01123' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/classes/class-adbc-admin-init.php:85:			$this->network_menu = add_menu_page( 'Advanced DB Cleaner', 'WP DB Cleaner', 'manage_network_options', 'advanced_db_cleaner_network', [ $this, 'main_page_callback' ], $this->icon_svg, '80.01123' );
```

### Shortcodes
```
None found
```

### Cron Jobs
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/classes/class-adbc-automation.php:214:			return wp_schedule_single_event( $start_timestamp, 'adbc_cron_automation', [ $task['id'] ] ) === true;
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/classes/class-adbc-automation.php:216:			return wp_schedule_event( $start_timestamp, $frequency, 'adbc_cron_automation', [ $task['id'] ] ) === true;
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/advanced-db-cleaner.php:60:		register_activation_hook( __FILE__, [ 'ADBC_Admin_Init', 'activate' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/advanced-db-cleaner.php:96:		register_deactivation_hook( __FILE__, [ 'ADBC_Admin_Init', 'deactivate' ] );
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
None found
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/uninstall.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/index.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **4**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **1**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **117**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **99**

### External HTTP Requests
```
None found
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/uninstall.php:294:		return rmdir( $folder ); // delete the folder itself
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/classes/class-adbc-migration.php:898:				fwrite( $temp_result_file_handle, $new_manual_corrections[ $item_name ] . "\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/classes/class-adbc-migration.php:902:				fwrite( $temp_result_file_handle, $line );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/classes/class-adbc-migration.php:909:			fwrite( $temp_result_file_handle, $new_manual_correction_line . "\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/classes/class-adbc-migration.php:1006:					unlink( $aDBc_upload_dir . "/" . $file );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/classes/class-adbc-migration.php:1010:			rmdir( $aDBc_upload_dir );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/classes/class-adbc-automation.php:351:		return unlink( $task_events_file );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/classes/addons/class-adbc-dictionary.php:249:				fwrite( $temp_dict_file_handle, $line . "\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/classes/addons/class-adbc-dictionary.php:260:			fwrite( $temp_dict_file_handle, $line );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/classes/addons/class-adbc-dictionary.php:267:			fwrite( $temp_dict_file_handle, $line );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/utils/class-adbc-files.php:245:			if ( ! $this->wp_fs->mkdir( $folder_path ) )
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/utils/class-adbc-common-utils.php:251:	 * Safely unserialize a string that is known to contain a serialized *array*.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/utils/class-adbc-common-utils.php:258:	public static function safe_unserialize_array( $str ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/utils/class-adbc-common-utils.php:265:		$decoded = @unserialize( $str, [ 'allowed_classes' => false ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/utils/class-adbc-common-utils.php:275:	 *  2. Else if the value is a PHP-serialized string → unserialize().
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/utils/class-adbc-common-utils.php:306:				$decoded = @unserialize( $data, [ 'allowed_classes' => false ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/endpoints/class-adbc-common-endpoints.php:58:				// We take into account only serialized_array for unserialize(). We de not unserialize serialized_object for security reasons.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/endpoints/class-adbc-common-endpoints.php:60:					$decoded = ADBC_Common_Utils::safe_unserialize_array( $value );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/classes/class-adbc-singleton.php:54:		throw new Exception( "Cannot unserialize a singleton." );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/classes/class-adbc-singleton.php:67:	final public function __unserialize( $data ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-database-cleaner/includes/classes/class-adbc-singleton.php:68:		throw new Exception( "Cannot unserialize a singleton." );
```

