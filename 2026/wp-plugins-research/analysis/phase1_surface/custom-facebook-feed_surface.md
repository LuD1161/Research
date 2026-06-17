# Attack Surface: custom-facebook-feed

> Generated: 2026-06-16T19:03:56Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/admin-functions.php:61:add_action('wp_ajax_cff_lite_dismiss', 'cff_lite_dismiss');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/admin-functions.php:314:add_action('wp_ajax_cff_oembed_disable', 'cff_oembed_disable');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/admin-functions.php:377:add_action('wp_ajax_cff_dismiss_custom_cssjs_notice', 'cff_dismiss_custom_cssjs_notice');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/admin-functions.php:398:add_action('wp_ajax_cff_ppca_token_check_flag', 'cff_ppca_token_check_flag');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/addon-functions.php:40:add_action('wp_ajax_cff_deactivate_addon', 'cff_deactivate_addon');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/addon-functions.php:77:add_action('wp_ajax_cff_activate_addon', 'cff_activate_addon');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/addon-functions.php:181:add_action('wp_ajax_cff_install_addon', 'cff_install_addon');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/enqueu-script.php:34:add_action('wp_ajax_cff_ppca_token_check_flag', 'cff_ppca_token_check_flag');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/Blocks/RecommendedBlocks.php:27:        add_action('wp_ajax_am_recommended_block_install', [$this, 'install_plugin']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/Feedback/FeedbackManager.php:79:        add_action('wp_ajax_sb_deactivation_feedback', [DeactivationSurvey::class, 'handle_ajax']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/Feedback/FeedbackManager.php:83:        add_action('wp_ajax_sb_feature_suggestion', [HelpWidget::class, 'handle_ajax']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Admin_Notices.php:36:		add_action('wp_ajax_cff_review_notice_dismiss', [ $this, 'cff_review_notice_dismiss' ]);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Upgrader.php:51:		add_action('wp_ajax_cff_maybe_upgrade_redirect', array( 'CustomFacebookFeed\Admin\CFF_Upgrader', 'maybe_upgrade_redirect' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Support_Tool.php:99:		add_action('wp_ajax_cff_create_temp_user', array($this, 'create_temp_user_ajax_call'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Support_Tool.php:100:		add_action('wp_ajax_cff_delete_temp_user', array($this, 'delete_temp_user_ajax_call'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_oEmbeds.php:53:		add_action('wp_ajax_disable_facebook_oembed', [$this, 'disable_facebook_oembed']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_oEmbeds.php:54:		add_action('wp_ajax_disable_instagram_oembed', [$this, 'disable_instagram_oembed']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Tracking.php:34:		add_action('wp_ajax_cff_usage_opt_in_or_out', array( $this, 'usage_opt_in_or_out' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_New_User.php:42:		add_action('wp_ajax_cff_review_notice_consent_update', array( $this, 'review_notice_consent' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Notifications.php:96:		add_action('wp_ajax_cff_dashboard_notification_dismiss', array( $this, 'dismiss' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Notifications.php:99:		add_action('wp_ajax_cff_dismiss_upgrade_notice', array( $this, 'dismiss_upgrade_notice' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Onboarding_Wizard.php:53:		add_action('wp_ajax_cff_feed_saver_manager_process_wizard', array( $this , 'process_wizard_data' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Onboarding_Wizard.php:54:		add_action('wp_ajax_cff_feed_saver_manager_dismiss_wizard', array( $this , 'dismiss_wizard' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Custom_Facebook_Feed.php:354:			add_action('wp_ajax_feed_locator', [self::$instance, 'cff_feed_locator']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_Error_Reporter.php:69:		add_action('wp_ajax_cff_dismiss_critical_notice', [$this, 'dismiss_critical_notice']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Support.php:58:		add_action('wp_ajax_cff_export_settings_json', [$this, 'cff_export_settings_json']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Global_Settings.php:82:		add_action('wp_ajax_cff_save_settings', [$this, 'cff_save_settings']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Global_Settings.php:83:		add_action('wp_ajax_cff_activate_license', [$this, 'cff_activate_license']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Global_Settings.php:84:		add_action('wp_ajax_cff_deactivate_license', [$this, 'cff_deactivate_license']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Global_Settings.php:85:		add_action('wp_ajax_cff_activate_extension_license', [$this, 'cff_activate_extension_license']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Global_Settings.php:86:		add_action('wp_ajax_cff_deactivate_extension_license', [$this, 'cff_deactivate_extension_license']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Global_Settings.php:87:		add_action('wp_ajax_cff_test_connection', [$this, 'cff_test_connection']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Global_Settings.php:88:		add_action('wp_ajax_cff_import_settings_json', [$this, 'cff_import_settings_json']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Global_Settings.php:89:		add_action('wp_ajax_cff_export_settings_json', [$this, 'cff_export_settings_json']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Global_Settings.php:90:		add_action('wp_ajax_cff_clear_cache', [$this, 'cff_clear_cache']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Global_Settings.php:91:		add_action('wp_ajax_cff_clear_image_resize_cache', [$this, 'cff_clear_image_resize_cache']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Global_Settings.php:92:		add_action('wp_ajax_cff_dpa_reset', [$this, 'cff_dpa_reset']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Integrations/Divi/CFF_Divi_Handler.php:74:			add_action('wp_ajax_sb_facebookfeed_divi_preview', [ $this, 'preview' ]);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Source.php:29:		add_action('wp_ajax_cff_source_builder_update', array( 'CustomFacebookFeed\Builder\CFF_Source', 'builder_update' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Source.php:30:		add_action('wp_ajax_cff_source_builder_update_multiple', array( 'CustomFacebookFeed\Builder\CFF_Source', 'builder_update_multiple' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Source.php:31:		add_action('wp_ajax_cff_source_get_page', array( 'CustomFacebookFeed\Builder\CFF_Source', 'get_page' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Source.php:32:		add_action('wp_ajax_cff_source_get_featured_post_preview', array( 'CustomFacebookFeed\Builder\CFF_Source', 'get_featured_post_preview' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Source.php:33:		add_action('wp_ajax_cff_source_get_playlist_post_preview', array( 'CustomFacebookFeed\Builder\CFF_Source', 'get_playlist_post_preview' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Feed_Saver_Manager.php:24:		add_action('wp_ajax_cff_feed_saver_manager_builder_update', array( 'CustomFacebookFeed\Builder\CFF_Feed_Saver_Manager', 'builder_update' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Feed_Saver_Manager.php:25:		add_action('wp_ajax_cff_feed_saver_manager_get_feed_settings', array( 'CustomFacebookFeed\Builder\CFF_Feed_Saver_Manager', 'get_feed_settings' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Feed_Saver_Manager.php:26:		add_action('wp_ajax_cff_feed_saver_manager_get_feed_list_page', array( 'CustomFacebookFeed\Builder\CFF_Feed_Saver_Manager', 'get_feed_list_page' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Feed_Saver_Manager.php:27:		add_action('wp_ajax_cff_feed_saver_manager_get_locations_page', array( 'CustomFacebookFeed\Builder\CFF_Feed_Saver_Manager', 'get_locations_page' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Feed_Saver_Manager.php:28:		add_action('wp_ajax_cff_feed_saver_manager_delete_feeds', array( 'CustomFacebookFeed\Builder\CFF_Feed_Saver_Manager', 'delete_feed' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Feed_Saver_Manager.php:29:		add_action('wp_ajax_cff_feed_saver_manager_duplicate_feed', array( 'CustomFacebookFeed\Builder\CFF_Feed_Saver_Manager', 'duplicate_feed' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Feed_Saver_Manager.php:30:		add_action('wp_ajax_cff_feed_saver_manager_clear_single_feed_cache', array( 'CustomFacebookFeed\Builder\CFF_Feed_Saver_Manager', 'clear_single_feed_cache' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Feed_Saver_Manager.php:31:		add_action('wp_ajax_cff_feed_saver_manager_importer', array( 'CustomFacebookFeed\Builder\CFF_Feed_Saver_Manager', 'importer' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Feed_Saver_Manager.php:32:		add_action('wp_ajax_cff_feed_saver_manager_fly_preview', array( 'CustomFacebookFeed\Builder\CFF_Feed_Saver_Manager', 'feed_customizer_fly_preview' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Feed_Saver_Manager.php:33:		add_action('wp_ajax_cff_feed_saver_manager_retrieve_comments', array( 'CustomFacebookFeed\Builder\CFF_Feed_Saver_Manager', 'retrieve_comments' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Feed_Saver_Manager.php:34:		add_action('wp_ajax_cff_feed_saver_manager_delete_source', array( 'CustomFacebookFeed\Builder\CFF_Feed_Saver_Manager', 'delete_source' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Platform_Data.php:67:		add_action('wp_ajax_cff_reset_unused_feed_usage', [$this, 'handle_unused_feed_usage'], 10);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Feed_Builder.php:59:		add_action('wp_ajax_cff_dismiss_onboarding', array( 'CustomFacebookFeed\Builder\CFF_Feed_Builder', 'after_dismiss_onboarding' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Feed_Builder.php:60:		add_action('wp_ajax_sb_other_plugins_modal', array( 'CustomFacebookFeed\Builder\CFF_Feed_Builder', 'sb_other_plugins_modal' ));
```

### WordPress AJAX Handlers (unauthenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Upgrader.php:50:		add_action('wp_ajax_nopriv_cff_run_one_click_upgrade', array( 'CustomFacebookFeed\Admin\CFF_Upgrader', 'install_upgrade' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Custom_Facebook_Feed.php:355:			add_action('wp_ajax_nopriv_feed_locator', [self::$instance, 'cff_feed_locator']);
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Support_Tool.php:418:		$support_tool_page = add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Admin.php:74:		add_menu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Admin.php:82:		add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Admin.php:91:			add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Admin.php:103:			add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Admin.php:115:			add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Admin.php:127:			add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Admin.php:139:			add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_About_Us.php:63:		$about_us = add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_oEmbeds.php:67:		$oembeds_manager = add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Support.php:71:		$support_page = add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Onboarding_Wizard.php:95:		$feed_builder = add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Global_Settings.php:838:		$global_settings = add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Feed_Builder.php:187:		$feed_builder = add_submenu_page(
```

### Shortcodes
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_Shortcode.php:71:		add_shortcode('custom-facebook-feed', array($this, 'display_cff'));
```

### Cron Jobs
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_Utils.php:651:		wp_schedule_event($six_am_local, 'cffweekly', 'cff_feed_issue_email');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_Group_Posts.php:442:				wp_schedule_event($cff_cache_cron_time_unix, $cff_cron_schedule, 'group_post_scheduler_cron');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_Group_Posts.php:456:				wp_schedule_event($cff_cache_cron_time_unix, $cff_cron_schedule, 'group_post_scheduler_cron');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Custom_Facebook_Feed.php:605:				wp_schedule_event($six_am_local, 'cffweekly', 'cff_feed_issue_email');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Custom_Facebook_Feed.php:615:				wp_schedule_event($six_am_local, 'cffweekly', 'cff_notification_update');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Custom_Facebook_Feed.php:788:			wp_schedule_event(time(), 'twicedaily', 'cff_cron_job');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Custom_Facebook_Feed.php:808:			wp_schedule_event($six_am_local, 'cffweekly', 'cff_notification_update');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Global_Settings.php:592:			wp_schedule_event(time(), $cff_cron_schedule, 'cff_cron_job');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Global_Settings.php:649:		wp_schedule_event($cff_cache_cron_time_unix, $cff_cron_schedule, 'cff_cache_cron');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Tracking.php:645:			wp_schedule_event($tracking['initsend'], 'weekly', 'cff_usage_tracking_cron');
```

### File Upload Handlers
```
None found
```

### Block render_callback (server-rendered blocks)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_Blocks.php:30:		return function_exists('register_block_type');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_Blocks.php:146:		register_block_type(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_Blocks.php:151:				'render_callback' => array( $this, 'get_feed_html' ),
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_Blocks.php:308:		register_block_type(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_Blocks.php:311:				'render_callback' => array( $this, 'render_facebook_feed_block' ),
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/Blocks/SB_Feed_Block.php:68:        register_block_type($this->get_block_dir(), array('render_callback' => array($this, 'render_block')));
```

### Settings API / Meta Box save handlers
```
None found
```

### Widgets
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_Elementor_Base.php:58:		add_action( 'elementor/widgets/register', array( $this, 'register_widgets' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_Elementor_Base.php:65:	public function register_widgets( $widgets_manager ) {
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Custom_Facebook_Feed.php:357:			register_activation_hook(CFF_FILE, [ self::$instance, 'cff_activate' ]);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Custom_Facebook_Feed.php:358:			register_deactivation_hook(CFF_FILE, [ self::$instance, 'cff_deactivate' ]);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Custom_Facebook_Feed.php:359:			register_uninstall_hook(CFF_FILE, array('CustomFacebookFeed\Custom_Facebook_Feed','cff_uninstall'));
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
None found
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/templates/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/templates/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/wizard.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/oembed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/header.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/preview/load-more.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/feeds/legacy-feeds.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/feeds/instances.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/customizer/preview.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/customizer/sidebar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/customizer/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/feeds/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/feeds/feeds.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/preview/header.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/preview/like-box.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/preview/dummy-lightbox.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/preview/timeline.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/create-feed/videos.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/create-feed/single-album.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/create-feed/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/create-feed/featured-post.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/preview/light-box.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/preview/error.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/feeds-list.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/footer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/empty-state.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/feeds-type.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/preview/preview-components.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/select-source.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/preview/post-types/events.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/preview/post-types/videos.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/preview/post-types/photos.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/preview/post-types/albums.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/preview/post-types/reviews.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/popup/extensions-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/popup/source-instances.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/onboarding/success-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/onboarding/configure-features.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/onboarding/welcome.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/onboarding/install-plugins.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/popup/confirm-dialog-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/onboarding/add-source.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/popup/install-plugin-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/popup/embed-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/popup/feedtypes-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/popup/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/popup/add-source-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/popup/feedtemplates-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/popup/onboarding-customizer-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/popup/add-source-popup-old.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/popup/onboarding-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/sections/popup/temp-login-about.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/preview/post-types/single-holder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/builder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/templates/item/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/screens/customizer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/screens/onboarding-wizard.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/screens/welcome.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/templates/item/type/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/builder/templates/screens/select-feed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/elementor-stubs.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/views/oembeds/plugin_info.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/views/sections/header.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/assets/dist/blocks.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/views/sections/builder_footer_cta.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/views/sections/settings_footer_cta.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/views/sections/footer_socials.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/views/oembeds/oembed_features.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/laravel/serializable-closure/src/SerializableClosure.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/views/settings/tab/feeds.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/views/settings/tab/general.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/views/settings/tab/translations.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/views/settings/tab/advanced.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/laravel/serializable-closure/src/UnsignedSerializableClosure.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/laravel/serializable-closure/src/Signers/Hmac.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/views/settings/tab/translation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/laravel/serializable-closure/src/Serializers/Native.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/admin/views/oembeds/modal.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/composer/autoload_static.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/laravel/serializable-closure/src/Exceptions/PhpVersionNotSupportedException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/composer/autoload_files.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/laravel/serializable-closure/src/Exceptions/MissingSecretKeyException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/composer/autoload_psr4.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/composer/installed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/composer/autoload_classmap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/composer/autoload_namespaces.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/composer/ClassLoader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/laravel/serializable-closure/src/Support/SelfReference.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/laravel/serializable-closure/src/Support/ClosureStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/laravel/serializable-closure/src/Support/ClosureScope.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/laravel/serializable-closure/src/Contracts/Serializable.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/psr/container/src/ContainerInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/composer/InstalledVersions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/psr/container/src/NotFoundExceptionInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/laravel/serializable-closure/src/Contracts/Signer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/laravel/serializable-closure/src/Support/ReflectionClosure.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/laravel/serializable-closure/src/Serializers/Signed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/scoper-autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/psr/container/src/ContainerExceptionInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/composer/autoload_real.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/laravel/serializable-closure/src/Exceptions/InvalidSignatureException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/php-di/invoker/src/CallableResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/php-di/invoker/src/InvokerInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/php-di/invoker/src/Invoker.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/php-di/invoker/src/Reflection/CallableReflection.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/php-di/invoker/src/Exception/InvocationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/php-di/invoker/src/Exception/NotEnoughParametersException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/php-di/invoker/src/Exception/NotCallableException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Utilities/UsageTracking.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/php-di/invoker/src/ParameterResolver/ResolverChain.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/php-di/invoker/src/ParameterResolver/NumericArrayResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/php-di/invoker/src/ParameterResolver/DefaultValueResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/I18n/I18n.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/php-di/invoker/src/ParameterResolver/Container/ParameterNameContainerResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/php-di/invoker/src/ParameterResolver/Container/TypeHintContainerResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/php-di/invoker/src/ParameterResolver/TypeHintResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/php-di/invoker/src/ParameterResolver/ParameterResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/php-di/invoker/src/ParameterResolver/AssociativeArrayResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/Tabs/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/php-di/phpdoc-reader/src/PhpDocReader/AnnotationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/php-di/phpdoc-reader/src/PhpDocReader/PhpDocReader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/php-di/phpdoc-reader/src/PhpDocReader/PhpParser/TokenParser.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/php-di/phpdoc-reader/src/PhpDocReader/PhpParser/UseStatementParser.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/Controls/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/Traits/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/Blocks/CFF_Modern_Feed_Block.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/License_Tier/Sample_Plugin_License_Tier.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Helpers/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Integrations/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Container.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Integrations/Analytics/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/FactoryInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Annotation/Injectable.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Proxy/ProxyFactory.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Integrations/Divi/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Annotation/Inject.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/ContainerBuilder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/CompiledContainer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/DependencyException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Compiler/ObjectCreationCompiler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Template.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/ValueDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Compiler/RequestedEntryHolder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Reference.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Compiler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/StringDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/InstanceDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/ArrayDefinitionExtension.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Invoker/FactoryParameterResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/AutowireDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/FactoryDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/DecoratorDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Definition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/ExtendsPreviousDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Invoker/DefinitionParameterResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/ObjectDefinition/PropertyInjection.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/ObjectDefinition/MethodInjection.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Exception/InvalidDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Factory/RequestedEntry.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/ArrayDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Exception/InvalidAnnotation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/ResolverDispatcher.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/ArrayResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/EnvironmentVariableResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Helper/AutowireDefinitionHelper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/DecoratorResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Helper/DefinitionHelper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Helper/CreateDefinitionHelper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Dumper/ObjectDefinitionDumper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Helper/FactoryDefinitionHelper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/FactoryResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/ObjectCreator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/DefinitionResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/ParameterResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/MutableDefinitionSource.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/DefinitionSource.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/SourceCache.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/AnnotationBasedAutowiring.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/SourceChain.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/NoAutowiring.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/DefinitionArray.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/DefinitionFile.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/ReflectionBasedAutowiring.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/DefinitionNormalizer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/InstanceInjector.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/EnvironmentVariableDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/SelfResolvingDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/Autowiring.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/NotFoundException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/License_Tier/License_Tier.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Definition/ObjectDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Utilities/functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/Blocks/SB_Feed_Block.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/Blocks/SB_Elementor_Editor_Assets.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/Blocks/SB_Feed_Blocks_Registry.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/Blocks/dist/recommended.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/Blocks/dist/sb-elementor-editor.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/Blocks/dist/sb-feed-blocks.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/Blocks/RecommendedBlocks.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Utilities/PlatformTracking/PlatformTracking.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/Blocks/SB_Block_Utils.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Utilities/PlatformTracking/Platforms/WPEngine.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Utilities/PlatformTracking/Platforms/Bluehost.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Utilities/PlatformTracking/Platforms/Kinsta.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Utilities/PlatformTracking/Platforms/GoDadddy.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Utilities/PlatformTracking/Platforms/Flywheel.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Utilities/PlatformTracking/Platforms/SiteGround.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Utilities/PlatformTracking/Platforms/PlatformInterface.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **146**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **66**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **115**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **41**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_HTTP_Request.php:45:			$request      = wp_safe_remote_get($url, $args);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_HTTP_Request.php:48:			$request        = wp_safe_remote_request($url, $args);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_HTTP_Request.php:51:			$request        = wp_safe_remote_request($url, $args);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_HTTP_Request.php:54:			$request        = wp_safe_remote_request($url, $args);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_HTTP_Request.php:57:			$request        = wp_safe_remote_post($url, $args);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Theme_CSS.php:111:		$response = wp_safe_remote_get(esc_url_raw($url), $args);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_Utils.php:32:		$response = wp_safe_remote_get($url);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_Utils.php:169:				'errorno' => 'wp_remote_get'
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_Utils.php:171:			\cff_main()->cff_error_reporter->add_error('wp_remote_get', $error);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Source.php:327:		$response = wp_safe_remote_get($featured_post_url);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Source.php:337:		$response = wp_safe_remote_get($featured_event_url);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Source.php:368:		$response = wp_safe_remote_get($url);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_Error_Reporter.php:130:		if ($type === 'api' || $type === 'wp_remote_get') {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_Error_Reporter.php:811:				if ( isset( $errors['wp_remote_get'] ) ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_Error_Reporter.php:812:					$error = $errors['wp_remote_get'];
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Integrations/CFF_API_Connect.php:110:		$response = wp_safe_remote_get($this->url, $args);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Tracking.php:599:		$request = wp_safe_remote_post('https://usage.smashballoon.com/v1/checkin/', array(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Upgrader.php:79:		$request = wp_safe_remote_post($api_url, array( 'timeout' => 15, 'sslverify' => true, 'body' => $api_params ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Upgrader.php:136:		$response = wp_safe_remote_get($url, $remote_request_args);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Support_Tool.php:524:			$data_response = wp_remote_get($url);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Notifications.php:221:		$res = wp_safe_remote_get($this->source_url());
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Utilities/UsageTracking.php:91:        $response = wp_remote_post(self::API_BASE_URL . 'checkin/', ['body' => json_encode($data), 'timeout' => 5, 'blocking' => \true, 'sslverify' => \false, 'headers' => ['Content-Type' => 'application/json; charset=utf-8', 'user-agent' => 'SB/' . self::LIB_VERSION . '; ' . get_bloginfo('url')]]);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/Feedback/ApiClient.php:147:        $response = wp_remote_post($endpoint, ['timeout' => self::TIMEOUT, 'blocking' => \false, 'headers' => ['Content-Type' => 'application/json', 'Accept' => 'application/json'], 'body' => wp_json_encode($data), 'sslverify' => \true]);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/Feedback/HelpWidget.php:594:        $response = wp_remote_post($endpoint, ['timeout' => $timeout, 'blocking' => \true, 'headers' => ['Content-Type' => 'application/json', 'Accept' => 'application/json'], 'body' => wp_json_encode($api_data), 'sslverify' => \true]);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/Feedback/HelpWidget.php:617:             * to Slack / Sentry without monkey-patching wp_remote_post.
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/autoload.php:12:            fwrite(STDERR, $err);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_Resizer.php:62:				unlink($file);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/CFF_Resizer.php:78:			$created = wp_mkdir_p($upload_dir);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Support.php:532:			$created = wp_mkdir_p($upload_dir);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Support.php:725:		fwrite($file, $feed);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Compiler.php:21:use function file_put_contents;
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Compiler.php:27:use function unlink;
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Compiler.php:164:        $written = file_put_contents($tmpFile, $content);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Compiler.php:166:            @unlink($tmpFile);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Compiler.php:172:            @unlink($tmpFile);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Compiler.php:291:        if (!is_dir($directory) && !@mkdir($directory, 0777, \true) && !is_dir($directory)) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Admin/CFF_Global_Settings.php:538:			fwrite($file, $feed);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Helpers/PluginSilentUpgrader.php:361:			unlink($package);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Helpers/PluginSilentUpgrader.php:539:			if (! $wp_filesystem->mkdir($remote_destination, FS_CHMOD_DIR)) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Helpers/PluginSilentUpgrader.php:540:				return new WP_Error('mkdir_failed_destination', $this->strings['mkdir_failed'], $remote_destination);
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/laravel/serializable-closure/src/SerializableClosure.php:112:    public function __unserialize($data)
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/laravel/serializable-closure/src/UnsignedSerializableClosure.php:67:    public function __unserialize($data)
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/laravel/serializable-closure/src/Exceptions/InvalidSignatureException.php:14:    public function __construct($message = 'Your serialized closure might have been modified or it\'s unsafe to be unserialized.')
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/laravel/serializable-closure/src/Contracts/Serializable.php:14:     * Gets the closure that got serialized/unserialized.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/laravel/serializable-closure/src/Serializers/Native.php:31:     * The closure to be serialized/unserialized.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/laravel/serializable-closure/src/Serializers/Native.php:133:    public function __unserialize($data)
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/laravel/serializable-closure/src/Serializers/Signed.php:17:     * The closure to be serialized/unserialized.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/laravel/serializable-closure/src/Serializers/Signed.php:70:    public function __unserialize($signature)
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/vendor/laravel/serializable-closure/src/Serializers/Signed.php:76:        $serializable = unserialize($signature['serializable']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Feed_Builder.php:2233:			$statuses = is_array($onboarding_statuses) ? $onboarding_statuses : unserialize($onboarding_statuses, ['allowed_classes' => false]);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-facebook-feed/inc/Builder/CFF_Feed_Builder.php:2251:			$statuses = is_array($onboarding_statuses) ? $onboarding_statuses : unserialize($onboarding_statuses, ['allowed_classes' => false]);
```

