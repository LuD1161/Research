# Attack Surface: file-manager-advanced

> Generated: 2026-06-16T19:03:59Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_main.php:39:		add_action('wp_ajax_fma_load_fma_ui', array(&$this, 'fma_load_fma_ui'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_main.php:40:		add_action('wp_ajax_fma_review_ajax', array($this, 'fma_review_ajax'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_main.php:41:		add_action('wp_ajax_fma_save_php_file', array($this, 'fma_save_php_file'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_main.php:42:		add_action('wp_ajax_fma_debug_php', array($this, 'fma_debug_php'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/post-smtp-notice/recommend-post-smtp-base.php:68:            add_action('wp_ajax_post_smtp_request', array($this, 'request_post_smtp_ajax'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/managers/class-fs-debug-manager.php:477:            add_action( "wp_ajax_fs_toggle_debug_mode", array( self::class, '_toggle_debug_mode' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/managers/class-fs-admin-notice-manager.php:147:                    add_action( "wp_ajax_fs_dismiss_notice_action_{$ajax_action_suffix}", array(
```

### WordPress AJAX Handlers (unauthenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/post-smtp-notice/recommend-post-smtp-base.php:69:            add_action('wp_ajax_nopriv_post_smtp_request', array($this, 'request_post_smtp_ajax'));
```

### admin-post Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/post-smtp-notice/recommend-post-smtp-admin-notice.php:55:            add_action( 'admin_post_hide-post-smtp-recommendation-notice', array( $this, 'hide_post_smtp_recommendation_notice' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/managers/class-fs-clone-manager.php:145:                    add_action( 'admin_post_fs_clone_resolution', array( $this, '_handle_clone_resolution' ) );
```

### admin-post Handlers (UNAUTHENTICATED)
```
None found
```

### REST API Routes
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/post-smtp-notice/recommend-post-smtp-admin-notice.php:209:        register_rest_route( 'recommend-post-smtp', '/request', array(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/rest-api/class-fma-controller.php:48:			register_rest_route(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/rest-api/class-fma-controller.php:58:			register_rest_route(
```

### REST permission_callback => __return_true (public REST)
```
None found
```

### Admin Pages / Menu Items
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_admin_menus.php:258:        add_menu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_admin_menus.php:267:        add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_admin_menus.php:277:            add_submenu_page('file_manager_advanced_ui', __('Integrations', 'file-manager-advanced'), __('Integrations', 'file-manager-advanced'), 'manage_options', 'afm-integrations-pro', array($this, 'integrations_pro_menu'), 2);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_admin_menus.php:281:            add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_admin_menus.php:299:        //     add_submenu_page( 'file_manager_advanced_ui', 'Blocks', 'Blocks', $subPer, 'file_manager_advanced_shortcodes', array(&$this, 'file_manager_advanced_shortcodes'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_admin_menus.php:303:            add_submenu_page('file_manager_advanced_ui', __('DB Access', 'file-manager-advanced'), __('DB Access', 'file-manager-advanced'), 'manage_options', 'afmp-adminer', array($this, 'adminer_menu'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_admin_menus.php:307:            add_submenu_page('', __('Dropbox Settings', 'file-manager-advanced'), __('Dropbox', 'file-manager-advanced'), 'manage_options', 'afmp-dropbox', array($this, 'dropbox_menu'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_admin_menus.php:311:            add_submenu_page('file_manager_advanced_ui', __('File Logs', 'file-manager-advanced'), __('File Logs', 'file-manager-advanced'), 'manage_options', 'afmp-file-logs', array($this, 'afmp__file_logs'), 3);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_admin_menus.php:315:            add_submenu_page('', __('Google Drive Settings', 'file-manager-advanced'), __('Google Drive', 'file-manager-advanced'), 'manage_options', 'afmp-googledrive', array($this, 'googledrive_menu'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_admin_menus.php:319:            add_submenu_page('', __('OneDrive Settings', 'file-manager-advanced'), __('OneDrive', 'file-manager-advanced'), 'manage_options', 'afmp-onedrive', array($this, 'onedrive_menu'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_admin_menus.php:323:            add_submenu_page('', __('Amazon S3 (AWS) Settings', 'file-manager-advanced'), __('Amazon S3 (AWS)', 'file-manager-advanced'), 'manage_options', 'afmp-aws', array($this, 'aws_menu'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_admin_menus.php:327:            add_submenu_page('', __('GitHub Settings', 'file-manager-advanced'), __('GitHub', 'file-manager-advanced'), 'manage_options', 'afmp-github', array($this, 'github_menu'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_admin_menus.php:331:            add_submenu_page('', __('Google Cloud Settings', 'file-manager-advanced'), __('Google Cloud', 'file-manager-advanced'), 'manage_options', 'afmp-googlecloud', array($this, 'googlecloud_menu'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_admin_menus.php:336:            add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/post-smtp-notice/recommend-post-smtp-base.php:90:                                    add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_blocks.php:500:		add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/managers/class-fs-admin-menu-manager.php:837:		 *  This is a replication of `add_menu_page()` to avoid Theme Check warning.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/managers/class-fs-admin-menu-manager.php:940:		 *  This is a replication of `add_submenu_page()` to avoid Theme Check warning.
```

### Shortcodes
```
None found
```

### Cron Jobs
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/managers/class-fs-debug-manager.php:293:                    wp_schedule_single_event( time() + 24 * HOUR_IN_SECONDS, 'fs_debug_turn_off_logging_hook' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/class-freemius.php:6354:                wp_schedule_event(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/class-freemius.php:6361:                wp_schedule_single_event(
```

### File Upload Handlers
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinder.class.php:3213:                if (move_uploaded_file($tmpname, $part)) {
```

### Block render_callback (server-rendered blocks)
```
None found
```

### Settings API / Meta Box save handlers
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_blocks.php:26:		add_action('add_meta_boxes', array($this, 'add_blocks_meta_boxes'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_blocks.php:29:		add_action('save_post', array($this, 'save_blocks_meta_boxes'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_blocks.php:269:		add_meta_box(
```

### Widgets
```
None found
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/config.php:346:     * is triggered due to registration with register_uninstall_hook().
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/config.php:369:     * is triggered due to registration with register_uninstall_hook().
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/class-freemius.php:1448:                    register_activation_hook(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/class-freemius.php:1453:                    register_activation_hook(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/class-freemius.php:1513:                register_deactivation_hook( $this->_plugin_main_file_path, array( &$this, '_deactivate_plugin_hook' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/class-freemius.php:1668:                register_activation_hook(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/class-freemius.php:1891:        private function unregister_uninstall_hook() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/class-freemius.php:4641:                        // @todo This should be only executed on activation. It should be migrated to register_activation_hook() together with other activation related logic.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/class-freemius.php:5520:            $this->unregister_uninstall_hook();
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/class-freemius.php:7436:            $this->unregister_uninstall_hook();
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/class-freemius.php:7588:                 * Since register_activation_hook() do NOT fires on updates since 3.1, and only fires
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/class-freemius.php:8232:            register_uninstall_hook( $this->_plugin_main_file_path, array( 'Freemius', '_uninstall_plugin_hook' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/class-freemius.php:9830:            register_activation_hook(
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinderConnector.class.php:76:        if ((!$src || $maxInputVars) && $rawPostData = file_get_contents('php://input')) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/class-freemius.php:25257:            $tabs_html = $wp_filesystem->get_contents( "php://input" );
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_admin_menus.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/post-smtp-notice/recommend-post-smtp-admin-notice.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/post-smtp-notice/recommend-post-smtp-base.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/post-smtp-notice/recommend-post-smtp-loader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_pure_php_validator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/src/ElementReference/Usage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/src/ElementReference/Resolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/comparator/src/DoubleComparator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/comparator/src/ScalarComparator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/comparator/src/ArrayComparator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/global-state/src/Blacklist.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/comparator/src/DOMNodeComparator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/comparator/src/MockObjectComparator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/global-state/src/Snapshot.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/comparator/src/Factory.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/comparator/src/ComparisonFailure.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/global-state/src/CodeExporter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/comparator/src/SplObjectStorageComparator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/comparator/src/ExceptionComparator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/comparator/src/ObjectComparator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/global-state/src/Restorer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/comparator/src/Comparator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/global-state/src/exceptions/Exception.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/comparator/src/TypeComparator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/comparator/src/NumericComparator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/global-state/src/exceptions/RuntimeException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-file-iterator/src/Factory.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/comparator/src/ResourceComparator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/comparator/src/DateTimeComparator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-file-iterator/src/Iterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-file-iterator/src/Facade.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/environment/src/Console.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/exporter/src/Exporter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/environment/src/OperatingSystem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/environment/src/Runtime.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/version/src/Version.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/recursion-context/src/InvalidArgumentException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/code-unit-reverse-lookup/src/Wizard.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/recursion-context/src/Exception.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/recursion-context/src/Context.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/resource-operations/src/ResourceOperations.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/Diff.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/LongestCommonSubsequenceCalculator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/type/src/IterableType.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/type/src/NullType.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/type/src/SimpleType.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/type/src/UnknownType.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/type/src/GenericObjectType.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/type/src/Type.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/type/src/ObjectType.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/type/src/TypeName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/type/src/CallableType.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/object-enumerator/src/Enumerator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/type/src/exception/Exception.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/object-enumerator/src/InvalidArgumentException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/type/src/VoidType.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Version.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Util.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Node/AbstractNode.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Node/Builder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/CodeCoverage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Node/File.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/object-reflector/src/Exception.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Report/Crap4j.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Report/Clover.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/object-reflector/src/ObjectReflector.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Report/Text.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Node/Directory.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/object-reflector/src/InvalidArgumentException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Node/Iterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Driver/Driver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Report/PHP.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Driver/PCOV.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/doctrine/instantiator/src/Doctrine/Instantiator/Instantiator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Driver/PHPDBG.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Driver/Xdebug.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/doctrine/instantiator/src/Doctrine/Instantiator/InstantiatorInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Filter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Report/Html/Renderer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/type/src/exception/RuntimeException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Report/Html/Facade.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/object-enumerator/src/Exception.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/doctrine/instantiator/src/Doctrine/Instantiator/Exception/ExceptionInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/doctrine/instantiator/src/Doctrine/Instantiator/Exception/InvalidArgumentException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/doctrine/instantiator/src/Doctrine/Instantiator/Exception/UnexpectedValueException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/Parser.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Report/Xml/Directory.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Report/Xml/Project.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Report/Xml/Method.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Report/Xml/Totals.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/Line.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/MemoryEfficientLongestCommonSubsequenceCalculator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Report/Xml/Tests.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/TimeEfficientLongestCommonSubsequenceCalculator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Exception/RuntimeException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Exception/CoveredCodeNotExecutedException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Exception/MissingCoversAnnotationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Report/Xml/Unit.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Report/Html/Renderer/Directory.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Report/Html/Renderer/Dashboard.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Report/Xml/File.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Report/Xml/Coverage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Exception/InvalidArgumentException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Exception/UnintentionallyCoveredCodeException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Report/Xml/Node.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Report/Html/Renderer/File.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Report/Xml/Facade.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Report/Xml/Report.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Report/Xml/BuildInformation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/Chunk.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/Differ.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Report/Xml/Source.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-code-coverage/src/Exception/Exception.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/TokenWithScope.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Variable.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/YieldFrom.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Pipe.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/Output/StrictUnifiedDiffOutputBuilder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/OpenTag.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/String.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/TraitC.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/InlineHtml.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Public.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/DoubleColon.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/MinusEqual.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/NumString.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/IncludeOnce.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/CurlyOpen.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Plus.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Colon.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Whitespace.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/ConstantEncapsedString.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Require.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/CloseBracket.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Foreach.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/NsSeparator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/BoolCast.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/LogicalAnd.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/LogicalXor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/PaamayimNekudotayim.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-text-template/src/Template.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Dollar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Mult.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Sr.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/DoubleQuotes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Dec.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Function.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/BooleanOr.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Ampersand.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Return.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Endswitch.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Spaceship.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/IsNotEqual.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Dot.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Print.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/DocComment.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Lt.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Comma.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/PowEqual.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Final.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/CloseTag.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/CloseSquare.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/CachingFactory.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/ModEqual.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Yield.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/NameRelative.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Array.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Implements.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Case.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/QuestionMark.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/NsC.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/At.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Backtick.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/ExclamationMark.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Minus.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Fn.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Const.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Abstract.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Protected.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/UseFunction.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Try.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Stream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/BooleanAnd.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/OpenTagWithEcho.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/ObjectOperator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/IsGreaterOrEqual.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/StringCast.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Util.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/FuncC.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/File.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Enddeclare.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Coalesce.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Gt.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/DNumber.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Exit.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/DoubleCast.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/break.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/SrEqual.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/EndHeredoc.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Private.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/DivEqual.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Global.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Eval.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Finally.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/ArrayCast.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Empty.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/IsNotIdentical.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/NameQualified.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Isset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/LogicalOr.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/PlusEqual.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/HaltCompiler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Trait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Continue.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Comment.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Clone.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/OpenCurly.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Character.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/XorEqual.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Endif.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Includes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Endfor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/ConcatEqual.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Line.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/ClassNameConstant.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Sl.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/TokenWithScopeAndVisibility.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Dir.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/CloseCurly.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Pow.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/OrEqual.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/List.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Semicolon.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/RequireOnce.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Tilde.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Insteadof.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/MethodC.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/NameFullyQualified.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/IntCast.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/DollarOpenCurlyBraces.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Unset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/EncapsedAndWhitespace.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Endwhile.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Default.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/CoalesceEqual.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/StringVarname.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/OpenBracket.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/OpenSquare.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Callable.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Throw.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/DoubleArrow.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Inc.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/While.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/BadCharacter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/As.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/IsIdentical.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/New.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Switch.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/AndEqual.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Var.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Catch.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Else.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/ObjectCast.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/For.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Equal.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Include.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Lnumber.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Token.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Endforeach.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-timer/src/Timer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/Exception/Exception.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/IsEqual.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/Exception/ConfigurationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Echo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Interface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/Exception/InvalidArgumentException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/composer/autoload_psr4.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/Output/AbstractChunkOutputBuilder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/Output/DiffOutputBuilderInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Extends.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/Output/DiffOnlyOutputBuilder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/Output/UnifiedDiffOutputBuilder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/composer/autoload_files.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-timer/src/RuntimeException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Elseif.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Ellipsis.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Do.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/ClassC.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/composer/InstalledVersions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-timer/src/Exception.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/IsSmallerOrEqual.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Percent.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/composer/installed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/composer/platform_check.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Caret.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Div.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Goto.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/composer/autoload_namespaces.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Instanceof.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/composer/autoload_static.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/composer/autoload_classmap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/composer/ClassLoader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/MulEqual.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Declare.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Namespace.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/composer/autoload_real.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/DataProviderTestSuite.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/StandardTestSuiteLoader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/StartHeredoc.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/Exception.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/If.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/TestSuiteSorter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/ResultCacheExtension.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Exception.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/WarningTestCase.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Test.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/TestListenerDefaultImplementation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/TextUI/Exception.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/SkippedTest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/TextUI/ResultPrinter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/TextUI/Command.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/IncompleteTestCase.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/TestSuiteIterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/IncompleteTest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/TestFailure.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/TextUI/TestRunner.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/TestListener.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/Filter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/TextUI/Help.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/Hook/AfterTestWarningHook.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/Hook/AfterLastTestHook.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/ErrorHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/Hook/AfterTestFailureHook.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/Hook/Hook.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/Hook/AfterIncompleteTestHook.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/TestCase.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Error/Deprecated.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Error/Error.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Error/Warning.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Error/Notice.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/Printer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/Hook/AfterTestHook.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/Getopt.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/InvalidDataSetException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/VersionComparisonOperator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/Test.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/Json.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/Blacklist.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/Hook/AfterRiskyTestHook.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/Hook/AfterSuccessfulTestHook.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/GlobalState.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/Filesystem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/StringMatchesFormatDescription.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/ObjectHasAttribute.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/Count.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/RegularExpression.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/ArraySubset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/StringStartsWith.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/LogicalXor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/GreaterThan.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/StringContains.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/IsInfinite.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/JsonMatches.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/IsTrue.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/IsNan.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/IsEmpty.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/SameSize.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/TestDox/NamePrettifier.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/Callback.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/IsJson.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/Configuration.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/Constraint.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/JsonMatchesErrorMessageProvider.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/ExceptionMessageRegularExpression.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/ArrayHasKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/IsType.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/IsInstanceOf.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/TraversableContains.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/Attribute.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/TestDox/HtmlResultPrinter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/LessThan.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/LogicalNot.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/Composite.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/TestDox/TextResultPrinter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/ExceptionMessage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/ExceptionCode.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/TestDox/CliTestDoxPrinter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/TestDox/TestDoxPrinter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/TestDox/XmlResultPrinter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/LogicalOr.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/IsAnything.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/StringEndsWith.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/TestDox/ResultPrinter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/IsReadable.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/TraversableContainsEqual.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/IsNull.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/LogicalAnd.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/ClassHasAttribute.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/DirectoryExists.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/Exception.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/IsWritable.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/IsFinite.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/TraversableContainsIdentical.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/ClassHasStaticAttribute.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/FileExists.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/IsIdentical.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/IsEqual.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/Hook/TestHook.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/Hook/BeforeFirstTestHook.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/IsFalse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/TextTestListRenderer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/Hook/AfterTestErrorHook.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/Hook/AfterSkippedTestHook.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/Hook/TestListenerAdapter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Constraint/TraversableContainsOnly.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/ConfigurationGenerator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/Exception.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/XmlTestListRenderer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/Reflection.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/XdebugFilterScriptGenerator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/Type.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/Color.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/TestSuiteLoader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/Xml.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/FileLoader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/Hook/BeforeTestHook.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/ExceptionWrapper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/RegularExpression.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/PHP/WindowsPhpProcess.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/PHP/DefaultPhpProcess.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/Version.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/PHP/AbstractPhpProcess.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/NullTestResultCache.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/Annotation/Registry.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/PhptTestCase.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/DefaultTestResultCache.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/Annotation/DocBlock.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Assert/Functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/TestSuite.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/BaseTestRunner.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/Filter/NameFilterIterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/Filter/ExcludeGroupFilterIterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/Filter/Factory.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/Filter/IncludeGroupFilterIterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/Log/JUnit.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Util/Log/TeamCity.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/TestResultCache.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/InvalidParameterGroupException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Runner/Filter/GroupFilterIterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/SelfDescribing.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Assert.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/UnsetCast.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/SlEqual.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/SkippedTestCase.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/TestResult.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Static.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/TestBuilder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/php-token-stream/src/Use.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/src/Sanitizer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/src/Helper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/src/ElementReference/Subject.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/src/svg-scanner.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Exception/AssertionFailedError.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Exception/SkippedTestError.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Exception/RiskyTestError.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Exception/PHPTAssertionFailedError.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Exception/SyntheticSkippedError.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/MockClass.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Exception/CodeCoverageException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Exception/IncompleteTestError.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/MockMethodSet.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/MockType.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/ConfigurableMethod.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/MockObject.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Stub.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Verifiable.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/src/Exceptions/NestingException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/MethodNameConstraint.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Exception/OutputError.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Invocation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Exception/InvalidCoversTargetException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/InvocationHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Exception/SkippedTestSuiteError.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Matcher.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Exception/SyntheticError.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Generator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Builder/Match_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/MockMethod.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Builder/InvocationStubber.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Builder/ParametersMatch.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Builder/MethodNameMatch.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Builder/Stub.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Builder/InvocationMocker.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Builder/Identity.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Rule/AnyInvokedCount.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Exception/Warning.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Rule/Parameters.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Rule/InvokedAtLeastOnce.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Rule/MethodName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Rule/InvokedAtIndex.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Rule/InvokedCount.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Rule/InvokedAtLeastCount.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Rule/AnyParameters.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Rule/InvokedAtMostCount.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Exception/NoChildTestSuiteException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Rule/ConsecutiveParameters.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Exception/MissingCoversAnnotationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Exception/InvalidArgumentException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Rule/ParametersRule.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Api/Method.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/MockBuilder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Stub/Stub.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Api/Api.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Stub/ReturnReference.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Stub/ReturnStub.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Rule/InvocationOrder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Stub/ReturnCallback.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Stub/ReturnValueMap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Stub/ReturnSelf.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Stub/Exception.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Stub/ReturnArgument.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Stub/ConsecutiveCalls.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/DeepCopy.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/deep_copy.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/.php-cs-fixer.dist.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Exception/UnintentionallyCoveredCodeError.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Exception/InvalidDataProviderException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/ManifestSerializer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/Matcher/PropertyMatcher.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/Filter/Filter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/Filter/SetNullFilter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/Filter/KeepFilter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/Filter/ReplaceFilter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/Matcher/PropertyTypeMatcher.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/Matcher/PropertyNameMatcher.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/Matcher/Matcher.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Exception/Exception.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Exception/ConfigurableMethodsAlreadyInitializedException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/Exception/PropertyException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Exception/RuntimeException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Exception/IncompatibleReturnValueException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/Exception/CloneException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/tools/php-cs-fixer.d/PhpdocSingleLineVarFixer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/Filter/ChainableFilter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/Exception/BadMethodCallException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/TypeFilter/TypeFilter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/version/src/PreReleaseSuffix.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/TypeFilter/Date/DateIntervalFilter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/version/src/VersionConstraintParser.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/xml/AuthorElementCollection.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/version/src/VersionConstraintValue.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/xml/ContainsElement.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/theseer/tokenizer/src/NamespaceUri.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/theseer/tokenizer/src/Exception.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/xml/ComponentElementCollection.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/theseer/tokenizer/src/NamespaceUriException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/xml/ExtElement.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/theseer/tokenizer/src/TokenCollectionException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/theseer/tokenizer/src/Tokenizer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/Filter/Doctrine/DoctrineCollectionFilter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/Filter/Doctrine/DoctrineEmptyCollectionFilter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/Filter/Doctrine/DoctrineProxyFilter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/xml/ExtElementCollection.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/theseer/tokenizer/src/TokenCollection.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/version/src/exceptions/NoBuildMetaDataException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/xml/PhpElement.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/version/src/exceptions/NoPreReleaseSuffixException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/version/src/exceptions/InvalidPreReleaseSuffixException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/Matcher/Doctrine/DoctrineProxyMatcher.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/theseer/tokenizer/src/XMLSerializer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/version/src/exceptions/Exception.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/version/src/constraints/AbstractVersionConstraint.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/version/src/constraints/VersionConstraint.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/version/src/exceptions/UnsupportedVersionConstraintException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/version/src/constraints/ExactVersionConstraint.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/version/src/constraints/SpecificMajorVersionConstraint.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/version/src/constraints/OrVersionConstraintGroup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/version/src/constraints/AndVersionConstraintGroup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/xml/BundlesElement.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/version/src/constraints/SpecificMajorAndMinorVersionConstraint.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/theseer/tokenizer/src/Token.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/xml/ManifestElement.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/xml/ManifestDocument.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/xml/AuthorElement.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/xml/ElementCollection.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/version/src/constraints/GreaterThanOrEqualToVersionConstraint.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/version/src/exceptions/InvalidVersionException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/xml/ComponentElement.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/xml/CopyrightElement.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/xml/LicenseElement.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/version/src/Version.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/xml/ExtensionElement.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/TypeFilter/ReplaceFilter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/xml/RequiresElement.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/TypeFilter/Date/DatePeriodFilter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/version/src/constraints/AnyVersionConstraint.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/ManifestLoader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/TypeFilter/ShallowCopyFilter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/MockObject/MockTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/TypeMatcher/TypeMatcher.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/ManifestDocumentMapper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Exception/ExpectationFailedException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Exception/Exception.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/version/src/BuildMetaData.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/Framework/Exception/CoveredCodeNotExecutedException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/Reflection/ReflectionHelper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/TypeFilter/Spl/ArrayObjectFilter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/TypeFilter/Spl/SplDoublyLinkedList.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/myclabs/deep-copy/src/DeepCopy/TypeFilter/Spl/SplDoublyLinkedListFilter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/version/src/VersionNumber.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_local_filesystem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_lang.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_shortcode.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/values/Library.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/values/Email.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/values/Author.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/src/data/XPath.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/values/Application.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/values/ApplicationName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/values/AuthorCollectionIterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/values/CopyrightInformation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/values/AuthorCollection.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/values/BundledComponentCollectionIterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/values/Url.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_connector.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/values/License.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/values/Extension.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/values/PhpVersionRequirement.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/values/Manifest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/values/Type.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/src/data/AllowedAttributes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/src/data/AllowedTags.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/values/BundledComponentCollection.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/src/data/AttributeInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/exceptions/ManifestElementException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/values/Requirement.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/exceptions/InvalidUrlException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/src/data/TagInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/values/PhpExtensionRequirement.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/exceptions/ManifestDocumentMapperException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/values/BundledComponent.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/exceptions/ManifestDocumentLoadingException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/exceptions/ManifestLoaderException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/exceptions/Exception.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/exceptions/NoEmailAddressException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/values/RequirementCollection.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/exceptions/InvalidEmailException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/exceptions/ElementCollectionException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/exceptions/ManifestDocumentException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/values/RequirementCollectionIterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phar-io/manifest/src/exceptions/InvalidApplicationNameException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/file_manager_advanced.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/languages/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinderVolumeDropbox.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinderConnector.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinderVolumeSFTPphpseclib.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinderVolumeMySQL.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinderVolumeLocalFileSystem.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinderSessionInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinderFlysystemGoogleDriveNetmount.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinderPlugin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinderSession.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinderVolumeGoogleDrive.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinderVolumeOneDrive.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinderVolumeTrash.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinder.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/plugins/WinRemoveTailDots/plugin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/plugins/Watermark/plugin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/plugins/AutoRotate/plugin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/plugins/Normalizer/plugin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/plugins/AutoResize/plugin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/plugins/Sanitizer/plugin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinderVolumeTrashMySQL.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinderVolumeDropbox2.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/editors/editor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinderVolumeDriver.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/editors/ZohoOffice/editor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/editors/ZipArchive/editor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/libs/GdBmp.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/editors/OnlineConvert/editor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinderVolumeGroup.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinderVolumeBox.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinderVolumeFTP.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/exec-with-fallback/src/Availability.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/exec-with-fallback/src/ProcOpen.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/exec-with-fallback/src/ExecWithFallbackNoMercy.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/exec-with-fallback/src/Passthru.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/exec-with-fallback/src/ShellExec.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/exec-with-fallback/src/POpen.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/exec-with-fallback/src/ExecWithFallback.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/exec-with-fallback/test.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/templates/forms/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/templates/partials/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/templates/forms/deactivation/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/composer/installed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/composer/autoload_psr4.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/composer/ClassLoader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/composer/autoload_namespaces.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/composer/autoload_real.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/composer/autoload_classmap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/composer/InstalledVersions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/composer/platform_check.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/composer/autoload_static.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/templates/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/templates/plugin-info/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/templates/connect/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/templates/checkout.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/templates/js/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/templates/account/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/assets/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/templates/debug/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/NodeAbstract.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/templates/account/partials/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/entities/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/PrettyPrinterAbstract.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/NodeFinder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Parser.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/BuilderHelpers.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Comment/Doc.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/supplements/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Lexer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Builder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/NodeDumper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/NodeVisitor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/NodeTraverserInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Error.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/NameContext.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Comment.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Builder/Namespace_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Builder/TraitUseAdaptation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Builder/Enum_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Builder/Interface_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Builder/Declaration.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Builder/Trait_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Builder/Class_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Builder/Property.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Builder/Method.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Builder/Use_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Builder/Function_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Builder/EnumCase.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Builder/TraitUse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Builder/Param.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Builder/ClassConst.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Builder/FunctionLike.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Internal/PrintableNewAnonClassNode.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Internal/TokenStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Internal/Differ.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Internal/DiffElem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/BuilderFactory.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/ConstExprEvaluator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/JsonDecoder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/NodeTraverser.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/ParserFactory.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/NodeVisitorAbstract.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/ErrorHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/assets/css/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Lexer/Emulative.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Parser/Tokens.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Parser/Multiple.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/NodeVisitor/CloningVisitor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/NodeVisitor/FindingVisitor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/NodeVisitor/FirstFindingVisitor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/NodeVisitor/ParentConnectingVisitor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/assets/css/admin/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/NodeVisitor/NodeConnectingVisitor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/NodeVisitor/NameResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Parser/Php5.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Lexer/TokenEmulator/ExplicitOctalEmulator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Lexer/TokenEmulator/AttributeEmulator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Lexer/TokenEmulator/ReverseEmulator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Parser/Php7.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Lexer/TokenEmulator/NullsafeTokenEmulator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Lexer/TokenEmulator/ReadonlyTokenEmulator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Lexer/TokenEmulator/MatchTokenEmulator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Lexer/TokenEmulator/ReadonlyFunctionTokenEmulator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Lexer/TokenEmulator/EnumTokenEmulator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Lexer/TokenEmulator/KeywordEmulator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Lexer/TokenEmulator/FnTokenEmulator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Lexer/TokenEmulator/CoaleseEqualTokenEmulator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Lexer/TokenEmulator/FlexibleDocStringEmulator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Lexer/TokenEmulator/NumericLiteralSeparatorEmulator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/assets/img/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Lexer/TokenEmulator/TokenEmulator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/AttributeGroup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Param.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/NullableType.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/UnionType.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Attribute.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Identifier.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/VariadicPlaceholder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Arg.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/ComplexType.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/VarLikeIdentifier.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Name.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Scalar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/IntersectionType.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/customizer/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Const_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Scalar/LNumber.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/MatchArm.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Catch_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/TraitUseAdaptation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Do_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/For_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Unset_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/StaticVar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Use_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Enum_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Expression.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Return_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/UseUse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Class_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Echo_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/While_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Static_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Break_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/HaltCompiler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Function_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/ClassMethod.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/TraitUse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Trait_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/DeclareDeclare.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Switch_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Namespace_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Finally_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Else_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Goto_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/TryCatch.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/ClassLike.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Case_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Foreach_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Const_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Name/Relative.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Declare_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Property.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/TraitUseAdaptation/Alias.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Global_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/EnumCase.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/ElseIf_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Name/FullyQualified.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/If_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/ClassConst.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/TraitUseAdaptation/Precedence.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Scalar/DNumber.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/PropertyProperty.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/InlineHTML.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Label.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Scalar/Encapsed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Scalar/MagicConst.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/GroupUse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Scalar/String_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Continue_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Scalar/EncapsedStringPart.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Interface_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Nop.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Scalar/MagicConst/Trait_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Stmt/Throw_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Scalar/MagicConst/Line.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Scalar/MagicConst/Function_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Scalar/MagicConst/Dir.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Scalar/MagicConst/Class_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Scalar/MagicConst/Namespace_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Scalar/MagicConst/Method.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Scalar/MagicConst/File.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/assets/js/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/FunctionLike.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/ParserAbstract.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/fs-essential-functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/ConstExprEvaluationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/ErrorHandler/Throwing.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/ErrorHandler/Collecting.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/PrettyPrinter/Standard.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/sdk/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/YieldFrom.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Variable.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Match_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/StaticCall.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/StaticPropertyFetch.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/ClosureUse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/AssignRef.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Eval_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Cast.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Instanceof_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/NullsafePropertyFetch.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/ShellExec.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/UnaryPlus.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/sdk/Exceptions/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/PreInc.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BooleanNot.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/New_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/ErrorSuppress.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/PostDec.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Error.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Closure.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Yield_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Exit_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/PostInc.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BitwiseNot.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Assign.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/NullsafeMethodCall.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/UnaryMinus.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Print_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/PreDec.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/ClassConstFetch.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Empty_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/PropertyFetch.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/List_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/ArrayDimFetch.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Cast/String_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Cast/Object_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Cast/Int_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Cast/Unset_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Cast/Bool_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Ternary.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Cast/Double.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/ArrayItem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/AssignOp.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/NotIdentical.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Cast/Array_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/BitwiseOr.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/GreaterOrEqual.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/Plus.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/NotEqual.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/BooleanOr.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/Coalesce.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/BitwiseAnd.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/LogicalOr.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/Greater.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/Minus.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/Pow.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/Mod.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/AssignOp/Coalesce.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/BooleanAnd.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/Smaller.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/AssignOp/Minus.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/AssignOp/Plus.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/AssignOp/Mul.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/Spaceship.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/AssignOp/BitwiseOr.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/AssignOp/Mod.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/Identical.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/AssignOp/ShiftRight.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/AssignOp/BitwiseAnd.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/SmallerOrEqual.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/AssignOp/BitwiseXor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/LogicalAnd.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/LogicalXor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/AssignOp/Div.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/Mul.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/AssignOp/Pow.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/AssignOp/Concat.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/ShiftRight.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/Equal.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/BitwiseXor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/AssignOp/ShiftLeft.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/CallLike.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/ConstFetch.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/Div.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Array_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/ShiftLeft.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/BinaryOp/Concat.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Clone_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/FuncCall.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/managers/class-fs-debug-manager.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/managers/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Isset_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/MethodCall.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/ArrowFunction.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Include_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php-parser/vendor/nikic/php-parser/lib/PhpParser/Node/Expr/Throw_.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/debug/index.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **23**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **61**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **17**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **6**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/post-smtp-notice/recommend-post-smtp-base.php:638:            $response = wp_remote_post("https://connect.postmansmtp.com/wp-json/update/v1/update?site_url={$site_url}&status={$status}&plugin_slug={$plugin_slug}", array(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/resource-operations/src/ResourceOperations.php:311:            'curl_exec',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/post-smtp-notice/recommend-post-smtp-admin-notice.php:235:        $response = wp_remote_post( "https://connect.postmansmtp.com/wp-json/update/v1/update?site_url={$site_url}&status={$status}&plugin_slug={$plugin_slug}", array(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/TextUI/Command.php:1146:        $latestVersion           = file_get_contents('https://phar.phpunit.de/latest-version-of/phpunit');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/phpunit/phpunit/src/TextUI/Command.php:1147:        $latestCompatibleVersion = file_get_contents('https://phar.phpunit.de/latest-version-of/phpunit-' . explode('.', Version::series())[0]);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinderVolumeBox.class.php:400:     * Call curl_exec().
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinderVolumeDropbox2.class.php:257:        $result = curl_exec($ch);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinder.class.php:2681:            $method = (function_exists('curl_exec')) ? 'curl_get_contents' : 'fsock_get_contents';
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinder.class.php:2721:        $result = curl_exec($ch);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinder.class.php:5136:     * Call curl_exec() with supported redirect on `safe_mode` or `open_basedir`
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinder.class.php:5162:        $result = curl_exec($curl);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinder.class.php:5172:                throw new \Exception('curl_exec() failed: ' . curl_error($curl));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinder.class.php:5174:                throw new \Exception('curl_exec(): empty response');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinderVolumeDropbox.class.php:923:		if (function_exists('curl_exec')) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/elFinderVolumeDropbox.class.php:931:			$res = curl_exec( $c );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/editors/ZohoOffice/editor.php:102:                $res = curl_exec($ch);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/editors/ZohoOffice/editor.php:170:                $res = curl_exec($ch);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/library/php/editors/OnlineConvert/editor.php:89:            $response = curl_exec($ch);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/managers/class-fs-clone-manager.php:272:            wp_remote_post(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/class-fs-plugin-updater.php:862:            $request = wp_remote_get( $url, array( 'timeout' => 15 ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/sdk/FreemiusWordPress.php:45:				'curl_exec',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/vendor/freemius/includes/sdk/FreemiusWordPress.php:655:					'curl_exec',
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_elfinder_connector.php:131:						file_put_contents('php://output', $fp);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_debug_validator.php:163:			$result = file_put_contents( $temp_file, $php_code );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_debug_validator.php:165:				unlink( $temp_file );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/class_fma_debug_validator.php:180:				unlink( $temp_file );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/resource-operations/src/ResourceOperations.php:426:            'dbplus_runlink',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/resource-operations/src/ResourceOperations.php:474:            'eio_mkdir',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/resource-operations/src/ResourceOperations.php:484:            'eio_rmdir',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/resource-operations/src/ResourceOperations.php:494:            'eio_unlink',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/resource-operations/src/ResourceOperations.php:797:            'file_put_contents',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/resource-operations/src/ResourceOperations.php:830:            'ftp_mkdir',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/resource-operations/src/ResourceOperations.php:845:            'ftp_rmdir',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/resource-operations/src/ResourceOperations.php:851:            'fwrite',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/resource-operations/src/ResourceOperations.php:1330:            'mkdir',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/resource-operations/src/ResourceOperations.php:1743:            'pg_lo_unlink',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/resource-operations/src/ResourceOperations.php:1909:            'rmdir',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/resource-operations/src/ResourceOperations.php:2011:            'ssh2_sftp_mkdir',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/resource-operations/src/ResourceOperations.php:2015:            'ssh2_sftp_rmdir',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/resource-operations/src/ResourceOperations.php:2018:            'ssh2_sftp_unlink',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/resource-operations/src/ResourceOperations.php:2122:            'unlink',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/autoload.php:12:            fwrite(STDERR, $err);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/Output/StrictUnifiedDiffOutputBuilder.php:107:        \fwrite($buffer, $this->header);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/Output/StrictUnifiedDiffOutputBuilder.php:284:        \fwrite($output, '@@ -' . $fromStart);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/Output/StrictUnifiedDiffOutputBuilder.php:287:            \fwrite($output, ',' . $fromRange);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/Output/StrictUnifiedDiffOutputBuilder.php:290:        \fwrite($output, ' +' . $toStart);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/Output/StrictUnifiedDiffOutputBuilder.php:293:            \fwrite($output, ',' . $toRange);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/Output/StrictUnifiedDiffOutputBuilder.php:296:        \fwrite($output, " @@\n");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/Output/StrictUnifiedDiffOutputBuilder.php:301:                \fwrite($output, '+' . $diff[$i][0]);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/Output/StrictUnifiedDiffOutputBuilder.php:304:                \fwrite($output, '-' . $diff[$i][0]);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/Output/StrictUnifiedDiffOutputBuilder.php:306:                \fwrite($output, ' ' . $diff[$i][0]);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/file-manager-advanced/application/svg-sanitizer/includes/sebastian/diff/src/Output/StrictUnifiedDiffOutputBuilder.php:309:                \fwrite($output, $diff[$i][0]);
