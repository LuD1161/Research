# Attack Surface: easy-fancybox

> Generated: 2026-06-16T19:03:58Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/class-easyfancybox-admin.php:73:		add_action( 'wp_ajax_efb-review-action', array( __CLASS__, 'process_efb_review_action' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/class-easyfancybox-admin.php:76:		add_action( 'wp_ajax_efb-optin-action', array( __CLASS__, 'process_efb_optin_action' ) );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/class-easyfancybox-admin.php:68:		add_action( 'admin_menu', array( __CLASS__, 'add_options_page' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/class-easyfancybox-admin.php:160:	public static function add_options_page() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/class-easyfancybox-admin.php:161:		add_menu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/class-easyfancybox-admin.php:171:			add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/class-easyfancybox-admin.php:178:			add_submenu_page(
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
None found
```

### Block render_callback (server-rendered blocks)
```
None found
```

### Settings API / Meta Box save handlers
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/class-easyfancybox-admin.php:65:		add_action( 'admin_init', array( __CLASS__, 'register_settings' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/class-easyfancybox-admin.php:377:	public static function register_settings() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/class-easyfancybox-admin.php:379:		register_setting(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/class-easyfancybox-admin.php:392:		self::register_settings_recursively( $efb_options );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/class-easyfancybox-admin.php:401:	public static function register_settings_recursively( $settings ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/class-easyfancybox-admin.php:413:				register_setting(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/class-easyfancybox-admin.php:427:				self::register_settings_recursively( $setting['options'] );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/build/index.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/uninstall.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/class-easyfancybox.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/fancybox-2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/views/settings-section-intro.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/fancybox-options.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/class-easyfancybox-admin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/views/pro-landing-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/views/admin-notice.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/views/settings-field-version.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/views/pro-landing-page-short.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/fancybox-legacy.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/translation-strings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/fancybox-classic.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **4**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **2**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **1**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **0**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/class-easyfancybox-admin.php:1058:			$response = wp_remote_post( $url, array( 'method' => 'GET' ) );
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/fancybox-classic.php:81:				// First wrap unlinked image blocks depending on settings
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/fancybox-classic.php:85:						var unlinkedImageBlocks=jQuery(".wp-block-image > img:not(.nofancybox,figure.nofancybox>img)");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/fancybox-classic.php:86:						unlinkedImageBlocks.wrap(function() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/fancybox-2.php:138:				// First wrap unlinked image blocks depending on settings
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/fancybox-2.php:142:						var unlinkedImageBlocks=jQuery(".wp-block-image > img:not(.nofancybox,figure.nofancybox>img)");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/fancybox-2.php:143:						unlinkedImageBlocks.wrap(function() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/fancybox-legacy.php:81:				// First wrap unlinked image blocks depending on settings
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/fancybox-legacy.php:85:						var unlinkedImageBlocks=jQuery(".wp-block-image > img:not(.nofancybox,figure.nofancybox>img)");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/easy-fancybox/inc/fancybox-legacy.php:86:						unlinkedImageBlocks.wrap(function() {
```

### Deserialization (object injection surface)
```
None found
```

