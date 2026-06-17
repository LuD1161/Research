# Attack Surface: classic-editor

> Generated: 2026-06-16T19:03:54Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
None found
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/classic-editor/classic-editor.php:189:		remove_action( 'rest_api_init', 'gutenberg_register_rest_routes' );
```

### REST permission_callback => __return_true (public REST)
```
None found
```

### Admin Pages / Menu Items
```
None found
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/classic-editor/classic-editor.php:59:			add_action( 'admin_init', array( __CLASS__, 'register_settings' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/classic-editor/classic-editor.php:124:			add_action( 'add_meta_boxes', array( __CLASS__, 'add_meta_box' ), 10, 2 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/classic-editor/classic-editor.php:360:	public static function register_settings() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/classic-editor/classic-editor.php:362:		register_setting( 'writing', 'classic-editor-replace', array(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/classic-editor/classic-editor.php:366:		register_setting( 'writing', 'classic-editor-allow-users', array(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/classic-editor/classic-editor.php:670:	public static function add_meta_box( $post_type, $post ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/classic-editor/classic-editor.php:685:		add_meta_box( $id, $title, $callback, null, 'side', 'default', $args );
```

### Widgets
```
None found
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/classic-editor/classic-editor.php:45:		register_activation_hook( __FILE__, array( __CLASS__, 'activate' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/classic-editor/classic-editor.php:972:		register_uninstall_hook( __FILE__, array( __CLASS__, 'uninstall' ) );
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
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **2**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **0**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **0**

### External HTTP Requests
```
None found
```

### File System Operations (first 30 matches)
```
None found
```

### Deserialization (object injection surface)
```
None found
```

