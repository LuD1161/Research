# Attack Surface: aruba-hispeed-cache

> Generated: 2026-06-16T19:03:52Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/src/AHSC_Warmer.php:6:    \add_action( 'wp_ajax_ahcs_cache_warmer',  'ahsc_cache_warmer_ajax_action' , 100 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:288:add_action( 'wp_ajax_ahcs_clear_cache',  'ahsc_tool_bar_purge' , 100 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:327:add_action( 'wp_ajax_ahsc_clear_expired_transient',  'ahsc_clear_expired_transient' , 100 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:399:add_action("wp_ajax_ahsc_disable_debug", "ahsc_disable_debug");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:423:add_action("wp_ajax_ahsc_enable_purge", "ahsc_ajax_enable_purge");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:443:add_action("wp_ajax_ahsc_purge_homepage_on_edit", "ahsc_ajax_purge_homepage_on_edit");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:460:add_action("wp_ajax_ahsc_purge_page_on_new_comment", "ahsc_ajax_purge_page_on_new_comment");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:476:add_action("wp_ajax_ahsc_purge_archive_on_edit", "ahsc_ajax_purge_archive_on_edit");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:493:add_action("wp_ajax_ahsc_cache_warmer", "ahsc_ajax_cache_warmer");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:510:add_action("wp_ajax_ahsc_static_cache", "ahsc_ajax_static_cache");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:526:add_action("wp_ajax_ahsc_lazy_load", "ahsc_ajax_lazy_load");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:541:add_action("wp_ajax_ahsc_html_optimizer", "ahsc_ajax_html_optimizer");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:556:add_action("wp_ajax_ahsc_dns_preconnect", "ahsc_ajax_dns_preconnect");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:571:add_action("wp_ajax_ahsc_dns_preconnect_domain_list", "ahsc_ajax_dns_preconnect_domain_list");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:611:add_action("wp_ajax_ahsc_enable_cron", "ahsc_ajax_enable_cron");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:638:add_action("wp_ajax_ahsc_cron_status", "ahsc_ajax_cron_status");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:654:add_action("wp_ajax_ahsc_cron_time", "ahsc_ajax_cron_time");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:674:add_action("wp_ajax_ahsc_xmlrpc_status", "ahsc_ajax_xmlrpc_status");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:690:add_action("wp_ajax_ahsc_reset_options", "ahsc_ajax_reset_options");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:706:/*add_action("wp_ajax_ahsc_debug_status", "ahsc_ajax_debug_status");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:725:add_action("wp_ajax_ahsc_dboptimization", "ahsc_ajax_dboptimization_active");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/src/AHSC_Apc.php:5:add_action("wp_ajax_ahsc_check_apc_file", "ahsc_check_apc_file");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/src/AHSC_Apc.php:28:add_action("wp_ajax_ahsc_create_apc_file", "ahsc_create_apc_file");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/src/AHSC_Apc.php:45:add_action("wp_ajax_ahsc_update_apc_Settings", "ahsc_update_apc_Settings");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/src/AHSC_Apc.php:60:add_action("wp_ajax_ahsc_delete_apc_file", "ahsc_delete_apc_file");
```

### WordPress AJAX Handlers (unauthenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:424://add_action("wp_ajax_nopriv_ahsc_enable_purge", "ahsc_ajax_enable_purge");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:444://add_action("wp_ajax_nopriv_ahsc_purge_homepage_on_edit", "ahsc_ajax_purge_homepage_on_edit");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:461://add_action("wp_ajax_nopriv_ahsc_purge_page_on_new_comment", "ahsc_ajax_purge_page_on_new_comment");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:477://add_action("wp_ajax_nopriv_ahsc_purge_archive_on_edit", "ahsc_ajax_purge_archive_on_edit");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:494://add_action("wp_ajax_nopriv_ahsc_cache_warmer", "ahsc_ajax_cache_warmer");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:511://add_action("wp_ajax_nopriv_ahsc_static_cache", "ahsc_ajax_static_cache");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:527://add_action("wp_ajax_nopriv_ahsc_lazy_load", "ahsc_ajax_lazy_load");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:542://add_action("wp_ajax_nopriv_ahsc_html_optimizer", "ahsc_ajax_html_optimizer");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:557://add_action("wp_ajax_nopriv_ahsc_dns_preconnect", "ahsc_ajax_dns_preconnect");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:572://add_action("wp_ajax_nopriv_ahsc_dns_preconnect_domain_list", "ahsc_ajax_dns_preconnect_domain_list");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:612://add_action("wp_ajax_nopriv_ahsc_enable_cron", "ahsc_ajax_enable_cron");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:639://add_action("wp_ajax_nopriv_ahsc_cron_status", "ahsc_ajax_cron_status");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:655://add_action("wp_ajax_nopriv_ahsc_cron_time", "ahsc_ajax_cron_time");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:675://add_action("wp_ajax_nopriv_ahsc_xmlrpc_status", "ahsc_ajax_xmlrpc_status");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:691://add_action("wp_ajax_nopriv_ahsc_reset_options", "ahsc_ajax_reset_options");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:707:add_action("wp_ajax_nopriv_ahsc_debug_status", "ahsc_ajax_debug_status");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:726://add_action("wp_ajax_nopriv_ahsc_dboptimization", "ahsc_ajax_dboptimization_active");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/src/AHSC_Apc.php:6://add_action("wp_ajax_nopriv_ahsc_check_apc_file", "ahsc_check_apc_file");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/src/AHSC_Apc.php:29://add_action("wp_ajax_nopriv_ahsc_create_apc_file", "ahsc_create_apc_file");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/src/AHSC_Apc.php:46://add_action("wp_ajax_nopriv_ahsc_update_apc_Settings", "ahsc_update_apc_Settings");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/src/AHSC_Apc.php:61://add_action("wp_ajax_nopriv_ahsc_delete_apc_file", "ahsc_delete_apc_file");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/src/AHSC_Warmer.php:7:    \add_action( 'wp_ajax_nopriv_ahcs_cache_warmer', 'ahsc_cache_warmer_ajax_action' , 100 );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/admin/AHSC_Admin_Menu.php:11:	\add_submenu_page(
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
None found
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:113:register_activation_hook(__FILE__,	'AHSC_activation' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:118:register_deactivation_hook(__FILE__,'AHSC_deactivation');
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/src/AHSC_XmlRPC.php:10:		add_filter( 'xmlrpc_methods', function ( $methods ) {
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/assets/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/admin/assets/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/admin/pages/AHSC_Page.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/admin/pages/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/admin/pages/AHSC_Settings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/admin/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/assets/js/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/uninstall.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/languages/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/src/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/src/Purger/WpPurger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/src/Purger/AbstractPurger.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **27**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **25**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **9**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **8**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/src/AHSC_Check.php:205:	$response = \wp_remote_get(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/src/Purger/WpPurger.php:129:			\wp_remote_get(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/src/AHSC_Warmer.php:118:		$html = curl_exec($ch);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/src/AHSC_Warmer.php:148:				curl_exec( $ch );
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/aruba-hispeed-cache.php:413:				 $ahsc_response['removed_wp_debug_log_file']=unlink( $ahsc_file );//@phpcs:ignore WordPress.WP.AlternativeFunctions.unlink_unlink
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/uninstall.php:32:		@unlink( $ahsc_file );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/src/assets/AHSC_WPCT.php:357:		$result = file_put_contents( $this->wp_config_path, $contents, LOCK_EX );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/src/AHSC_Apc.php:69:			@unlink( $file );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/src/AHSC_Functions.php:72:		@unlink( $file );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/src/AHSC_Functions.php:241:					@unlink( WP_CONTENT_DIR . '/object-cache.php' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/aruba-hispeed-cache/src/AHSC_Warmer.php:150:				file_put_contents( 'php://stderr', $exceptiongeneral . "\n" );
```

### Deserialization (object injection surface)
```
None found
```

