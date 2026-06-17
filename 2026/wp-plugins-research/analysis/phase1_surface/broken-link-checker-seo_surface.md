# Attack Surface: broken-link-checker-seo

> Generated: 2026-06-16T19:03:54Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Admin/Notices/NotConnected.php:21:		add_action( 'wp_ajax_aioseo-blc-dismiss-not-connected', [ $this, 'dismissNotice' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Admin/Notices/Review.php:21:		add_action( 'wp_ajax_aioseo-blc-dismiss-review-plugin-cta', [ $this, 'dismissNotice' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/lib/WP_Async_Request.php:65:			add_action( 'wp_ajax_' . $this->identifier, array( $this, 'maybe_handle' ) );
```

### WordPress AJAX Handlers (unauthenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/lib/WP_Async_Request.php:66:			add_action( 'wp_ajax_nopriv_' . $this->identifier, array( $this, 'maybe_handle' ) );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Api/Api.php:90:				register_rest_route(
```

### REST permission_callback => __return_true (public REST)
```
None found
```

### Admin Pages / Menu Items
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Admin/Admin.php:130:		$hook = add_menu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Admin/Admin.php:216:			$hook = add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Admin/Admin.php:230:		$hook = add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Admin/Admin.php:244:		$hook = add_submenu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/ActionScheduler_AdminView.php:95:		$hook_suffix = add_submenu_page(
```

### Shortcodes
```
None found
```

### Cron Jobs
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/ActionScheduler_QueueRunner.php:84:			wp_schedule_event( time(), $schedule, self::WP_CRON_HOOK, $cron_context );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Links/Links.php:58:		add_action( 'save_post', [ $this, 'scanPost' ], 21, 1 );
```

### Widgets
```
None found
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Main/Activate.php:21:		register_activation_hook( AIOSEO_BROKEN_LINK_CHECKER_FILE, [ $this, 'activate' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Main/Activate.php:22:		register_deactivation_hook( AIOSEO_BROKEN_LINK_CHECKER_FILE, [ $this, 'deactivate' ] );
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
None found
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/dist/manifest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/uninstall.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/languages/broken-link-checker-seo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/composer/ClassLoader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/composer/installed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/composer/autoload_psr4.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/composer/autoload_classmap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/action-scheduler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/deprecated/ActionScheduler_Abstract_QueueRunner_Deprecated.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/deprecated/functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/lib/WP_Async_Request.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/ActionScheduler_QueueRunner.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/ActionScheduler_Versions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/lib/cron-expression/CronExpression_HoursField.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/lib/cron-expression/CronExpression_MonthField.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/lib/cron-expression/CronExpression_MinutesField.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/lib/cron-expression/CronExpression_DayOfWeekField.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/lib/cron-expression/CronExpression_FieldFactory.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/lib/cron-expression/CronExpression_AbstractField.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/lib/cron-expression/CronExpression_DayOfMonthField.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/lib/cron-expression/CronExpression.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/actions/ActionScheduler_NullAction.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/lib/cron-expression/CronExpression_YearField.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/lib/cron-expression/CronExpression_FieldInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/actions/ActionScheduler_FinishedAction.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/actions/ActionScheduler_CanceledAction.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/ActionScheduler_DataController.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/actions/ActionScheduler_Action.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/schedules/ActionScheduler_IntervalSchedule.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/schedules/ActionScheduler_CanceledSchedule.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/ActionScheduler_OptionLock.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/schedules/ActionScheduler_NullSchedule.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/schedules/ActionScheduler_SimpleSchedule.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/ActionScheduler_SystemInformation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/schedules/ActionScheduler_CronSchedule.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/schedules/ActionScheduler_Schedule.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/ActionScheduler_DateTime.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/ActionScheduler_Exception.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/ActionScheduler_AdminView.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/ActionScheduler_ActionClaim.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/ActionScheduler_InvalidActionException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/ActionScheduler_QueueCleaner.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/ActionScheduler_ActionFactory.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/ActionScheduler_ListTable.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/ActionScheduler_wcSystemStatus.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/ActionScheduler_LogEntry.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/abstracts/ActionScheduler_Lock.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/abstracts/ActionScheduler_Store.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/WP_CLI/ActionScheduler_WPCLI_Scheduler_command.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/abstracts/ActionScheduler_Abstract_RecurringSchedule.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/abstracts/ActionScheduler_WPCLI_Command.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/abstracts/ActionScheduler_TimezoneHelper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/abstracts/ActionScheduler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/abstracts/ActionScheduler_Logger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/abstracts/ActionScheduler_Abstract_ListTable.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/abstracts/ActionScheduler_Abstract_Schema.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/WP_CLI/Migration_Command.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/abstracts/ActionScheduler_Abstract_Schedule.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/abstracts/ActionScheduler_Abstract_QueueRunner.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/WP_CLI/ProgressBar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/WP_CLI/ActionScheduler_WPCLI_QueueRunner.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/WP_CLI/System_Command.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/WP_CLI/ActionScheduler_WPCLI_Clean_Command.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/data-stores/ActionScheduler_wpPostStore_TaxonomyRegistrar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/WP_CLI/Action_Command.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/WP_CLI/Action/Generate_Command.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/WP_CLI/Action/Delete_Command.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/data-stores/ActionScheduler_DBStore.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/WP_CLI/Action/Next_Command.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/WP_CLI/Action/List_Command.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/WP_CLI/Action/Create_Command.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/WP_CLI/Action/Get_Command.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/WP_CLI/Action/Run_Command.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/data-stores/ActionScheduler_wpCommentLogger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/WP_CLI/Action/Cancel_Command.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/data-stores/ActionScheduler_wpPostStore_PostTypeRegistrar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/data-stores/ActionScheduler_wpPostStore_PostStatusRegistrar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/data-stores/ActionScheduler_HybridStore.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/ActionScheduler_NullLogEntry.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/data-stores/ActionScheduler_DBLogger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/ActionScheduler_WPCommentCleaner.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/ActionScheduler_FatalErrorMonitor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/data-stores/ActionScheduler_wpPostStore.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/ActionScheduler_Compatibility.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/deprecated/ActionScheduler_AdminView_Deprecated.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/deprecated/ActionScheduler_Schedule_Deprecated.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/deprecated/ActionScheduler_Store_Deprecated.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/migration/ActionScheduler_DBStoreMigrator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/composer/autoload_namespaces.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/migration/ActionMigrator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/migration/Scheduler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/migration/Config.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/migration/DryRun_ActionMigrator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/migration/LogMigrator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/schema/ActionScheduler_LoggerSchema.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/migration/DryRun_LogMigrator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/schema/ActionScheduler_StoreSchema.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/migration/Runner.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/migration/BatchFetcher.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/composer/InstalledVersions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/composer/autoload_real.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/migration/Controller.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/composer/autoload_static.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **30**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **6**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **48**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **40**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Traits/Helpers/Api.php:16:	 * Sends a request using wp_remote_post.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Traits/Helpers/Api.php:39:		$response = wp_remote_post( $url, array_replace_recursive( $this->getWpApiRequestDefaults(), $args ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Traits/Helpers/Api.php:49:	 * Sends a request using wp_remote_get.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Traits/Helpers/Api.php:70:		$response = wp_remote_get( $url, array_replace_recursive( $this->getWpApiRequestDefaults(), $args ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Traits/Helpers/Api.php:130:	 * Default arguments for wp_remote_get and wp_remote_post.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/lib/WP_Async_Request.php:91:			return wp_remote_post( esc_url_raw( $url ), $args );
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Core/Filesystem.php:162:			return @file_put_contents( $file, $contents );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Api/LinksTable.php:76:			case 'unlink':
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/autoload.php:12:            fwrite(STDERR, $err);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/languages/broken-link-checker-seo.php:707:	__( 'unlink', 'broken-link-checker-seo' ),
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Api/Api.php:48:			'link-status-table/unlink'     => [ 'callback' => [ 'LinkStatusTable', 'unlink' ], 'access' => [ 'aioseo_blc_broken_links_page' ] ],
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Api/Api.php:51:			'links-table/unlink'           => [ 'callback' => [ 'LinksTable', 'unlink' ], 'access' => [ 'aioseo_blc_broken_links_page' ] ],
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Api/LinkStatusTable.php:83:			case 'unlink':
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Api/CommonTableActions.php:25:	public static function unlink( $request ) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Api/CommonTableActions.php:174:	 * @return bool         Whether the Link was unlinked.
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Core/Database.php:1198:				throw new \Exception( 'Cannot save an unserialized array in the database. Data passed was: ' . wp_json_encode( $value ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Core/Database.php:1200:				throw new \Exception( 'Cannot save an unserialized object in the database. Data passed was: ' . esc_html( $value ) );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Utils/Helpers.php:328:	 * Checks if the given string is serialized, and if so, unserializes it.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Utils/Helpers.php:334:	 * @return string|array         The string or unserialized data.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Utils/Helpers.php:345:				? @unserialize( $string )
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/app/Utils/Helpers.php:346:				: @unserialize( $string, [ 'allowed_classes' => false ] ); // phpcs:disable PHPCompatibility.FunctionUse.NewFunctionParameters.unserialize_optionsFound
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/schedules/ActionScheduler_CronSchedule.php:72:	 * also store the data with the old property names so if it's unserialized in AS < 3.0,
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/schedules/ActionScheduler_IntervalSchedule.php:52:	 * also store the data with the old property names so if it's unserialized in AS < 3.0,
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/schedules/ActionScheduler_SimpleSchedule.php:45:	 * so if it's unserialized in AS < 3.0, the schedule doesn't end up with a null recurrence.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/abstracts/ActionScheduler_Store.php:354:	 * @param mixed $schedule  The unserialized ActionScheduler_Schedule object.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/data-stores/ActionScheduler_DBStore.php:397:		$schedule = unserialize( $data->schedule ); // phpcs:ignore WordPress.PHP.DiscouragedPHPFunctions.serialize_unserialize
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/abstracts/ActionScheduler_Abstract_ListTable.php:546:	 * Set the data for displaying. It will attempt to unserialize (There is a chance that some columns
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/broken-link-checker-seo/vendor/woocommerce/action-scheduler/classes/abstracts/ActionScheduler_Abstract_ListTable.php:554:			$this->items[ $item[ $this->ID ] ] = array_map( 'maybe_unserialize', $item );
```

