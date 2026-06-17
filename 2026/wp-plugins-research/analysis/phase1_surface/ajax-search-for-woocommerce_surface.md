# Attack Surface: ajax-search-for-woocommerce

> Generated: 2026-06-16T19:03:51Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Settings.php:78:        add_action( 'wp_ajax_dgwt_wcas_adv_settings', [$this, 'toggleAdvancedSettings'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Analytics/UserInterface.php:61:        add_action( 'wp_ajax_dgwt_wcas_load_stats_interface', [$this, 'loadInterface'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Analytics/UserInterface.php:62:        add_action( 'wp_ajax_dgwt_wcas_laod_more_critical_searches', [$this, 'loadMoreCriticalSearches'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Analytics/UserInterface.php:63:        add_action( 'wp_ajax_dgwt_wcas_laod_more_autocomplete', [$this, 'loadMoreAutocomplete'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Analytics/UserInterface.php:64:        add_action( 'wp_ajax_dgwt_wcas_laod_more_search_page', [$this, 'loadMoreSearchPage'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Analytics/UserInterface.php:65:        add_action( 'wp_ajax_dgwt_wcas_check_critical_phrase', [$this, 'checkCriticalPhrase'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Analytics/UserInterface.php:66:        add_action( 'wp_ajax_dgwt_wcas_exclude_critical_phrase', [$this, 'excludeCriticalPhrase'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Analytics/UserInterface.php:67:        add_action( 'wp_ajax_dgwt_wcas_reset_stats', [$this, 'resetStats'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Analytics/UserInterface.php:68:        add_action( 'wp_ajax_dgwt_wcas_export_stats_csv', [$this, 'exportStats'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Admin/Troubleshooting.php:42:        add_action( 'wp_ajax_dgwt_wcas_troubleshooting_test', [$this, 'asyncTest'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Admin/Troubleshooting.php:43:        add_action( 'wp_ajax_dgwt_wcas_troubleshooting_async_action', [$this, 'asyncActionHandler'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Admin/Promo/FiboSearch2Teaser.php:28:		add_action( 'wp_ajax_' . self::DISMISS_AJAX_ACTION, [ $this, 'dismissNotice' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Admin/Promo/FeedbackNotice.php:32:		add_action( 'wp_ajax_' . self::DISMISS_AJAX_ACTION, [ $this, 'dismissNotice' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Integrations/Themes/Bacola/Bacola.php:19:        add_action( 'wp_ajax_load_more', [$this, 'set_search_post_ids_from_ajax'], 5 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/managers/class-fs-debug-manager.php:480:            add_action( "wp_ajax_fs_toggle_debug_mode", array( self::class, '_toggle_debug_mode' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Integrations/Plugins/UsCore/UsCore.php:26:        add_action( 'wp_ajax_us_ajax_grid', [$this, 'set_search_post_ids_from_ajax'], 5 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Integrations/Plugins/XforWooCommerceFilter/XforWooCommerceFilter.php:39:        add_action( 'wp_ajax_prdctfltr_respond_550', [$this, 'set_search_post_ids_from_ajax'], 5 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Integrations/Plugins/WooProductFilter/WooProductFilter.php:30:        add_action( 'wp_ajax_filtersFrontend', [$this, 'set_search_post_ids_from_ajax'], 5 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Engines/WordPressNative/DetailsBox.php:21:                add_action( 'wp_ajax_' . DGWT_WCAS_RESULT_DETAILS_ACTION, [$this, 'getResultDetails'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Engines/WordPressNative/Search.php:116:            add_action( 'wp_ajax_' . DGWT_WCAS_SEARCH_ACTION, [$this, 'getSearchResults'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/managers/class-fs-admin-notice-manager.php:147:                    add_action( "wp_ajax_fs_dismiss_notice_action_{$ajax_action_suffix}", array(
```

### WordPress AJAX Handlers (unauthenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Engines/WordPressNative/DetailsBox.php:20:                add_action( 'wp_ajax_nopriv_' . DGWT_WCAS_RESULT_DETAILS_ACTION, [$this, 'getResultDetails'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Engines/WordPressNative/Search.php:115:            add_action( 'wp_ajax_nopriv_' . DGWT_WCAS_SEARCH_ACTION, [$this, 'getSearchResults'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Integrations/Plugins/UsCore/UsCore.php:27:        add_action( 'wp_ajax_nopriv_us_ajax_grid', [$this, 'set_search_post_ids_from_ajax'], 5 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Integrations/Plugins/XforWooCommerceFilter/XforWooCommerceFilter.php:38:        add_action( 'wp_ajax_nopriv_prdctfltr_respond_550', [$this, 'set_search_post_ids_from_ajax'], 5 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Integrations/Plugins/WooProductFilter/WooProductFilter.php:31:        add_action( 'wp_ajax_nopriv_filtersFrontend', [$this, 'set_search_post_ids_from_ajax'], 5 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Integrations/Themes/Bacola/Bacola.php:20:        add_action( 'wp_ajax_nopriv_load_more', [$this, 'set_search_post_ids_from_ajax'], 5 );
```

### admin-post Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/managers/class-fs-clone-manager.php:145:                    add_action( 'admin_post_fs_clone_resolution', array( $this, '_handle_clone_resolution' ) );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Admin/AdminMenu.php:36:        add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Admin/AdminMenu.php:45:            add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/managers/class-fs-admin-menu-manager.php:837:		 *  This is a replication of `add_menu_page()` to avoid Theme Check warning.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/managers/class-fs-admin-menu-manager.php:940:		 *  This is a replication of `add_submenu_page()` to avoid Theme Check warning.
```

### Shortcodes
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/thegem-elementor.php:112:			add_shortcode(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/thegem-elementor.php:126:			add_shortcode(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/flatsome.php:20:		add_shortcode( 'search', [ 'DgoraWcas\\Shortcode', 'addBody' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/total.php:19:		add_shortcode(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/total.php:25:		add_shortcode(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Shortcode.php:11:        add_shortcode( 'wcas-search-form', [__CLASS__, 'addBody'] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Shortcode.php:12:        add_shortcode( 'fibosearch', [__CLASS__, 'addBody'] );
```

### Cron Jobs
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Analytics/Maintenance.php:34:			wp_schedule_event( strtotime( 'tomorrow' ) + 2 * HOUR_IN_SECONDS, 'daily', self::HOOK );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/managers/class-fs-debug-manager.php:296:                    wp_schedule_single_event( time() + 24 * HOUR_IN_SECONDS, 'fs_debug_turn_off_logging_hook' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/class-freemius.php:6354:                wp_schedule_event(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/class-freemius.php:6361:                wp_schedule_single_event(
```

### File Upload Handlers
```
None found
```

### Block render_callback (server-rendered blocks)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Blocks.php:23:		register_block_type(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Blocks.php:26:				'render_callback' => [ $this, 'renderCallback' ],
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Blocks.php:30:		register_block_type(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Blocks.php:33:				'render_callback' => [ $this, 'renderCallback' ],
```

### Settings API / Meta Box save handlers
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/EmbeddingViaMenu.php:59:		add_meta_box(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Admin/SettingsAPI.php:186:            register_setting( $section['id'], $this->name, [$this, 'sanitize_options'] );
```

### Widgets
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/widget.php:15:			register_widget( 'DGWT_WCAS_Search_Widget' );
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/ajax-search-for-woocommerce.php:149:            register_deactivation_hook( __FILE__, function () {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/config.php:346:     * is triggered due to registration with register_uninstall_hook().
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/config.php:369:     * is triggered due to registration with register_uninstall_hook().
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/class-freemius.php:1448:                    register_activation_hook(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/class-freemius.php:1453:                    register_activation_hook(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/class-freemius.php:1513:                register_deactivation_hook( $this->_plugin_main_file_path, array( &$this, '_deactivate_plugin_hook' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/class-freemius.php:1668:                register_activation_hook(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/class-freemius.php:1891:        private function unregister_uninstall_hook() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/class-freemius.php:4641:                        // @todo This should be only executed on activation. It should be migrated to register_activation_hook() together with other activation related logic.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/class-freemius.php:5520:            $this->unregister_uninstall_hook();
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/class-freemius.php:7432:            $this->unregister_uninstall_hook();
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/class-freemius.php:7584:                 * Since register_activation_hook() do NOT fires on updates since 3.1, and only fires
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/class-freemius.php:8228:            register_uninstall_hook( $this->_plugin_main_file_path, array( 'Freemius', '_uninstall_plugin_hook' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/class-freemius.php:9826:            register_activation_hook(
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/class-freemius.php:25253:            $tabs_html = $wp_filesystem->get_contents( "php://input" );
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/admin/troubleshooting.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/details-panel/product.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/details-panel/product-variation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/details-panel/term-product.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/admin/how-to-use.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/admin/features.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/details-panel/post-type.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/admin/indexer-header-demo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/admin/search-preview.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/admin/embedding-in-theme.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/search-form.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/admin/debug/body-term.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/admin/debug/active-integrations.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/admin/debug/body-missing-products.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/shop-isle.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/cartzilla.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/ekommart.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/the7-searchform.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/flatsome.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/savoy.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/woodmart.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/impreza.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/bigcart.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/dfd-ronneby.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/open-shop.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/storefront.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/oceanwp.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/block-shop.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/webshop.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/enfold.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/supro.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/kadence.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/minimog.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/rey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/electro.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/savoy/product-searchform_nm.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/thegem-elementor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/goya.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/sober.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/uncode.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/total.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/shopical.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/divi.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/restoration-searchform.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/astra-mu.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/neve.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/bridge.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/astra.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/rey/search-form-inline.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/shopkeeper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/blocksy/search.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/ciyashop.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/bricks.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/avada.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/xstore.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/woostify.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/salient.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/estore.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/top-store-pro.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/thegem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/rehub-theme.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/essentials.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/qwery.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/blocksy.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/bacola.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/generatepress.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/betheme.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/storebiz.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/admin/debug/body-analytics.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/admin/debug/body-catalog-visibility.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/konte.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/admin/debug/debug.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/admin/debug/body-maintenance.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/astra/legacy.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/neve/components/component-search-responsive.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/astra/builder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/build/blocks/search-nav/index.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/composer/InstalledVersions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/build/blocks/search/index.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/composer/installed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/composer/autoload_psr4.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/composer/autoload_files.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/composer/autoload_classmap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/composer/autoload_namespaces.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/composer/ClassLoader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/composer/autoload_real.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/composer/autoload_static.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/astra/template/header-cover.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/partials/themes/neve/components/component-search.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/managers/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/debug/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/assets/css/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/assets/css/admin/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/customizer/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/sdk/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/supplements/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/entities/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/templates/partials/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/templates/connect/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/sdk/Exceptions/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/templates/forms/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/templates/forms/deactivation/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/templates/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/templates/plugin-info/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/templates/js/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/templates/account/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/assets/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/assets/img/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/templates/debug/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/templates/account/partials/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/assets/js/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/languages/index.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **35**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **72**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **33**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **27**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Admin/Troubleshooting.php:324:        $r = wp_remote_get( $url, compact(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/class-fs-plugin-updater.php:882:            $request = wp_remote_get( $url, array( 'timeout' => 15 ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/managers/class-fs-clone-manager.php:272:            wp_remote_post(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/sdk/FreemiusWordPress.php:45:				'curl_exec',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/freemius/wordpress-sdk/includes/sdk/FreemiusWordPress.php:655:					'curl_exec',
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/vendor/autoload.php:12:            fwrite(STDERR, $err);
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Product.php:534:            //phpcs:ignore WordPress.PHP.DiscouragedPHPFunctions.serialize_unserialize
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Product.php:535:            $rawAttributes = unserialize( $optValue );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ajax-search-for-woocommerce/includes/Admin/Troubleshooting.php:710:            $raw = ( is_array( $filter['setting_data'] ) ? $filter['setting_data'] : unserialize( $filter['setting_data'] ) );
```

