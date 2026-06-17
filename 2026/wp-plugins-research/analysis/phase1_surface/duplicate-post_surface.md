# Attack Surface: duplicate-post

> Generated: 2026-06-16T19:03:57Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/admin-functions.php:56:		add_action( 'wp_ajax_duplicate_post_dismiss_notice', 'duplicate_post_dismiss_notice' );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/handlers/rest-api-handler.php:56:		\register_rest_route(
```

### REST permission_callback => __return_true (public REST)
```
None found
```

### Admin Pages / Menu Items
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/admin/options-page.php:75:		$page_hook = \add_options_page(
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/admin-functions.php:476:		$new_attachment_id = media_handle_sideload( $file_array, $new_id, $desc );
```

### Block render_callback (server-rendered blocks)
```
None found
```

### Settings API / Meta Box save handlers
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/admin/options.php:17:	public function register_settings() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/admin/options.php:19:			\register_setting( 'duplicate_post_group', $option );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/handlers/save-post-handler.php:38:			\add_action( 'save_post', [ $this, 'delete_on_save_post' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/admin/options-page.php:55:			\add_action( 'admin_init', [ $this->options, 'register_settings' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/ui/classic-editor.php:78:		\add_action( 'add_meta_boxes', [ $this, 'remove_slug_meta_box' ], 10, 2 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/ui/metabox.php:37:			\add_action( 'add_meta_boxes', [ $this, 'add_custom_metabox' ], 10, 2 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/ui/metabox.php:62:				\add_meta_box(
```

### Widgets
```
None found
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/common-functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/admin-functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/vendor/composer/installed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/vendor/composer/autoload_psr4.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/vendor/composer/ClassLoader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/vendor/composer/autoload_classmap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/vendor/composer/autoload_namespaces.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/vendor/composer/InstalledVersions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/vendor/composer/autoload_real.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/vendor/composer/autoload_static.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/vendor/composer/platform_check.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/vendor/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/compat/jetpack-functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/revisions-migrator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/utils.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/post-republisher.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/watchers/republished-post-watcher.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/admin/options-form-generator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/admin/options-inputs.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/admin/options.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/watchers/copied-post-watcher.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/admin/options-page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/handlers/check-changes-handler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/handlers/save-post-handler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/handlers/handler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/handlers/rest-api-handler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/handlers/bulk-handler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/admin/views/options.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/handlers/link-handler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/watchers/bulk-actions-watcher.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/watchers/original-post-watcher.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/watchers/watchers.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/watchers/link-actions-watcher.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/duplicate-post.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/post-duplicator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/permissions-helper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/compat/wpml-functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/ui/classic-editor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/ui/bulk-actions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/ui/asset-manager.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/ui/metabox.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/ui/newsletter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/ui/user-interface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/ui/admin-bar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/ui/column.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/ui/row-actions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/ui/post-states.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/ui/block-editor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/ui/link-builder.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **19**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **6**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **0**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **0**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/ui/newsletter.php:111:		$response = \wp_remote_post(
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/vendor/composer/platform_check.php:17:            fwrite(STDERR, 'Composer detected issues in your platform:' . PHP_EOL.PHP_EOL . implode(PHP_EOL, $issues) . PHP_EOL.PHP_EOL);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/vendor/autoload.php:12:            fwrite(STDERR, $err);
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/admin-functions.php:396:			$meta_value = maybe_unserialize( $meta_value );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/duplicate-post/src/post-duplicator.php:301:				$meta_value = \maybe_unserialize( $meta_value );
```

