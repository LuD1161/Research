# Attack Surface: custom-css-js

> Generated: 2026-06-16T19:03:56Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-css-js/includes/admin-notices.php:36:        add_action( 'wp_ajax_'.$p.'_notice_dismiss', array( $this, 'notice_dismiss' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-css-js/includes/admin-warnings.php:23:        add_action( 'wp_ajax_ccj_dismiss', array( $this, 'notice_dismiss' ) );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-css-js/includes/admin-config.php:58:        add_submenu_page( $menu_slug, __('Settings', 'custom-css-js'), __('Settings', 'custom-css-js'), 'manage_options', 'custom-css-js-config', array( $this, 'config_page' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-css-js/includes/admin-screens.php:103:		add_submenu_page( $menu_slug, $title, $title, 'publish_custom_csss', $submenu_slug . '&#038;language=css' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-css-js/includes/admin-screens.php:106:		add_submenu_page( $menu_slug, $title, $title, 'publish_custom_csss', $submenu_slug . '&#038;language=js' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-css-js/includes/admin-screens.php:109:		add_submenu_page( $menu_slug, $title, $title, 'publish_custom_csss', $submenu_slug . '&#038;language=html' );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-css-js/includes/admin-addons.php:23:            'add_meta_boxes' => 'add_meta_boxes',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-css-js/includes/admin-addons.php:52:    function add_meta_boxes() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-css-js/includes/admin-addons.php:54:        add_meta_box( 'previewdiv', __('Preview', 'custom-css-js'), array( $this, 'previews_meta_box_callback' ), 'custom-css-js', 'normal' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-css-js/includes/admin-addons.php:55:        add_meta_box( 'url-rules', __('Apply only on these URLs', 'custom-css-js'), array( $this, 'url_rules_meta_box_callback' ), 'custom-css-js', 'normal' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-css-js/includes/admin-addons.php:56:        add_meta_box( 'revisionsdiv', __('Code Revisions', 'custom-css-js'), array( $this, 'revisions_meta_box_callback' ), 'custom-css-js', 'normal' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-css-js/includes/admin-screens.php:59:			'add_meta_boxes'             => 'add_meta_boxes',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-css-js/includes/admin-screens.php:283:	public function add_meta_boxes() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-css-js/includes/admin-screens.php:284:		add_meta_box( 'custom-code-options', __( 'Options', 'custom-css-js' ), array( $this, 'custom_code_options_meta_box_callback' ), 'custom-css-js', 'side', 'low' );
```

### Widgets
```
None found
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-css-js/custom-css-js.php:73:			register_activation_hook( __FILE__, array( 'CustomCSSandJS_Install', 'install' ) );
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
- `current_user_can` calls: **3**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **6**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **1**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **1**

### External HTTP Requests
```
None found
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-css-js/includes/admin-screens.php:1320:			@file_put_contents( CCJ_UPLOAD_DIR . '/' . $file_name, $file_content );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-css-js/includes/admin-screens.php:1325:				@file_put_contents( CCJ_UPLOAD_DIR . '/' . sanitize_file_name( $slug ) . '.' . $options['language'], $file_content );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-css-js/includes/admin-screens.php:1351:			wp_mkdir_p( $dir );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-css-js/includes/admin-screens.php:1365:			 <p><?php _e( 'Please run the following commands in order to make the directory', 'custom-css-js' ); ?>: <br /><strong>mkdir <?php echo $dir; ?>; </strong><br /><strong>chmod 777 <?php echo $dir; ?>;</strong></p>
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-css-js/includes/admin-screens.php:1391:			@file_put_contents( $dir . '/index.php', $content );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-css-js/includes/admin-screens.php:1448:			@file_put_contents( CCJ_UPLOAD_DIR . '/block_js.js', $block_js );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-css-js/includes/admin-screens.php:1449:			@file_put_contents( CCJ_UPLOAD_DIR . '/block_css.css', $block_css );
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-css-js/includes/admin-screens.php:309:		$options                   = @unserialize( $options['options'][0] );
```

