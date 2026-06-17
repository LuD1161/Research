# Attack Surface: feeds-for-youtube

> Generated: 2026-06-16T19:03:59Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Feed_Saver_Manager.php:28:        add_action('wp_ajax_sbc_feed_saver_manager_fly_preview', array('Smashballoon\Customizer\Feed_Saver_Manager', 'feed_customizer_fly_preview'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Source.php:32:        add_action('wp_ajax_sbi_source_builder_update', array(self::class, 'builder_update'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Source.php:33:        add_action('wp_ajax_sbi_source_builder_update_multiple', array(self::class, 'builder_update_multiple'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Source.php:34:        add_action('wp_ajax_sbi_source_get_page', array(self::class, 'get_page'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Source.php:35:        add_action('wp_ajax_sbi_source_get_featured_post_preview', array(self::class, 'get_featured_post_preview'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Source.php:36:        add_action('wp_ajax_sbi_source_get_playlist_post_preview', array(self::class, 'get_playlist_post_preview'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/Blocks/RecommendedBlocks.php:27:        add_action('wp_ajax_am_recommended_block_install', [$this, 'install_plugin']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/Feedback/FeedbackManager.php:79:        add_action('wp_ajax_sb_deactivation_feedback', [DeactivationSurvey::class, 'handle_ajax']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/Feedback/FeedbackManager.php:83:        add_action('wp_ajax_sb_feature_suggestion', [HelpWidget::class, 'handle_ajax']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Admin/SBY_Upgrader.php:44:		add_action( 'wp_ajax_sby_maybe_upgrade_redirect', array( 'SmashBalloon\YouTubeFeed\Admin\SBY_Upgrader', 'maybe_upgrade_redirect' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Admin/SBY_Admin_Notice.php:18:        add_action( 'wp_ajax_sby_dismiss_upgrade_notice', array( $this, 'dismiss_upgrade_notice' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/ImporterService.php:20:		add_action('wp_ajax_sby_do_feed_import', [$this, 'ajax_handle_file_import']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/CacheService.php:11:		add_action( 'wp_ajax_sby_clear_cache', [ $this, 'ajax_clear_cache' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/Settings/SingleVideoPage.php:41:		add_action( 'wp_ajax_sby_get_single_videos', [ $this, 'ajax_query_single_videos' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/Settings/SingleVideoPage.php:42:		add_action( 'wp_ajax_sby_all_videos_action', [ $this, 'ajax_all_video_action' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/Settings/SettingsPage.php:42:		add_action( 'wp_ajax_sby_update_settings', [ $this, 'handle_settings_update' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/Settings/SettingsPage.php:43:		add_action( 'wp_ajax_sby_install_wpconsent', [ $this, 'ajax_install_wpconsent' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/Settings/SettingsPage.php:44:		add_action( 'wp_ajax_sby_activate_wpconsent', [ $this, 'ajax_activate_wpconsent' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/Settings/SetupPage.php:37:			add_action( 'wp_ajax_sby_process_wizard', [ $this, 'ajax_process_wizard' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/Settings/SetupPage.php:38:			add_action( 'wp_ajax_sby_dismiss_wizard', [ $this, 'ajax_dismiss_wizard' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/GUIService.php:10:		add_action( 'wp_ajax_sby_dismiss_api_key_notice', [$this, 'sby_dismiss_api_key_notice'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/GUIService.php:11:		add_action( 'wp_ajax_sby_dismiss_at_warning_notice', [$this, 'sby_dismiss_at_warning_notice'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/GUIService.php:12:		add_action( 'wp_ajax_sby_dismiss_connect_warning_button', [$this, 'sby_dismiss_connect_warning_notice'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/SourcesService.php:41:		add_action('wp_ajax_remove_connected_account', [$this, 'ajax_remove_account']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/SourcesService.php:42:		add_action('wp_ajax_verify_api_key', [$this, 'ajax_verify_api_key']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/MiscService.php:12:		add_action( 'wp_ajax_sby_ca_after_remove_clicked', [$this, 'sby_delete_connected_account'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/MiscService.php:13:		add_action( 'wp_ajax_sby_process_access_token', [$this, 'sby_process_access_token'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/MiscService.php:14:		add_action( 'wp_ajax_sby_delete_wp_posts', [$this, 'sby_delete_wp_posts'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/MiscService.php:15:		add_action( 'wp_ajax_sbspf_account_search', [$this, 'sbspf_account_search'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/MiscService.php:17:		add_action( 'wp_ajax_sby_do_import_batch', [$this, 'sby_do_import_batch'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/LicenseService.php:26:		add_action('wp_ajax_sby_check_connection', [$this, 'test_connection']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/LicenseService.php:27:		add_action('wp_ajax_sby_recheck_license_upgrade', [$this, 'recheck_license_upgrade']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/LicenseService.php:28:		add_action('wp_ajax_sby_license_activation', [$this, 'ajax_activate_license']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/LicenseService.php:29:		add_action('wp_ajax_sby_license_deactivation', [$this, 'ajax_deactivate_license']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/LicenseService.php:30:		add_action( 'wp_ajax_sby_check_license', [ $this, 'check_license' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/LicenseService.php:31:		add_action( 'wp_ajax_sby_dismiss_license_notice', [ $this, 'dismiss_license_notice' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/Settings/AboutPage.php:21:		add_action( 'wp_ajax_sby_install_addon', [ $this, 'ajax_install_addon' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/Settings/AboutPage.php:22:		add_action( 'wp_ajax_sby_activate_addon', [ $this, 'ajax_activate_addon' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Integrations/Divi/SBY_Divi_Handler.php:67:			add_action('wp_ajax_sb_youtubefeed_divi_preview', [ $this, 'preview' ]);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/AdminAjaxService.php:22:		add_action( 'wp_ajax_sby_load_more_clicked', [$this, 'sby_get_next_post_set'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/AdminAjaxService.php:24:		add_action( 'wp_ajax_sby_live_retrieve', [$this, 'sby_get_live_retrieve'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/AdminAjaxService.php:26:		add_action( 'wp_ajax_sby_check_wp_submit', [$this, 'sby_process_wp_posts'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/AdminAjaxService.php:28:		add_action( 'wp_ajax_sby_add_api_key', [$this, 'sby_api_key'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/AdminAjaxService.php:29:		add_action( 'wp_ajax_sby_other_plugins_modal', [$this, 'sby_other_plugins_modal'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/AdminAjaxService.php:30:		add_action( 'wp_ajax_sby_single_videos_upsell_modal', [$this, 'sby_single_videos_upsell_modal'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/AdminAjaxService.php:31:		add_action( 'wp_ajax_sby_install_other_plugins', [$this, 'sby_install_addon'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/AdminAjaxService.php:32:		add_action( 'wp_ajax_sby_activate_other_plugins', [$this, 'sby_activate_addon'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/AdminAjaxService.php:33:		add_action( 'wp_ajax_sby_manual_access_token', [$this, 'manual_access_token'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/LicenseNotification.php:22:		add_action( 'wp_ajax_sby_hide_frontend_license_error', [$this, 'hide_frontend_license_error'], 10 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/LicenseNotification.php:23:		add_action( 'wp_ajax_sby_recheck_connection', array( $this, 'sby_recheck_connection' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Admin/SBY_Notifications.php:89:		add_action( 'wp_ajax_sby_dashboard_notification_dismiss', array( $this, 'dismiss' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Admin/SBY_New_User.php:34:		add_action( 'wp_ajax_sby_review_notice_consent_update', array( $this, 'review_notice_consent' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Feed_Saver_Manager.php:27:		add_action('wp_ajax_sby_feed_saver_manager_builder_update', array( 'SmashBalloon\YouTubeFeed\Builder\SBY_Feed_Saver_Manager', 'builder_update' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Feed_Saver_Manager.php:28:		add_action('wp_ajax_sby_feed_saver_manager_get_feed_list_page', array( 'SmashBalloon\YouTubeFeed\Builder\SBY_Feed_Saver_Manager', 'get_feed_list_page' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Feed_Saver_Manager.php:29:		add_action('wp_ajax_sby_feed_saver_manager_fly_preview', array( 'SmashBalloon\YouTubeFeed\Builder\SBY_Feed_Saver_Manager', 'feed_customizer_fly_preview' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Feed_Saver_Manager.php:30:		add_action('wp_ajax_sby_feed_handle_saver_manager_fly_preview', array( 'SmashBalloon\YouTubeFeed\Builder\SBY_Feed_Saver_Manager', 'feed_customizer_feed_handle_fly_preview' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Feed_Saver_Manager.php:31:		add_action('wp_ajax_sby_feed_saver_manager_clear_single_feed_cache', array( 'SmashBalloon\YouTubeFeed\Builder\SBY_Feed_Saver_Manager', 'clear_single_feed_cache' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Feed_Saver_Manager.php:32:		add_action('wp_ajax_sby_feed_saver_manager_duplicate_feed', array( 'SmashBalloon\YouTubeFeed\Builder\SBY_Feed_Saver_Manager', 'duplicate_feed' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Feed_Saver_Manager.php:33:		add_action('wp_ajax_sby_feed_saver_manager_delete_feeds', array( 'SmashBalloon\YouTubeFeed\Builder\SBY_Feed_Saver_Manager', 'delete_feed' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Feed_Saver_Manager.php:34:		add_action('wp_ajax_sby_dismiss_onboarding', array( 'SmashBalloon\YouTubeFeed\Builder\SBY_Feed_Saver_Manager', 'after_dismiss_onboarding' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Feed_Saver_Manager.php:35:		add_action('wp_ajax_sby_feed_refresh', array( 'SmashBalloon\YouTubeFeed\Builder\SBY_Feed_Saver_Manager', 'feed_refresh' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Feed_Saver_Manager.php:36:		add_action('wp_ajax_sby_feed_saver_clear_comments_cache', array( 'SmashBalloon\YouTubeFeed\Builder\SBY_Feed_Saver_Manager', 'clear_comments_cache' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Source.php:25:		add_action( 'wp_ajax_sbi_source_builder_update', array( 'SmashBalloon\YouTubeFeed\Builder\SBY_Source', 'builder_update' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Source.php:26:		add_action( 'wp_ajax_sbi_source_builder_update_multiple', array( 'SmashBalloon\YouTubeFeed\Builder\SBY_Source', 'builder_update_multiple' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Source.php:27:		add_action( 'wp_ajax_sbi_source_get_page', array( 'SmashBalloon\YouTubeFeed\Builder\SBY_Source', 'get_page' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Source.php:28:		add_action( 'wp_ajax_sbi_source_get_featured_post_preview', array( 'SmashBalloon\YouTubeFeed\Builder\SBY_Source', 'get_featured_post_preview' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Source.php:29:		add_action( 'wp_ajax_sbi_source_get_playlist_post_preview', array( 'SmashBalloon\YouTubeFeed\Builder\SBY_Source', 'get_playlist_post_preview' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Feed_Builder.php:65:		add_action('wp_ajax_sbi_dismiss_onboarding', array( 'SmashBalloon\YouTubeFeed\Builder\SBI_Feed_Builder', 'after_dismiss_onboarding' ));
```

### WordPress AJAX Handlers (unauthenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/AdminAjaxService.php:23:		add_action( 'wp_ajax_nopriv_sby_load_more_clicked', [$this, 'sby_get_next_post_set'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/AdminAjaxService.php:25:		add_action( 'wp_ajax_nopriv_sby_live_retrieve', [$this, 'sby_get_live_retrieve'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/AdminAjaxService.php:27:		add_action( 'wp_ajax_nopriv_sby_check_wp_submit', [$this, 'sby_process_wp_posts'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Admin/SBY_Upgrader.php:43:		add_action( 'wp_ajax_nopriv_sby_run_one_click_upgrade', array( 'SmashBalloon\YouTubeFeed\Admin\SBY_Upgrader', 'install_upgrade' ) );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/MenuService.php:35:		add_menu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/MenuService.php:45:		add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/MenuService.php:56:			add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/MenuService.php:67:			add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/MenuService.php:79:			add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/MenuService.php:91:			add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/MenuService.php:103:			add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/MenuService.php:115:			add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/Settings/BaseSettingPage.php:86:		add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Feed_Builder.php:105:		$feed_builder = add_submenu_page(
```

### Shortcodes
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/ShortcodeService.php:18:		add_shortcode('youtube-feed', [$this, 'sby_youtube_feed']);
```

### Cron Jobs
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/youtube-feed.php:305:            wp_schedule_event( time(), 'twicedaily', 'sby_cron_job' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/youtube-feed.php:312:            wp_schedule_event( $six_am_local, 'sbyweekly', 'sby_notification_update' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/youtube-feed.php:450:                wp_schedule_event( $six_am_local, 'sbyweekly', 'sby_notification_update' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_Cron_Updater.php:190:				wp_schedule_event( $utc_start_time, 'twicedaily', 'sby_feed_update' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_Cron_Updater.php:192:				wp_schedule_event( $utc_start_time, 'daily', 'sby_feed_update' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_Cron_Updater.php:197:				wp_schedule_event( time(), 'sby30mins', 'sby_feed_update' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_Cron_Updater.php:199:				wp_schedule_event( time(), 'hourly', 'sby_feed_update' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Admin/SBY_Tracking.php:295:			wp_schedule_event( $tracking['initsend'], 'weekly', 'sby_usage_tracking_cron' );
```

### File Upload Handlers
```
None found
```

### Block render_callback (server-rendered blocks)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/Blocks/SB_Feed_Block.php:68:        register_block_type($this->get_block_dir(), array('render_callback' => array($this, 'render_block')));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Blocks/SBY_Blocks.php:38:		return function_exists( 'register_block_type' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Blocks/SBY_Blocks.php:95:		register_block_type(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Blocks/SBY_Blocks.php:100:				'render_callback' => array( $this, 'get_feed_html' ),
```

### Settings API / Meta Box save handlers
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/MiscService.php:155:		register_setting('sby_license', 'sby_license_key', 'sby_sanitize_license' );
```

### Widgets
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SbyWidget.php:11:class SbyWidget extends WP_Widget
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SbyWidget.php:61:    register_widget( 'SbyWidget' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Integrations/Elementor/SBY_Elementor_Base.php:38:		add_action('elementor/widgets/register', [$this,'register_widgets']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Integrations/Elementor/SBY_Elementor_Base.php:62:	public function register_widgets($widgets_manager)
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/youtube-feed.php:388:    register_activation_hook( __FILE__, 'sby_activate' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/youtube-feed.php:425:    register_deactivation_hook( __FILE__, 'sby_deactivate' );
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
None found
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/admin/templates/settings/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/uninstall.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/build/js/elementor-preview.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/build/js/admin-notifications.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/build/js/customizer.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/build/js/tooltip-wizard.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/build/js/admin.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/build/js/divi-preview-handler.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/build/js/elementor-handler.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/build/js/sby-blocks.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/build/js/sby-admin.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/build/css/sby-blocks.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/build/css/sb-youtube-common.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/build/css/tooltipster.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/build/css/sby-notices.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/build/css/admin-notifications.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/build/css/admin.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/build/css/sb-elementor.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/build/css/sb-youtube-free.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/composer/autoload_static.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/composer/autoload_psr4.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/composer/installed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/composer/ClassLoader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/composer/autoload_classmap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Utilities/functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/psr/container/src/ContainerInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/psr/container/src/ContainerExceptionInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/php-di/invoker/src/Invoker.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/php-di/phpdoc-reader/src/PhpDocReader/AnnotationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/I18n/I18n.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Utilities/PlatformTracking/PlatformTracking.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/License_Tier/License_Tier.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/License_Tier/Sample_Plugin_License_Tier.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/php-di/phpdoc-reader/src/PhpDocReader/PhpDocReader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/php-di/invoker/src/CallableResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/php-di/invoker/src/InvokerInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/FactoryInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/php-di/invoker/src/ParameterResolver/AssociativeArrayResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/php-di/invoker/src/ParameterResolver/ParameterResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/php-di/invoker/src/ParameterResolver/ResolverChain.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/php-di/invoker/src/Exception/NotEnoughParametersException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Utilities/PlatformTracking/Platforms/Flywheel.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Utilities/PlatformTracking/Platforms/GoDadddy.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/php-di/phpdoc-reader/src/PhpDocReader/PhpParser/TokenParser.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/php-di/phpdoc-reader/src/PhpDocReader/PhpParser/UseStatementParser.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Utilities/PlatformTracking/Platforms/Kinsta.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Annotation/Inject.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Annotation/Injectable.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/Blocks/SB_Block_Utils.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/php-di/invoker/src/ParameterResolver/NumericArrayResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/Blocks/SB_Feed_Block.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/Blocks/SB_Feed_Blocks_Registry.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/Blocks/RecommendedBlocks.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/php-di/invoker/src/Exception/InvocationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/Blocks/SB_Elementor_Editor_Assets.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Utilities/PlatformTracking/Platforms/SiteGround.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/php-di/invoker/src/ParameterResolver/DefaultValueResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/php-di/invoker/src/Exception/NotCallableException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Utilities/PlatformTracking/Platforms/PlatformInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/php-di/invoker/src/ParameterResolver/TypeHintResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Utilities/PlatformTracking/Platforms/WPEngine.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Utilities/PlatformTracking/Platforms/Bluehost.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/Blocks/dist/recommended.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/Blocks/dist/sb-elementor-editor.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Container.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/ContainerBuilder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/php-di/invoker/src/Reflection/CallableReflection.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/Blocks/dist/sb-feed-blocks.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Template.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Compiler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/ValueDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/InstanceDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/ExtendsPreviousDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/AutowireDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Definition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/StringDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/FactoryDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/ArrayDefinitionExtension.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Reference.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/DecoratorDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/ArrayDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/ObjectDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Proxy/ProxyFactory.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/DefinitionResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/ParameterResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/EnvironmentVariableResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/DecoratorResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Helper/CreateDefinitionHelper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Helper/DefinitionHelper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Dumper/ObjectDefinitionDumper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Helper/FactoryDefinitionHelper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/ObjectCreator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/ResolverDispatcher.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/ReflectionBasedAutowiring.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Exception/InvalidDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Exception/InvalidAnnotation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/Autowiring.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Helper/AutowireDefinitionHelper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/DefinitionNormalizer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/DefinitionSource.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/FactoryResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/SourceCache.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/SourceChain.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/MutableDefinitionSource.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/DefinitionArray.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/DefinitionFile.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/NoAutowiring.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/SelfResolvingDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/InstanceInjector.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Compiler/ObjectCreationCompiler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/ArrayResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Compiler/RequestedEntryHolder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/EnvironmentVariableDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/php-di/invoker/src/ParameterResolver/Container/ParameterNameContainerResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/php-di/invoker/src/ParameterResolver/Container/TypeHintContainerResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/ObjectDefinition/MethodInjection.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/ObjectDefinition/PropertyInjection.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/DependencyException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/AnnotationBasedAutowiring.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/NotFoundException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/CompiledContainer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Factory/RequestedEntry.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/psr/container/src/NotFoundExceptionInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Invoker/FactoryParameterResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Utilities/UsageTracking.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/bootstrap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/composer/autoload_namespaces.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/PreviewProvider.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Invoker/DefinitionParameterResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/ProxyProvider.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Feed_Saver_Manager.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Container.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/feeds-type.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/feeds-list.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Feed_Saver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/popup/extensions-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/popup/feedtemplates-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/popup/license-learn-more.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/popup/confirm-dialog-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/popup/why-renew-license-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/popup/embed-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/popup/accountapi-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/popup/feedtypes-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/popup/onboarding-customizer-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Tabs/Tab.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Tabs/Manager.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/header.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/select-template.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/select-source.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/empty-state.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Feed_Locator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Feed_Processor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/footer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/DB.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/customizer/sidebar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Source.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/footer-banner/aab-upsell.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/feeds/feeds.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/footer-banner/footer-free.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/YouTube_License_Tier.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/customizer/preview.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/footer-banner/footer-pro.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Customizer_Service.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Config.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/footer-banner/feed-plugins-upsell.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/builder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/feeds/legacy-feeds.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/free/select-template.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/free/select-source.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/screens/welcome.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/screens/select-feed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Cache/FeedCache.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/feeds/instances.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Cache/FeedCacheInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/screens/customizer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/composer/autoload_files.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/composer/InstalledVersions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/sections/free/feeds-type.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/templates/preview/lightbox.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/composer/autoload_real.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/activation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/scoper-autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/bootstrap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/stubs/src/Services/ServiceProviderInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/stubs/src/Services/ServiceProvider.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/debug/css/sby-blocks.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/stubs/src/Traits/Singleton.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/debug/css/sb-youtube-common.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/debug/css/tooltipster.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/debug/css/sby-notices.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_Cron_Updater.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/debug/css/admin.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SB_YouTube_Data_Encryption.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_Display_Elements.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/laravel/serializable-closure/src/SerializableClosure.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_Vars.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/PluginSilentUpgraderSkin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Response.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/laravel/serializable-closure/src/Exceptions/InvalidSignatureException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Container.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/laravel/serializable-closure/src/Exceptions/PhpVersionNotSupportedException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/debug/js/sby-blocks.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/debug/js/divi-preview-handler.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_API_Connect.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Blocks/SBY_Modern_Feed_Block.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/debug/js/sby-admin.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/class-install-skin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/debug/js/elementor-handler.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Blocks/SBY_Blocks.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/debug/js/admin.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Feed_Locator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/laravel/serializable-closure/src/Exceptions/MissingSecretKeyException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Customizer/Customizer_Compatibility.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/debug/js/tooltip-wizard.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/debug/js/customizer.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Customizer/ShortcodePreviewProvider.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Customizer/DB.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Customizer/Config.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/debug/js/elementor-preview.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Customizer/ProxyProvider.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/debug/js/admin-notifications.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_Posts_Manager.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Customizer/Tabs/Settings_Tab.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Customizer/Tabs/TabsService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Data/GoogleAPIResponseStruct.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Data/DataFactory.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_RSS_Connect.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Admin/SBY_New_User.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Customizer/Tabs/Customize_Tab.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/LicenseNotification.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/AdminAjaxService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/ErrorReportingService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/CronUpdaterService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/ServiceContainer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_GDPR_Integrations.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/ShortcodeService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/ActivationService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/AssetsService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/ConfigService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/DebugReportingService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Admin/SBY_Upgrader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/GUIService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Admin/SBY_Admin_Abstract.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Admin/SBY_Tracking.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Integrations/Elementor/SBY_Elementor_Base.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Integrations/Divi/SBY_Divi_Handler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Integrations/Divi/SB_YouTube_Feed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/LicenseService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/ImporterService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Integrations/Analytics/SB_Analytics.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/AdminServiceContainer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Upgrade/RoutineManagerService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/AssetsService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/MiscService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/MenuService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/SourcesService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Admin/SBY_Admin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/CacheService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/PluginSilentUpgrader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_Parse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/Settings/SettingsPage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/Settings/SingleVideoPage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Upgrade/Routines/UpgradeRoutine.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/Settings/SetupPage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/Settings/BaseSettingPage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Upgrade/Routines/OnboardingWizardRoutine.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/Settings/PagesServiceContainer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Upgrade/Routines/V2Routine.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/Settings/HelpPage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/laravel/serializable-closure/src/UnsignedSerializableClosure.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SbyWidget.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_Feed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/Settings/AboutPage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_Cache.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_WP_Post.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_Settings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/laravel/serializable-closure/src/Contracts/Signer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/laravel/serializable-closure/src/Contracts/Serializable.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/laravel/serializable-closure/src/Signers/Hmac.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/debug/css/sb-youtube-free.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/laravel/serializable-closure/src/Serializers/Signed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Helpers/Util.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/laravel/serializable-closure/src/Serializers/Native.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/debug/css/sb-elementor.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/laravel/serializable-closure/src/Support/SelfReference.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/laravel/serializable-closure/src/Support/ClosureStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/public/debug/css/admin-notifications.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Source.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/Tooltip_Wizard.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/laravel/serializable-closure/src/Support/ClosureScope.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Feed_Builder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Feed_Saver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Feed_Saver_Manager.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Db.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/laravel/serializable-closure/src/Support/ReflectionClosure.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Feed_Builder.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **80**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **52**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **144**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **48**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Source.php:278:        $result = wp_remote_get($url, $args);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Source.php:298:        $result = wp_remote_get($user_url, $args);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Source.php:311:                $result = wp_remote_get($instagram_account_url, $args);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/Feedback/HelpWidget.php:594:        $response = wp_remote_post($endpoint, ['timeout' => $timeout, 'blocking' => \true, 'headers' => ['Content-Type' => 'application/json', 'Accept' => 'application/json'], 'body' => wp_json_encode($api_data), 'sslverify' => \true]);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/Feedback/HelpWidget.php:617:             * to Slack / Sentry without monkey-patching wp_remote_post.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/Feedback/ApiClient.php:147:        $response = wp_remote_post($endpoint, ['timeout' => self::TIMEOUT, 'blocking' => \false, 'headers' => ['Content-Type' => 'application/json', 'Accept' => 'application/json'], 'body' => wp_json_encode($data), 'sslverify' => \true]);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Utilities/UsageTracking.php:91:        $response = wp_remote_post(self::API_BASE_URL . 'checkin/', ['body' => json_encode($data), 'timeout' => 5, 'blocking' => \true, 'sslverify' => \false, 'headers' => ['Content-Type' => 'application/json; charset=utf-8', 'user-agent' => 'SB/' . self::LIB_VERSION . '; ' . get_bloginfo('url')]]);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_API_Connect.php:93:		$response = wp_remote_get( esc_url_raw( $this->url ), $this->get_args() );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_API_Connect.php:146:	public static function handle_wp_remote_get_error( $response ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_API_Connect.php:276:		$response = wp_remote_post( 'https://www.googleapis.com/oauth2/v4/token/?client_id=' . $client_id . '&client_secret=' . $client_secret . '&refresh_token='. $refresh_token . '&grant_type=refresh_token' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_RSS_Connect.php:64:		if ( wp_remote_retrieve_response_code( wp_remote_get( $this->url ) ) === 404 ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Helpers/Util.php:157:		$request = wp_remote_get( $api_url, $args );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Helpers/Util.php:245:			$request = wp_remote_post( $api_register_url );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Helpers/Util.php:261:			$request = wp_remote_get( $api_url, array(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Admin/SBY_Upgrader.php:72:		$request = wp_remote_post(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Admin/SBY_Upgrader.php:134:		$response = wp_safe_remote_get( $url, $remote_request_args );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Admin/SBY_Upgrader.php:442:		$request =  wp_safe_remote_get(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/LicenseService.php:145:		$response = wp_remote_get( add_query_arg( $api_params, SBY_STORE_URL ),
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/LicenseService.php:196:		$response = wp_remote_get( add_query_arg( $api_params, SBY_STORE_URL ), array( 'timeout' => 15, 'sslverify' => false ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/LicenseService.php:233:		$request = wp_remote_get( $api_url, $args );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/LicenseService.php:322:			$sby_response = wp_remote_get( add_query_arg( $sby_api_params, SBY_STORE_URL ), array( 'timeout' => 60, 'sslverify' => false ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/LicenseService.php:349:				$sby_response = wp_remote_get( add_query_arg( $sby_api_params, SBY_STORE_URL ), array( 'timeout' => 60, 'sslverify' => false ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/LicenseService.php:735:		$sby_response = wp_remote_get( add_query_arg( $sby_api_params, SBY_STORE_URL ), array( 'timeout' => 60, 'sslverify' => false ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Source.php:362:		$result     = wp_remote_get( $url, $args );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Source.php:399:		$result   = wp_remote_get( $user_url, $args );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Source.php:417:				$result = wp_remote_get( $instagram_account_url, $args );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Services/Admin/SourcesService.php:71:		$response = wp_remote_get($this->connect->get_url(), $this->connect->get_args());
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_Feed.php:578:					$api_connect_channels->handle_wp_remote_get_error( $api_connect_channels->get_data() );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_Feed.php:1125:						SBY_API_Connect::handle_wp_remote_get_error( $connection->get_wp_error() );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_Feed.php:1190:								SBY_API_Connect::handle_wp_remote_get_error( $connection->get_wp_error() );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/HTTP_Request.php:38:			$request = wp_remote_get( $url, $args );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/HTTP_Request.php:50:			$request        = wp_remote_post( $url, $args );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Admin/SBY_Notifications.php:144:		$res = wp_remote_get( $this->source_url() );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Feed_Builder.php:979:            $response = wp_remote_get(esc_url_raw($url), $args);
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/uninstall.php:121:			unlink( $file );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/youtube-feed.php:329:                    $created = wp_mkdir_p( $upload_dir );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/youtube-feed.php:339:                $created = wp_mkdir_p( $upload_dir );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Compiler.php:21:use function file_put_contents;
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Compiler.php:27:use function unlink;
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Compiler.php:164:        $written = file_put_contents($tmpFile, $content);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Compiler.php:166:            @unlink($tmpFile);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Compiler.php:172:            @unlink($tmpFile);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Compiler.php:291:        if (!is_dir($directory) && !@mkdir($directory, 0777, \true) && !is_dir($directory)) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/autoload.php:12:            fwrite(STDERR, $err);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/sby-functions.php:1064:		$success = fwrite( $savefile, $contents );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_Posts_Manager.php:193:				unlink( $file );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/SBY_Posts_Manager.php:229:			$created = wp_mkdir_p( $upload_dir );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/PluginSilentUpgrader.php:355:			unlink( $package );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/PluginSilentUpgrader.php:532:			if ( ! $wp_filesystem->mkdir( $remote_destination, FS_CHMOD_DIR ) ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/PluginSilentUpgrader.php:533:				return new WP_Error( 'mkdir_failed_destination', $this->strings['mkdir_failed'], $remote_destination );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Db.php:1:<?php // phpcs:disable PSR12.Classes.OpeningBraceSpace.Found,PSR12.ControlStructures.ControlStructureSpacing.SpaceBeforeCloseBrace,PSR12.ControlStructures.ControlStructureSpacing.SpacingAfterOpenBrace,PSR1.Methods.CamelCapsMethodName.NotCamelCaps,PSR2.Classes.ClassDeclaration.OpenBraceNewLine,PSR2.Methods.FunctionCallSignature.SpaceAfterOpenBracket,PSR2.Methods.FunctionCallSignature.SpaceBeforeCloseBracket,Squiz.Classes.ValidClassName.NotCamelCaps,Squiz.Commenting.FileComment.MissingPackageTag,Squiz.Commenting.FunctionComment.Missing,Squiz.Commenting.FunctionComment.MissingParamComment,Squiz.Commenting.FunctionComment.MissingParamTag,Squiz.Commenting.InlineComment.InvalidEndChar,Squiz.Commenting.InlineComment.NoSpaceBefore,Squiz.Functions.FunctionDeclarationArgumentSpacing.SpacingAfterOpen,Squiz.Functions.FunctionDeclarationArgumentSpacing.SpacingBeforeClose,Squiz.Functions.MultiLineFunctionDeclaration.BraceOnSameLine,Squiz.WhiteSpace.ControlStructureSpacing.SpacingAfterOpen,Squiz.WhiteSpace.ControlStructureSpacing.SpacingBeforeClose,WordPress.DB.PreparedSQL.NotPrepared,WordPress.WP.AlternativeFunctions.json_encode_json_encode,WordPress.WP.AlternativeFunctions.unlink_unlink
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Db.php:906:				unlink( $file );
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/laravel/serializable-closure/src/SerializableClosure.php:112:    public function __unserialize($data)
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/laravel/serializable-closure/src/UnsignedSerializableClosure.php:67:    public function __unserialize($data)
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/laravel/serializable-closure/src/Exceptions/InvalidSignatureException.php:14:    public function __construct($message = 'Your serialized closure might have been modified or it\'s unsafe to be unserialized.')
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/laravel/serializable-closure/src/Contracts/Serializable.php:14:     * Gets the closure that got serialized/unserialized.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/laravel/serializable-closure/src/Serializers/Signed.php:17:     * The closure to be serialized/unserialized.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/laravel/serializable-closure/src/Serializers/Signed.php:70:    public function __unserialize($signature)
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/laravel/serializable-closure/src/Serializers/Signed.php:76:        $serializable = unserialize($signature['serializable']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/laravel/serializable-closure/src/Serializers/Native.php:31:     * The closure to be serialized/unserialized.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/laravel/serializable-closure/src/Serializers/Native.php:133:    public function __unserialize($data)
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Feed_Builder.php:895:            $statuses = maybe_unserialize($onboarding_statuses);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/vendor/smashballoon/customizer/app/Feed_Builder.php:909:            $statuses = maybe_unserialize($onboarding_statuses);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Feed_Builder.php:1546:			$statuses = maybe_unserialize($onboarding_statuses);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/feeds-for-youtube/inc/Builder/SBY_Feed_Builder.php:1562:			$statuses          = maybe_unserialize($onboarding_statuses);
```

