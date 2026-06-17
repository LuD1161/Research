# Attack Surface: admin-site-enhancements

> Generated: 2026-06-16T19:03:51Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-disable-user-account.php:49:		add_action( 'wp_ajax_asenha_user_account_toggle_disabled', array( $this, 'ajax_toggle_disabled' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:61:        add_action( 'wp_ajax_have_supported', 'asenha_have_supported' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:63:        add_action( 'wp_ajax_dismiss_upgrade_nudge', 'asenha_dismiss_upgrade_nudge' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:65:        add_action( 'wp_ajax_dismiss_promo_nudge', 'asenha_dismiss_promo_nudge' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:67:        add_action( 'wp_ajax_dismiss_support_nudge', 'asenha_dismiss_support_nudge' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:69:        add_action( 'wp_ajax_asenha_release_login_lock', 'asenha_release_login_lock' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:114:                add_action( 'wp_ajax_save_custom_order', [$content_order, 'save_custom_content_order'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:229:            add_action( 'wp_ajax_svg_get_attachment_url', [$svg_upload, 'get_svg_attachment_url'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:374:            // add_action( 'wp_ajax_save_custom_menu_order', [ $admin_menu_organizer, 'save_custom_menu_order' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:375:            // add_action( 'wp_ajax_save_hidden_menu_items', [ $admin_menu_organizer, 'save_hidden_menu_items' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:389:            add_action( 'wp_ajax_save_admin_menu', [$admin_menu_organizer, 'save_admin_menu'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:1055:            add_action( 'wp_ajax_send_test_email', [$email_delivery, 'send_test_email'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:1097:            add_action( 'wp_ajax_asenha_dismiss_view_admin_as_recovery_notice', [$view_admin_as_role, 'dismiss_recovery_url_refreshed_notice'] );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-disable-gutenberg.php:93:        remove_action( 'rest_api_init', 'gutenberg_register_rest_routes' );
```

### REST permission_callback => __return_true (public REST)
```
None found
```

### Admin Pages / Menu Items
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-admin-menu-svg-icon-mask.php:26:	 * Registered SVG data URIs keyed by top-level menu slug (from add_menu_page()).
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-admin-menu-svg-icon-mask.php:80:	 * Register an SVG icon for a top-level menu entry created by add_menu_page().
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-admin-menu-svg-icon-mask.php:84:	 * @param string $menu_slug Menu slug passed to add_menu_page().
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-content-order.php:54:                                $hook_suffix = add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-content-order.php:56:                                    // Parent (menu) slug. Ref: https://developer.wordpress.org/reference/functions/add_submenu_page/#comment-1404
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-content-order.php:71:                                $hook_suffix = add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-content-order.php:73:                                    // Parent (menu) slug. Ref: https://developer.wordpress.org/reference/functions/add_submenu_page/#comment-1404
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-content-order.php:74:                                    //                                 'learndash-lms', // Parent (menu) slug. Ref: https://developer.wordpress.org/reference/functions/add_submenu_page/#comment-1404
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-content-order.php:88:                                $hook_suffix = add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-content-order.php:90:                                    // Parent (menu) slug. Ref: https://developer.wordpress.org/reference/functions/add_submenu_page/#comment-1404
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-admin-menu-organizer.php:53:        add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-admin-menu-organizer.php:434:            add_menu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-admin-menu-organizer.php:445:            add_menu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/settings.php:236:    add_submenu_page(
```

### Shortcodes
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:981:            add_shortcode( 'obfuscate', [$email_address_obfuscator, 'obfuscate_string'] );
```

### Cron Jobs
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-limit-login-attempts.php:538:            wp_schedule_event( time(), 'hourly', 'asenha_failed_login_attempts_log_cleanup_by_amount' );
```

### File Upload Handlers
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-image-upload-control.php:267:     * @hook wp_handle_upload_prefilter
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-image-upload-control.php:292:     * @hook wp_handle_upload
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:199:            add_filter( 'wp_handle_sideload_prefilter', [$svg_upload, 'sanitize_and_maybe_allow_svg_upload'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:200:            add_filter( 'wp_handle_upload_prefilter', [$svg_upload, 'sanitize_and_maybe_allow_svg_upload'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:1006:                    'wp_handle_upload_prefilter',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:1012:                    'wp_handle_upload',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:1019:            add_filter( 'wp_handle_upload', [$image_upload_control, 'image_upload_handler'] );
```

### Block render_callback (server-rendered blocks)
```
None found
```

### Settings API / Meta Box save handlers
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-external-permalinks.php:63:        add_meta_box(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-image-sizes-panel.php:20:            add_meta_box(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-custom-body-class.php:33:                add_meta_box(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-custom-body-class.php:40:                    // array(), // $args to pass to callback function. Ref: https://developer.wordpress.org/reference/functions/add_meta_box/#comment-342
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-login-logout-menu.php:18:        add_meta_box(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-settings-sections-fields.php:34:        register_setting( 
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:262:                    'add_meta_boxes',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:267:                add_action( 'save_post', [$external_permalinks, 'save_external_permalink'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:649:                    'add_meta_boxes',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:654:                add_action( 'save_post', [$custom_body_class, 'save_custom_body_class'], 99 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:1078:            add_action( 'add_meta_boxes', array($image_sizes_panel, 'add_image_sizes_meta_box') );
```

### Widgets
```
None found
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/admin-site-enhancements.php:104:register_activation_hook( __FILE__, 'asenha_on_activation');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/admin-site-enhancements.php:107:register_deactivation_hook( __FILE__, 'asenha_on_deactivation' );
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-disable-xml-rpc.php:27:    public function remove_xmlrpc_methods( $methods ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:725:                add_filter( 'xmlrpc_methods', [$disable_comments, 'disable_xmlrpc_comments'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php:991:            add_filter( 'xmlrpc_methods', [$disable_xml_rpc, 'remove_xmlrpc_methods'] );
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-activation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-disable-embeds.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-svg-upload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/vendor/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-insert-head-body-footer-code.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-disable-dashboard-widgets.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-show-custom-taxonomy-filters.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-heartbeat-control.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-wp-config-transformer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/vendor/composer/autoload_classmap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/vendor/composer/installed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/vendor/composer/autoload_psr4.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/vendor/composer/autoload_namespaces.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/vendor/composer/InstalledVersions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/vendor/composer/autoload_real.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/vendor/composer/autoload_static.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/vendor/composer/ClassLoader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/vendor/composer/platform_check.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-auto-publish-posts-with-missed-schedule.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-wider-admin-menu.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-password-protection.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-limit-login-attempts.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-hide-admin-bar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-external-permalinks.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-content-order.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-disable-author-archives.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-revisions-control.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-disable-comments.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/vendor/enshrined/svg-sanitize/src/Helper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/vendor/enshrined/svg-sanitize/src/svg-scanner.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/vendor/enshrined/svg-sanitize/src/Sanitizer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-search-engines-visibility.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-various-admin-ui-enhancements.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-cleanup-admin-bar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-disable-gutenberg.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-admin-menu-svg-icon-mask.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-settings-fields-render.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-view-admin-as-role.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/vendor/enshrined/svg-sanitize/src/data/AllowedTags.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-multiple-user-roles.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/vendor/enshrined/svg-sanitize/src/data/AllowedAttributes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/vendor/enshrined/svg-sanitize/src/Exceptions/NestingException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-disable-smaller-components.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/vendor/enshrined/svg-sanitize/src/data/AttributeInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/vendor/enshrined/svg-sanitize/src/ElementReference/Usage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/vendor/enshrined/svg-sanitize/src/data/XPath.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/vendor/enshrined/svg-sanitize/src/ElementReference/Resolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/vendor/enshrined/svg-sanitize/src/ElementReference/Subject.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/vendor/enshrined/svg-sanitize/src/data/TagInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-open-external-links-in-new-tab.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-custom-body-class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-site-identity-on-login-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-captcha-protection.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-image-sizes-panel.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-custom-nav-menu-items-in-new-tab.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-last-login-column.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-media-replacement.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-redirect-fourofour.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-custom-css.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-redirect-after-logout.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-manage-robots-txt.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-hide-admin-notices.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-enhance-list-tables.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-obfuscate-author-slugs.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-disable-xml-rpc.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-display-system-summary.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-email-address-obfuscator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-manage-ads-appads-txt.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-deactivation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-disable-rest-api.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-redirect-after-login.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-email-delivery.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-image-upload-control.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-disable-updates.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-login-id-type.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-avif-upload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-login-logout-menu.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-settings-sanitization.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-admin-menu-organizer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-maintenance-mode.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-settings-sections-fields.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-disable-feeds.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-content-duplication.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-registration-date-column.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-change-login-url.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-disable-user-account.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-custom-admin-footer-text.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-common-methods.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/settings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/bootstrap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/includes/password-protected-login.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/includes/blank-comment-template.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/includes/bmp-to-image-object.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/includes/empty-class-classic-editor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/includes/admin-menu-width/wp-v5-greater.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/includes/admin-menu-width/wp-v4-greater.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/includes/disable-embeds/build/index.asset.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **42**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **17**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **14**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **9**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-settings-fields-render.php:524:                        $robots_txt_content = wp_remote_get( get_site_url() . '/robots.txt' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-settings-fields-render.php:533:                        $robots_txt_content = wp_remote_get( get_site_url() . '/robots.txt' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-settings-fields-render.php:540:                $robots_txt_content = wp_remote_get( get_site_url() . '/robots.txt' );
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-svg-upload.php:101:            file_put_contents( $file_tmp_name, $sanitized_svg );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-svg-upload.php:124:                    file_put_contents( $file_path, $sanitized_svg );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-svg-upload.php:149:                    file_put_contents( $file_path, $sanitized_svg );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-wp-config-transformer.php:429:		$result = file_put_contents( $this->wpconfig_file( 'path' ), $contents, LOCK_EX );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-media-replacement.php:184:                    mkdir( dirname( $old_media_file_path ), 0755, true );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-image-upload-control.php:221:                unlink( $upload['file'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/vendor/composer/platform_check.php:17:            fwrite(STDERR, 'Composer detected issues in your platform:' . PHP_EOL.PHP_EOL . implode(PHP_EOL, $issues) . PHP_EOL.PHP_EOL);
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/classes/class-content-duplication.php:180:                                update_post_meta( $new_post_id, $meta_key, wp_slash( maybe_unserialize( $meta_value ) ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/settings.php:29:        $maybe_unserialized = maybe_unserialize( $option_value );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/settings.php:30:        if ( is_array( $maybe_unserialized ) ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/settings.php:31:            $normalized_value = $maybe_unserialized;
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/settings.php:32:        } elseif ( is_object( $maybe_unserialized ) ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/settings.php:33:            $normalized_value = (array) $maybe_unserialized;
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/settings.php:34:        } elseif ( is_string( $maybe_unserialized ) && '' !== trim( $maybe_unserialized ) ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/admin-site-enhancements/admin-site-enhancements/settings.php:35:            $maybe_json = json_decode( $maybe_unserialized, true );
```

