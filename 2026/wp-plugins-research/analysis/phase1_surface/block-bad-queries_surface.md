# Attack Surface: block-bad-queries

> Generated: 2026-06-16T19:03:53Z

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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/block-bad-queries/bbq-settings.php:288:	// add_options_page( $page_title, $menu_title, $capability, $menu_slug, $function);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/block-bad-queries/bbq-settings.php:289:	add_options_page($title, $title, 'manage_options', 'bbq_settings', 'bbq_display_settings');
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/block-bad-queries/bbq-settings.php:99:function bbq_register_settings() {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/block-bad-queries/bbq-settings.php:101:	// register_setting( $option_group, $option_name, $sanitize_callback );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/block-bad-queries/bbq-settings.php:102:	register_setting('bbq_options_free', 'bbq_options_free', 'bbq_validate_options');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/block-bad-queries/bbq-settings.php:125:add_action('admin_init', 'bbq_register_settings');
```

### Widgets
```
None found
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/block-bad-queries/bbq-settings.php:44:register_activation_hook(BBQ_DIR .'block-bad-queries.php', 'bbq_check_plugin');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/block-bad-queries/bbq-settings.php:381:register_activation_hook(BBQ_FILE, 'bbq_dismiss_notice_activation');
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
None found
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
None (all PHP files guarded)
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **2**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **1**

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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/block-bad-queries/block-bad-queries.php:46:	$request_uri_array  = apply_filters('request_uri_items', array('\/\.env', '\s', '<', '>', '\^', '`', '@@', ',,,', '\?\?', '\/&&', '\\', '\/=', '\/:\/', '\/\/\/', '\.\.\.', '\/\*(.*)\*\/', '\+\+\+', '------', '\{0\}', '0x00', '%00', '\(\/\(', '(\/|;|=|,)nt\.', '@eval', 'eval\(', 'union(.*)select', '\(null\)', 'base64_', '(\/|%2f)localhost', '(\/|%2f)pingserver', 'wp-config\.php', '(\/|\.)(s?ftp-?)?conf(ig)?(uration)?\.', '\/wwwroot', '\/makefile', 'crossdomain\.', 'self\/environ', 'usr\/bin\/perl', 'var\/lib\/php', 'etc\/passwd', 'etc\/hosts', 'etc\/motd', 'etc\/shadow', '\/https:', '\/http:', '\/ftp:', '\/file:', '\/php:', '\/cgi\/', '\.asp', '\.bak', '\.bash', '\.bat', '\.cfg', '\.cgi', '\.cmd', '\.conf', '\.db', '\.dll', '\.ds_store', '\.exe', '\/\.git', '\.hta', '\.htp', '\.init?', '\.jsp', '\.msi', '\.mysql', '\.pass', '\.pwd', '\.sql', '\/\.svn', '\.exec\(', '\)\.html\(', '\{x\.html\(', '\.php\([0-9]+\)', '\/((.*)header:|(.*)set-cookie:(.*)=)', '(benchmark|sleep)(\s|%20)*\(', '\/(db|mysql)-?admin', '\/document_root', '\/error_log', 'indoxploi', '\/sqlpatch', 'xrumer', 'www\.(.*)\.cn', '%3Cscript', '(\.)(htaccess|htpasswd|mysql-select-db)(\/)?$', '\/(db|master|sql|wp|www|wwwroot)\.(gz|zip)', '\/((boot)?_?admin(er|istrator|s)(_events)?)\.php', '\/(force-download|framework\/main)\.php', '\/(f?ckfinder|fck\/|f?ckeditor|fullclick)', '\/vbforum(\/)?', '\/vbull(etin)?(\/)?', '\{\$itemURL\}', '(\/bin\/)(cc|chmod|chsh|cpp|echo|id|kill|mail|nasm|perl|ping|ps|python|tclsh)(\/)?$', '((curl_|shell_)?exec|(f|p)open|function|fwrite|leak|p?fsockopen|passthru|phpinfo|posix_(kill|mkfifo|setpgid|setsid|setuid)|proc_(close|get_status|nice|open|terminate)|system)(.*)(\()(.*)(\))', '(\/)(^$|0day|c99|configbak|curltest|db|index\.php\/index|(my)?sql|(php|web)?shell|php-?info|temp00|vuln|webconfig)(\.php)'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/block-bad-queries/block-bad-queries.php:48:	$query_string_array = apply_filters('query_string_items', array('\(0x', '0x3c62723e', ';!--=', '\(\)\}', ':;\};', '\.\.\/', '\/\*\*\/', '127\.0\.0\.1', 'localhost', 'loopback', '%0a', '%0d', '%00', '%2e%2e', '%0d%0a', '@copy', 'concat(.*)(\(|%28)', 'allow_url_(fopen|include)', '(c99|php|web)shell', 'auto_prepend_file', 'disable_functions?', 'gethostbyname', 'input_file', 'execute', 'safe_mode', 'file_(get|put)_contents', 'mosconfig', 'open_basedir', 'outfile', 'proc_open', 'root_path', 'user_func_array', 'path=\.', 'mod=\.', '(\/|%2f)(:|%3a)(\/|%2f)', 'etc\/(hosts|motd|shadow)', '(globals|request)(=|\[)', 'order(\s|%20)by(\s|%20)1--', 'f(fclose|fgets|fputs|fsbuff)', '\$_(env|files|get|post|request|server|session)', '(\+|%2b)(concat|delete|get|select|union)(\+|%2b)', '(cmd|command)(=|%3d)(chdir|mkdir)', '(absolute_|base|root_)(dir|path)(=|%3d)(ftp|https?)', '(s)?(ftp|inurl|php)(s)?(:(\/|%2f|%u2215)(\/|%2f|%u2215))', '(\/|%2f)(=|%3d|\$&|_mm|cgi(\.|-)|inurl(:|%3a)(\/|%2f)|(mod|path)(=|%3d)(\.|%2e))', '(<|>|\'|")(.*)(\/\*|alter|base64|benchmark|cast|char|concat|convert|create|declare|delete|drop|encode|exec|fopen|function|html|insert|md5|request|script|select|set|union|update)'));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/block-bad-queries/block-bad-queries.php:52:	$referrer_array     = apply_filters('referrer_items', array('@unlink', '100dollars', 'assert\(', 'best-seo', 'blue\s?pill', 'cocaine', 'ejaculat', 'erectile', 'erections', 'hoodia', 'huronriver', 'impotence', 'levitra', 'libido', 'lipitor', 'mopub\.com', 'phentermin', 'print_r\(', 'pro[sz]ac', 'sandyauer', 'semalt\.com', 'todaperfeita', 'tramadol', 'ultram', 'unicauca', 'valium', 'viagra', 'vicodin', 'x00', 'xanax', 'xbshell', 'ypxaieo'));
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/block-bad-queries/block-bad-queries.php:50:	$user_agent_array   = apply_filters('user_agent_items', array('&lt;', '%0a', '%0d', '%27', '%3c', '%3e', '%00', '0x00', '\/bin\/bash', '360Spider', 'acapbot', 'acoonbot', 'alexibot', 'asterias', 'attackbot', 'backdorbot', 'base64_decode', 'becomebot', 'bin\/bash', 'binlar', 'blackwidow', 'blekkobot', 'blexbot', 'blowfish', 'bullseye', 'bunnys', 'butterfly', 'careerbot', 'casper', 'checkpriv', 'cheesebot', 'cherrypick', 'chinaclaw', 'choppy', 'clshttp', 'cmsworld', 'copernic', 'copyrightcheck', 'cosmos', 'crescent', 'cy_cho', 'datacha', 'demon', 'diavol', 'discobot', 'disconnect', 'dittospyder', 'dotbot', 'dotnetdotcom', 'dumbot', 'emailcollector', 'emailsiphon', 'emailwolf', 'eval\(', 'exabot', 'extract', 'eyenetie', 'feedfinder', 'flaming', 'flashget', 'flicky', 'foobot', 'g00g1e', 'getright', 'gigabot', 'go-ahead-got', 'gozilla', 'grabnet', 'grafula', 'harvest', 'heritrix', 'httrack', 'icarus6j', 'jetbot', 'jetcar', 'jikespider', 'kmccrew', 'leechftp', 'libweb', 'linkextractor', 'linkscan', 'linkwalker', 'loader', 'lwp-download', 'masscan', 'miner', 'majestic', 'md5sum', 'mechanize', 'mj12bot', 'morfeus', 'moveoverbot', 'netmechanic', 'netspider', 'nicerspro', 'nikto', 'nutch', 'octopus', 'pagegrabber', 'planetwork', 'postrank', 'proximic', 'purebot', 'pycurl', 'queryn', 'queryseeker', 'radian6', 'radiation', 'realdownload', 'remoteview', 'rogerbot', 'scooter', 'seekerspider', 'semalt', '(c99|php|web)shell', 'shellshock', 'siclab', 'sindice', 'sistrix', 'sitebot', 'site(.*)copier', 'siteexplorer', 'sitesnagger', 'skygrid', 'smartdownload', 'snoopy', 'sosospider', 'spankbot', 'spbot', 'sqlmap', 'stackrambler', 'stripper', 'sucker', 'surftbot', 'sux0r', 'suzukacz', 'suzuran', 'takeout', 'teleport', 'telesoft', 'true_robots', 'turingos', 'turnit', 'unserialize', 'vampire', 'vikspider', 'voideye', 'webleacher', 'webreaper', 'webstripper', 'webvac', 'webviewer', 'webwhacker', 'winhttp', 'wwwoffle', 'woxbot', 'x22', 'xaldon', 'xxxyy', 'yamanalab', 'yioopbot', 'youda', 'zeus', 'zmeu', 'zyborg'));
```

