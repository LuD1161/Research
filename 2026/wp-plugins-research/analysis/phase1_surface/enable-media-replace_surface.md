# Attack Surface: enable-media-replace

> Generated: 2026-06-16T19:03:58Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/ajax.php:14:			add_action( "wp_ajax_emr_{$action}", array( $this, $action ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/external/upsell_installer.php:3:add_action( 'wp_ajax_emr_plugin_install', 'emr_plugin_install' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/external/upsell_installer.php:100:add_action( 'wp_ajax_emr_plugin_activate', 'emr_activate' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/notices/src/NoticeController.php:27:      add_action('wp_ajax_' . $this->notice_option, array($this, 'ajax_action'));
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/emr-plugin.php:178:        add_submenu_page('upload.php',$title, $title, 'upload_files', 'enable-media-replace/enable-media-replace.php', array($this, 'route'));
```

### Shortcodes
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/emr-plugin.php:127:        add_shortcode('file_modified', array($this, 'get_modified_date'));
```

### Cron Jobs
```
None found
```

### File Upload Handlers
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/Controller/ReplaceController.php:167:      $filtered = apply_filters( 'wp_handle_upload', array(
```

### Block render_callback (server-rendered blocks)
```
None found
```

### Settings API / Meta Box save handlers
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/emr-plugin.php:154:        add_action('add_meta_boxes_attachment', array($this, 'add_meta_boxes'), 10, 2);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/emr-plugin.php:162:          //add_action( 'add_meta_boxes', function () {  );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/emr-plugin.php:430:    public function add_meta_boxes($post)
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/emr-plugin.php:441:        add_meta_box('emr-replace-box', __('Replace Media', 'enable-media-replace'), array($this, 'replace_meta_box'), 'attachment', 'side', 'low');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/emr-plugin.php:444:            add_meta_box('emr-showthumbs-box', __('Replaced Thumbnails Preview', 'enable-media-replace'), array($this, 'show_thumbs_box'), 'attachment', 'side', 'low');
```

### Widgets
```
None found
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/enable-media-replace.php:94://register_uninstall_hook( __FILE__, '\EnableMediaReplace\emr_uninstall' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/enable-media-replace.php:95:register_deactivation_hook( __FILE__,  array('\EnableMediaReplace\InstallHelper','deactivatePlugin') );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/enable-media-replace.php:96:register_uninstall_hook(__FILE__,  array('\EnableMediaReplace\InstallHelper','uninstallPlugin') );
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
None found
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/ajax.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/emr-plugin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/api.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/uihelper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/cache.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/external/upsell_installer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/external/wpbakery.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/external/siteorigin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/external/elementor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/compat.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/installHelper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/externals.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/img/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/views/upsell.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/languages/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/PackageLoader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/replacer/src/Replacer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/log/src/view-debug-box.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/log/src/DebugItem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/log/src/ShortPixelLogger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/replacer/src/Modules/Elementor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/replacer/src/Modules/Breakdance.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/replacer/src/Modules/YoastSeo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/replacer/src/Modules/WpBakery.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/replacer/src/Libraries/Unserialize/DisallowedClassesSubstitutor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/replacer/src/Libraries/Unserialize/Unserialize.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/filesystem/src/Controller/FileSystemController.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/notices/src/NoticeController.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/filesystem/src/Model/File/DirectoryModel.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/notices/src/NoticeModel.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **15**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **6**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **8**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **8**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/api.php:148:				$response = wp_remote_post( $this->url, $request );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/Controller/RemoteNoticeController.php:96:						$notices_response = wp_safe_remote_request( $url );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/filesystem/src/Controller/FileSystemController.php:251:      $response = wp_remote_get( $url, $args_for_get );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/filesystem/src/Controller/FileSystemController.php:316:			curl_exec($ch);
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/classes/Controller/ReplaceController.php:502:	       @unlink($attached_file);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/filesystem/src/Model/File/DirectoryModel.php:314:        $result = @mkdir($this->path, $permission , true);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/filesystem/src/Model/File/DirectoryModel.php:565:     return rmdir($this->getPath());
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/filesystem/src/Model/File/FileModel.php:335:      fwrite($handle, $message);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/log/src/ShortPixelLogger.php:86:        file_put_contents($this->logPath, '-- Log Reset -- ' . PHP_EOL);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/log/src/ShortPixelLogger.php:205:      fwrite($file, $line);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/log/src/ShortPixelLogger.php:206:      //        file_put_contents($this->logPath,$line, FILE_APPEND);
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/replacer/src/Replacer.php:405:	    	$content = Unserialize::unserialize($content, $args);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/replacer/src/Libraries/Unserialize/Unserialize.php:4:// Taken from : https://github.com/dbrumann/polyfill-unserialize/
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/replacer/src/Libraries/Unserialize/Unserialize.php:8:     * @see https://secure.php.net/manual/en/function.unserialize.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/replacer/src/Libraries/Unserialize/Unserialize.php:15:    public static function unserialize($serialized, array $options = array())
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/replacer/src/Libraries/Unserialize/Unserialize.php:18:            return \unserialize($serialized, $options);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/replacer/src/Libraries/Unserialize/Unserialize.php:21:            return \unserialize($serialized);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/replacer/src/Libraries/Unserialize/Unserialize.php:30:                'unserialize(): allowed_classes option should be array or boolean',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/enable-media-replace/build/shortpixel/replacer/src/Libraries/Unserialize/Unserialize.php:37:        return \unserialize($worker->getSubstitutedSerialized());
```

