# Attack Surface: breadcrumb-navxt

> Generated: 2026-06-16T19:03:54Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/includes/adminKit/class-mtekk_adminkit.php:267:		add_action('wp_ajax_mtekk_admin_message_dismiss', array($this, 'dismiss_message'));
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/class.bcn_rest_controller.php:55:	 * A quick wrapper for register_rest_route to add our inclusion filter
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/class.bcn_rest_controller.php:65:	protected function register_rest_route($endpoint, $namespace, $route, $args = array(), $override = false)
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/class.bcn_rest_controller.php:69:			return register_rest_route($namespace, $route, $args, $override);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/class.bcn_rest_controller.php:75:		$this->register_rest_route('post', $this->unique_prefix . '/v' . $this::version, '/post/(?P<id>[\d]+)', array(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/class.bcn_rest_controller.php:89:		$this->register_rest_route('term', $this->unique_prefix . '/v' . $this::version, '/term/(?P<taxonomy>[\w-]+)/(?P<id>[\d]+)', array(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/class.bcn_rest_controller.php:109:		$this->register_rest_route('author', $this->unique_prefix . '/v' . $this::version, '/author/(?P<id>\d+)', array(
```

### REST permission_callback => __return_true (public REST)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/class.bcn_rest_controller.php:106:			'permission_callback' => '__return_true'
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/class.bcn_rest_controller.php:120:			'permission_callback' => '__return_true'
```

### Admin Pages / Menu Items
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/class.bcn_network_admin.php:85:		$hookname = add_submenu_page('settings.php', $this->full_name, $this->short_name, $this->access_level, $this->identifier, array($this, 'admin_page'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/includes/adminKit/class-mtekk_adminkit.php:276:		$hookname = add_submenu_page('options-general.php', $this->full_name, $this->short_name, $this->access_level, $this->identifier, array($this, 'admin_page'));
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/breadcrumb-navxt.php:146:		if(function_exists('register_block_type'))
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/breadcrumb-navxt.php:148:			register_block_type( dirname(__FILE__) . '/includes/blocks/build/breadcrumb-trail');
```

### Settings API / Meta Box save handlers
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/includes/adminKit/class-mtekk_adminkit.php:264:		register_setting($this->unique_prefix . '_options', $this->unique_prefix . '_options', '');
```

### Widgets
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/class.bcn_widget.php:20:class bcn_widget extends WP_Widget
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/breadcrumb-navxt.php:89:		add_action('widgets_init', array($this, 'register_widget'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/breadcrumb-navxt.php:137:	public function register_widget()
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/breadcrumb-navxt.php:139:		return register_widget($this->unique_prefix . '_widget');
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/options_upgrade.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/uninstall.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/class.bcn_admin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/class.bcn_breadcrumb_trail.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/class.bcn_widget.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/class.bcn_rest_controller.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/class.bcn_network_admin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/class.bcn_breadcrumb.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/includes/multibyte_supplicant.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/breadcrumb-navxt.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/includes/adminKit/class-mtekk_adminkit_form.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/includes/adminKit/class-mtekk_adminkit_message.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/includes/adminKit/class-mtekk_adminkit.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/includes/adminKit/class-mtekk_adminkit_uninstaller.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/includes/blocks/build/breadcrumb-trail/render.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/includes/adminKit/setting/class-mtekk_adminkit_setting_base.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/includes/adminKit/setting/class-mtekk_adminkit_setting_absint.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/includes/adminKit/setting/class-mtekk_adminkit_setting_enum.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/includes/adminKit/setting/class-mtekk_adminkit_setting_bool.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/includes/adminKit/setting/class-mtekk_adminkit_setting_float.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/includes/adminKit/setting/php7/class-mtekk_adminkit_setting_bool.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/includes/adminKit/setting/php7/class-mtekk_adminkit_setting_base.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/includes/adminKit/setting/php7/class-mtekk_adminkit_setting_float.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/includes/adminKit/setting/php7/class-mtekk_adminkit_setting_int.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/includes/adminKit/setting/class-mtekk_adminkit_setting_string.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/includes/adminKit/setting/class-mtekk_adminkit_setting_int.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/includes/adminKit/setting/class-mtekk_adminkit_setting_html.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/includes/adminKit/setting/interface-mtekk_adminkit_setting.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/includes/blocks/build/breadcrumb-trail/index.asset.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **6**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **11**

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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/class.bcn_breadcrumb.php:47:	 * @param bool $linked (optional) Whether or not the breadcrumb uses the linked or unlinked template
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/breadcrumb-navxt/class.bcn_breadcrumb.php:131:	 * @param bool $linked whether or not the breadcrumb uses the linked or unlinked template
```

### Deserialization (object injection surface)
```
None found
```

