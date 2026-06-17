# Attack Surface: disable-comments

> Generated: 2026-06-16T19:03:57Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/includes/class-plugin-usage-tracker.php:169:			add_action( 'wp_ajax_deactivation_form_' . esc_attr( $this->plugin_name ), array( $this, 'deactivate_reasons_form_submit' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/disable-comments.php:49:		add_action('wp_ajax_disable_comments_save_settings', array($this, 'disable_comments_settings'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/disable-comments.php:50:		add_action('wp_ajax_disable_comments_delete_comments', array($this, 'delete_comments_settings'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/disable-comments.php:51:		add_action('wp_ajax_get_sub_sites', array($this, 'get_sub_sites'));
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/disable-comments.php:1048:			add_submenu_page('settings.php', $title, $title, 'manage_network_plugins', DC_PLUGIN_SLUG, array($this, 'settings_page'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/disable-comments.php:1050:			add_submenu_page('options-general.php', $title, $title, 'manage_options', DC_PLUGIN_SLUG, array($this, 'settings_page'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/disable-comments.php:1058:			$hook = add_submenu_page('settings.php', $title, $title, 'manage_network_plugins', 'disable_comments_tools', array($this, 'tools_page'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/disable-comments.php:1060:			$hook = add_submenu_page('tools.php', $title, $title, 'manage_options', 'disable_comments_tools', array($this, 'tools_page'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/disable-comments.php:1168:		// Belt-and-suspenders: add_submenu_page already gates on capability,
```

### Shortcodes
```
None found
```

### Cron Jobs
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/includes/class-plugin-usage-tracker.php:105:				wp_schedule_event( time(), $this->recurrence, $this->event_hook );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/disable-comments.php:1011:		unregister_widget('WP_Widget_Recent_Comments');
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/disable-comments.php:453:					register_deactivation_hook(__FILE__, array($this, 'single_site_deactivate'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/includes/class-plugin-usage-tracker.php:90:			register_activation_hook( $this->plugin_file, array( $this, 'activate_this_plugin' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/includes/class-plugin-usage-tracker.php:94:			register_deactivation_hook( $this->plugin_file, array( $this, 'deactivate_this_plugin' ) );
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/disable-comments.php:384:			add_filter('xmlrpc_methods', array($this, 'disable_xmlrc_comments'));
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/includes/cli.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/views/comments.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/views/settings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/views/partials/_menu.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/views/partials/_sites.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/views/partials/_footer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/views/partials/_sidebar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/views/partials/_disable.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/views/partials/_delete.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **12**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **5**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **23**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **16**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/includes/class-plugin-usage-tracker.php:473:					$country_request = wp_remote_get( 'http://ip-api.com/json/'. sanitize_text_field(wp_unslash($_SERVER['REMOTE_ADDR'])) .'?fields=country');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/disable-comments/includes/class-plugin-usage-tracker.php:575:			$request = wp_remote_post( esc_url( self::API_URL ), $args );
```

### File System Operations (first 30 matches)
```
None found
```

### Deserialization (object injection surface)
```
None found
```

