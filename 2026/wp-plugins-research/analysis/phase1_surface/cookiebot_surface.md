# Attack Surface: cookiebot

> Generated: 2026-06-16T19:03:56Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Account_Service.php:37:		add_action( 'wp_ajax_cookiebot_store_cbid', array( $this, 'ajax_store_cbid' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Account_Service.php:38:		add_action( 'wp_ajax_cookiebot_get_cbid', array( $this, 'ajax_get_cbid' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Account_Service.php:39:		add_action( 'wp_ajax_cookiebot_get_auth_token', array( $this, 'ajax_get_auth_token' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Account_Service.php:40:		add_action( 'wp_ajax_cookiebot_set_gcm_enabled', array( $this, 'ajax_set_gcm_enabled' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Account_Service.php:41:		add_action( 'wp_ajax_cookiebot_set_banner_enabled', array( $this, 'ajax_set_banner_enabled' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Account_Service.php:42:		add_action( 'wp_ajax_cookiebot_set_auto_blocking_mode', array( $this, 'ajax_set_auto_blocking_mode' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Account_Service.php:43:		add_action( 'wp_ajax_cookiebot_process_auth_code', array( $this, 'ajax_process_auth_code' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Account_Service.php:44:		add_action( 'wp_ajax_cookiebot_dismiss_banner', array( $this, 'ajax_dismiss_banner' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Account_Service.php:45:		add_action( 'wp_ajax_cookiebot_post_user_data', array( $this, 'ajax_post_user_data' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Account_Service.php:46:		add_action( 'wp_ajax_cookiebot_get_user_data', array( $this, 'ajax_get_user_data' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Account_Service.php:47:		add_action( 'wp_ajax_cookiebot_store_scan_details', array( $this, 'ajax_store_scan_details' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Account_Service.php:48:		add_action( 'wp_ajax_cookiebot_get_scan_details', array( $this, 'ajax_get_scan_details' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Account_Service.php:49:		add_action( 'wp_ajax_cookiebot_store_configuration', array( $this, 'ajax_store_configuration' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Account_Service.php:50:		add_action( 'wp_ajax_cookiebot_delete_auth_token', array( $this, 'ajax_delete_auth_token' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Account_Service.php:51:		add_action( 'wp_ajax_cookiebot_store_onboarding_status', array( $this, 'ajax_store_onboarding_status' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Account_Service.php:52:		add_action( 'wp_ajax_cookiebot_update_scan_id', array( $this, 'ajax_update_scan_id' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Cookiebot_Review.php:21:		add_action( 'wp_ajax_cb_submit_survey', array( $this, 'send_uninstall_survey' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/pages/PPG_Page.php:28:		add_action( 'wp_ajax_cookiebot_activate_ppg', array( $this, 'ajax_activate_plugin' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/pages/PPG_Page.php:29:		add_action( 'wp_ajax_cookiebot_install_ppg', array( $this, 'ajax_install_plugin' ) );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Network_Menu_Settings.php:36:		add_menu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Network_Menu_Settings.php:44:		add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Network_Menu_Settings.php:52:		add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/pages/PPG_Page.php:16:		add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/pages/Settings_Page.php:22:		add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/pages/Support_Page.php:25:		add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/pages/Iab_Page.php:19:		add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/pages/Dashboard_Page.php:11:use function \add_menu_page;
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/pages/Dashboard_Page.php:12:use function \add_submenu_page;
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/pages/Dashboard_Page.php:37:		add_menu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/pages/Dashboard_Page.php:47:			add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/config/Settings_Config.php:88:			add_submenu_page(
```

### Shortcodes
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/shortcode/Cookiebot_Declaration_Shortcode.php:14:		add_shortcode( 'cookie_declaration', array( static::class, 'show_declaration' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/shortcode/Cookiebot_Embedding_Shortcode.php:12:		add_shortcode( 'uc_embedding', array( static::class, 'show_declaration' ) );
```

### Cron Jobs
```
None found
```

### File Upload Handlers
```
None found
```

### Block render_callback (server-rendered blocks)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/gutenberg/Cookiebot_Gutenberg_Declaration_Block.php:25:		if ( ! function_exists( 'register_block_type' ) ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/gutenberg/Cookiebot_Gutenberg_Declaration_Block.php:29:		register_block_type(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/gutenberg/Cookiebot_Gutenberg_Declaration_Block.php:32:				'render_callback' => array( $this, 'block_cookie_declaration' ),
```

### Settings API / Meta Box save handlers
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/config/Settings_Config.php:68:		add_action( 'admin_init', array( $this, 'register_settings' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/config/Settings_Config.php:153:	public function register_settings() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/config/Settings_Config.php:249:				register_setting(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/config/Settings_Config.php:304:					register_setting( 'cookiebot_jetpack_addon', 'cookiebot_jetpack_addon' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/config/Settings_Config.php:351:				register_setting( $addon::OPTION_NAME, 'cookiebot_unavailable_addons' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/config/Settings_Config.php:655:		register_setting( 'cookiebot-consent-mapping', 'cookiebot-consent-mapping' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/config/Settings_Config.php:656:		register_setting( 'cookiebot-uc-consent-mapping', 'cookiebot-uc-consent-mapping' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:65:		register_setting( 'cookiebot', 'cookiebot-cbid' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:66:		register_setting( 'cookiebot', 'cookiebot-cbid-override' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:67:		register_setting( 'cookiebot', 'cookiebot-ruleset-id' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:68:		register_setting( 'cookiebot', 'cookiebot-cbid-first-run' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:69:		register_setting( 'cookiebot', 'cookiebot-language' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:70:		register_setting( 'cookiebot', 'cookiebot-front-language' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:71:		register_setting( 'cookiebot', 'cookiebot-nooutput' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:72:		register_setting( 'cookiebot', 'cookiebot-nooutput-admin' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:73:		register_setting( 'cookiebot', 'cookiebot-banner-enabled' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:74:		register_setting( 'cookiebot', 'cookiebot-ignore-scripts' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:75:		register_setting( 'cookiebot', 'cookiebot-autoupdate' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:76:		register_setting( 'cookiebot', 'cookiebot-script-tag-uc-attribute' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:77:		register_setting( 'cookiebot', 'cookiebot-script-tag-cd-attribute' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:78:		register_setting( 'cookiebot', 'cookiebot-cookie-blocking-mode' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:79:		register_setting( 'cookiebot', 'cookiebot-iab' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:80:		register_setting( 'cookiebot', 'cookiebot-tcf-version' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:81:		register_setting( 'cookiebot', 'cookiebot-tcf-purposes' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:82:		register_setting( 'cookiebot', 'cookiebot-tcf-special-purposes' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:83:		register_setting( 'cookiebot', 'cookiebot-tcf-features' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:84:		register_setting( 'cookiebot', 'cookiebot-tcf-special-features' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:85:		register_setting( 'cookiebot', 'cookiebot-tcf-vendors' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:86:		register_setting( 'cookiebot', 'cookiebot-tcf-disallowed' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:87:		register_setting( 'cookiebot', 'cookiebot-tcf-ac-vendors' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:88:		register_setting( 'cookiebot', 'cookiebot-ccpa' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:89:		register_setting( 'cookiebot-legislations', 'cookiebot-ccpa-domain-group-id' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:90:		register_setting( 'cookiebot', 'cookiebot-gtm' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:91:		register_setting( 'cookiebot', 'cookiebot-gtm-id' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:92:		register_setting( 'cookiebot', 'cookiebot-gtm-cookies' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:93:		register_setting( 'cookiebot', 'cookiebot-data-layer' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:94:		register_setting( 'cookiebot', 'cookiebot-gcm' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:95:		register_setting( 'cookiebot', 'cookiebot-gcm-first-run' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:96:		register_setting( 'cookiebot', 'cookiebot-gcm-url-passthrough' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:97:		register_setting( 'cookiebot', 'cookiebot-gcm-cookies' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:98:		register_setting( 'cookiebot', 'cookiebot-multiple-config' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:99:		register_setting( 'cookiebot', 'cookiebot-second-banner-regions' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:100:		register_setting( 'cookiebot', 'cookiebot-second-banner-id' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php:101:		register_setting( 'cookiebot', 'cookiebot-multiple-banners' );
```

### Widgets
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Widgets.php:12:		add_action( 'widgets_init', array( $this, 'register_widgets' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Widgets.php:16:	public function register_widgets() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Widgets.php:17:		register_widget( Cookiebot_Declaration_Widget::class );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/widgets/Cookiebot_Declaration_Widget.php:11:class Cookiebot_Declaration_Widget extends WP_Widget {
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Cookiebot_WP.php:73:		register_activation_hook( CYBOT_COOKIEBOT_PLUGIN_DIR . 'cookiebot.php', array( new Cookiebot_Activated(), 'run' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Cookiebot_WP.php:74:		register_deactivation_hook( CYBOT_COOKIEBOT_PLUGIN_DIR . 'cookiebot.php', array( new Cookiebot_Deactivated(), 'run' ) );
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
None found
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/uninstall.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/helpers.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/vendor/composer/autoload_psr4.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/unit/Test_Cookie_Consent.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/unit/Test_Helper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/unit/Test_Script_Loader_Tag.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/vendor/composer/installed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/unit/Test_Manipulate_Script.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/vendor/composer/autoload_classmap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/vendor/composer/autoload_namespaces.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/vendor/composer/InstalledVersions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/vendor/composer/autoload_static.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/vendor/composer/ClassLoader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/vendor/composer/autoload_real.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/bootstrap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/vendor/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/cli/Test_Cookiebot_CLI_Command.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/exceptions/InvalidClassConstantException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Wp_Google_Analytics_Events.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/gutenberg/Cookiebot_Gutenberg_Declaration_Block.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Wd_Google_Analytics.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Caos_Host_Analyticsjs_Local.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Addthis.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Ga_Google_Analytics.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Gadwp.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Optinmonster.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Pixel_Caffeine.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Ninja_Forms.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Instagram_Feed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Wp_Piwik.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Facebook_For_Woocommerce.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Official_Facebook_Pixel.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/exceptions/addons/InstallationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/WP_Rocket_Helper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Settings_Service.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Cookiebot_Javascript_Helper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Settings_Page_Tab.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Cookiebot_Admin_Links.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Cookie_Consent_Interface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Settings_Service_Interface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Dependency_Container.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Cookiebot_Frame.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Cookiebot_Activated.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Account_Service.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Cookiebot_WP.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Cookiebot_Automatic_Updates.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Supported_Regions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/global-deprecations.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Supported_Languages.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Consent_API_Helper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/helper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Cookiebot_Deactivated.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Widgets.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Cookie_Consent.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Cookiebot_Review.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/exceptions/addons/InvalidAddonClassException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Wp_Analytify.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/script_loader_tag/Script_Loader_Tag.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/script_loader_tag/Script_Loader_Tag_Interface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/buffer/Buffer_Output_Tag_Interface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/traits/Class_Constant_Override_Validator_Trait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/traits/Extra_Information_Trait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/shortcode/Cookiebot_Declaration_Shortcode.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/cli/Cookiebot_CLI_Command.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/shortcode/Cookiebot_Embedding_Shortcode.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/cli/Output_Adapter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/buffer/Buffer_Output.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/cli/WP_CLI_Output_Adapter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Menu_Settings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/Network_Menu_Settings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/notices/cookiebot-recommendation-notice.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/templates/Header.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/templates/Legacy_Settings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/uc_frame/settings-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/uc_frame/dashboard-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/uc_frame/network-settings-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/cb_frame/network-settings-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/pages/Dashboard_Page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/pages/Settings_Page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/uc_frame/settings/additional-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/uc_frame/settings/gcm-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/dashboard-cookiebot.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/uc_frame/settings/gtm-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/pages/General_Page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/uc_frame/settings/embeddings-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/prior-consent/page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/templates/legacy.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/prior-consent/jetpack-widgets/tab-header.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/prior-consent/jetpack-widgets/tab.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/templates/main-tabs.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/prior-consent/available-addons/tab-header.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/prior-consent/partials/placeholder-submitboxes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/prior-consent/available-addons/tab.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/prior-consent/partials/placeholder-submitbox-default.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/prior-consent/partials/info-tab-header.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/prior-consent/other-addons/embed-autocorrect-extra-addon-options.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/prior-consent/partials/extra-information.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/prior-consent/unavailable-addons/tab-header.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/prior-consent/unavailable-addons/field.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/templates/header.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/uc_frame/settings/general-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/pages/Embeddings_Page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/network-settings-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/settings-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/pages/Gcm_Page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/support-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/pages/Multiple_Page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/dashboard-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/pages/Gtm_Page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/templates/extra/subsite-disconnect-alert.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/pages/Additional_Page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/templates/extra/review-form.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/templates/extra/cbid-disconnect-alert.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/pages/Iab_Page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/dashboard-page-session-expired.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/dashboard-trial-expired.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/pages/Settings_Page_Interface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/dashboard-page-static.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/ppg-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/pages/PPG_Page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/pages/Support_Page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/common/dashboard-page-old.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/cb_frame/dashboard-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/cb_frame/settings-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/uc_frame/support-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/templates/Main_Tabs.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/cb_frame/support-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/notices/cookiebot-base-notice.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/notices/cookiebot-bf-notice.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/notices/cookiebot-notice-single-cta.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/notices/cookiebot-recommendation-notice-links.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/cb_frame/settings/iab-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/cb_frame/settings/additional-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/cb_frame/settings/gcm-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/cb_frame/settings/gtm-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/frontend/widgets/cookiebot-declaration-widget.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/cb_frame/settings/general-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/frontend/shortcodes/cookie-declaration.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/uc_frame/prior-consent/consent-api/tab.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/frontend/shortcodes/uc-embed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/cb_frame/prior-consent/consent-api/tab.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/buffer/Buffer_Output_Tag.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/buffer/Buffer_Output_Interface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/widgets/cookiebot-declaration-widget-form.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/frontend/scripts/cb_frame/cookiebot-js.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/frontend/scripts/cb_frame/publisher-restrictions-js.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/cb_frame/settings/multiple-configuration/page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/frontend/scripts/uc_frame/uc-cmp-js.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/frontend/scripts/common/google-tag-manager-js.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/widgets/Cookiebot_Declaration_Widget.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/frontend/scripts/common/google-consent-mode-js.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/widgets/Dashboard_Widget_Cookiebot_Status.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/addons.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Custom_Facebook_Feed_Version_2_17_1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Enhanced_Ecommerce_For_Woocommerce_Store.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/view/admin/cb_frame/settings/multiple-configuration/extra/region-item.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/abilities/Test_Get_Compliance_Summary_Ability.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_CAOS_Host_Analyticsjs_Local_Version_1_97.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Hubspot_Leadin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/abilities/Test_Verify_Setup_Ability.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/abilities/Test_Install_Ppg_Ability.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Jetpack_Widgets.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Google_Analyticator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/Plugin_Controller.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/abilities/Test_Set_Cbid_Ability.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Hubspot_Tracking_Code.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/admin_notices/Cookiebot_Temp_Notice.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/admin_notices/Cookiebot_Base_Notice.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/config/Settings_Config.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/admin_notices/Cookiebot_Recommendation_Notice.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/abilities/Set_Cbid_Ability.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/abilities/Get_Status_Ability.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/abilities/Ability_Audit_Logger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/abilities/Cookiebot_Ability_Interface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/abilities/Verify_Setup_Ability.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/abilities/Toggle_Gcm_Ability.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/abilities/Cookiebot_Abilities_Registrar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/abilities/Get_Compliance_Summary_Ability.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/abilities/Test_Ability_Audit_Logger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Custom_Facebook_Feed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Google_Analytics.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/abilities/Install_Ppg_Ability.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/abilities/Test_Get_Status_Ability.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/abilities/Test_Cookiebot_Abilities_Registrar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Add_To_Any.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/abilities/Test_Toggle_Gcm_Ability.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Simple_Share_Buttons_Adder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Wp_Seopress.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Lightspeed_Cache.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/integration/addons/Test_Google_Site_Kit.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/Base_Cookiebot_Plugin_Addon.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/google_site_kit/Google_Site_Kit.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/gadwp/Gadwp.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/Base_Cookiebot_Other_Addon.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/matomo/Matomo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/woocommerce/WooCommerce.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/wp_google_analytics_events/Wp_Google_Analytics_Events.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/enhanced_ecommerce_for_woocommerce_store/Enhanced_Ecommerce_For_WooCommerce_Store.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/jetpack/widget/Base_Jetpack_Widget.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/hubspot_tracking_code/Hubspot_Tracking_Code.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/jetpack/widget/Twitter_Timeline_Jetpack_Widget.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/jetpack/widget/Goodreads_Jetpack_Widget.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/jetpack/widget/Googleplus_Badge_Jetpack_Widget.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/jetpack/widget/Google_Maps_Jetpack_Widget.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/jetpack/widget/Facebook_Jetpack_Widget.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/jetpack/widget/Visitor_Cookies_Jetpack_Widget.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/caos_host_analyticsjs_local/CAOS_Host_Analyticsjs_Local_Version_4_2_6.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/jetpack/Jetpack.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/caos_host_analyticsjs_local/CAOS_Host_Analyticsjs_Local.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/wp_analytify/Wp_Analytify.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/caos_host_analyticsjs_local/CAOS_Host_Analyticsjs_Local_Version_1_97.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/Base_Cookiebot_Addon.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/ninja_forms/Ninja_Forms.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/woocommerce_google_analytics_pro/Woocommerce_Google_Analytics_Pro.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/wpforms_pro/Wpforms_Pro.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/Base_Cookiebot_Theme_Addon.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/wp_piwik/Wp_Piwik.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/google_analytics_plus/Google_Analytics_Plus.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/simple_share_buttons_adder/Simple_Share_Buttons_Adder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/google_analyticator/Google_Analyticator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/instagram_feed/Instagram_Feed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/litespeed_cache/Litespeed_Cache.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/google_analytics/Google_Analytics.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/enfold/Enfold.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/hubspot_leadin/Hubspot_Leadin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/wpforms/Wpforms.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/pixel_caffeine/Pixel_Caffeine.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/wp_mautic/Wp_Mautic.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/facebook_for_woocommerce/Facebook_For_Woocommerce.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/add_to_any/Add_To_Any.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/optinmonster/Optinmonster.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/wp_seopress/Wp_Seopress.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/wd_google_analytics/Wd_Google_Analytics.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/official_facebook_pixel/Official_Facebook_Pixel.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/ga_google_analytics/Ga_Google_Analytics.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/embed_autocorrect/Embed_Autocorrect.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/custom_facebook_feed_pro/Custom_Facebook_Feed_Pro.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/custom_facebook_feed/Custom_Facebook_Feed_Version_2_17_1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/custom_facebook_feed/Custom_Facebook_Feed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/addthis/Addthis.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/wp_rocket/Wp_Rocket.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **32**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **23**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **0**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **0**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Account_Service.php:20:use function wp_remote_post;
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Account_Service.php:26:use function wp_remote_get;
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Account_Service.php:277:		$response = wp_remote_post(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/lib/Cookiebot_Review.php:166:		wp_remote_post(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/tests/helpers.php:12:		$response = wp_remote_get( $url );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/settings/pages/Iab_Page.php:51:		$json = wp_safe_remote_request( self::IAB_VENDOR_LIST_URL );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cookiebot/src/addons/controller/addons/Base_Cookiebot_Addon.php:343:		$response = wp_remote_get( $url );
```

### File System Operations (first 30 matches)
```
None found
```

### Deserialization (object injection surface)
```
None found
```

