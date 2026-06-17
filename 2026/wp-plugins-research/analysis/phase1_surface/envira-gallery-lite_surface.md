# Attack Surface: envira-gallery-lite

> Generated: 2026-06-16T19:03:58Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/review.php:78:		add_action( 'wp_ajax_envira_dismiss_review', [ $this, 'dismiss_review' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:60:add_action( 'wp_ajax_envira_gallery_change_type', 'envira_gallery_ajax_change_type' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:104:add_action( 'wp_ajax_envira_gallery_set_user_setting', 'envira_gallery_ajax_set_user_setting' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:145:add_action( 'wp_ajax_envira_gallery_load_image', 'envira_gallery_ajax_load_image' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:221:add_action( 'wp_ajax_envira_gallery_insert_images', 'envira_gallery_ajax_insert_images' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:333:add_action( 'wp_ajax_envira_gallery_sort_images', 'envira_gallery_ajax_sort_images' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:395:add_action( 'wp_ajax_envira_gallery_remove_image', 'envira_gallery_ajax_remove_image' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:444:add_action( 'wp_ajax_envira_gallery_remove_images', 'envira_gallery_ajax_remove_images' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:505:add_action( 'wp_ajax_envira_gallery_save_meta', 'envira_gallery_ajax_save_meta' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:605:add_action( 'wp_ajax_envira_gallery_save_bulk_meta', 'envira_gallery_ajax_save_bulk_meta' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:725:add_action( 'wp_ajax_envira_gallery_refresh', 'envira_gallery_ajax_refresh' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:762:add_action( 'wp_ajax_envira_gallery_load_gallery_data', 'envira_gallery_ajax_load_gallery_data' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:805:add_action( 'wp_ajax_envira_gallery_install_addon', 'envira_gallery_ajax_install_addon' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:880:add_action( 'wp_ajax_envira_gallery_activate_addon', 'envira_gallery_ajax_activate_addon' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:932:add_action( 'wp_ajax_envira_gallery_deactivate_addon', 'envira_gallery_ajax_deactivate_addon' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:1065:add_action( 'wp_ajax_envira_gallery_ajax_dismiss_notice', 'envira_gallery_ajax_dismiss_notice' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:1068:add_action( 'wp_ajax_envira_gallery_ajax_dismiss_topbar', 'envira_gallery_ajax_dismiss_topbar' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:1088:add_action( 'wp_ajax_envira_gallery_get_attachment_links', 'envira_gallery_get_attachment_links' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:1130:add_action( 'wp_ajax_envira_gallery_editor_get_galleries', 'envira_gallery_editor_get_galleries' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:1231:add_action( 'wp_ajax_envira_gallery_move_media', 'envira_gallery_move_media' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:1315:add_action( 'wp_ajax_envira_activate_partner', 'envira_activate_partner' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:1364:add_action( 'wp_ajax_envira_deactivate_partner', 'envira_deactivate_partner' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:1407:add_action( 'wp_ajax_envira_install_partner', 'envira_install_partner' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:1491:add_action( 'wp_ajax_envira_connect', 'envira_connect' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/notifications.php:55:		add_action( 'wp_ajax_envira_notification_dismiss', [ $this, 'dismiss' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/onboarding-wizard.php:52:		add_action( 'wp_ajax_save_onboarding_data', [ $this, 'save_onboarding_data' ], 10, 1 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/onboarding-wizard.php:53:		add_action( 'wp_ajax_install_recommended_plugins', [ $this, 'install_recommended_plugins' ], 10, 1 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/onboarding-wizard.php:54:		add_action( 'wp_ajax_save_selected_addons', [ $this, 'save_selected_addons' ], 10, 1 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/menu-nudge.php:54:		add_action( 'wp_ajax_envira_hide_admin_menu_tooltip', [ $this, 'envira_hide_admin_menu_tooltip_callback' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/menu-nudge.php:58:		add_action( 'wp_ajax_envira_redirect_to_add_new_gallery', [ $this, 'envira_redirect_to_add_new_gallery_callback' ] );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/global/convert_gallery/Convert_Gallery_Main.php:32:				$rest_converter->register_rest_routes();
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/global/convert_gallery/Convert_Gallery_REST.php:25:	public function register_rest_routes() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/global/convert_gallery/Convert_Gallery_REST.php:27:		register_rest_route(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/global/convert_gallery/Convert_Gallery_REST.php:38:		register_rest_route(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/global/convert_gallery/Convert_Gallery_REST.php:49:		register_rest_route(
```

### REST permission_callback => __return_true (public REST)
```
None found
```

### Admin Pages / Menu Items
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/Envira_Lite_Support.php:50:		$hook_suffix = add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/import-galleries.php:61:		add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/albums.php:61:		add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/settings.php:58:		$this->hook = add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/addons.php:94:		$this->hook = add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/welcome.php:470:		add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/welcome.php:479:		add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/welcome.php:488:		add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/common.php:171:		add_submenu_page(
```

### Shortcodes
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/global/shortcode.php:167:		add_shortcode( 'envira-gallery', [ $this, 'shortcode' ] );
```

### Cron Jobs
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/notifications.php:223:				wp_schedule_single_event( time(), 'envira_admin_notifications_update' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/global/Envira_Tracking.php:203:		wp_schedule_event( $tracking['initsend'], 'weekly', 'envira_usage_tracking_cron' );
```

### File Upload Handlers
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/media.php:60:		add_filter( 'wp_handle_upload', [ $this, 'fix_image_orientation' ] );
```

### Block render_callback (server-rendered blocks)
```
None found
```

### Settings API / Meta Box save handlers
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/editor.php:71:		add_action( 'save_post', [ $this, 'save_gallery_ids' ], 9999 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/metaboxes.php:77:		add_action( 'add_meta_boxes_envira', [ $this, 'add_meta_boxes' ], 1 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/metaboxes.php:102:		add_action( 'save_post', [ $this, 'save_meta_boxes' ], 10, 2 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/metaboxes.php:416:	public function add_meta_boxes() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/metaboxes.php:435:			add_meta_box( 'envira-gallery', __( 'Envira Gallery', 'envira-gallery-lite' ), [ $this, 'meta_box_gallery_callback' ], 'envira', 'normal', 'high' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/metaboxes.php:439:		add_meta_box( 'envira-gallery-settings', __( 'Envira Gallery Settings', 'envira-gallery-lite' ), [ $this, 'meta_box_callback' ], 'envira', 'normal', 'high' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/metaboxes.php:443:			add_meta_box( 'envira-gallery-code', __( 'Envira Gallery Code', 'envira-gallery-lite' ), [ $this, 'meta_box_gallery_code_callback' ], 'envira', 'side', 'default' );
```

### Widgets
```
None found
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/envira-gallery-lite.php:613:register_activation_hook( __FILE__, 'envira_gallery_lite_activation_hook' );
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
- `current_user_can` calls: **45**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **50**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **1**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **1**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/notifications.php:105:		$res = wp_remote_get( self::SOURCE_URL );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/global/Envira_Tracking.php:162:		$request = wp_remote_post(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:1633: * Queries the remote URL via wp_remote_post and returns a json decoded response.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:1664:	// Setup variable for wp_remote_post.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/ajax.php:1672:	$response      = wp_remote_post( $api_url, $post );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/addons.php:619:	 * Queries the remote URL via wp_remote_post and returns a json decoded response.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/addons.php:652:		// Setup variable for wp_remote_post.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/addons.php:659:		$response      = wp_remote_post( 'https://enviragallery.com', $post );
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/media.php:278:			return fwrite( $output_file, $portion_to_add . $destination_image_contents ); // @codingStandardsIgnoreLine - !!! TODO migrate to WP filesystem
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/common.php:640:					// only unlink when the resolved path is confirmed inside the uploads directory
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/common.php:641:					@unlink( $real_file ); // @codingStandardsIgnoreLine
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/permissions.php:121:			$roles = maybe_unserialize( $roles );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/envira-gallery-lite/includes/admin/permissions.php:315:		$field_value = maybe_unserialize( $field_value );
```

