# Attack Surface: custom-twitter-feeds

> Generated: 2026-06-16T19:03:57Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/admin-hooks.php:383:add_action( 'wp_ajax_ctf_lite_dismiss', 'ctf_lite_dismiss' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/custom-twitter-feed.php:501:add_action( 'wp_ajax_ctf_get_more_posts', 'ctf_get_more_posts' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/custom-twitter-feed.php:533:add_action( 'wp_ajax_ctf_do_locator', 'ctf_do_locator' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/custom-twitter-feed.php:863:add_action( 'wp_ajax_ctf_clear_cache_admin', 'ctf_clear_cache_admin' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/ctf-functions.php:222:add_action( 'wp_ajax_ctf_background_processing', 'ctf_background_processing' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Upgrader.php:43:		add_action( 'wp_ajax_ctf_maybe_upgrade_redirect', array( 'TwitterFeed\Admin\CTF_Upgrader', 'maybe_upgrade_redirect' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Global_Settings.php:53:		add_action( 'wp_ajax_ctf_save_settings', [$this, 'ctf_save_settings'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Global_Settings.php:54:		add_action( 'wp_ajax_ctf_activate_license', [$this, 'ctf_activate_license'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Global_Settings.php:55:		add_action( 'wp_ajax_ctf_deactivate_license', [$this, 'ctf_deactivate_license'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Global_Settings.php:56:		add_action( 'wp_ajax_ctf_test_connection', [$this, 'ctf_test_connection'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Global_Settings.php:57:		add_action( 'wp_ajax_ctf_recheck_connection', [$this, 'ctf_recheck_connection'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Global_Settings.php:58:		add_action( 'wp_ajax_ctf_import_settings_json', [$this, 'ctf_import_settings_json'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Global_Settings.php:59:		add_action( 'wp_ajax_ctf_export_settings_json', [$this, 'ctf_export_settings_json'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Global_Settings.php:60:		add_action( 'wp_ajax_ctf_clear_cache_settings', [$this, 'ctf_clear_cache_settings'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Global_Settings.php:61:		add_action( 'wp_ajax_ctf_clear_persistent_cache', [$this, 'ctf_clear_persistent_cache'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Global_Settings.php:62:		add_action( 'wp_ajax_ctf_clear_twittercard_cache', [$this, 'ctf_clear_twittercard_cache'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Global_Settings.php:63:		add_action( 'wp_ajax_ctf_clear_image_resize_cache', [$this, 'ctf_clear_image_resize_cache'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Global_Settings.php:64:		add_action( 'wp_ajax_ctf_dpa_reset', [$this, 'ctf_dpa_reset'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Admin_Notices.php:37:		add_action( 'wp_ajax_ctf_check_license', [ $this, 'ctf_check_license' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Admin_Notices.php:38:		add_action( 'wp_ajax_ctf_dismiss_license_notice', [ $this, 'ctf_dismiss_license_notice' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Admin_Notices.php:39:        add_action( 'wp_ajax_ctf_dismiss_upgrade_notice', array( $this, 'dismiss_upgrade_notice' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/addon-functions.php:38:add_action( 'wp_ajax_ctf_deactivate_addon', 'ctf_deactivate_addon' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/addon-functions.php:77:add_action( 'wp_ajax_ctf_activate_addon', 'ctf_activate_addon' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/addon-functions.php:180:add_action( 'wp_ajax_ctf_install_addon', 'ctf_install_addon' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Support.php:50:        add_action( 'wp_ajax_ctf_export_settings_json', [$this, 'ctf_export_settings_json'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_New_User.php:39:		add_action( 'wp_ajax_ctf_review_notice_consent_update', array( $this, 'review_notice_consent' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Notifications.php:87:		add_action( 'wp_ajax_ctf_dashboard_notification_dismiss', array( $this, 'dismiss' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/notices.php:130:add_action( 'wp_ajax_ctf_usage_opt_in_or_out', 'ctf_usage_opt_in_or_out' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Feed_Saver_Manager.php:27:		add_action( 'wp_ajax_ctf_feed_saver_manager_builder_update', array( 'TwitterFeed\Builder\CTF_Feed_Saver_Manager', 'builder_update' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Feed_Saver_Manager.php:28:		add_action( 'wp_ajax_ctf_feed_saver_manager_get_feed_settings', array( 'TwitterFeed\Builder\CTF_Feed_Saver_Manager', 'get_feed_settings' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Feed_Saver_Manager.php:29:		add_action( 'wp_ajax_ctf_feed_saver_manager_get_feed_list_page', array( 'TwitterFeed\Builder\CTF_Feed_Saver_Manager', 'get_feed_list_page' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Feed_Saver_Manager.php:30:		add_action( 'wp_ajax_ctf_feed_saver_manager_get_locations_page', array( 'TwitterFeed\Builder\CTF_Feed_Saver_Manager', 'get_locations_page' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Feed_Saver_Manager.php:31:		add_action( 'wp_ajax_ctf_feed_saver_manager_delete_feeds', array( 'TwitterFeed\Builder\CTF_Feed_Saver_Manager', 'delete_feed' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Feed_Saver_Manager.php:32:		add_action( 'wp_ajax_ctf_feed_saver_manager_duplicate_feed', array( 'TwitterFeed\Builder\CTF_Feed_Saver_Manager', 'duplicate_feed' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Feed_Saver_Manager.php:33:		add_action( 'wp_ajax_ctf_feed_saver_manager_clear_single_feed_cache', array( 'TwitterFeed\Builder\CTF_Feed_Saver_Manager', 'clear_single_feed_cache' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Feed_Saver_Manager.php:34:		add_action( 'wp_ajax_ctf_feed_saver_manager_importer', array( 'TwitterFeed\Builder\CTF_Feed_Saver_Manager', 'importer' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Feed_Saver_Manager.php:35:		add_action( 'wp_ajax_ctf_feed_saver_manager_fly_preview', array( 'TwitterFeed\Builder\CTF_Feed_Saver_Manager', 'feed_customizer_fly_preview' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Feed_Saver_Manager.php:36:		add_action( 'wp_ajax_ctf_feed_saver_manager_retrieve_comments', array( 'TwitterFeed\Builder\CTF_Feed_Saver_Manager', 'retrieve_comments' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Feed_Saver_Manager.php:39:		add_action( 'wp_ajax_ctf_feed_saver_manager_search_username_lists', array( 'TwitterFeed\Builder\CTF_Feed_Saver_Manager', 'search_username_lists' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Feed_Saver_Manager.php:40:		add_action( 'wp_ajax_ctf_feed_saver_manager_check_twitter_list_by_id', array( 'TwitterFeed\Builder\CTF_Feed_Saver_Manager', 'check_twitter_list_by_id' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Feed_Saver_Manager.php:41:		add_action( 'wp_ajax_ctf_feed_saver_manager_connect_manual_account', array( 'TwitterFeed\Builder\CTF_Feed_Saver_Manager', 'connect_manual_account' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Feed_Saver_Manager.php:42:		add_action( 'wp_ajax_ctf_feed_saver_manager_delete_account', array( 'TwitterFeed\Builder\CTF_Feed_Saver_Manager', 'delete_account' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Feed_Saver_Manager.php:45:		add_action( 'wp_ajax_ctf_feed_saver_manager_recache_feed', array( 'TwitterFeed\Builder\CTF_Feed_Saver_Manager', 'recache_feed' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Feed_Builder.php:63:		add_action( 'wp_ajax_ctf_dismiss_onboarding', array( 'TwitterFeed\Builder\CTF_Feed_Builder', 'after_dismiss_onboarding' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Feed_Builder.php:64:		add_action( 'wp_ajax_ctf_other_plugins_modal', array( 'TwitterFeed\Builder\CTF_Feed_Builder', 'sb_other_plugins_modal' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/Blocks/RecommendedBlocks.php:27:        add_action('wp_ajax_am_recommended_block_install', [$this, 'install_plugin']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/Feedback/FeedbackManager.php:79:        add_action('wp_ajax_sb_deactivation_feedback', [DeactivationSurvey::class, 'handle_ajax']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/Feedback/FeedbackManager.php:83:        add_action('wp_ajax_sb_feature_suggestion', [HelpWidget::class, 'handle_ajax']);
```

### WordPress AJAX Handlers (unauthenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/custom-twitter-feed.php:500:add_action( 'wp_ajax_nopriv_ctf_get_more_posts', 'ctf_get_more_posts' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/custom-twitter-feed.php:534:add_action( 'wp_ajax_nopriv_ctf_do_locator', 'ctf_do_locator' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/ctf-functions.php:223:add_action( 'wp_ajax_nopriv_ctf_background_processing', 'ctf_background_processing' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Upgrader.php:42:		add_action( 'wp_ajax_nopriv_ctf_run_one_click_upgrade', array( 'TwitterFeed\Admin\CTF_Upgrader', 'install_upgrade' ) );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_About_Us.php:55:		$about_us = add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Global_Settings.php:727:       $global_settings = add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Support.php:61:	    $support_page = add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/CtfAdmin.php:44:        add_menu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/CtfAdmin.php:53:        add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/CtfAdmin.php:64:            add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/CtfAdmin.php:76:            add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/CtfAdmin.php:88:            add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Feed_Builder.php:101:		$feed_builder = add_submenu_page(
```

### Shortcodes
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/custom-twitter-feed.php:455:add_shortcode( 'custom-twitter-feed', 'ctf_init' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/custom-twitter-feed.php:456:add_shortcode( 'custom-twitter-feeds', 'ctf_init' );
```

### Cron Jobs
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/custom-twitter-feed.php:370:			wp_schedule_event( time() + 60, 'twicedaily', 'ctf_feed_update' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/SB_Twitter_Cron_Updater.php:23:			wp_schedule_single_event( time() + 120, 'ctf_cron_additional_batch' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/SB_Twitter_Cron_Updater.php:131:				wp_schedule_event( $utc_start_time, 'twicedaily', 'ctf_feed_update' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/SB_Twitter_Cron_Updater.php:133:				wp_schedule_event( $utc_start_time, 'daily', 'ctf_feed_update' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/SB_Twitter_Cron_Updater.php:139:				wp_schedule_event( time(), 'ctf30mins', 'ctf_feed_update' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/SB_Twitter_Cron_Updater.php:141:				wp_schedule_event( time(), 'hourly', 'ctf_feed_update' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/CTF_Tracking.php:408:			wp_schedule_event( $tracking['initsend'], 'weekly', 'ctf_usage_tracking_cron' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/SmashTwitter/CronUpdaterManager.php:293:			wp_schedule_event( time(), 'hourly', 'ctf_smash_twitter_feed_update' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Global_Settings.php:511:				wp_schedule_event(time() , $ctf_cron_schedule, 'ctf_cron_job');
```

### File Upload Handlers
```
None found
```

### Block render_callback (server-rendered blocks)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/blocks/class-ctf-blocks.php:17:		return function_exists( 'register_block_type' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/blocks/class-ctf-blocks.php:66:		register_block_type(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/blocks/class-ctf-blocks.php:71:				'render_callback' => array( $this, 'get_feed_html' ),
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/Blocks/SB_Feed_Block.php:68:        register_block_type($this->get_block_dir(), array('render_callback' => array($this, 'render_block')));
```

### Settings API / Meta Box save handlers
```
None found
```

### Widgets
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/widget.php:8:class CtfWidget extends WP_Widget
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/widget.php:58:    register_widget( 'CtfWidget' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Integrations/Elementor/CTF_Elementor_Base.php:85:		add_action('elementor/widgets/register', array( $this, 'register_widgets' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Integrations/Elementor/CTF_Elementor_Base.php:98:	public function register_widgets($widgets_manager) // phpcs:ignore PSR1.Methods.CamelCapsMethodName.NotCamelCaps
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/custom-twitter-feed.php:883:register_activation_hook( __FILE__, 'ctf_activate' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/custom-twitter-feed.php:893:register_deactivation_hook( __FILE__, 'ctf_deactivate' );
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
None found
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/uninstall.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/preview/theme-styles.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/preview/error.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/preview/header.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/builder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/empty-state.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/feeds/legacy-feeds.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/feeds/instances.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/popup/onboarding-customizer-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/popup/add-source-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/create-feed/multiple-sources-list.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/customizer/preview.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/popup/install-plugin-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/popup/embed-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/customizer/sidebar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/popup/feedtypes-customizer-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/popup/connect-account-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/popup/confirm-dialog-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/popup/sources-list-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/popup/feedtypes-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/popup/feedtemplates-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/popup/onboarding-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/popup/source-instances.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/popup/extensions-popup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/feeds/feeds.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/header.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/views/sections/header.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/feeds-list.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/views/sections/builder_footer_cta.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/views/sections/settings_footer_cta.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/views/support/content.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/footer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/views/support/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/feeds-type.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/select-template.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/views/settings/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/screens/customizer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/views/about/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/views/about/content.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/screens/welcome.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/views/settings/content.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/sections/select-source.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/views/settings/tab/advanced.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/builder/templates/screens/select-feed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/views/settings/tab/translation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/views/settings/tab/feeds.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/admin/views/settings/tab/general.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/templates/header-generic.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/templates/actions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/templates/linkbox.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/templates/header.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/templates/header-text.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/scoper-autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/psr/container/src/ContainerExceptionInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/psr/container/src/ContainerInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/psr/container/src/NotFoundExceptionInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/laravel/serializable-closure/src/SerializableClosure.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/composer/autoload_files.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/composer/ClassLoader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/php-di/phpdoc-reader/src/PhpDocReader/PhpDocReader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/php-di/phpdoc-reader/src/PhpDocReader/AnnotationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/php-di/invoker/src/Exception/NotEnoughParametersException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/php-di/invoker/src/CallableResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/php-di/invoker/src/Exception/InvocationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/php-di/invoker/src/Exception/NotCallableException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/php-di/invoker/src/InvokerInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/composer/installed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/composer/autoload_psr4.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/php-di/invoker/src/Invoker.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/php-di/phpdoc-reader/src/PhpDocReader/PhpParser/TokenParser.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/laravel/serializable-closure/src/Signers/Hmac.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/composer/autoload_classmap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/php-di/invoker/src/ParameterResolver/ResolverChain.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/php-di/invoker/src/ParameterResolver/NumericArrayResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/php-di/invoker/src/ParameterResolver/ParameterResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/php-di/invoker/src/ParameterResolver/TypeHintResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/php-di/phpdoc-reader/src/PhpDocReader/PhpParser/UseStatementParser.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/php-di/invoker/src/ParameterResolver/DefaultValueResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/php-di/invoker/src/ParameterResolver/AssociativeArrayResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/composer/InstalledVersions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/composer/autoload_namespaces.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/php-di/invoker/src/Reflection/CallableReflection.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/laravel/serializable-closure/src/UnsignedSerializableClosure.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/composer/autoload_real.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/composer/autoload_static.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/composer/platform_check.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/php-di/invoker/src/ParameterResolver/Container/TypeHintContainerResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/laravel/serializable-closure/src/Exceptions/MissingSecretKeyException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/laravel/serializable-closure/src/Exceptions/PhpVersionNotSupportedException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/php-di/invoker/src/ParameterResolver/Container/ParameterNameContainerResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/laravel/serializable-closure/src/Exceptions/InvalidSignatureException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Utilities/UsageTracking.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/laravel/serializable-closure/src/Support/SelfReference.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/laravel/serializable-closure/src/Support/ClosureStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Utilities/functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/laravel/serializable-closure/src/Support/ClosureScope.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/laravel/serializable-closure/src/Contracts/Signer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/laravel/serializable-closure/src/Contracts/Serializable.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/laravel/serializable-closure/src/Support/ReflectionClosure.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/templates/item.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/templates/footer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/laravel/serializable-closure/src/Serializers/Signed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Utilities/PlatformTracking/PlatformTracking.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/Blocks/SB_Feed_Block.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/I18n/I18n.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/Blocks/SB_Elementor_Editor_Assets.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/Blocks/RecommendedBlocks.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/Blocks/SB_Feed_Blocks_Registry.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/License_Tier/Sample_Plugin_License_Tier.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/Blocks/SB_Block_Utils.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/Blocks/dist/recommended.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/Blocks/dist/sb-feed-blocks.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/License_Tier/License_Tier.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/DependencyException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/laravel/serializable-closure/src/Serializers/Native.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Utilities/PlatformTracking/Platforms/GoDadddy.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Utilities/PlatformTracking/Platforms/Kinsta.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Utilities/PlatformTracking/Platforms/Bluehost.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/FactoryInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/ContainerBuilder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/CompiledContainer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Factory/RequestedEntry.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/ObjectDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Container.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/ArrayDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/InstanceDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Definition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/AutowireDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Exception/InvalidAnnotation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/DecoratorDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Exception/InvalidDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Helper/DefinitionHelper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Helper/FactoryDefinitionHelper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/ExtendsPreviousDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Proxy/ProxyFactory.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Helper/CreateDefinitionHelper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/FactoryDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Helper/AutowireDefinitionHelper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/ArrayDefinitionExtension.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Compiler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Template.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Dumper/ObjectDefinitionDumper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/StringDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/ObjectDefinition/PropertyInjection.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/ObjectDefinition/MethodInjection.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/ReflectionBasedAutowiring.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/Autowiring.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Reference.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/SourceCache.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/SourceChain.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/DefinitionArray.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/DefinitionNormalizer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/EnvironmentVariableDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/DefinitionFile.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/NoAutowiring.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/DecoratorResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/EnvironmentVariableResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/DefinitionSource.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/MutableDefinitionSource.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/ObjectCreator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/DefinitionResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/InstanceInjector.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/ParameterResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/ResolverDispatcher.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/ArrayResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/ValueDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Source/AnnotationBasedAutowiring.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/SelfResolvingDefinition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Compiler/ObjectCreationCompiler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Compiler/RequestedEntryHolder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Utilities/PlatformTracking/Platforms/Flywheel.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Definition/Resolver/FactoryResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Utilities/PlatformTracking/Platforms/WPEngine.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/NotFoundException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Utilities/PlatformTracking/Platforms/PlatformInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/templates/author.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/Blocks/dist/sb-elementor-editor.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Utilities/PlatformTracking/Platforms/SiteGround.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/templates/feed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Invoker/DefinitionParameterResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Annotation/Injectable.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Invoker/FactoryParameterResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Annotation/Inject.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/notices.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/views/admin/more-social-feeds.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/blocks/class-ctf-blocks.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/SmashTwitter/Request.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/SmashTwitter/SinglePostCache.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/SmashTwitter/SettingsFilter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/SmashTwitter/TweetSetModifier.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/blocks/CTF_Modern_Feed_Block.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/V2/MediaAdapter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/SmashTwitter/TweetFilterer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Theme_CSS.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Feed_Saver_Manager.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Feed_Saver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Tooltip_Wizard.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Integrations/Analytics/SB_Analytics.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Db.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/SmashTwitter/Services/ErrorReporterService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Post_Set.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/SmashTwitter/TweetRepository.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/SmashTwitter/CronUpdaterManager.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/SmashTwitter/ErrorReport.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/SmashTwitter/AuthRoutine.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/SmashTwitter/TweetAggregator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/widget.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/admin-hooks.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/CtfCache.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/ctf-functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/class-install-skin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Upgrader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/PluginSilentUpgraderSkin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/PluginSilentUpgrader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Feed_Builder.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **67**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **43**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **108**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **35**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/CTF_Tracking.php:367:		$request = wp_remote_post( 'https://usage.smashballoon.com/v1/checkin/', array(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/Feedback/ApiClient.php:147:        $response = wp_remote_post($endpoint, ['timeout' => self::TIMEOUT, 'blocking' => \false, 'headers' => ['Content-Type' => 'application/json', 'Accept' => 'application/json'], 'body' => wp_json_encode($data), 'sslverify' => \true]);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/Feedback/HelpWidget.php:594:        $response = wp_remote_post($endpoint, ['timeout' => $timeout, 'blocking' => \true, 'headers' => ['Content-Type' => 'application/json', 'Accept' => 'application/json'], 'body' => wp_json_encode($api_data), 'sslverify' => \true]);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/Feedback/HelpWidget.php:617:             * to Slack / Sentry without monkey-patching wp_remote_post.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Utilities/UsageTracking.php:91:        $response = wp_remote_post(self::API_BASE_URL . 'checkin/', ['body' => json_encode($data), 'timeout' => 5, 'blocking' => \true, 'sslverify' => \false, 'headers' => ['Content-Type' => 'application/json; charset=utf-8', 'user-agent' => 'SB/' . self::LIB_VERSION . '; ' . get_bloginfo('url')]]);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/CtfOauthConnect.php:241:        $result = wp_remote_get( $url, $args );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/SmashTwitter/Request.php:74:			$return = wp_remote_get( $endpoint_url, $args );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/SmashTwitter/Request.php:76:			$return = wp_remote_post( $endpoint_url, $args );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_HTTP_Request.php:39:			$request      = wp_remote_get( $url, $args );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_HTTP_Request.php:51:			$request        = wp_remote_post( $url, $args );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Upgrader.php:71:		$request = wp_remote_post(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Upgrader.php:135:		$response = wp_remote_get( $url, $remote_request_args );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Notifications.php:142:		$res = wp_remote_get( $this->source_url() );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Admin_Notices.php:120:        $ctf_response = wp_remote_get( add_query_arg( $ctf_api_params, CTF_STORE_URL ), array( 'timeout' => 60, 'sslverify' => false ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Theme_CSS.php:99:		$response = wp_remote_get( esc_url_raw( $url ), $args );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/V2/TwitterHelperApi.php:73:		$response = wp_remote_post($url, $args);
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Compiler.php:21:use function file_put_contents;
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Compiler.php:27:use function unlink;
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Compiler.php:164:        $written = file_put_contents($tmpFile, $content);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Compiler.php:166:            @unlink($tmpFile);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Compiler.php:172:            @unlink($tmpFile);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/smashballoon/framework/Packages/php-di/src/Compiler/Compiler.php:291:        if (!is_dir($directory) && !@mkdir($directory, 0777, \true) && !is_dir($directory)) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/composer/platform_check.php:17:            fwrite(STDERR, 'Composer detected issues in your platform:' . PHP_EOL.PHP_EOL . implode(PHP_EOL, $issues) . PHP_EOL.PHP_EOL);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/PluginSilentUpgrader.php:355:			unlink( $package );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/PluginSilentUpgrader.php:532:			if ( ! $wp_filesystem->mkdir( $remote_destination, FS_CHMOD_DIR ) ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/PluginSilentUpgrader.php:533:				return new WP_Error( 'mkdir_failed_destination', $this->strings['mkdir_failed'], $remote_destination );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Support.php:761:        fwrite($file, $feed);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Admin/CTF_Global_Settings.php:460:		fwrite( $file, $feed );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/autoload.php:12:            fwrite(STDERR, $err);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Db.php:486:				unlink( $file );
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/laravel/serializable-closure/src/UnsignedSerializableClosure.php:67:    public function __unserialize($data)
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/laravel/serializable-closure/src/SerializableClosure.php:112:    public function __unserialize($data)
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/laravel/serializable-closure/src/Exceptions/InvalidSignatureException.php:14:    public function __construct($message = 'Your serialized closure might have been modified or it\'s unsafe to be unserialized.')
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/laravel/serializable-closure/src/Contracts/Serializable.php:14:     * Gets the closure that got serialized/unserialized.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/laravel/serializable-closure/src/Serializers/Native.php:31:     * The closure to be serialized/unserialized.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/laravel/serializable-closure/src/Serializers/Native.php:133:    public function __unserialize($data)
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/laravel/serializable-closure/src/Serializers/Signed.php:17:     * The closure to be serialized/unserialized.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/laravel/serializable-closure/src/Serializers/Signed.php:70:    public function __unserialize($signature)
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/vendor/laravel/serializable-closure/src/Serializers/Signed.php:76:        $serializable = unserialize($signature['serializable']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Feed_Builder.php:2067:			$statuses = maybe_unserialize( $onboarding_statuses );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-twitter-feeds/inc/Builder/CTF_Feed_Builder.php:2084:			$statuses = maybe_unserialize( $onboarding_statuses );
```

