# Attack Surface: cmp-coming-soon-maintenance

> Generated: 2026-06-16T19:03:55Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:98:			add_action('wp_ajax_cmp_get_post_detail', array($this, 'cmp_get_post_detail'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:100:			add_action('wp_ajax_cmp_check_update', array($this, 'cmp_check_update'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:101:			add_action('wp_ajax_cmp_ajax_dismiss_activation_notice', array($this, 'cmp_ajax_dismiss_activation_notice'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:105:			add_action('wp_ajax_cmp_theme_update_install', array($this, 'cmp_theme_update_install'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:106:			add_action('wp_ajax_cmp_toggle_activation', array($this, 'cmp_ajax_toggle_activation'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:109:			add_action('wp_ajax_cmp_mailchimp_list_ajax', array($this, 'cmp_mailchimp_list_ajax'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:110:			add_action('wp_ajax_cmp_ajax_upload_font', array($this, 'cmp_ajax_upload_font'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:111:			add_action('wp_ajax_cmp_ajax_export_settings', array($this, 'cmp_ajax_export_settings'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:112:			add_action('wp_ajax_cmp_ajax_import_settings', array($this, 'cmp_ajax_import_settings'));
```

### WordPress AJAX Handlers (unauthenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:99:			add_action('wp_ajax_nopriv_cmp_get_post_detail', array($this, 'cmp_get_post_detail'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:107:			add_action('wp_ajax_nopriv_niteo_subscribe', array($this, 'niteo_subscribe'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:113:			add_action('wp_ajax_nopriv_cmp_disable_comingsoon_ajax', array($this, 'cmp_disable_comingsoon_ajax'));
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:655:			$page = add_menu_page(__('CMP Settings', 'cmp-coming-soon-maintenance'), __('CMP Settings', 'cmp-coming-soon-maintenance'), 'manage_options', 'cmp-settings', array($this, 'cmp_settings_page'), plugins_url('/img/cmp.png', __FILE__));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:656:			add_submenu_page('cmp-settings', __('CMP Basic Setup', 'cmp-coming-soon-maintenance'), __('CMP Basic Setup', 'cmp-coming-soon-maintenance'), 'manage_options', 'cmp-settings');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:657:			add_submenu_page('cmp-settings', __('CMP Advanced Setup', 'cmp-coming-soon-maintenance'), __('CMP Advanced Setup', 'cmp-coming-soon-maintenance'), 'manage_options', 'cmp-advanced', array($this, 'cmp_advanced_page'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:658:			add_submenu_page('cmp-settings', __('CMP Subscribers', 'cmp-coming-soon-maintenance'), __('CMP Subscribers', 'cmp-coming-soon-maintenance'), 'manage_options', 'cmp-subscribers', array($this, 'cmp_subs_page'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:659:			add_submenu_page('cmp-settings', __('CMP Translation', 'cmp-coming-soon-maintenance'), __('CMP Translation', 'cmp-coming-soon-maintenance'), 'manage_options', 'cmp-translate', array($this, 'cmp_translate_page'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:660:			add_submenu_page('cmp-settings', __('Upload CMP Theme', 'cmp-coming-soon-maintenance'), __('Upload CMP Theme', 'cmp-coming-soon-maintenance'), 'manage_options', 'cmp-upload-theme', array($this, 'cmp_upload_page'));
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:1354:			if (!function_exists('wp_handle_upload')) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:1365:				$movefile = wp_handle_upload($uploadedfile, array('test_form' => FALSE));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:1398:					 * Error generated by _wp_handle_upload()
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:1399:					 * @see _wp_handle_upload() in wp-admin/includes/file.php
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
None found
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:120:			register_activation_hook(__FILE__, array($this, 'cmp_activate'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:121:			register_deactivation_hook(__FILE__, array($this, 'cmp_deactivate'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:3305:register_uninstall_hook(__FILE__, 'cmp_plugin_delete');
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
None found
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/cmp-sidebar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/cmp-activation-notice.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/webfonts.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/class-cmp-feedback.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/render/logo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/render/contact-form.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/render/niteothemes-info.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/render/javascripts.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/render/graphic-slider.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/render/enqueue-styles.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/render/graphic-overlay.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/render/head-scripts.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/render/fonts.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/render/progress-bar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/settings/settings-counter-disabled.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/render/social-icons.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/render/title.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/render/content.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/settings/settings-footer-disabled.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/render/custom-css-popup_form.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/themes/hardwork/hardwork-theme.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/render/subscribe-form.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/render/footer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/render/seo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/render/custom-css.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/render/graphic-background.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/themes/construct/construct-theme.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/render/copyright.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/settings/settings-footer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/themes/countdown/countdown-theme.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/render/counter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/render/text-overlay.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/render/subscribe-form-cmp.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **26**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **27**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **3**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **0**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:1275:				$request = wp_remote_post(CMP_UPDATE_URL . '?action=get_metadata&slug=' . $theme_slug, array('body' => array('action' => 'version')));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:1561:			if (function_exists('wp_remote_get')) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:1563:				$response = wp_remote_get($api_url);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:1725:			$response = wp_remote_post(esc_url_raw('https://www.google.com/recaptcha/api/siteverify'), $request);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:1837:							$mailchimp = wp_remote_post('https://' . substr($api_key, strpos($api_key, '-') + 1) . '.api.mailchimp.com/3.0/lists/' . $list_id . '/members/' . md5(strtolower($email)), $args);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:2579:				$response = wp_remote_get('https://' . $dc . '.api.mailchimp.com/3.0/lists/', $args);
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:1375:					if (wp_mkdir_p($destination_path)) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:1466:				//WARNING: The file is not automatically deleted, The script must unlink() the file.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:1501:					if (wp_mkdir_p(CMP_PREMIUM_THEMES_DIR)) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/niteo-cmp.php:3081:				fwrite($fp, $settings);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/cmp-update-process.php:357:					unlink($file);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/cmp-update-process.php:360:						array_map('unlink', glob("$file/*.*"));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cmp-coming-soon-maintenance/cmp-coming-soon-maintenance/inc/cmp-update-process.php:361:						rmdir($file);
```

### Deserialization (object injection surface)
```
None found
```

