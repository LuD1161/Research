# Attack Surface: call-now-button

> Generated: 2026-06-16T19:03:54Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/chat/CnbChatAjaxHandler.php:17:        add_action('wp_ajax_cnb_enable_chat', array( $this, 'handle_enable_chat' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/chat/CnbChatAjaxHandler.php:18:        add_action('wp_ajax_cnb_disable_chat', array( $this, 'handle_disable_chat' ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:807:        add_action( 'wp_ajax_cnb_time_format', array( $ajax_controller, 'time_format' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:808:        add_action( 'wp_ajax_cnb_get_checkout', array( $ajax_controller, 'domain_upgrade_get_checkout' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:809:        add_action( 'wp_ajax_cnb_get_agency_checkout', array( $ajax_controller, 'agency_upgrade_get_checkout' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:810:        add_action( 'wp_ajax_cnb_email_activation', array( $ajax_controller, 'cnb_email_activation' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:811:        add_action( 'wp_ajax_cnb_get_plans', array( $ajax_controller, 'get_plans' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:812:        add_action( 'wp_ajax_cnb_get_billing_portal', array( $ajax_controller, 'get_billing_portal' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:813:        add_action( 'wp_ajax_cnb_request_billing_portal', array( $ajax_controller, 'request_billing_portal' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:814:        add_action( 'wp_ajax_cnb_upgrade_to_yearly', array( $ajax_controller, 'upgrade_to_yearly' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:817:        add_action( 'wp_ajax_cnb_delete_action', array( $action_controller, 'delete_ajax' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:820:        add_action( 'wp_ajax_cnb_delete_condition', array( $condition_controller, 'delete_ajax' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:823:        add_action( 'wp_ajax_cnb_domain_timezone_change', array( $domain_controller, 'update_timezone' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:826:        add_action( 'wp_ajax_cnb_hide_notice', array( $admin_controller, 'hide_notice' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:829:        add_action( 'wp_ajax_cnb_create_button', array( $button_controller, 'create_ajax' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:832:        add_action( 'wp_ajax_cnb_set_user_storage_solution', array( $user_controller, 'set_storage_solution' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:835:        add_action( 'wp_ajax_cnb_create_chat_token', array( $chat_controller, 'create_chat_token_ajax' ) );
```

### WordPress AJAX Handlers (unauthenticated)
```
None found
```

### admin-post Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:742:        add_action( 'admin_post_cnb_create_button', array( $button_controller, 'create' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:744:        add_action( 'admin_post_cnb_create_single_button', array( $button_controller, 'create' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:745:        add_action( 'admin_post_cnb_create_multi_button', array( $button_controller, 'create' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:746:        add_action( 'admin_post_cnb_create_full_button', array( $button_controller, 'create' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:747:        add_action( 'admin_post_cnb_create_dots_button', array( $button_controller, 'create' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:749:        add_action( 'admin_post_cnb_update_single_button', array( $button_controller, 'update' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:750:        add_action( 'admin_post_cnb_update_multi_button', array( $button_controller, 'update' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:751:        add_action( 'admin_post_cnb_update_full_button', array( $button_controller, 'update' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:752:        add_action( 'admin_post_cnb_update_dots_button', array( $button_controller, 'update' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:754:        add_action( 'admin_post_cnb_delete_button', array( $button_controller, 'delete' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:755:        add_action( 'admin_post_cnb_buttons_bulk', array( $button_controller, 'handle_bulk_actions' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:758:        add_action( 'admin_post_cnb_apikey_create', array( $api_key_controller, 'create' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:759:        add_action( 'admin_post_cnb_apikey_validate_and_update', array( $api_key_controller, 'validate_and_update' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:760:        add_action( 'admin_post_cnb_apikey_bulk', array( $api_key_controller, 'handle_bulk_actions' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:763:        add_action( 'admin_post_cnb_apikey_activate', array( $ott_key_controller, 'activate' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:766:        add_action( 'admin_post_cnb_create_condition', array( $condition_controller, 'create' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:767:        add_action( 'admin_post_cnb_update_condition', array( $condition_controller, 'update' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:768:        add_action( 'admin_post_cnb_delete_condition', array( $condition_controller, 'delete' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:769:        add_action( 'admin_post_cnb_conditions_bulk', array( $condition_controller, 'handle_bulk_actions' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:772:        add_action( 'admin_post_cnb_create_action', array( $action_controller, 'create' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:773:        add_action( 'admin_post_cnb_update_action', array( $action_controller, 'update' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:774:        add_action( 'admin_post_cnb_delete_action', array( $action_controller, 'delete' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:775:        add_action( 'admin_post_cnb_actions_bulk', array( $action_controller, 'handle_bulk_actions' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:778:        add_action( 'admin_post_cnb_create_domain', array( $domain_controller, 'create' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:779:        add_action( 'admin_post_cnb_update_domain', array( $domain_controller, 'update' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:780:        add_action( 'admin_post_cnb_delete_domain', array( $domain_controller, 'delete' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:781:        add_action( 'admin_post_cnb_domains_bulk', array( $domain_controller, 'handle_bulk_actions' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:784:        add_action( 'admin_post_cnb_profile_edit', array( $profile_controller, 'update' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:788:            add_action( 'admin_post_cnb_delete_all_settings', array( $settings_controller, 'delete_all_settings' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:789:            add_action( 'admin_post_cnb_set_default_settings', array( $settings_controller, 'set_default_settings' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:790:            add_action( 'admin_post_cnb_set_changelog_version', array( $settings_controller, 'override_changelog_version' ) );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:103:        add_menu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:116:            add_submenu_page( CNB_SLUG, $plugin_title, 'All buttons', 'manage_options', CNB_SLUG, array( $button_router, 'render' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:118:            add_submenu_page( CNB_SLUG, $plugin_title, 'Add New', 'manage_options', CNB_SLUG . '&action=new', array( $button_router, 'render' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:126:                    add_submenu_page( CNB_SLUG, $plugin_title, 'Templates', 'manage_options', $template_controller->get_slug(), array(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:136:                    add_submenu_page( CNB_SLUG, $plugin_title, 'Live Chat', 'manage_options', CNB_SLUG . '-marketing-chat', array(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:142:                    add_submenu_page( CNB_SLUG, $plugin_title, 'Live Chat', 'manage_options', $chat_router->get_slug(), array(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:156:                add_submenu_page( CNB_SLUG, $plugin_title, 'Agency plan', 'manage_options', CNB_SLUG . '-agency', array( $agency_router, 'render' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:161:                add_submenu_page( CNB_SLUG, $plugin_title, 'Domains', 'manage_options', CNB_SLUG . '-domains', array( $domain_router, 'render' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:164:                add_submenu_page( CNB_SLUG, $plugin_title, 'Actions', 'manage_options', CNB_SLUG . '-actions', array( $action_router, 'render' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:167:                add_submenu_page( CNB_SLUG, $plugin_title, 'Conditions', 'manage_options', CNB_SLUG . '-conditions', array( $condition_router, 'render' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:170:                add_submenu_page( CNB_SLUG, $plugin_title, 'API Keys', 'manage_options', CNB_SLUG . '-apikeys', array( $api_key_router, 'render' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:173:                add_submenu_page( CNB_SLUG, $plugin_title, 'Profile', 'manage_options', CNB_SLUG . '-profile', array( $profile_router, 'render' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:177:                    add_submenu_page( CNB_SLUG, $plugin_title, 'Edit action', 'manage_options', CNB_SLUG . '-actions', array( $action_router, 'render' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:181:                    add_submenu_page( CNB_SLUG, $plugin_title, 'Edit condition', 'manage_options', CNB_SLUG . '-conditions', array( $condition_router, 'render' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:185:                    add_submenu_page( CNB_SLUG, $plugin_title, 'Upgrade domain', 'manage_options', CNB_SLUG . '-domains', array( $domain_router, 'render' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:188:                    add_submenu_page( CNB_SLUG, $plugin_title, 'Payment', 'manage_options', CNB_SLUG . '-domains', array( $domain_router, 'render' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:193:            add_submenu_page( CNB_SLUG, $plugin_title, 'My button', 'manage_options', CNB_SLUG, array( $legacy_edit, 'render' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:196:            add_submenu_page( CNB_SLUG, $plugin_title, 'Unlock features', 'manage_options', CNB_SLUG . '-upgrade', array( $legacy_upgrade, 'render' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:201:            add_submenu_page( CNB_SLUG, $plugin_title, 'Cloud activation', 'manage_options', CNB_SLUG . '-activated', array( $api_key_router, 'render' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:206:        add_submenu_page( CNB_SLUG, $plugin_title, 'Settings', 'manage_options', CNB_SLUG . '-settings', array( $settings_router, 'render' ) );
```

### Shortcodes
```
None found
```

### Cron Jobs
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/cron/cron.php:58:            $result = wp_schedule_event( time(), 'twicedaily', $this->hook_name, array(), true );
```

### File Upload Handlers
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/UploadedFile.php:175:                : move_uploaded_file($this->file, $targetPath);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-message/src/UploadedFileInterface.php:36:     * Use this method as an alternative to move_uploaded_file(). This method is
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-message/src/UploadedFileInterface.php:39:     * appropriate method (move_uploaded_file(), rename(), or a stream
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-message/src/UploadedFileInterface.php:52:     * files via moveTo(), is_uploaded_file() and move_uploaded_file() SHOULD be
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-message/src/UploadedFileInterface.php:59:     * @see http://php.net/move_uploaded_file
```

### Block render_callback (server-rendered blocks)
```
None found
```

### Settings API / Meta Box save handlers
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/settings/CnbSettingsController.php:21:     * This is also part of "register_setting" in the CallNowButton class
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/models/UrlSettings.php:69:    public function register_settings() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/api/CnbAppRemote.php:630:            $cnb_settings->register_settings();
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:306:        register_setting(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/CallNowButton.php:329:        unregister_setting( 'cnb_options', 'cnb' );
```

### Widgets
```
None found
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/call-now-button.php:40:register_activation_hook(__FILE__, array('cnb\admin\deactivation\Activation', 'onActivation'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/call-now-button.php:41:register_deactivation_hook( __FILE__, array('cnb\admin\deactivation\Deactivation', 'on_deactivation') );
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/Utils.php:349:                 * The 'php://input' is a special stream with quirks and inconsistencies.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/Utils.php:354:                if ((\stream_get_meta_data($resource)['uri'] ?? '') === 'php://input') {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/ServerRequest.php:171:        $body = new CachingStream(new LazyOpenStream('php://input', 'r+'));
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/call-now-button.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/uninstall.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/build/index.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/button/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/settings/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/settings/CnbApiKeyActivatedView.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/partials/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/templates/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/models/cloud-notice.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/models/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/models/CnbActivation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/getting-started/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/action/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/profile/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/user/class-cnb-user-cache.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/deactivation/Deactivation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/deactivation/Activation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/legacy/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/magic-token/cnb-magic-token-controller.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/magic-token/class-cnb-magic-token.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/condition/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/api/CnbGet.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/api-key/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/api/class-cnb-chat-api.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/api/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/api/CnbMigration.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/domain/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/utils/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/utils/class-cachehandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/utils/cnb-backwards-compatible.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/domain/partials/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/cli/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/cli/mocks/WP_CLI_Utils.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/ObjectSerializer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/cli/mocks/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Configuration.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/cli/mocks/WP_CLI.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/notices/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/renderers/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/ApiException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/renderers/noop/class-nooprenderer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/renderers/cloud/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/renderers/modern/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/renderers/noop/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/HeaderSelector.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/cron/cron.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/composer/autoload_real.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/composer/InstalledVersions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/composer/installed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/composer/ClassLoader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Api/MeetPublicApi.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/polyfill-php80/bootstrap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Api/MagicTokenApi.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Api/DomainApi.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/polyfill-php80/PhpToken.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Api/StripeApi.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/polyfill-php80/Php80.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/jean85/pretty-package-versions/rector.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/jean85/pretty-package-versions/src/PrettyVersions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Api/SettingsApi.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/LimitStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/DroppingStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/InflateStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/BufferStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/Response.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Api/GoogleApi.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/MultipartStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/Request.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/Rfc7230.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Dsn.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/ExceptionDataBag.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Stacktrace.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/MonitorSchedule.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/ClientTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Breadcrumb.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/FrameBuilder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Utils.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/SentrySdk.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/MessageFormatter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Transport/RateLimiter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Transport/ResultStatus.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Api/UserApi.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/jean85/pretty-package-versions/src/Exception/VersionMissingExceptionInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Severity.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/jean85/pretty-package-versions/src/Exception/ReplacedPackageException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/MonitorConfig.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Handler/HeaderProcessor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Handler/CurlHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Spotlight/SpotlightClient.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Event.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Handler/CurlFactoryInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Handler/StreamHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Handler/Proxy.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Client.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Attributes/AttributeBag.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Handler/MockHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Handler/EasyHandle.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Attributes/Attribute.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/functions_include.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Agent/Transport/AgentClientBuilder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Agent/Transport/AgentClient.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Transport/DataCategory.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Transport/Result.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Handler/CurlFactory.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Transport/HttpTransport.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Transport/TransportInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/ClientReport/ClientReportAggregator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/UserDataBag.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/ClientReport/Reason.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Handler/CurlMultiHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/RetryMiddleware.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/ClientReport/DiscardedEvent.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Logger/DebugLogger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/BodySummarizer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Logs/Logs.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Logs/LogLevel.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Client.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Logger/DebugFileLogger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/ClientInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/CheckInStatus.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/jean85/pretty-package-versions/src/Exception/ProvidedPackageException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/RedirectMiddleware.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Unit.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/MonitorScheduleUnit.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/HandlerStack.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Logger/DebugStdOutLogger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/HttpClient/Request.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Tracing/SpanContext.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Tracing/PropagationContext.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Logs/LogsAggregator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/HttpClient/Response.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Tracing/TransactionSource.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Tracing/GuzzleTracingMiddleware.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Tracing/TraceId.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Tracing/DynamicSamplingContext.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Tracing/SamplingContext.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Tracing/SpanRecorder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Tracing/SpanId.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Tracing/Span.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Tracing/Transaction.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/HttpClient/HttpClientInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Tracing/SpanStatus.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Logs/Log.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/CheckIn.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Tracing/TransactionContext.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Context/RuntimeContext.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/HttpClient/HttpClient.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/ClientInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Middleware.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Tracing/TransactionMetadata.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Cookie/CookieJarInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Cookie/SessionCookieJar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Context/OsContext.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/State/RuntimeContext.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/RequestOptions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/State/HubAdapter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Cookie/SetCookie.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/State/Layer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/State/HubInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/State/RuntimeContextManager.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Metrics/Metrics.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/State/Scope.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Metrics/MetricsAggregator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Pool.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Metrics/TraceMetrics.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Tracing/Traits/TraceHeaderParserTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Exception/ClientException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Util/PrefixStripper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/BodySummarizerInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Metrics/Types/GaugeMetric.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Exception/TransferException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Util/Str.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Cookie/CookieJar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Metrics/Types/DistributionMetric.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Metrics/Types/CounterMetric.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Util/PHPConfiguration.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/ErrorHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Util/JSON.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Exception/ServerException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Exception/InvalidArgumentException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Util/PHPVersion.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Util/SentryUid.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Exception/RequestException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Exception/BadResponseException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Exception/TooManyRedirectsException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Util/Http.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/State/Hub.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/ClientBuilder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Util/TelemetryStorage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Exception/GuzzleException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Frame.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Cookie/FileCookieJar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/StacktraceBuilder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Util/RingBuffer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/ExceptionMechanism.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Exception/ConnectException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/PrepareBodyMiddleware.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/EventId.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Metrics/Types/Metric.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Exception/SilencedErrorException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/MessageFormatterInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Monolog/LogToSentryIssueHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Util/Arr.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Monolog/Handler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Monolog/CompatibilityLogLevelTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Monolog/CompatibilityProcessingHandlerTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Monolog/ExceptionToSentryIssueHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Monolog/BreadcrumbHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Profiling/Profiler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Exception/JsonException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Options.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/TransferStats.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Exception/EventCreationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Profiling/Profile.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Serializer/Serializer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Serializer/PayloadSerializer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Serializer/PayloadSerializerInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Serializer/AbstractSerializer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Monolog/LogsHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Serializer/SerializerInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Serializer/SerializableInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Exception/FatalErrorException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Serializer/RepresentationSerializer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Serializer/RepresentationSerializerInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/EventType.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/PumpStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/EventHint.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/Message.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/StreamWrapper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/UriResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/NoSeekStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/UriNormalizer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/Stream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/StreamDecoratorTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/MessageTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/Uri.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Integration/OptionAwareIntegrationInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Integration/RequestFetcher.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Integration/OTLPIntegration.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Integration/IntegrationInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/polyfill-php80/Resources/stubs/Attribute.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Integration/FrameContextifierIntegration.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Integration/RequestIntegration.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Integration/ModulesIntegration.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Serializer/EnvelopItems/EventItem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/HttpFactory.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/MimeType.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Serializer/EnvelopItems/LogsItem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Serializer/EnvelopItems/TransactionItem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Serializer/EnvelopItems/MetricsItem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Serializer/EnvelopItems/ClientReportItem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/polyfill-php80/Resources/stubs/ValueError.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Serializer/EnvelopItems/ProfileItem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Integration/RequestFetcherInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Integration/IntegrationRegistry.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/Rfc3986.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Integration/EnvironmentIntegration.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/polyfill-php80/Resources/stubs/PhpToken.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Integration/ExceptionListenerIntegration.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Integration/AbstractErrorListenerIntegration.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Serializer/Traits/BreadcrumbSeralizerTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Integration/FatalErrorListenerIntegration.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/polyfill-php80/Resources/stubs/Stringable.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/LazyOpenStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/Header.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Serializer/EnvelopItems/CheckInItem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Serializer/EnvelopItems/EnvelopeItemInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Serializer/Traits/StacktraceFrameSeralizerTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/Query.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/polyfill-php80/Resources/stubs/UnhandledMatchError.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Integration/ErrorListenerIntegration.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/UriComparator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/CachingStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/ServerRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Integration/TransactionIntegration.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/AppendStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/jean85/pretty-package-versions/src/Version.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/UploadedFile.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/Utils.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/FnStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Api/ActionApi.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Api/ChatPublicApi.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Api/SubscriptionApi.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Api/WordPressApi.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/composer/autoload_psr4.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Api/ConditionApi.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Api/MediaApi.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/Exception/MalformedUriException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Api/MeetApi.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Api/ApikeyApi.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/composer/autoload_classmap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/composer/autoload_files.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Api/WorkspaceApi.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/composer/autoload_namespaces.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/composer/platform_check.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/composer/autoload_static.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Api/ButtonApi.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/options-resolver/Options.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/polyfill-php73/Php73.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/options-resolver/OptionConfigurator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/promises/src/EachPromise.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/options-resolver/OptionsResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/options-resolver/Exception/NoSuchOptionException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/promises/src/RejectedPromise.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/options-resolver/Exception/UndefinedOptionsException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/options-resolver/Exception/InvalidOptionsException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/options-resolver/Exception/OptionDefinitionException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/options-resolver/Exception/NoConfigurationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/options-resolver/Exception/InvalidArgumentException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-factory/src/ResponseFactoryInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Api/ChatApi.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-factory/src/UriFactoryInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-factory/src/StreamFactoryInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/options-resolver/Debug/OptionsResolverIntrospector.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-factory/src/RequestFactoryInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/options-resolver/Exception/AccessException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/options-resolver/Exception/MissingOptionsException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/promises/src/FulfilledPromise.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-factory/src/UploadedFileFactoryInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-factory/src/ServerRequestFactoryInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/promises/src/AggregateException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-client/src/RequestExceptionInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/promises/src/TaskQueueInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/polyfill-php73/Resources/stubs/JsonException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/log/Psr/Log/LoggerAwareTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/log/Psr/Log/NullLogger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/options-resolver/Exception/ExceptionInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/promises/src/PromisorInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/log/Psr/Log/InvalidArgumentException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/log/Psr/Log/LoggerInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ApiServerExceptionResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/Options.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/UpdateMeetingRequestStrategy.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/SettingsAction.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ConditionUpdateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/WsDomain.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/PrivateNote.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/SubscriptionStatusData.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/SettingsCondition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ProAccountCheckoutSessionCreateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ChatChannelEvent.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ActionCreateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/MagicTokenAnonymousRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/HistoryResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/LoginResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/WorkspacePersona.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/PrivateNoteRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/AvailabilityWindow.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/DomainCreateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/StripeBillingPortalConfiguration.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/SlotClaimResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ClientAction.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/SubscriptionSafe.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/CheckoutSessionStatusResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ConfigurationBasedStrategyConfig.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/UpdatePrivateNoteRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/Permission.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ImportButtonResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/PasswordResetSuccessResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ConditionCreateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/SubscriptionUpgradeResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ChatChannel.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/SchedulingStrategyConfig.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/MagicTokenRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/Button.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/MediaMinimal.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ChatClientPersona.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ChatMessage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/DeleteButtonResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ChatAgentPersona.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/MultiButtonOptions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ChatChannelCreateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ImportButtonRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/MetaChannelMessage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ConditionDeleteResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/PasswordResetResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/Action.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/Apikey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/MagicTokenResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/DomainUpdateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/Workspace.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ChatClientPersonaUpdateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/UpdateFieldsRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ExportButtonResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/MediaDeleteResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ChannelAvailableResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/CnbPromotionCodeRestrictions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/UserCreateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ValidResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/Participant.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/StripePlan.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ChatWorkspaceDomainPersona.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/GoogleCalendarEvent.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ValidationResult.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/UserUpdateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ChatChannelNameUpdateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ButtonUpdateRequestV2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/DeleteQuickReplyResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/GoogleAccount.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/Address.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/MeetingStrategy.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/PromotionCode.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/EventUpdateData.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/AvailableSlotResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/AvailableSlotsResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ChatChannelResolutionUpdateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/CreateQuickReplyRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/SettingsOptions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/SettingsButton.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/FieldRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/Settings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/Field.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/Meeting.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ButtonCreateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/GoogleCalendar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/AvailableDomainsResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/CopyButtonRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/SettingsDomain.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ChatChannelFull.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/MemberAddRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/WorkspaceDomainPersonaCreateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ActionDeleteResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/StripeAgencyPlan.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ButtonCreateRequestV2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/Domain.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/RequestBillingPortalResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/SlotFields.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/PermissionAddRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ProAccountCheckoutSessionResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/QuickReply.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ChatChannelCreateResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/AblyChatMessage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/User.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ActionSchedule.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ImportDomain.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/SlotClaim.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/DomainDeleteResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/CnbMarketingData.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ButtonMinimal.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ChatChannelStatusUpdateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/WordPressSignupCreateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/Persona.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ChatAgentAddRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/CalendarBasedStrategyConfig.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ChatUserUpdateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/UserSettings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/PresenceUpdate.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/WordPressInfo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/StripeBillingPortal.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/CreateMeetingRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/DeleteWorkspaceResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/TokenRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ApiServerExceptionWithErrorCode.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/Session.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/UserModifiedResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ApikeyWithKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/Verification.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ApikeyUpdateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ErrorCode.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ApiServerException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/Condition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/StripeDetails.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/WsMember.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/OauthFlowResult.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ModelInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ExportButtonRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/StripeAgencyPlanPrice.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/DomainMinimal.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/GoogleAccountProfile.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ButtonOptions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/MediaUpdateMetadataRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/UpdateMeetingRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/BookedAppointment.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/CheckoutSessionCreateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/TaxId.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/MediaUsageResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/WorkspaceUpdateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/Media.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/StripePaymentDetails.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/WorkspaceCreateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ApikeyCreateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ActionUpdateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/AppointmentSlot.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ApikeyDeleteResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/Auth.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ButtonUpdateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/MagicToken.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ChatUserCreateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/log/Psr/Log/LogLevel.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/WorkspaceOptionsUpdateRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/log/Psr/Log/LoggerTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/ScrollOptions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/log/Psr/Log/AbstractLogger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/log/Psr/Log/LoggerAwareInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/CheckoutSessionResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-client/src/ClientExceptionInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-client/src/ClientInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/promises/src/RejectionException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/Validation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/promises/src/Is.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/promises/src/Promise.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/promises/src/PromiseInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/promises/src/Coroutine.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/Model/CopyButtonResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/promises/src/Create.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/promises/src/Each.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/promises/src/CancellationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/deprecation-contracts/function.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/promises/src/Utils.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/symfony/polyfill-php73/bootstrap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/promises/src/TaskQueue.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-client/src/NetworkExceptionInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/log/Psr/Log/Test/DummyTest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/log/Psr/Log/Test/TestLogger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/ralouphie/getallheaders/src/getallheaders.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/log/Psr/Log/Test/LoggerInterfaceTest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-message/src/UriInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-message/src/ServerRequestInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-message/src/UploadedFileInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-message/src/StreamInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-message/src/MessageInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-message/src/RequestInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-message/src/ResponseInterface.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **50**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **40**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **2**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **2**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/api/CnbGet.php:15:        return wp_remote_get( $url, $args );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/api/CnbAppRemote.php:307:     * This is inspired by https://developer.wordpress.org/reference/functions/wp_remote_post/
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/api/CnbAppRemote.php:324:     * This is inspired by https://developer.wordpress.org/reference/functions/wp_remote_post/
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/admin/api/CnbAppRemote.php:388:        $response = wp_remote_post( $url, $args );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/HttpClient/HttpClient.php:117:        $body = curl_exec($curlHandle);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Spotlight/SpotlightClient.php:40:        $body = curl_exec($curlHandle);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Utils.php:91:            if (\function_exists('curl_multi_exec') && \function_exists('curl_exec')) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Utils.php:93:            } elseif (\function_exists('curl_exec')) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Handler/CurlHandler.php:44:        \curl_exec($easy->handle);
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/autoload.php:12:            fwrite(STDERR, $err);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-message/src/UploadedFileInterface.php:36:     * Use this method as an alternative to move_uploaded_file(). This method is
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-message/src/UploadedFileInterface.php:39:     * appropriate method (move_uploaded_file(), rename(), or a stream
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-message/src/UploadedFileInterface.php:52:     * files via moveTo(), is_uploaded_file() and move_uploaded_file() SHOULD be
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/psr/http-message/src/UploadedFileInterface.php:59:     * @see http://php.net/move_uploaded_file
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/Stream.php:257:        $result = fwrite($this->stream, $string);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/Utils.php:339:                fwrite($stream, (string) $resource);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/UploadedFile.php:175:                : move_uploaded_file($this->file, $targetPath);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/lib/cnb/api/public/lib/ObjectSerializer.php:495:                fwrite($file, $chunk);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/composer/platform_check.php:17:            fwrite(STDERR, 'Composer detected issues in your platform:' . PHP_EOL.PHP_EOL . implode(PHP_EOL, $issues) . PHP_EOL.PHP_EOL);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Cookie/FileCookieJar.php:68:        if (false === \file_put_contents($filename, $jsonStr, \LOCK_EX)) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Handler/MockHandler.php:126:                        \fwrite($sink, $contents);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Handler/MockHandler.php:128:                        \file_put_contents($sink, $contents);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Handler/StreamHandler.php:650:                    \fwrite($value, $args[$i].': "'.$v.'" ');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/guzzle/src/Handler/StreamHandler.php:652:                \fwrite($value, "\n");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Agent/Transport/AgentClient.php:156:            $bytesWritten = @fwrite($socket, (string) substr($payload, $totalWrittenBytes));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Logger/DebugFileLogger.php:21:        file_put_contents($this->filePath, $message, \FILE_APPEND);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/sentry/sentry/src/Logger/DebugStdOutLogger.php:11:        file_put_contents('php://stdout', $message);
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/FnStream.php:62:     * An unserialize would allow the __destruct to run when the unserialized value goes out of scope.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/call-now-button/src/vendor/guzzlehttp/psr7/src/FnStream.php:68:        throw new \LogicException('FnStream should never be unserialized');
```

