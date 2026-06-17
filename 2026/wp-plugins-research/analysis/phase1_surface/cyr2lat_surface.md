# Attack Surface: cyr2lat

> Generated: 2026-06-16T19:03:57Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Settings/Tables.php:66:		add_action( 'wp_ajax_' . self::SAVE_TABLE_ACTION, [ $this, 'save_table' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/libs/wp-background-processing/wp-async-request.php:61:        add_action('wp_ajax_' . $this->identifier, array($this, 'maybe_handle'));
```

### WordPress AJAX Handlers (unauthenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/libs/wp-background-processing/wp-async-request.php:62:        add_action('wp_ajax_nopriv_' . $this->identifier, array($this, 'maybe_handle'));
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Settings/Abstracts/SettingsBase.php:396:			add_menu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Settings/Abstracts/SettingsBase.php:407:		add_submenu_page(
```

### Shortcodes
```
None found
```

### Cron Jobs
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/libs/wp-background-processing/wp-background-process.php:608:            wp_schedule_event(\time(), $this->cron_interval_identifier, $this->cron_hook_identifier);
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Settings/Abstracts/SettingsBase.php:648:		register_setting( $this->option_group(), $this->option_name() );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/vendor/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/vendor/composer/autoload_real.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/vendor/composer/autoload_namespaces.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/vendor/composer/InstalledVersions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/vendor/composer/installed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/vendor/composer/autoload_psr4.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/vendor/composer/autoload_classmap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/vendor/composer/autoload_files.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/vendor/composer/autoload_static.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/vendor/composer/ClassLoader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/libs/wp-background-processing/wp-async-request.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/libs/wp-background-processing/wp-background-process.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/libs/polyfill-mbstring/Mbstring.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/libs/polyfill-mbstring/bootstrap80.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/libs/polyfill-mbstring/bootstrap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/includes/deprecated.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Request.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Requirements.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/ConversionTables.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Settings/Converter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Settings/Settings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Settings/Tables.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Settings/PluginSettingsBase.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Settings/Abstracts/SettingsInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/libs/polyfill-mbstring/Resources/unidata/titleCaseRegexp.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/libs/polyfill-mbstring/Resources/unidata/lowerCase.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Settings/Abstracts/SettingsBase.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Transliteration/SlugContext.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/libs/polyfill-mbstring/Resources/unidata/upperCase.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Transliteration/Transliterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/BackgroundProcesses/ConversionProcess.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/BackgroundProcesses/TermConversionProcess.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Settings/SystemInfo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/BackgroundProcesses/PostConversionProcess.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/WPCli.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/ErrorHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/AdminNotices.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Converter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Main.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/ACF.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Slugs/BaseService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Slugs/FilenameService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Slugs/PostSlugService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Slugs/GlobalAttributeService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Slugs/VariationAttributeService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Slugs/OldSlugRedirectService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Slugs/LegacySanitizeTitleBridge.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Slugs/TermSlugService.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/src/php/Slugs/LocalAttributeService.php
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
- `$wpdb->prepare` calls: **5**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/libs/wp-background-processing/wp-async-request.php:85:        return wp_remote_post(esc_url_raw($url), $args);
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/vendor/autoload.php:12:            fwrite(STDERR, $err);
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/cyr2lat/libs/wp-background-processing/wp-background-process.php:426:                $batch->data = maybe_unserialize($item->{$value_column});
```

