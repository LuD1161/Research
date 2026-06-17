# Attack Surface: custom-post-type-permalinks

> Generated: 2026-06-16T19:03:57Z

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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-post-type-permalinks/CPTP/Module/Admin.php:52:			register_setting( 'permalink', $post_type . '_structure' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-post-type-permalinks/CPTP/Module/Admin.php:66:		register_setting( 'permalink', 'no_taxonomy_structure' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-post-type-permalinks/CPTP/Module/Admin.php:79:		register_setting( 'permalink', 'add_post_type_for_tax' );
```

### Widgets
```
None found
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-post-type-permalinks/custom-post-type-permalinks.php:73:register_activation_hook( CPTP_PLUGIN_FILE, array( CPTP::get_instance(), 'activate' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-post-type-permalinks/CPTP.php:124:		register_uninstall_hook( CPTP_PLUGIN_FILE, array( __CLASS__, 'uninstall' ) );
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
None found
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-post-type-permalinks/custom-post-type-permalinks.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-post-type-permalinks/CPTP/Util.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-post-type-permalinks/CPTP/Module.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-post-type-permalinks/CPTP.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-post-type-permalinks/CPTP/Module/FlushRules.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-post-type-permalinks/CPTP/Module/Admin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-post-type-permalinks/CPTP/Module/Setting.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-post-type-permalinks/CPTP/Module/GetArchives.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-post-type-permalinks/CPTP/Module/Permalink.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-post-type-permalinks/CPTP/Module/Rewrite.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/custom-post-type-permalinks/CPTP/Module/Option.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **0**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **1**

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

