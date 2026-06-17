# Attack Surface: all-404-redirect-to-homepage

> Generated: 2026-06-16T19:03:52Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/functions.php:1505:add_action('wp_ajax_delete_previous_404_image', 'handle_delete_previous_404_image');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/functions.php:1544:add_action('wp_ajax_send_test_404_email', 'handle_send_test_404_email');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/all-404-redirect-to-homepage.php:24:add_action('wp_ajax_P404REDIRECT_HideMsg', 'P404REDIRECT_HideMsg');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/all-404-redirect-to-homepage.php:25:add_action('wp_ajax_P404REDIRECT_HideAlert', 'P404REDIRECT_HideAlert');
```

### WordPress AJAX Handlers (unauthenticated)
```
None found
```

### admin-post Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/functions.php:345:add_action('admin_post_clear_redirects_log', 'clear_redirects_log_handler');
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/all-404-redirect-to-homepage.php:663:    add_options_page('All 404 Redirect to Homepage', 'All 404 Redirect to Homepage', 'manage_options', basename(__FILE__), 'p404_options_menu');
```

### Shortcodes
```
None found
```

### Cron Jobs
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/functions.php:845:			wp_schedule_event($next_run_time, 'daily', 'p404_daily_email_summary');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/functions.php:847:			wp_schedule_event($next_run_time, 'weekly', 'p404_weekly_email_summary');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/functions.php:849:			wp_schedule_event($next_run_time, 'monthly', 'p404_monthly_email_summary');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/functions.php:1781:					wp_schedule_event(strtotime('tomorrow 9:00 AM'), 'daily', 'p404_send_scheduled_email');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/functions.php:1784:					wp_schedule_event(strtotime('next monday 9:00 AM'), 'weekly', 'p404_send_scheduled_email');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/functions.php:1787:					wp_schedule_event(strtotime('first day of next month 9:00 AM'), 'monthly', 'p404_send_scheduled_email');
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/functions.php:1461:register_deactivation_hook(__FILE__, 'p404_cleanup_email_schedules');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/all-404-redirect-to-homepage.php:10:register_activation_hook(__FILE__, 'p404_modify_htaccess');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/all-404-redirect-to-homepage.php:11:register_deactivation_hook(__FILE__, 'p404_clear_htaccess');
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
None found
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/uninstall.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **5**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **4**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **39**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **28**

### External HTTP Requests
```
None found
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/uninstall.php:36:                        fwrite( $f, "{$markerline}\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/uninstall.php:38:                        fwrite( $f, "{$markerline}" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/uninstall.php:41:                    fwrite( $f, "# BEGIN {$marker}\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/uninstall.php:44:                            fwrite( $f, "{$insertline}\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/uninstall.php:45:                    fwrite( $f, "# END {$marker}\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/uninstall.php:52:            fwrite( $f, "\n# BEGIN {$marker}\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/uninstall.php:55:                    fwrite( $f, "{$insertline}\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/uninstall.php:56:            fwrite( $f, "# END {$marker}\n" );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/all-404-redirect-to-homepage.php:784:                        fwrite($f, "{$markerline}\n");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/all-404-redirect-to-homepage.php:786:                        fwrite($f, "{$markerline}");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/all-404-redirect-to-homepage.php:789:                    fwrite($f, "# BEGIN {$marker}\n");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/all-404-redirect-to-homepage.php:792:                            fwrite($f, "{$insertline}\n");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/all-404-redirect-to-homepage.php:793:                    fwrite($f, "# END {$marker}\n");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/all-404-redirect-to-homepage.php:800:            fwrite($f, "\n# BEGIN {$marker}\n");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/all-404-redirect-to-homepage.php:803:                    fwrite($f, "{$insertline}\n");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/all-404-redirect-to-homepage/all-404-redirect-to-homepage.php:804:            fwrite($f, "# END {$marker}\n");
```

### Deserialization (object injection surface)
```
None found
```

