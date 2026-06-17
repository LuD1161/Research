# Attack Surface: astra-widgets

> Generated: 2026-06-16T19:03:52Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/astra-widgets/lib/astra-notices/class-astra-notices.php:72:			add_action( 'wp_ajax_astra-notice-dismiss', array( $this, 'dismiss_notice' ) );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/astra-widgets/admin/bsf-analytics/class-bsf-analytics.php:356:				register_setting(
```

### Widgets
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/astra-widgets/classes/class-astra-widgets-loader.php:59:			register_widget( 'Astra_Widget_Address' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/astra-widgets/classes/class-astra-widgets-loader.php:60:			register_widget( 'Astra_Widget_List_Icons' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/astra-widgets/classes/class-astra-widgets-loader.php:61:			register_widget( 'Astra_Widget_Social_Profiles' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/astra-widgets/classes/widgets/class-astra-widget-address.php:16:	class Astra_Widget_Address extends WP_Widget {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/astra-widgets/classes/widgets/class-astra-widget-list-icons.php:16:	class Astra_Widget_List_Icons extends WP_Widget {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/astra-widgets/classes/widgets/class-astra-widget-social-profiles.php:16:	class Astra_Widget_Social_Profiles extends WP_Widget {
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/astra-widgets/classes/class-astra-widgets-loader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/astra-widgets/classes/class-astra-widgets.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/astra-widgets/classes/class-astra-widgets-helper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/astra-widgets/classes/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/astra-widgets/classes/widgets/class-astra-widget-list-icons.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/astra-widgets/classes/widgets/class-astra-widget-address.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/astra-widgets/classes/widgets/class-astra-widget-social-profiles.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **4**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **2**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **0**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **0**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/astra-widgets/admin/bsf-analytics/class-bsf-analytics.php:134:			wp_remote_post(
```

### File System Operations (first 30 matches)
```
None found
```

### Deserialization (object injection surface)
```
None found
```

