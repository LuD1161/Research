# Attack Surface: essential-blocks

> Generated: 2026-06-16T19:03:58Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Admin/QuickSetup.php:16:        add_action( 'wp_ajax_eb_quick_setup_save_tracking', array( $this, 'eb_quick_setup_save_tracking' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Admin/QuickSetup.php:17:        add_action( 'wp_ajax_eb_save_quick_setup', array( $this, 'eb_save_quick_setup' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/ThirdPartyIntegration.php:33:					add_action( "wp_ajax_$action", array( $this, $method ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/ThirdPartyIntegration.php:36:					add_action( "wp_ajax_$action", array( $this, $method['callback'] ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Dependencies/Insights.php:176:        add_action('wp_ajax_deactivation_form_' . esc_attr($this->plugin_name), [$this, 'deactivate_reasons_form_submit']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Dependencies/Notice/Dismiss.php:33:		add_action( 'wp_ajax_' . $this->hook, [ $this, 'ajax_maybe_dismiss_notice' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Admin/PointerNotices.php:33:        add_action( 'wp_ajax_eb_dismiss_pointer', array( $this, 'dismiss_pointer' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Admin/Admin.php:57:        add_action( 'wp_ajax_save_eb_admin_options', array( $this, 'save' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Admin/Admin.php:58:        add_action( 'wp_ajax_get_eb_admin_options', array( $this, 'get' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Admin/Admin.php:59:        add_action( 'wp_ajax_eb_save_quick_toolbar_blocks', array( $this, 'eb_save_quick_toolbar_blocks' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Admin/Admin.php:60:        add_action( 'wp_ajax_hide_pattern_library', array( $this, 'hide_pattern_library' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Admin/Admin.php:61:        add_action( 'wp_ajax_reset_eb_admin_options', array( $this, 'reset' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Admin/Admin.php:62:        add_action( 'wp_ajax_get_eb_admin_templates', array( $this, 'templates' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Admin/Admin.php:63:        add_action( 'wp_ajax_get_eb_admin_template_count', array( $this, 'template_count' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Admin/Admin.php:64:        add_action( 'wp_ajax_eb_admin_promotion', array( $this, 'eb_admin_promotion' ) );
```

### WordPress AJAX Handlers (unauthenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/ThirdPartyIntegration.php:34:					add_action( "wp_ajax_nopriv_$action", array( $this, $method ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/ThirdPartyIntegration.php:38:						add_action( "wp_ajax_nopriv_$action", array( $this, $method['callback'] ) );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/API/Base.php:19:        register_rest_route( 'essential-blocks/v1', $endpoint, $args );
```

### REST permission_callback => __return_true (public REST)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/API/Base.php:27:                'permission_callback' => '__return_true'
```

### Admin Pages / Menu Items
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Admin/QuickSetup.php:37:        add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Admin/Admin.php:105:        add_menu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Admin/Admin.php:117:        add_submenu_page(
```

### Shortcodes
```
None found
```

### Cron Jobs
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/AI/AI.php:136:                wp_schedule_single_event( time() + 5, 'eb_cleanup_completed_job', [ $job_id ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/AI/JobManager.php:303:     * This uses WordPress's wp_schedule_single_event for immediate execution
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/AI/JobManager.php:311:        wp_schedule_single_event( time(), 'eb_process_ai_job', [ $job_id ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/AI/JobManager.php:327:            wp_schedule_event( time(), 'daily', 'eb_cleanup_ai_jobs' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/AI/JobManager.php:332:            wp_schedule_event( time(), 'hourly', 'eb_cleanup_stuck_ai_jobs' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/TemplatelyPatterns.php:56:            wp_schedule_event( strtotime( gmdate( 'Y-m-d' ) . ' midnight' ), 'daily', 'eb_pattern_update_cron' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Dependencies/Insights.php:105:            wp_schedule_event(time(), $this->recurrence, $this->event_hook);
```

### File Upload Handlers
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Plugin.php:162:        add_filter( "wp_handle_upload_prefilter", array( $this, 'eb_handle_sanitize_svg' ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/OpenVerse.php:270:        if ( ! function_exists( 'download_url' ) && ! function_exists( 'media_handle_sideload' ) ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/OpenVerse.php:307:        $attachment_id = media_handle_sideload( $args, 0, $title );
```

### Block render_callback (server-rendered blocks)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/Blocks.php:125:                    register_block_type("essential-blocks/" . $block['name'], [
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/Blocks.php:126:                        'render_callback' => function($attributes, $content) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/Block.php:11: * @method string render_callback($attributes, $content)
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/Block.php:78:    public function register_block_type($name, ...$args)
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/Block.php:84:        return register_block_type($this->get_block_path($name, true), ...$args);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/Block.php:232:        $_args['render_callback'] = function ($attributes, $content, $block = null) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/Block.php:246:        if (method_exists($this, 'render_callback')) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/Block.php:247:            $_args['render_callback'] = function ($attributes, $content, $block = null) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/Block.php:266:                $output = $this->render_callback($attributes, $content, $block);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/Block.php:268:                // Also inline SVGs in the render_callback output (dynamic blocks
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/Block.php:274:        if ((!empty($this->frontend_scripts) || !empty($this->frontend_styles)) && ! method_exists($this, 'render_callback')) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/Block.php:275:            $_args['render_callback'] = function ($attributes, $content, $block = null) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/Block.php:310:        return $this->register_block_type($this->get_name(), $_args);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/Scripts.php:78:        // register_block_type() with editor_script/editor_style are automatically
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/AdvancedHeading.php:42:    public function render_callback( $attributes, $content, $block = null )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/ProductPrice.php:50:    public function render_callback( $attributes, $content )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/SocialShare.php:43:    public function render_callback( $attributes, $content )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/AdvancedImage.php:54:    public function render_callback( $attributes, $content, $block = null )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/TableOfContents.php:347:    public function render_callback( $attributes, $content )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/AddToCart.php:55:    public function render_callback( $attributes, $content )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/ImageGallery.php:45:    public function render_callback( $attributes, $content )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/ProductDetails.php:63:    public function render_callback( $attributes, $content )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/Text.php:96:    public function render_callback( $attributes, $content, $block = null )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/PostGrid.php:66:    public function render_callback( $attributes, $content )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/PostCarousel.php:76:    public function render_callback( $attributes, $content )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/FluentForms.php:118:    public function render_callback( $attributes, $content )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/Breadcrumbs.php:201:    public function render_callback( $attributes, $content )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/GoogleMap.php:82:    public function render_callback( $attributes, $content )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/ProductRating.php:49:    public function render_callback( $attributes, $content )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/Form.php:76:    public function render_callback( $attributes, $content )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/Button.php:41:    public function render_callback( $attributes, $content, $block = null )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/Taxonomy.php:43:    public function render_callback( $attributes, $content )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/PostMeta.php:115:    public function render_callback( $attributes, $content, $block = null )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/WPForms.php:77:    public function render_callback( $attributes, $content )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/InstagramFeed.php:148:    public function render_callback( $attributes, $content )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/WooProductGrid.php:55:    public function render_callback( $attributes, $content ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/ProductImages.php:77:    public function render_callback( $attributes, $content )
```

### Settings API / Meta Box save handlers
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Modules/StyleHandler.php:73:        add_action('save_post', array($this, 'on_save_post'), 10, 3);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/BlockUsage.php:11:        add_action( 'save_post', [ $this, 'get_blocks_count'], 10, 3 );
```

### Widgets
```
None found
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/Maintenance.php:85:        register_activation_hook( $plguin_basename, [ __CLASS__, 'activation' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/Maintenance.php:86:        register_deactivation_hook( $plguin_basename, [ __CLASS__, 'deactivation' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/Maintenance.php:87:        register_uninstall_hook( $plguin_basename, [ __CLASS__, 'uninstall' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Dependencies/Insights.php:87:        register_activation_hook($this->plugin_file, [$this, 'activate_this_plugin']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Dependencies/Insights.php:91:        register_deactivation_hook($this->plugin_file, [$this, 'deactivate_this_plugin']);
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
None found
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/blocks.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/admin/global-styles/global-styles.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/Maintenance.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/Block.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/admin/controls/controls.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/admin/controls/frontend-controls.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/Blocks.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/PageTemplates.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/BlocksPatterns.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/Scripts.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/FaqSchema.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/admin/editor/editor.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/admin/pointer-notices/pointer-notices.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/admin/quick-setup/index.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Traits/HasSingletone.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/admin/dashboard/admin.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Admin/QuickSetup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Dependencies/wpnotice.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Admin/Admin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Admin/PointerNotices.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/admin/store/store.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Dependencies/Notice/Notice.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Dependencies/Insights.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Dependencies/Notice/Dismiss.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Modules/StyleHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/PluginInstaller.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/GlobalStyles.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Dependencies/Notice/Utils/CacheBank.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/GoogleMap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/PopUp.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/Instagram.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/Wrapper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/FormTextField.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Dependencies/Notice/Notices.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/Slider.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/AdvancedTabs.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/TypingText.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/PricingTable.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/SocialShare.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/Openverse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/ImageHotspots.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/Notice.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/ImageComparison.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/CallToAction.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/FlipBox.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/PostGrid.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/Text.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/LottieAnimation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/AdvancedNavigation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/ProductDetails.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/ImageGallery.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/Timeline.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/AddToCart.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/InteractivePromo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/CountDown.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/FlexContainer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/Breadcrumbs.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/NftGallery.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/PostCarousel.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/GoogleMap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/ToggleContent.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/ProductPrice.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/ProductRating.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/Accordion.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/InfoBox.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/DualButton.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/Form.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/Tab.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/Icon.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/FluentForms.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/AdvancedHeading.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/Row.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/Button.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/TableOfContents.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/PostMeta.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/AdvancedImage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/ProgressBar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/Column.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/AdvancedVideo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/Taxonomy.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/WPForms.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/PostBlock.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/ParallaxSlider.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/AccordionItem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/price.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/AssetGeneration.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/ShapeDivider.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/WooProductGrid.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/TeamMember.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/FeatureList.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/Data.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/ProductImages.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/Testimonial.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/NumberCounter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/InstagramFeed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/ThirdPartyIntegration.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/OpenVerse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/TemplatelyPatterns.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/Form.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Dependencies/Notice/Utils/NoticeRemover.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Blocks/Social.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Dependencies/Notice/Utils/Base.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Dependencies/Notice/Utils/Helper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/Pagination.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Dependencies/Notice/Utils/Storage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/NFT.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/fallback.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/BlockUsage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/AI/JobManager.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/AI/AI.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Plugin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/API/Base.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/API/Common.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/API/Product.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/API/PostBlock.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/AI/OpenAI.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Utils/Enqueue.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/API/Server.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Utils/Settings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Utils/Installer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/js/eb-animation-load.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/js/admin.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/js/fa-currency.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/js/jquery.twentytwenty.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/vendors/js/bundles.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/js/eb-blocks-localize.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/vendors/js/bundle.babel.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/js/eb-patterns.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/modules/templately-installer/index.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/modules/write-with-ai/index.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/modules/ai-for-woo/index.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/flipbox/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/advanced-navigation/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/parallax-slider/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/image-comparison/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/image-hotspots/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/accordion/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/notice/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/toggle-content/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/advanced-video/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/instagram-feed/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/nft-gallery/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/timeline/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/product-images/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/slider/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/advanced-tabs/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/google-map/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/number-counter/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/lottie-animation/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/image-gallery/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/post-grid/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/table-of-contents/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/woo-product-grid/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/facebook-feed/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/infobox/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/post-carousel/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/form/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/typing-text/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/progress-bar/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/popup/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Utils/Helper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/js/eb-editor-breakpoint.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Utils/HttpRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Utils/CSSParser.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Utils/Migrator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Utils/QueryHelper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/social-share/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/assets/blocks/countdown/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/insta-partials/meta.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/insta-partials/caption.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/insta-partials/single.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/insta-partials/author.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/src/dist/frontend.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/src/dist/modules.asset.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/taxonomy.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/post-meta.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/instagram-feed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/post-grid.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/product-grid.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/form-block.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/common/no-content.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/common/pagination.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/forms/wpforms.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/forms/fluent-forms.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/social-share.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/post-carousel.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/advanced-image/featured-image.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/advanced-image/site-logo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/woocommerce/category.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/woocommerce/gallery.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/woocommerce/title.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/woocommerce/single-rating.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/woocommerce/single-product.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/post-partials/featured-post-markup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/post-partials/title.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/post-partials/carousel-markup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/post-partials/grid-markup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/post-partials/category-filter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/post-partials/post-content.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/post-partials/post-thumbnail.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/post-partials/read-more.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/woocommerce/price.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/woocommerce/details.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/woocommerce/button-list.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/woocommerce/image.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/woocommerce/rating.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/post-partials/meta/categories.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/post-partials/meta/date.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/post-partials/meta/footer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/post-partials/meta/avatar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/post-partials/meta/header.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/post-partials/meta/tax.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/post-partials/meta/tags.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/post-partials/meta/readtime.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/views/post-partials/meta/author.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **54**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **44**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **7**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **5**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/Block.php:157:                $res = wp_remote_get($url, [
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Core/FontLoader.php:51:    //     $response = wp_remote_get( $api_url );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Dependencies/Insights.php:498:                $country_request = wp_remote_get('http://ip-api.com/json/' . sanitize_text_field($_SERVER['REMOTE_ADDR']) . '?fields=country');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Dependencies/Insights.php:605:        $request = wp_remote_post(esc_url(self::API_URL), $args);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/AI/AI.php:172:                $image_data = wp_safe_remote_get( $image_url, [
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/TemplatelyPatterns.php:133:        $response = wp_remote_get(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Admin/Admin.php:637:        $response = wp_remote_post(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Admin/Admin.php:676:        $response = wp_remote_post(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Admin/Admin.php:862:                $image_data = wp_safe_remote_get( $image_url, array(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/AI/OpenAI.php:148:        $response = wp_remote_post(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/AI/OpenAI.php:253:        $response = wp_remote_post(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/AI/OpenAI.php:477:        $response = wp_remote_post(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/AI/OpenAI.php:826:        $response = wp_remote_post(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/AI/OpenAI.php:1132:        // wp_safe_remote_get sets reject_unsafe_urls, blocking loopback/private/link-local
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/AI/OpenAI.php:1134:        $response = wp_safe_remote_get( $image_url, [
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/AI/OpenAI.php:1211:            $response = wp_remote_post(
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Modules/StyleHandler.php:337:                mkdir($this->frontend_style_dir, 0755, true);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Modules/StyleHandler.php:357:            file_put_contents($filename, $css);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Modules/StyleHandler.php:479:                    mkdir($this->fse_style_dir, 0755, true);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Modules/StyleHandler.php:481:                file_put_contents($this->fse_style_dir . $this->get_fse_filename($post_id), $css);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Modules/StyleHandler.php:484:                    mkdir($this->style_dir, 0755, true);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Modules/StyleHandler.php:486:                file_put_contents($this->style_dir . $this->get_eb_filename($post_id), $css);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Modules/StyleHandler.php:501:                    mkdir($upload_dir, 0755, true);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Modules/StyleHandler.php:503:                file_put_contents($upload_dir . DIRECTORY_SEPARATOR . 'eb-reusable-' . abs($id) . '.min.css', $css);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Modules/StyleHandler.php:540:                    mkdir($upload_dir);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Modules/StyleHandler.php:543:                file_put_contents($editSiteCssPath, $css);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Modules/StyleHandler.php:549:                    mkdir($this->style_dir);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Modules/StyleHandler.php:551:                file_put_contents($editSiteCssPath, $css);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/AssetGeneration.php:66:            rmdir( $src );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/AssetGeneration.php:73:            unlink( $src );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/TemplatelyPatterns.php:164:                mkdir( $cache_file_dir, 0777, true );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/TemplatelyPatterns.php:166:            file_put_contents( $cache_file_dir . '/patterns.json', wp_json_encode( $data ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Plugin.php:465:        if ( file_put_contents( $file[ 'tmp_name' ], $sanitized ) === false ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Utils/SvgSanitizer.php:47:		file_put_contents($filename, $sanitized_content);
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Modules/StyleHandler.php:887:                $data = maybe_unserialize($nx_post->data);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/Form.php:52:            $field_settings = isset( $settings->settings ) ? unserialize( $settings->settings ) : [  ];
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/Form.php:87:                $form_fields = unserialize( $settings->fields );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/Form.php:100:                $formSettings = unserialize( $settings->form_options );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/Form.php:111:                    $form_fields = unserialize( $settings->fields );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/Form.php:205:                    $response[ 'fields' ] = (object) unserialize( $result->fields );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/Form.php:208:                    $response[ 'form_options' ] = (object) unserialize( $result->form_options );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/Form.php:211:                    $response[ 'settings' ] = (object) unserialize( $result->settings );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/BlockUsage.php:109:			$eb_blocks = maybe_unserialize($meta_value);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/essential-blocks/includes/Integrations/AI/JobManager.php:390:            $job_data = maybe_unserialize( $option->option_value );
```

