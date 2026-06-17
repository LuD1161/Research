# Attack Surface: cloudflare

> Generated: 2026-06-16T19:03:55Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/cloudflare.loader.php:50:    add_action('wp_ajax_cloudflare_proxy', array($cloudflareHooks, 'initProxy'));
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/WordPress/Hooks.php:84:        if (function_exists('add_options_page')) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/WordPress/Hooks.php:85:            add_options_page(__('Cloudflare Configuration'), __('Cloudflare'), 'manage_options', 'cloudflare', array($this, 'cloudflareIndexPage'));
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/cloudflare.loader.php:59:    register_activation_hook(CLOUDFLARE_PLUGIN_DIR.'cloudflare.php', array($cloudflareHooks, 'activate'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/cloudflare.loader.php:62:    register_deactivation_hook(CLOUDFLARE_PLUGIN_DIR.'cloudflare.php', array($cloudflareHooks, 'deactivate'));
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/WordPress/Hooks.php:417:     * php://input can only be read once before PHP 5.6, try to grab it ONLY if the request
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/WordPress/Hooks.php:424:            $GLOBALS[self::CLOUDFLARE_JSON] = file_get_contents('php://input');
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/bootstrap-build-tests.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/WordPress/WordPressAPI.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/WordPress/PluginActions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/WordPress/HTTP2ServerPush.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/WordPress/Hooks.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/WordPress/DataStore.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/WordPress/WordPressClientAPI.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/cloudflare/cf-ip-rewrite/src/CloudFlare/IpRewrite.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/symfony/polyfill-intl-idn/bootstrap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/cloudflare/cf-ip-rewrite/src/CloudFlare/IpUtils.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/symfony/polyfill-intl-idn/bootstrap80.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/psr/log/Psr/Log/LoggerAwareTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/psr/log/Psr/Log/LoggerTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/psr/log/Psr/Log/InvalidArgumentException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/psr/log/Psr/Log/LogLevel.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/symfony/polyfill-intl-normalizer/Resources/stubs/Normalizer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/psr/log/Psr/Log/LoggerInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/psr/log/Psr/Log/NullLogger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/psr/log/Psr/Log/AbstractLogger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/psr/log/Psr/Log/LoggerAwareInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/symfony/polyfill-intl-normalizer/Resources/unidata/combiningClass.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/symfony/polyfill-intl-normalizer/Resources/unidata/canonicalComposition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/symfony/polyfill-intl-normalizer/Resources/unidata/canonicalDecomposition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/symfony/polyfill-intl-idn/Info.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/symfony/polyfill-intl-normalizer/bootstrap80.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/symfony/polyfill-intl-normalizer/bootstrap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/symfony/polyfill-intl-idn/Idn.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/symfony/polyfill-intl-normalizer/Normalizer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/symfony/polyfill-intl-idn/Resources/unidata/ignored.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/symfony/polyfill-intl-idn/Resources/unidata/deviation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/symfony/polyfill-intl-idn/Resources/unidata/virama.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/symfony/polyfill-intl-idn/Resources/unidata/disallowed_STD3_mapped.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/symfony/polyfill-intl-normalizer/Resources/unidata/compatibilityDecomposition.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/symfony/polyfill-intl-idn/Resources/unidata/DisallowedRanges.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/symfony/polyfill-intl-idn/Resources/unidata/disallowed_STD3_valid.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/symfony/polyfill-intl-idn/Resources/unidata/Regex.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/WordPress/ClientRoutes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/WordPress/ClientActions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/WordPress/Proxy.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/symfony/polyfill-intl-idn/Resources/unidata/disallowed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/WordPress/WordPressWrapper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/WordPress/Utils.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/WordPress/PluginRoutes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/DNSRecord.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/SecurityUtil.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/WordPress/Constants/Plans.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/Router/RequestRouter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/Router/RouterInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/API/AbstractAPIClient.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/API/APIInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/WordPress/Constants/Exceptions/ZoneSettingFailException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/API/Client.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/API/Host.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/API/DefaultHttpClient.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/API/AbstractPluginActions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/API/Request.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/API/HttpClientInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/Router/DefaultRestAPIRouter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/API/Plugin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/composer/autoload_psr4.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/API/PluginRoutes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/composer/autoload_namespaces.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/composer/ClassLoader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/composer/autoload_classmap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/Utils.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/composer/autoload_real.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/composer/autoload_static.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/API/Exception/ZoneSettingFailException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/composer/autoload_files.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/API/Exception/CloudFlareException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/Integration/DefaultConfig.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/Integration/IntegrationInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/Integration/DefaultIntegration.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/Integration/IntegrationAPIInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/Integration/DefaultLogger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/Integration/DataStoreInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/deprecated/Integration/ConfigInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/DNSRecord.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/IntlUtil.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/symfony/polyfill-intl-idn/Resources/unidata/mapped.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/SecurityUtil.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/Utils.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/WordPress/Utils.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/API/Request.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/API/APIInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/Integration/IntegrationInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/WordPress/HTTP2ServerPush.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/Integration/DataStoreInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/Integration/ConfigInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/Integration/DefaultIntegration.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/Integration/DefaultLogger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/Integration/IntegrationAPIInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/API/DefaultHttpClient.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/Integration/DefaultConfig.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/WordPress/WordPressAPI.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/API/Client.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/API/AbstractAPIClient.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/API/AbstractPluginActions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/WordPress/PluginActions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/API/Plugin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/WordPress/Hooks.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/API/Host.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/WordPress/ClientRoutes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/API/HttpClientInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/WordPress/DataStore.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/API/PluginRoutes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/WordPress/Proxy.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/WordPress/ClientActions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/WordPress/WordPressWrapper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/Router/RequestRouter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/API/Exception/CloudFlareException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/API/Exception/ZoneSettingFailException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/WordPress/WordPressClientAPI.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/Router/RouterInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/WordPress/PluginRoutes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/Router/DefaultRestAPIRouter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/WordPress/Constants/Plans.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/src/WordPress/Constants/Exceptions/ZoneSettingFailException.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **1**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **2**

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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/bootstrap-build-tests.php:18:	fwrite( STDERR, "Source vendor/autoload.php not found. Run: composer install\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/bootstrap-build-tests.php:23:	fwrite( STDERR, "Build vendor/autoload.php not found. Run: composer build\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cloudflare/vendor/autoload.php:12:            fwrite(STDERR, $err);
```

### Deserialization (object injection surface)
```
None found
```

