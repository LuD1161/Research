# Attack Surface: autodescription

> Generated: 2026-06-16T19:03:53Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/init-admin-ajax.php:36:\add_action( 'wp_ajax_tsf_dismiss_notice', [ AJAX::class, 'dismiss_notice' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/init-admin-ajax.php:39:\add_action( 'wp_ajax_tsf_crop_image', [ AJAX::class, 'crop_image' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/init-admin-ajax.php:42:\add_action( 'wp_ajax_tsf_update_counter', [ AJAX::class, 'update_counter_type' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/init-admin-ajax.php:45:\add_action( 'wp_ajax_tsf_update_post_data', [ AJAX::class, 'get_post_data' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/init-admin-ajax.php:48:\add_action( 'wp_ajax_tsf_get_term_parent_slugs', [ AJAX::class, 'get_term_parent_slugs' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/init-admin-ajax.php:51:\add_action( 'wp_ajax_tsf_get_post_parent_slugs', [ AJAX::class, 'get_post_parent_slugs' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/init-admin-ajax.php:54:\add_action( 'wp_ajax_tsf_get_author_slug', [ AJAX::class, 'get_author_slug' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/lists/table.class.php:82:		\add_action( 'wp_ajax_add-tag', [ $this, 'prepare_columns_wp_ajax_add_tag' ], -1 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/lists/table.class.php:83:		\add_action( 'wp_ajax_inline-save', [ $this, 'prepare_columns_wp_ajax_inline_save' ], -1 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/lists/table.class.php:84:		\add_action( 'wp_ajax_inline-save-tax', [ $this, 'prepare_columns_wp_ajax_inline_save_tax' ], -1 );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/menu.class.php:58:		\add_menu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/menu.class.php:70:		 * The function add_submenu_page() takes care of the duplications.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/menu.class.php:72:		\add_submenu_page(
```

### Shortcodes
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/init-global.php:51:\add_shortcode( 'tsf_breadcrumb', 'tsf_breadcrumb' );
```

### Cron Jobs
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/sitemap/cron.class.php:53:		return \wp_schedule_single_event( ++$when, 'tsf_sitemap_cron_hook_before' )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/sitemap/cron.class.php:54:			&& \wp_schedule_single_event( ++$when, 'tsf_sitemap_cron_hook' )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/sitemap/cron.class.php:55:			&& \wp_schedule_single_event( ++$when, 'tsf_sitemap_cron_hook_after' );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/init-admin.php:72:	\add_action( 'save_post', [ Data\Admin\Post::class, 'update_meta' ], 1 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/init-admin.php:74:	\add_action( 'save_post', [ Data\Admin\Post::class, 'update_primary_term' ], 1 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/init-admin.php:77:	\add_action( 'add_meta_boxes', [ Admin\Settings\Post::class, 'prepare_meta_box' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/init-admin.php:108: * Also, register_settings only passes 1 parameter, while we need all 3.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/init-admin.php:119:	\add_action( 'admin_init', [ Data\Admin\Plugin::class, 'register_settings' ], 0 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/post.class.php:53:	 * @hook add_meta_boxes 10
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/post.class.php:57:	 * @since 5.0.0 1. No longer uses the $post_type for the screen-parameter in add_meta_box.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/post.class.php:82:		\add_meta_box(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/plugin.class.php:101:			\add_meta_box(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/plugin.class.php:111:			\add_meta_box(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/plugin.class.php:121:			\add_meta_box(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/plugin.class.php:131:			\add_meta_box(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/plugin.class.php:141:			\add_meta_box(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/plugin.class.php:150:			\add_meta_box(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/plugin.class.php:160:			\add_meta_box(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/plugin.class.php:170:			\add_meta_box(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/plugin.class.php:180:			\add_meta_box(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/plugin.class.php:190:			\add_meta_box(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/plugin.class.php:200:			\add_meta_box(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/admin/plugin.class.php:56:	public static function register_settings() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/admin/plugin.class.php:57:		\register_setting(
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/lib/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/lib/js/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/init-global.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/init-cron.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/init-admin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/define.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/init-compat.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/init-admin-ajax.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/plugin-deactivation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/lib/css/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/plugin-activation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/upgrade.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/load.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/load-debug.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/language/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/bootstrap/init-front.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/internal/deprecated.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/internal/debug.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/internal/silencer.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/internal/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/notice.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/script/registry.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/seobar/builder/term.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/script/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/script/loader.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/script/ajax.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/seobar/builder/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/script/utils.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/seobar/builder/page.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/seobar/builder.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/seobar/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/seobar/builder/main.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/seobar/listtable.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/plugintable.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/menu.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/term.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/notice/persistent.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/plugin.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/listedit.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/lists/poststates.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/user.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/lists/table.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/post.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/notice/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/lists/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/layout/form.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/utils.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/layout/input.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/layout/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/admin/settings/layout/html.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/pool.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/uri.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/description.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/twitter/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/robotstxt/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/robots/args.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/robotstxt/main.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/title.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/robots/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/robots/factory.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/image/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/image/utils.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/robots/front.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/image/generator.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/facebook.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/robotstxt/utils.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/robots.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/robots/main.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/image.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/open-graph.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/description/excerpt.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/open-graph/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/facebook/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/description/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/uri/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/theme-color.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/uri/utils.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/twitter.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/title/conditions.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/title/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/schema.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/breadcrumbs.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/title/utils.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/legacy-api.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/schema/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/front/redirect.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/sitemap/registry.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/load.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/schema/entities/organization.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/schema/entities/person.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/sitemap/lock.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/schema/entities/webpage.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/schema/entities/author.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/schema/entities/breadcrumblist.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/schema/entities/reference.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/schema/entities/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/meta/schema/entities/website.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/front/title.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/headers.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/guidelines.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/post-type.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/redirect.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/migrate.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/compatibility.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/taxonomy.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/template.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/sitemap/cron.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/front/feed.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/query.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/query/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/format/minify.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/format/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/query/cache.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/format/markdown.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/query/filter.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/query/exclusion.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/format/strings.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/format/time.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/format/color.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/query/utils.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/format/arrays.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/sitemap/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/format/html.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/front/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/front/oembed.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/sitemap/cache.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/sitemap/utils.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/front/query.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/sitemap/optimized/xsl.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/sitemap/optimized/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/front/meta/head.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/sitemap/wp/taxonomies.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/sitemap/wp/posts.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/sitemap/wp/filter.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/sitemap/optimized/base.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/sitemap/wp/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/front/meta/generator/schema.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/sitemap/optimized/main.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/front/meta/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/front/meta/generator/description.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/front/meta/generator/facebook.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/front/meta/generator/robots.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/front/meta/generator/open-graph.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/front/meta/generator/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/front/meta/generator/uri.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/front/meta/generator/webmasters.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/front/meta/generator/theme-color.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/front/meta/generator/twitter.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/front/meta/generator/advanced-query-protection.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/front/meta/tags.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/functions/upgrade-suggestion.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/compat/plugin-woocommerce.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/list/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/list/bulk-post.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/compat/plugin-elementor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/templates/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/list/quick-term.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/notice/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/notice/persistent.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/sitemap/xsl/title.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/sitemap/xsl/table.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/sitemap/xsl/styles.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/list/quick-post.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/templates/list/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/templates/settings/warnings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/templates/settings/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/templates/list/primary-term-selector.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/sitemap/xsl/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/sitemap/xsl/footer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/templates/inpost/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/sitemap/xsl/vars.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/templates/inpost/primary-term-selector.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/sitemap/xsl/description.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/sitemap/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/sitemap/xml-sitemap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/compat/plugin-polylang.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/sitemap/xsl-stylesheet.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/compat/plugin-buddypress.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/compat/plugin-bbpress.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/compat/plugin-wpml.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/compat/theme-genesis.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/compat/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/compat/plugin-ultimatemember.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/compat/plugin-wpforo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/compat/theme-avada.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/compat/plugin-jetpack.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/functions/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/functions/api.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/compat/theme-bricks.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/functions/deprecated.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/compat/plugin-edd.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/term.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/term/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/term/settings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/settings/columns.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/settings/wrap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/profile/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/profile/settings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/settings/wrap-content.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/settings/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/post/wrap-nav.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/post/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/post/homepage-warning.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/post/wrap-content.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/post/gutenberg-data.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/settings/notice.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/settings/metaboxes/feed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/post/settings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/settings/metaboxes/sitemaps.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/settings/metaboxes/post-type-archive.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/settings/metaboxes/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/settings/metaboxes/title.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/settings/metaboxes/general.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/settings/metaboxes/description.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/settings/metaboxes/webmaster.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/settings/metaboxes/social.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/settings/metaboxes/robots.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/settings/metaboxes/schema.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/settings/metaboxes/homepage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/admin/user.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/settings/wrap-nav.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/admin/plugin.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/admin/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/admin/term.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/admin/post.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/plugin.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/user.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/blog.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/traits/property-refresher.trait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/post.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/traits/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/debug/header.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/debug/output.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/plugin/post.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/filter/sanitize.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/plugin/setup.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/plugin/term.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/plugin/pta.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/plugin/deprecated.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/plugin/helper.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/plugin/user.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/plugin/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/filter/term.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/filter/user.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/filter/plugin.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/filter/post.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/debug/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/filter/escape.class.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/traits/internal/static-deprecator.trait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/traits/internal/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/filter/index.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **26**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **22**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **12**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **9**

### External HTTP Requests
```
None found
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/settings/metaboxes/robots.php:107:				'dashicon' => 'editor-unlink',
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/views/settings/metaboxes/general.php:72:				'dashicon' => 'editor-unlink',
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/functions/api.php:405:		// phpcs:ignore WordPress.PHP.DiscouragedPHPFunctions -- No objects inserted, nor ever unserialized.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/functions/api.php:460:		// phpcs:ignore WordPress.PHP.DiscouragedPHPFunctions -- No objects are inserted, nor is this ever unserialized.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/functions/api.php:508:		// phpcs:ignore WordPress.PHP.DiscouragedPHPFunctions -- This is never unserialized.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/helper/query/cache.class.php:79:		// phpcs:ignore WordPress.PHP.DiscouragedPHPFunctions -- No objects are inserted, nor is this ever unserialized.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/admin/plugin.class.php:219:	 * @param mixed $options The new, unserialized option values.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/autodescription/inc/classes/data/admin/plugin.class.php:220:	 * @return mixed $options The new, unserialized option values.
```

