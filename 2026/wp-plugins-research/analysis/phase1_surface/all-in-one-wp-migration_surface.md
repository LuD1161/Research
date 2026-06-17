# Attack Surface: all-in-one-wp-migration

> Generated: 2026-06-16T19:03:52Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:1328:		add_action( 'wp_ajax_ai1wm_export', 'Ai1wm_Export_Controller::export' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:1329:		add_action( 'wp_ajax_ai1wm_import', 'Ai1wm_Import_Controller::import' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:1330:		add_action( 'wp_ajax_ai1wm_status', 'Ai1wm_Status_Controller::status' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:1331:		add_action( 'wp_ajax_ai1wm_feedback', 'Ai1wm_Feedback_Controller::feedback' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:1333:		add_action( 'wp_ajax_ai1wm_backup_clean', 'Ai1wm_Backups_Controller::clean' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:1334:		add_action( 'wp_ajax_ai1wm_backup_delete', 'Ai1wm_Backups_Controller::delete' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:1335:		add_action( 'wp_ajax_ai1wm_backup_list', 'Ai1wm_Backups_Controller::backup_list' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:1336:		add_action( 'wp_ajax_ai1wm_backup_get_config', 'Ai1wm_Backups_Controller::backup_get_config' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:1337:		add_action( 'wp_ajax_ai1wm_backup_check_encryption', 'Ai1wm_Backups_Controller::backup_check_encryption' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:1338:		add_action( 'wp_ajax_ai1wm_backup_list_content', 'Ai1wm_Backups_Controller::backup_list_content' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:1339:		add_action( 'wp_ajax_ai1wm_backup_add_label', 'Ai1wm_Backups_Controller::add_label' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:1340:		add_action( 'wp_ajax_ai1wm_backup_download_file', 'Ai1wm_Backups_Controller::download_file' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:1341:		add_action( 'wp_ajax_ai1wm_backup_download_backup', 'Ai1wm_Backups_Controller::download_backup' );
```

### WordPress AJAX Handlers (unauthenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:1318:		add_action( 'wp_ajax_nopriv_ai1wm_export', 'Ai1wm_Export_Controller::export' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:1319:		add_action( 'wp_ajax_nopriv_ai1wm_import', 'Ai1wm_Import_Controller::import' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:1320:		add_action( 'wp_ajax_nopriv_ai1wm_status', 'Ai1wm_Status_Controller::status' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:1321:		add_action( 'wp_ajax_nopriv_ai1wm_feedback', 'Ai1wm_Feedback_Controller::feedback' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:1323:		add_action( 'wp_ajax_nopriv_ai1wm_backup_delete', 'Ai1wm_Backups_Controller::delete' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:1324:		add_action( 'wp_ajax_nopriv_ai1wm_backup_list', 'Ai1wm_Backups_Controller::backup_list' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:1325:		add_action( 'wp_ajax_nopriv_ai1wm_backup_add_label', 'Ai1wm_Backups_Controller::add_label' );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:691:		add_menu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:701:		add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:710:		add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:719:		add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:729:			add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:738:			add_submenu_page(
```

### Shortcodes
```
None found
```

### Cron Jobs
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/vendor/servmask/cron/class-ai1wm-cron.php:55:			return wp_schedule_event( $timestamp, $recurrence, $hook, $args );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:98:		add_action( 'admin_enqueue_scripts', array( $this, 'register_settings_scripts_and_styles' ), 5 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:909:	public function register_settings_scripts_and_styles() {
```

### Widgets
```
None found
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/controller/class-ai1wm-main-controller.php:40:		register_activation_hook( AI1WM_PLUGIN_BASENAME, array( $this, 'activation_hook' ) );
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
- `current_user_can` calls: **1**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **1**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **2**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **0**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/model/class-ai1wm-feedback.php:66:		$response = wp_remote_post(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/model/class-ai1wm-updater.php:123:			$about = wp_remote_get(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/model/class-ai1wm-updater.php:143:				$check = wp_remote_get(
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/functions.php:61:		mkdir( $storage, 0777, true );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/functions.php:1616:	$write_result = @fwrite( $handle, $content );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/functions.php:1787:function ai1wm_unlink( $file ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/functions.php:1788:	return @unlink( $file );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/model/class-ai1wm-backups.php:107:			if ( $deleted = @unlink( ai1wm_backup_path( array( 'archive' => $file ) ) ) ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/model/import/class-ai1wm-import-upload.php:105:					ai1wm_unlink( $upload_tmp_name );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/vendor/servmask/archiver/class-ai1wm-archiver.php:196:			if ( ( $file_bytes = @fwrite( $this->file_handle, $eof_block ) ) !== false ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/vendor/servmask/archiver/class-ai1wm-compressor.php:86:					if ( ( $file_bytes = @fwrite( $this->file_handle, $block ) ) !== false ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/vendor/servmask/archiver/class-ai1wm-compressor.php:144:							if ( ( $file_bytes = @fwrite( $this->file_handle, $file_content ) ) !== false ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/vendor/servmask/archiver/class-ai1wm-compressor.php:185:					if ( ( $file_bytes = @fwrite( $this->file_handle, $file_size_block ) ) !== false ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/vendor/servmask/archiver/class-ai1wm-compressor.php:200:						if ( ( $file_bytes = @fwrite( $this->file_handle, $file_crc_block ) ) !== false ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/vendor/servmask/filesystem/class-ai1wm-file.php:63:			if ( @fwrite( $handle, $content ) !== false ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/vendor/servmask/filesystem/class-ai1wm-file.php:96:		return @unlink( $path );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/vendor/servmask/filesystem/class-ai1wm-directory.php:45:		return @mkdir( $path, 0777, true );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/vendor/servmask/filesystem/class-ai1wm-directory.php:66:						@rmdir( $item->getPathname() );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/vendor/servmask/filesystem/class-ai1wm-directory.php:68:						@unlink( $item->getPathname() );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/vendor/servmask/filesystem/class-ai1wm-directory.php:74:			return @rmdir( $path );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/vendor/servmask/archiver/class-ai1wm-extractor.php:287:							@mkdir( $location_file_path, $this->get_permissions_for_directory(), true );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/vendor/servmask/archiver/class-ai1wm-extractor.php:425:							@mkdir( $location_file_path, $this->get_permissions_for_directory(), true );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/vendor/servmask/archiver/class-ai1wm-extractor.php:583:						if ( ( $file_bytes = @fwrite( $file_handle, $file_content ) ) !== false ) {
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-in-one-wp-migration/lib/model/import/class-ai1wm-import-options.php:56:				$meta_value  = maybe_unserialize( $row['meta_value'] );
```

