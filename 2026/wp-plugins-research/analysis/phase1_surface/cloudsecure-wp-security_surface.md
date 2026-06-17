# Attack Surface: cloudsecure-wp-security

> Generated: 2026-06-16T19:03:55Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:264:				add_action( 'wp_ajax_cloudsecurewp_generate_key', array( $this->two_factor_authentication, 'ajax_generate_key' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:265:				add_action( 'wp_ajax_cloudsecurewp_generate_key_and_send_email', array( $this->two_factor_authentication, 'ajax_generate_key_and_send_email' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:266:				add_action( 'wp_ajax_cloudsecurewp_verify_auth_code', array( $this->two_factor_authentication, 'ajax_verify_auth_code' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:267:				add_action( 'wp_ajax_cloudsecurewp_generate_recovery_codes', array( $this->two_factor_authentication, 'ajax_generate_recovery_codes' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:302:			add_action( 'wp_ajax_cloudsecurewp_dismiss_notice_148', array( $this->two_factor_authentication, 'ajax_dismiss_notice_148' ) );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:363:		add_menu_page( $this->info['plugin_name'], $this->info['plugin_name'], 'manage_options', $slug, array( $this, 'dashboard' ), $this->info['plugin_url'] . 'assets/images/plugin-icon.png?v=2' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:364:		add_submenu_page( $slug, 'ダッシュボード', 'ダッシュボード', 'manage_options', $slug, array( $this, 'dashboard' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:365:		add_submenu_page( $slug, 'ログイン無効化', 'ログイン無効化', 'manage_options', $slug . '_disable_login', array( $this, 'm_disable_login' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:366:		add_submenu_page( $slug, 'ログインURL変更', 'ログインURL変更', 'manage_options', $slug . '_rename_login_page', array( $this, 'm_rename_login_page' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:367:		add_submenu_page( $slug, 'ログインエラーメッセージ統一', 'ログインエラーメッセージ統一', 'manage_options', $slug . '_unify_messages', array( $this, 'm_unify_messages' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:368:		add_submenu_page( $slug, '2段階認証', '2段階認証', 'manage_options', $slug . '_two_factor_authentication', array( $this, 'm_two_factor_authentication' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:369:		add_submenu_page( $slug, '画像認証追加', '画像認証追加', 'manage_options', $slug . '_captcha', array( $this, 'm_captcha' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:370:		add_submenu_page( $slug, 'ユーザー名漏えい防止', 'ユーザー名漏えい防止', 'manage_options', $slug . '_disable_author_query', array( $this, 'm_disable_author_query' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:371:		add_submenu_page( $slug, 'XML-RPC無効化', 'XML-RPC無効化', 'manage_options', $slug . '_disable_xmlrpc', array( $this, 'm_disable_xmlrpc' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:372:		add_submenu_page( $slug, 'REST API無効化', 'REST API無効化', 'manage_options', $slug . '_disable_restapi', array( $this, 'm_disable_restapi' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:373:		add_submenu_page( $slug, '管理画面アクセス制限', '管理画面アクセス制限', 'manage_options', $slug . '_restrict_admin_page', array( $this, 'm_restrict_admin_page' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:374:		add_submenu_page( $slug, '設定ファイルアクセス防止', '設定ファイルアクセス防止', 'manage_options', $slug . '_disable_access_system_file', array( $this, 'm_disable_access_system_file' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:375:		add_submenu_page( $slug, 'シンプルWAF', 'シンプルWAF', 'manage_options', $slug . '_waf', array( $this, 'm_waf' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:376:		add_submenu_page( $slug, 'ログイン通知', 'ログイン通知', 'manage_options', $slug . '_login_notification', array( $this, 'm_login_notification' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:377:		add_submenu_page( $slug, 'アップデート通知', 'アップデート通知', 'manage_options', $slug . '_update_notification', array( $this, 'm_update_notice' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:378:		add_submenu_page( $slug, 'サーバーエラー通知', 'サーバーエラー通知', 'manage_options', $slug . '_server_error_notification', array( $this, 'm_server_error_notification' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:379:		add_submenu_page( $slug, 'ログイン履歴', 'ログイン履歴', 'manage_options', $slug . '_login_log', array( $this, 'm_login_log' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:382:			add_menu_page( '2段階認証の設定', '2段階認証の設定', 'read', $slug . '_two_factor_authentication_registration', array( $this, 'm_two_factor_authentication_registration' ), 'dashicons-lock', 72 );
```

### Shortcodes
```
None found
```

### Cron Jobs
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/update-notice.php:393:			wp_schedule_event( time(), 'daily', self::KEY_CRON );
```

### File Upload Handlers
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/lib/class-waf-rules.php:384:			'regex_pattern'    => '<\?fgets|move_uploaded_file|\$_session|readfile|ftp_put|ftp_fget|gzencode|ftp_nb_put|bzopen|readdir|\$_post|fopen|gzread|ftp_nb_fput|ftp_nb_fget|ftp_get|\$_get|scandir|fscanf|readgzfile|fread|proc_open|fgetc|fgetss|ftp_fput|ftp_nb_get|session_start|fwrite|gzwrite|gzopen|gzcompress',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/lib/class-waf-rules.php:406:			'regex_pattern'    => '(?:(?:\b(?:f(?:tp_(?:nb_)?f?(?:ge|pu)t|get(?:s?s|c)|scanf|write|open|read)|gz(?:(?:encod|writ)e|compress|open|read)|s(?:ession_start|candir)|read(?:(?:gz)?file|dir)|move_uploaded_file|(?:proc_|bz)open)|\$_(?:(?:pos|ge)t|session))\b|<\?(?!xml))',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/lib/class-waf-rules.php:417:			'regex_pattern'    => '(?:(?:\b(?:f(?:tp_(?:nb_)?f?(?:ge|pu)t|get(?:s?s|c)|scanf|write|open|read)|gz(?:(?:encod|writ)e|compress|open|read)|s(?:ession_start|candir)|read(?:(?:gz)?file|dir)|move_uploaded_file|(?:proc_|bz)open)|\$_(?:(?:pos|ge)t|session))\b|<\?(?!xml))',
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/cloudsecure-wp.php:57:register_activation_hook( __FILE__, 'cloudsecurewp_activate' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/cloudsecure-wp.php:66:register_deactivation_hook( __FILE__, 'cloudsecurewp_deactivate' );
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/waf-engine.php:41:		$request_body     = file_get_contents( 'php://input' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/waf-engine.php:77:			$post_data = file_get_contents( 'php://input' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/cloudsecure-wp.php:207:						add_filter( 'xmlrpc_methods', array( $this->disable_xmlrpc, 'xmlrpc_methods' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/disable-xmlrpc.php:181:	 * xmlrpc_methods
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/disable-xmlrpc.php:183:	function xmlrpc_methods( $methods ) {
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/uninstall.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/really-simple-captcha/tmp/index.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **9**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **22**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **81**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **42**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/update-notice.php:146:		$result = wp_remote_post( site_url( '/wp-cron.php' ) );
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/lib/class-waf-rules.php:384:			'regex_pattern'    => '<\?fgets|move_uploaded_file|\$_session|readfile|ftp_put|ftp_fget|gzencode|ftp_nb_put|bzopen|readdir|\$_post|fopen|gzread|ftp_nb_fput|ftp_nb_fget|ftp_get|\$_get|scandir|fscanf|readgzfile|fread|proc_open|fgetc|fgetss|ftp_fput|ftp_nb_get|session_start|fwrite|gzwrite|gzopen|gzcompress',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/lib/class-waf-rules.php:406:			'regex_pattern'    => '(?:(?:\b(?:f(?:tp_(?:nb_)?f?(?:ge|pu)t|get(?:s?s|c)|scanf|write|open|read)|gz(?:(?:encod|writ)e|compress|open|read)|s(?:ession_start|candir)|read(?:(?:gz)?file|dir)|move_uploaded_file|(?:proc_|bz)open)|\$_(?:(?:pos|ge)t|session))\b|<\?(?!xml))',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/lib/class-waf-rules.php:417:			'regex_pattern'    => '(?:(?:\b(?:f(?:tp_(?:nb_)?f?(?:ge|pu)t|get(?:s?s|c)|scanf|write|open|read)|gz(?:(?:encod|writ)e|compress|open|read)|s(?:ession_start|candir)|read(?:(?:gz)?file|dir)|move_uploaded_file|(?:proc_|bz)open)|\$_(?:(?:pos|ge)t|session))\b|<\?(?!xml))',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/lib/class-waf-rules.php:450:			'regex_pattern'    => 'php|chr|fopen|fwrite|globals|system|passthru|serialize|include|php_uname|popen|proc_open|mysql_query|exec|eval|create_function|proc_nice|proc_terminate|proc_get_status|proc_close|pfsockopen|leak|apache_child_terminate|posix_kill|posix_mkfifo|posix_setpgid|posix_setsid|posix_setuid|phpinfo|preg_|decode_base64|base64_decode|base64_url_decode|rot13|<\?|mfunc|mclude|dynamic-cached-content|md5|die|sha',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/lib/class-waf-rules.php:472:			'regex_pattern'    => '(?:\b(?:eval|rot13|strrev|passthru|serialize|php(?:_uname|info)|(?:preg|zlib)_\w+|mysql_query|(?:shell_)?exec|base64_(?:url_)?decode|create_function|decode_base64|gzinflate|gzdecode|gzuncompress)\b\s?(?:\(|\:)|\(chr\s?\(\s?[0-9]{1,3}\s?\)|\s?=\s?(?:fopen|fwrite)\s?\(|\b(?:system|include)\b\s?\((?:\'|\"|\$)|<\s?\?\s?=\s?system\s?\(\s?\$_|die\(\@md5|die\(\@sha)',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/htaccess.php:56:			if ( @file_put_contents( self::FILE_PATH, $contents, LOCK_EX ) ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/common.php:63:		if ( false === file_put_contents( $file_path, '[' . date_i18n( 'His' ) . ']' . $tag . $msg . "\n", FILE_APPEND | LOCK_EX ) ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/really-simple-captcha/really-simple-captcha.php:207:			fwrite( $fh, $code );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/really-simple-captcha/really-simple-captcha.php:267:				@unlink( $file );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/really-simple-captcha/really-simple-captcha.php:309:					if ( ! @unlink( $file ) ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/really-simple-captcha/really-simple-captcha.php:311:						@unlink( $file );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/really-simple-captcha/really-simple-captcha.php:337:		if ( ! wp_mkdir_p( $dir ) ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/really-simple-captcha/really-simple-captcha.php:355:			fwrite( $handle, "# Apache 2.4+\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/really-simple-captcha/really-simple-captcha.php:356:			fwrite( $handle, "<IfModule authz_core_module>\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/really-simple-captcha/really-simple-captcha.php:357:			fwrite( $handle, "    Require all denied\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/really-simple-captcha/really-simple-captcha.php:358:			fwrite( $handle, '    <FilesMatch "^\w+\.(jpe?g|gif|png)$">' . "\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/really-simple-captcha/really-simple-captcha.php:359:			fwrite( $handle, "        Require all granted\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/really-simple-captcha/really-simple-captcha.php:360:			fwrite( $handle, "    </FilesMatch>\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/really-simple-captcha/really-simple-captcha.php:361:			fwrite( $handle, "</IfModule>\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/really-simple-captcha/really-simple-captcha.php:362:			fwrite( $handle, "\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/really-simple-captcha/really-simple-captcha.php:363:			fwrite( $handle, "# Apache 2.2\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/really-simple-captcha/really-simple-captcha.php:364:			fwrite( $handle, "<IfModule !authz_core_module>\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/really-simple-captcha/really-simple-captcha.php:365:			fwrite( $handle, "    Order deny,allow\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/really-simple-captcha/really-simple-captcha.php:366:			fwrite( $handle, "    Deny from all\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/really-simple-captcha/really-simple-captcha.php:367:			fwrite( $handle, '    <FilesMatch "^\w+\.(jpe?g|gif|png)$">' . "\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/really-simple-captcha/really-simple-captcha.php:368:			fwrite( $handle, "        Allow from all\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/really-simple-captcha/really-simple-captcha.php:369:			fwrite( $handle, "    </FilesMatch>\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/really-simple-captcha/really-simple-captcha.php:370:			fwrite( $handle, "</IfModule>\n" );
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/two-factor-authentication.php:1232:			$data = unserialize( $option->option_value, array( 'allowed_classes' => false ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/two-factor-authentication.php:1497:				$unserialized    = unserialize( $row['recovery'], array( 'allowed_classes' => false ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/two-factor-authentication.php:1498:				$row['recovery'] = is_array( $unserialized ) ? $unserialized : null;
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/two-factor-authentication.php:2179:			$codes = unserialize( $row->recovery, array( 'allowed_classes' => false ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/waf-engine.php:1004:					$post_content = unserialize( $result->post_content, [ 'allowed_classes' => false ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/waf-engine.php:1031:				$cptui_data = unserialize( $cptui_data, [ 'allowed_classes' => false ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudsecure-wp-security/modules/lib/class-recovery-codes.php:148:		$stored_codes = unserialize( $stored_value, array( 'allowed_classes' => false ) );
```

