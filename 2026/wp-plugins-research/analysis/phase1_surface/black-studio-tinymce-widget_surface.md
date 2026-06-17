# Attack Surface: black-studio-tinymce-widget

> Generated: 2026-06-16T19:03:53Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/black-studio-tinymce-widget/includes/class-admin.php:134:				add_action( 'wp_ajax_bstw_visual_editor_disabled_dismiss_notice', array( $this, 'visual_editor_disabled_dismiss_notice' ) );
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
None found
```

### Widgets
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/black-studio-tinymce-widget/black-studio-tinymce-widget.php:222:		 * @uses register_widget()
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/black-studio-tinymce-widget/black-studio-tinymce-widget.php:231:			register_widget( 'WP_Widget_Black_Studio_TinyMCE' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/black-studio-tinymce-widget/includes/class-compatibility-plugins.php:531:				add_action( 'widgets_init', array( $this, 'elementor_unregister_widget' ), 20 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/black-studio-tinymce-widget/includes/class-compatibility-plugins.php:538:		 * @uses unregister_widget()
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/black-studio-tinymce-widget/includes/class-compatibility-plugins.php:543:		public function elementor_unregister_widget() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/black-studio-tinymce-widget/includes/class-compatibility-plugins.php:544:			unregister_widget( 'WP_Widget_Black_Studio_TinyMCE' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/black-studio-tinymce-widget/includes/class-widget.php:17:	class WP_Widget_Black_Studio_TinyMCE extends WP_Widget {
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
None (all PHP files guarded)
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **2**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **0**

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

