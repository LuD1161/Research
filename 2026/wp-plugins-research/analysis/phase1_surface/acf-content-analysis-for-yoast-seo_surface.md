# Attack Surface: acf-content-analysis-for-yoast-seo

> Generated: 2026-06-16T19:03:51Z

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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/tests/Unit/Dependencies/Dependency_ACF_Test.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/tests/Unit/Doubles/acf.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/tests/Unit/Dependencies/Dependency_Yoast_SEO_Test.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/tests/Unit/Doubles/Passing_Dependency_Mock.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/tests/Unit/Doubles/Failing_Dependency_Mock.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/tests/Unit/Assets_Test.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/tests/Unit/Requirements_Test.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/tests/Unit/Main_Test.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/tests/Unit/Registry_Test.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/vendor/composer/installed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/tests/Unit/Configuration/String_Store_Test.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/tests/Unit/Configuration/Configuration_Test.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/vendor/composer/autoload_psr4.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/vendor/composer/ClassLoader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/vendor/composer/autoload_classmap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/vendor/composer/autoload_namespaces.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/vendor/composer/InstalledVersions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/vendor/composer/autoload_real.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/vendor/composer/autoload_static.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/vendor/composer/platform_check.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/vendor/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/inc/configuration/string-store.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/inc/configuration/configuration.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/inc/assets.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/inc/ac-yoast-seo-acf-content-analysis.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/tests/js/system/data/acf4.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/inc/dependencies/dependency-interface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/inc/dependencies/dependency-acf.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/tests/js/system/data/test-data-loader-functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/inc/dependencies/dependency-yoast-seo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/tests/js/system/data/acf5.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/inc/registry.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/inc/facade.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/inc/requirements.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/config/composer/actions.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **2**

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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/vendor/composer/platform_check.php:17:            fwrite(STDERR, 'Composer detected issues in your platform:' . PHP_EOL.PHP_EOL . implode(PHP_EOL, $issues) . PHP_EOL.PHP_EOL);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/acf-content-analysis-for-yoast-seo/vendor/autoload.php:12:            fwrite(STDERR, $err);
```

### Deserialization (object injection surface)
```
None found
```

