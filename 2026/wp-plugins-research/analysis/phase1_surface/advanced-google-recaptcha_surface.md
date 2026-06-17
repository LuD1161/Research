# Attack Surface: advanced-google-recaptcha

> Generated: 2026-06-16T19:03:51Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/advanced-google-recaptcha.php:111:            add_action('wp_ajax_wpcaptcha_run_tool', array('WPCaptcha_AJAX', 'ajax_run_tool'));
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/libs/admin.php:155:    add_options_page(
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/advanced-google-recaptcha.php:100:            add_action('admin_init', array('WPCaptcha_Setup', 'register_settings'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/libs/setup.php:169:    static function register_settings()
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/libs/setup.php:171:        register_setting(WPCAPTCHA_OPTIONS_KEY, WPCAPTCHA_OPTIONS_KEY, array(__CLASS__, 'sanitize_settings'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/libs/setup.php:172:    } // register_settings
```

### Widgets
```
None found
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/advanced-google-recaptcha.php:236:register_activation_hook(__FILE__, array('WPCaptcha_Setup', 'activate'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/advanced-google-recaptcha.php:237:register_deactivation_hook(__FILE__, array('WPCaptcha_Setup', 'deactivate'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/advanced-google-recaptcha.php:238:register_uninstall_hook(__FILE__, array('WPCaptcha_Setup', 'uninstall'));
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
None found
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/interface/tab_design.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/interface/tab_captcha.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/interface/tab_firewall.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/interface/tab_activity.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/interface/tab_temp_access.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/interface/tab_geoip.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/interface/tab_login_form.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/wf-flyout/config.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/libs/functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/wf-flyout/wf-flyout.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/libs/ajax.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/libs/setup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/libs/stats.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/libs/utility.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/libs/admin.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **5**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **6**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **14**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **6**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/libs/functions.php:297:                $response = wp_remote_get('https://www.google.com/recaptcha/api/siteverify?secret=' . $secret . '&response=' . sanitize_text_field(wp_unslash($_POST['g-recaptcha-response']))); // phpcs:ignore
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/libs/functions.php:314:                $response = wp_remote_get('https://www.google.com/recaptcha/api/siteverify?secret=' . $secret . '&response=' . sanitize_text_field(wp_unslash($_POST['g-recaptcha-response']))); // phpcs:ignore
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/libs/setup.php:573:        $response = wp_remote_get($htaccess_test_url . 'index.html', array('sslverify' => false, 'redirection' => 0));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/libs/ajax.php:173:                $response = wp_remote_get('https://www.google.com/recaptcha/api/siteverify?secret=' . $secret_key . '&response=' . $response);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/libs/ajax.php:186:                $response = wp_remote_get('https://www.google.com/recaptcha/api/siteverify?secret=' . $secret_key . '&response=' . $response);
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/libs/setup.php:559:            if (true !== self::$wp_filesystem->mkdir($htaccess_test_folder, 0777)) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/advanced-google-recaptcha/libs/setup.php:579:        self::$wp_filesystem->rmdir($htaccess_test_folder);
```

### Deserialization (object injection surface)
```
None found
```

