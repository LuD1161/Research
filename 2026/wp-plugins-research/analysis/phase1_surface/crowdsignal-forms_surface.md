# Attack Surface: crowdsignal-forms

> Generated: 2026-06-16T19:03:56Z

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
None found
```

### admin-post Handlers (UNAUTHENTICATED)
```
None found
```

### REST API Routes
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/rest-api/controllers/class-nps-controller.php:48:		register_rest_route(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/rest-api/controllers/class-nps-controller.php:60:		register_rest_route(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/rest-api/controllers/class-polls-controller.php:48:		register_rest_route(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/rest-api/controllers/class-polls-controller.php:62:		register_rest_route(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/rest-api/controllers/class-polls-controller.php:76:		register_rest_route(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/rest-api/controllers/class-polls-controller.php:89:		register_rest_route(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/rest-api/controllers/class-feedback-controller.php:48:		register_rest_route(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/rest-api/controllers/class-feedback-controller.php:60:		register_rest_route(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/rest-api/controllers/class-account-controller.php:44:		register_rest_route(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/rest-api/controllers/class-account-controller.php:56:		register_rest_route(
```

### REST permission_callback => __return_true (public REST)
```
None found
```

### Admin Pages / Menu Items
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/admin/class-crowdsignal-forms-admin.php:78:			add_options_page( 'Crowdsignal', 'Crowdsignal', 'manage_options', 'crowdsignal-settings', array( $this->settings_page, 'output' ) );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/frontend/blocks/class-crowdsignal-forms-vote-item-block.php:47:		register_block_type(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/frontend/blocks/class-crowdsignal-forms-vote-item-block.php:53:				'render_callback' => array( $this, 'render' ),
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/frontend/blocks/class-crowdsignal-forms-vote-item-block.php:73:	 * Returns the attributes definition array for register_block_type
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/frontend/blocks/class-crowdsignal-forms-applause-block.php:49:		register_block_type(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/frontend/blocks/class-crowdsignal-forms-applause-block.php:55:				'render_callback' => array( $this, 'render' ),
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/frontend/blocks/class-crowdsignal-forms-applause-block.php:104:	 * Returns the attributes definition array for register_block_type
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/frontend/blocks/class-crowdsignal-forms-poll-block.php:49:		register_block_type(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/frontend/blocks/class-crowdsignal-forms-poll-block.php:55:				'render_callback' => array( $this, 'render' ),
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/frontend/blocks/class-crowdsignal-forms-poll-block.php:109:	 * Returns the attributes definition array for register_block_type
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/frontend/blocks/class-crowdsignal-forms-feedback-block.php:57:		register_block_type(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/frontend/blocks/class-crowdsignal-forms-feedback-block.php:63:				'render_callback' => array( $this, 'render' ),
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/frontend/blocks/class-crowdsignal-forms-feedback-block.php:144:	 * Returns the attributes definition array for register_block_type
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/frontend/blocks/class-crowdsignal-forms-nps-block.php:57:		register_block_type(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/frontend/blocks/class-crowdsignal-forms-nps-block.php:63:				'render_callback' => array( $this, 'render' ),
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/frontend/blocks/class-crowdsignal-forms-nps-block.php:116:	 * Returns the attributes definition array for register_block_type
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/frontend/blocks/class-crowdsignal-forms-vote-block.php:49:		register_block_type(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/frontend/blocks/class-crowdsignal-forms-vote-block.php:55:				'render_callback' => array( $this, 'render' ),
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/frontend/blocks/class-crowdsignal-forms-vote-block.php:105:	 * Returns the attributes definition array for register_block_type
```

### Settings API / Meta Box save handlers
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/admin/class-crowdsignal-forms-settings.php:155:	public function register_settings() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/admin/class-crowdsignal-forms-settings.php:163:				register_setting(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/admin/class-admin-hooks.php:93:		add_action( 'save_post', array( $this, 'save_polls_to_api' ), 10, 3 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/admin/class-admin-hooks.php:94:		add_action( 'save_post', array( $this, 'save_surveys_to_api' ), 10, 3 );
```

### Widgets
```
None found
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/class-crowdsignal-forms.php:165:		register_deactivation_hook( CROWDSIGNAL_FORMS_PLUGIN_FILE, array( $this, 'deactivation' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/class-crowdsignal-forms.php:166:		register_activation_hook( CROWDSIGNAL_FORMS_PLUGIN_FILE, array( $this, 'activate' ) );
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
None found
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/uninstall.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/build/nps.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/build/editor.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/build/vote.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/build/poll.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/build/apifetch.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/build/applause.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/build/feedback.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/gateways/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/admin/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/auth/class-api-auth-provider-interface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/auth/class-crowdsignal-forms-api-authenticator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/auth/class-default-api-auth-provider.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/frontend/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/rest-api/controllers/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/class-autoloader.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **10**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **5**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **6**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **6**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/auth/class-default-api-auth-provider.php:66:		$data = wp_remote_post(
```

### File System Operations (first 30 matches)
```
None found
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/gateways/class-post-survey-meta-gateway.php:58:				$data = maybe_unserialize( $row->meta_value );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/gateways/class-post-survey-meta-gateway.php:136:			$data      = maybe_unserialize( $values[0] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/gateways/class-post-poll-meta-gateway.php:53:				$data = maybe_unserialize( $row->meta_value );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/gateways/class-post-poll-meta-gateway.php:124:		$poll_data = maybe_unserialize( $result->meta_value );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/crowdsignal-forms/includes/gateways/class-post-poll-meta-gateway.php:158:			$comment_poll_ids = maybe_unserialize( $meta->meta_value );
```

