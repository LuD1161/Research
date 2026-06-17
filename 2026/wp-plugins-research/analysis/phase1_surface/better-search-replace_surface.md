# Attack Surface: better-search-replace

> Generated: 2026-06-16T19:03:53Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
None found
```

### WordPress AJAX Handlers (unauthenticated)
```
None found
```

### admin-post Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-main.php:127:		$this->loader->add_action( 'admin_post_bsr_view_details', $plugin_admin, 'load_details' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-main.php:128:		$this->loader->add_action( 'admin_post_bsr_download_sysinfo', $plugin_admin, 'download_sysinfo' );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-admin.php:87:		add_submenu_page( 'tools.php', __( 'Better Search Replace', 'better-search-replace' ), __( 'Better Search Replace', 'better-search-replace' ), $cap, 'better-search-replace', array( $this, 'bsr_menu_pages_callback' ) );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-admin.php:271:		register_setting( 'bsr_settings_fields', 'bsr_page_size', 'absint' );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/templates/bsr-help.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/templates/bsr-dashboard.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/templates/bsr-settings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/templates/sidebar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/templates/bsr-search-replace.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-templates-helper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-admin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-ajax.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-plugin-footer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-db.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-main.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-compatibility.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-i18n.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-utils.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-loader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/assets/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/vendor/brumann/polyfill-unserialize/src/Unserialize.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/vendor/brumann/polyfill-unserialize/src/DisallowedClassesSubstitutor.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **1**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **5**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **4**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **0**

### External HTTP Requests
```
None found
```

### File System Operations (first 30 matches)
```
None found
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-db.php:254:						$edited_data 	= $this->recursive_unserialize_replace( $args['search_for'], $args['replace_with'], $data_to_fix, false, $args['case_insensitive'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-db.php:275:				$edited_data = $this->recursive_unserialize_replace( $args['search_for'], $args['replace_with'], $data_to_fix, false, $args['case_insensitive'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-db.php:331:	public function recursive_unserialize_replace( $from = '', $to = '', $data = '', $serialised = false, $case_insensitive = false ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-db.php:341:			if ( is_string( $data ) && ! is_serialized_string( $data ) && ( $unserialized = $this->unserialize( $data ) ) !== false ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-db.php:342:				$data = $this->recursive_unserialize_replace( $from, $to, $unserialized, true, $case_insensitive );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-db.php:348:					$_tmp[ $key ] = $this->recursive_unserialize_replace( $from, $to, $value, false, $case_insensitive );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-db.php:373:						$_tmp->$key = $this->recursive_unserialize_replace( $from, $to, $value, false, $case_insensitive );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-db.php:382:				$unserialized = $this->unserialize( $data );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-db.php:384:				if ( $unserialized !== false ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-db.php:385:					$data = $this->recursive_unserialize_replace( $from, $to, $unserialized, true, $case_insensitive );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-db.php:442:	 * Return unserialized object or array
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-db.php:449:	public static function unserialize( $serialized_string ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-db.php:457:			$unserialized_string = @unserialize( $serialized_string, array('allowed_classes' => false ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-db.php:459:			$unserialized_string = @BSR\Brumann\Polyfill\Unserialize::unserialize( $serialized_string, array( 'allowed_classes' => false ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-db.php:462:		return $unserialized_string;
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-main.php:87:			require_once BSR_PATH . 'vendor/brumann/polyfill-unserialize/src/Unserialize.php';
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/includes/class-bsr-main.php:88:			require_once BSR_PATH . 'vendor/brumann/polyfill-unserialize/src/DisallowedClassesSubstitutor.php';
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/vendor/brumann/polyfill-unserialize/src/Unserialize.php:8:     * @see https://secure.php.net/manual/en/function.unserialize.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/vendor/brumann/polyfill-unserialize/src/Unserialize.php:15:    public static function unserialize($serialized, array $options = array())
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/vendor/brumann/polyfill-unserialize/src/Unserialize.php:18:            return \unserialize($serialized, $options);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/vendor/brumann/polyfill-unserialize/src/Unserialize.php:21:            return \unserialize($serialized);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/vendor/brumann/polyfill-unserialize/src/Unserialize.php:30:                'unserialize(): allowed_classes option should be array or boolean',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/better-search-replace/vendor/brumann/polyfill-unserialize/src/Unserialize.php:37:        return \unserialize($worker->getSubstitutedSerialized());
```

