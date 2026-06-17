# Attack Surface: 3d-flipbook-dflip-lite

> Generated: 2026-06-16T19:03:50Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/inc/post-type.php:91:      add_action( 'wp_ajax_hidedflipRating', array( $this, 'hidedflipRating' ));
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/inc/settings.php:80:    $this->hook = add_submenu_page( 'edit.php?post_type=dflip', __( 'dFlip Global Settings', '3d-flipbook-dflip-lite' ), __( 'Global Settings', '3d-flipbook-dflip-lite' ), 'manage_options', $this->base->plugin_slug . '-settings',
```

### Shortcodes
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/inc/shortcode.php:40:    add_shortcode( 'dflip', array( $this, 'shortcode' ) );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/inc/metaboxes.php:58:    add_action( 'add_meta_boxes', array( $this, 'add_meta_boxes' ), 100 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/inc/metaboxes.php:61:    add_action( 'save_post_dflip', array( $this, 'save_meta_boxes' ), 10, 2 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/inc/metaboxes.php:103:  public function add_meta_boxes() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/inc/metaboxes.php:104:    add_meta_box( 'dflip_post_meta_box_support_us', __( 'More Features in FULL VERSION!', '3d-flipbook-dflip-lite' ), array( $this, 'create_meta_boxes_support_us' ), 'dflip', 'normal', 'high' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/inc/metaboxes.php:106:    add_meta_box( 'dflip_post_meta_box', __( 'dFlip Settings', '3d-flipbook-dflip-lite' ), array( $this, 'create_meta_boxes' ), 'dflip', 'normal', 'high' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/inc/metaboxes.php:108:    add_meta_box( 'dflip_post_meta_box_shortcode', __( 'Shortcode', '3d-flipbook-dflip-lite' ), array( $this, 'create_meta_boxes_shortcode' ), 'dflip', 'side', 'high' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/inc/metaboxes.php:110:    add_meta_box( 'dflip_post_meta_box_video', __( 'Useful Links', '3d-flipbook-dflip-lite' ), array( $this, 'create_meta_boxes_video' ), 'dflip', 'side', 'low' );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/inc/settings.php:66:    //		add_action('add_meta_boxes', array($this, 'add_meta_boxes'), 100);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/inc/settings.php:69:    //		add_action('save_post', array($this, 'save_meta_boxes'), 10, 2);
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/assets/templates/category.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/assets/templates/archive.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/assets/templates/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/assets/templates/single.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/assets/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/assets/js/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/assets/js/libs/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/assets/css/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/assets/images/pdfjs/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/assets/images/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/assets/sound/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/inc/metaboxes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/inc/post-type.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/inc/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/inc/shortcode.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/inc/settings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/assets/js/libs/cmaps/index.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **4**

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
None found
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/3d-flipbook-dflip-lite.php:701:      $std = maybe_unserialize( $std );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/inc/metaboxes.php:537:    $std = maybe_unserialize( $std );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/3d-flipbook-dflip-lite/inc/shortcode.php:287:        $pages = array_map( 'maybe_unserialize', $post_data['pages'] );
```

