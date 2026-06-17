# Attack Surface: connect-polylang-elementor

> Generated: 2026-06-16T19:03:55Z

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
None found
```

### REST permission_callback => __return_true (public REST)
```
None found
```

### Admin Pages / Menu Items
```
None found
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/connect-polylang-elementor/includes/widgets/manager.php:24:		add_action( $hook, array( $this, 'register_widget' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/connect-polylang-elementor/includes/widgets/manager.php:36:	public function register_widget() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/connect-polylang-elementor/includes/widgets/manager.php:41:			Plugin::instance()->widgets_manager->register_widget_type( new PolylangLanguageSwitcher() );
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
None (all PHP files guarded)
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **1**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **0**

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
None found
```

### Deserialization (object injection surface)
```
None found
```

