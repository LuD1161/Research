# Attack Surface: creame-whatsapp-me

> Generated: 2026-06-16T19:03:56Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/includes/class-joinchat.php:207:		$this->loader->add_action( 'wp_ajax_joinchat_notice_dismiss', $plugin_admin, 'ajax_notice_dismiss' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/includes/class-joinchat.php:233:		$this->loader->add_action( 'wp_ajax_joinchat_onboard', $plugin_onboard, 'save' );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/includes/class-joinchat.php:148:		$this->loader->add_action( 'rest_api_init', $plugin_tracking, 'register_rest_routes' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/includes/class-joinchat-tracking.php:63:	public function register_rest_routes() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/includes/class-joinchat-tracking.php:65:		register_rest_route(
```

### REST permission_callback => __return_true (public REST)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/includes/class-joinchat-abilities.php:120:				'permission_callback' => '__return_true',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/includes/class-joinchat-tracking.php:71:				'permission_callback' => '__return_true',
```

### Admin Pages / Menu Items
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/admin/class-joinchat-admin-onboard.php:32:			$page_hook = add_options_page( $title, $title, Joinchat_Util::capability(), 'joinchat-onboard', array( $this, 'options_page' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/admin/class-joinchat-admin-onboard.php:34:			$page_hook = add_submenu_page( JOINCHAT_SLUG, $title, $title, Joinchat_Util::capability(), 'joinchat-onboard', array( $this, 'options_page' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/admin/class-joinchat-admin-page.php:43:			$page_hook = add_options_page( $title, $title . $icon, Joinchat_Util::capability(), JOINCHAT_SLUG, array( $this, 'options_page' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/admin/class-joinchat-admin-page.php:47:			$page_hook = add_menu_page( $title, $title, Joinchat_Util::capability(), JOINCHAT_SLUG, array( $this, 'options_page' ), $icon, 81 );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/gutenberg/class-joinchat-gutenberg.php:73:		register_block_type(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/gutenberg/class-joinchat-gutenberg.php:77:				'render_callback' => array( $this, 'render_button' ),
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/includes/class-joinchat-util.php:457:		return function_exists( 'register_block_type' ) && is_wp_version_compatible( '5.9' );
```

### Settings API / Meta Box save handlers
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/admin/class-joinchat-admin.php:36:	public function register_setting() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/admin/class-joinchat-admin.php:47:		register_setting( JOINCHAT_SLUG, JOINCHAT_SLUG, $args );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/admin/class-joinchat-admin.php:333:	public function add_meta_boxes() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/admin/class-joinchat-admin.php:339:			add_meta_box(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/admin/class-joinchat-admin.php:354:	 * @since    1.1.0     (previously named "add_meta_box")
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/includes/class-joinchat.php:203:		$this->loader->add_action( 'admin_init', $plugin_admin, 'register_setting' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/includes/class-joinchat.php:210:		$this->loader->add_action( 'add_meta_boxes', $plugin_admin, 'add_meta_boxes' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/includes/class-joinchat.php:211:		$this->loader->add_action( 'save_post', $plugin_admin, 'save_meta', 10, 2 );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/admin/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/uninstall.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/gutenberg/build/index.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/public/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/includes/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/languages/creame-whatsapp-me-it_IT.l10n.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **4**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **4**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **1**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **0**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/admin/class-joinchat-admin-onboard.php:243:			$response = wp_remote_post(
```

### File System Operations (first 30 matches)
```
None found
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/creame-whatsapp-me/creame-whatsapp-me/gutenberg/class-joinchat-gutenberg.php:244:		if ( '_joinchat' === $meta_key && empty( maybe_unserialize( $meta_value ) ) ) {
```

