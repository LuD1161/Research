# Attack Surface: fast-indexing-api

> Generated: 2026-06-16T19:03:59Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/includes/class-instant-indexing.php:177:		add_action( 'wp_ajax_rm_giapi', [ $this, 'ajax_rm_giapi' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/includes/class-instant-indexing.php:178:		add_action( 'wp_ajax_rm_giapi_limits', [ $this, 'ajax_get_limits' ] );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/includes/class-instant-indexing.php:660:			$this->dashboard_menu_hook_suffix = add_menu_page(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/includes/class-instant-indexing.php:669:			$this->dashboard_menu_hook_suffix = add_submenu_page( 'instant-indexing-dashboard', 'Rank Math', __( 'Dashboard', 'fast-indexing-api' ), apply_filters( 'rank_math/indexing_api/capability', 'manage_options' ), 'instant-indexing-dashboard', [ $this, 'show_dashboard' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/includes/class-instant-indexing.php:670:			$this->menu_hook_suffix           = add_submenu_page( 'instant-indexing-dashboard', __( 'Instant Indexing', 'fast-indexing-api' ), __( 'Instant Indexing', 'fast-indexing-api' ), apply_filters( 'rank_math/indexing_api/capability', 'manage_options' ), 'instant-indexing', [ $this, 'show_admin_page' ] );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/includes/class-instant-indexing.php:675:		$this->menu_hook_suffix = add_submenu_page( 'rank-math', __( 'Instant Indexing', 'fast-indexing-api' ), __( 'Instant Indexing', 'fast-indexing-api' ), apply_filters( 'rank_math/indexing_api/capability', 'rank_math_general' ), 'instant-indexing', [ $this, 'show_admin_page' ] );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/http-message/src/UploadedFileInterface.php:36:     * Use this method as an alternative to move_uploaded_file(). This method is
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/http-message/src/UploadedFileInterface.php:39:     * appropriate method (move_uploaded_file(), rename(), or a stream
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/http-message/src/UploadedFileInterface.php:52:     * files via moveTo(), is_uploaded_file() and move_uploaded_file() SHOULD be
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/http-message/src/UploadedFileInterface.php:59:     * @see http://php.net/move_uploaded_file
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/UploadedFile.php:249:     * @see http://php.net/move_uploaded_file
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/UploadedFile.php:271:                : move_uploaded_file($this->file, $targetPath);
```

### Block render_callback (server-rendered blocks)
```
None found
```

### Settings API / Meta Box save handlers
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/includes/class-instant-indexing.php:190:				add_action( 'save_post_' . $post_type, [ $this, 'publish_post' ], 10, 2 );
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/includes/class-instant-indexing.php:203:				add_action( 'save_post_' . $post_type, [ $this, 'bing_publish_post' ], 10, 2 );
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/Utils.php:317:                 * The 'php://input' is a special stream with quirks and inconsistencies.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/Utils.php:321:                if (isset($metaData['uri']) && $metaData['uri'] === 'php://input') {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/ServerRequest.php:175:        $body = new CachingStream(new LazyOpenStream('php://input', 'r+'));
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/assets/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/paragonie/constant_time_encoding/src/Base64DotSlashOrdered.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/paragonie/random_compat/lib/random.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/paragonie/constant_time_encoding/src/Base64.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/paragonie/constant_time_encoding/src/Encoding.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/paragonie/constant_time_encoding/src/Base64DotSlash.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/paragonie/constant_time_encoding/src/Base32.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Utils.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/DateTimeImmutable.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Processor/GitProcessor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Processor/ProcessIdProcessor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Attribute/AsMonologProcessor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Formatter/NormalizerFormatter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Formatter/FluentdFormatter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Formatter/GelfMessageFormatter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Formatter/WildfireFormatter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/ElasticSearchHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/Handler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/StreamHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/SocketHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/NoopHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/MongoDBHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/SlackHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/LogglyHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/FirePHPHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/ChromePHPHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/SamplingHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/ElasticaHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/ProcessableHandlerInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/IFTTTHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/InsightOpsHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/NullHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/GelfHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/ErrorLogHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/AbstractHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/TestHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/MandrillHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/RedisHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/MissingExtensionException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/DoctrineCouchDBHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/FallbackGroupHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/AbstractProcessingHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/RotatingFileHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/CouchDBHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/Slack/SlackRecord.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/AmqpHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/CubeHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/SyslogUdpHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/RollbarHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/PHPConsoleHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/SyslogUdp/UdpSocket.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/PsrHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/FormattableHandlerInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/ZendMonitorHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/RedisPubSubHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/PushoverHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/SymfonyMailerHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/WhatFailureGroupHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/HandlerWrapper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/SyslogHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/WebRequestRecognizerTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/FleepHookHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/BrowserConsoleHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/FormattableHandlerTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/OverflowHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/FingersCrossedHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/BufferHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/TelegramBotHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/LogEntriesHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/GroupHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/SwiftMailerHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/FlowdockHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/MailHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/SlackWebhookHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/LogmaticHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Formatter/HtmlFormatter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Formatter/FormatterInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Formatter/LogglyFormatter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Formatter/MongoDBFormatter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Formatter/ScalarFormatter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/SqsHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/ProcessableHandlerTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Formatter/ElasticsearchFormatter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/FingersCrossed/ErrorLevelActivationStrategy.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/ProcessHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/FingersCrossed/ChannelLevelActivationStrategy.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Formatter/LogstashFormatter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/FingersCrossed/ActivationStrategyInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Formatter/JsonFormatter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Formatter/LogmaticFormatter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/NativeMailerHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/AbstractSyslogHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/HandlerInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/DynamoDbHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Formatter/ChromePHPFormatter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/FilterHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/SendGridHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Formatter/FlowdockFormatter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Formatter/LineFormatter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Processor/IntrospectionProcessor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Processor/MemoryPeakUsageProcessor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Processor/MercurialProcessor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/DeduplicationHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Processor/PsrLogMessageProcessor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Processor/ProcessorInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Formatter/ElasticaFormatter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Processor/MemoryUsageProcessor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Processor/TagProcessor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/Curl/Util.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/NewRelicHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/SignalHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Processor/WebProcessor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Processor/HostnameProcessor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Processor/MemoryProcessor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/ErrorHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/LogRecord.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Registry.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/paragonie/constant_time_encoding/src/Base32Hex.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/paragonie/constant_time_encoding/src/Binary.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Logger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/ResettableInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/paragonie/constant_time_encoding/src/Hex.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/paragonie/constant_time_encoding/src/EncoderInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Processor/UidProcessor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/paragonie/constant_time_encoding/src/Base64UrlSafe.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/paragonie/constant_time_encoding/src/RFC4648.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/includes/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/paragonie/random_compat/psalm-autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/includes/class-instant-indexing-module.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/includes/class-instant-indexing.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Test/TestCase.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/composer/ClassLoader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/composer/installed.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/cache/src/InvalidArgumentException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/symfony/deprecation-contracts/function.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/cache/src/CacheItemPoolInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/cache/src/CacheItemInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/http-client/src/ClientExceptionInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/http-client/src/RequestExceptionInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/http-client/src/ClientInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/http-client/src/NetworkExceptionInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/cache/src/CacheException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient-services/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/LimitStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/Header.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/promises/src/Coroutine.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/UriNormalizer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/firebase/php-jwt/src/ExpiredException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/firebase/php-jwt/src/CachedKeySet.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/StreamWrapper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/PumpStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/MessageTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/UriResolver.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient-services/src/Indexing.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/ralouphie/getallheaders/src/getallheaders.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/Request.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/Rfc7230.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/log/Psr/Log/NullLogger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/functions_include.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/Response.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/log/Psr/Log/InvalidArgumentException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/log/Psr/Log/LoggerInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/log/Psr/Log/LogLevel.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/InflateStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/log/Psr/Log/LoggerAwareInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/log/Psr/Log/LoggerTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/Message.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/MimeType.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient-services/src/Indexing/UrlNotification.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient-services/src/Indexing/UrlNotificationMetadata.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/NoSeekStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/firebase/php-jwt/src/Key.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/log/Psr/Log/AbstractLogger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/log/Psr/Log/LoggerAwareTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/MultipartStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/log/Psr/Log/Test/LoggerInterfaceTest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient/src/Collection.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/firebase/php-jwt/src/SignatureInvalidException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient-services/src/Indexing/PublishUrlNotificationResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/log/Psr/Log/Test/TestLogger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/Stream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient/src/Service/Exception.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/firebase/php-jwt/src/JWT.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/log/Psr/Log/Test/DummyTest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/Uri.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient/src/Model.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/firebase/php-jwt/src/JWK.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/promises/src/functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/promises/src/functions_include.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/promises/src/FulfilledPromise.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/firebase/php-jwt/src/BeforeValidException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/promises/src/TaskQueueInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/promises/src/AggregateException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/promises/src/RejectedPromise.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/promises/src/PromiseInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/DroppingStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient-services/src/Indexing/Resource/UrlNotifications.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/StreamDecoratorTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/LazyOpenStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/promises/src/Promise.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient/src/AccessToken/Verify.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient/src/Service/Resource.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/promises/src/PromisorInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/promises/src/RejectionException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient/src/AccessToken/Revoke.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/ServerRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient/src/Client.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/BufferStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient/src/Http/REST.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/promises/src/Each.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/Query.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient/src/Http/Batch.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient/src/aliases.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/promises/src/CancellationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient/src/Service.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient/src/Task/Runner.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/CachingStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient/src/Task/Exception.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient/src/Task/Composer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/Utils.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient/src/Exception.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient/src/Utils/UriTemplate.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/promises/src/TaskQueue.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/promises/src/Create.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/promises/src/EachPromise.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient/src/Http/MediaFileUpload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/composer/autoload_psr4.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/composer/autoload_namespaces.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/composer/autoload_classmap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient/src/Task/Retryable.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/promises/src/Is.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient/src/AuthHandler/Guzzle7AuthHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/FnStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/composer/InstalledVersions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient/src/AuthHandler/Guzzle6AuthHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/AppendStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/composer/autoload_files.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient/src/AuthHandler/Guzzle5AuthHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/composer/platform_check.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/UploadedFile.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/apiclient/src/AuthHandler/AuthHandlerFactory.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/composer/autoload_real.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/promises/src/Utils.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/composer/autoload_static.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/paragonie/random_compat/other/build_phar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/views/dashboard.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/ApplicationDefaultCredentials.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/FetchAuthTokenCache.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/ServiceAccountSignerTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/http-message/src/RequestInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/http-message/src/UploadedFileInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/AccessToken.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Pool.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/BodySummarizer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/RedirectMiddleware.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/HttpHandler/HttpClientCache.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/HttpHandler/Guzzle7HttpHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/HttpHandler/HttpHandlerFactory.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/HttpHandler/Guzzle6HttpHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/MessageFormatter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/HttpHandler/Guzzle5HttpHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/functions_include.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/RetryMiddleware.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/ClientInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Client.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/HandlerStack.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/ClientTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/RequestOptions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/BodySummarizerInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Middleware.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/http-message/src/ServerRequestInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Utils.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Cookie/SessionCookieJar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Cookie/CookieJar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Cookie/FileCookieJar.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Exception/TooManyRedirectsException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Exception/BadResponseException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Exception/RequestException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Exception/InvalidArgumentException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Exception/TransferException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Exception/ServerException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Handler/CurlMultiHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Handler/CurlFactoryInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Handler/MockHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Handler/HeaderProcessor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Handler/Proxy.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Handler/CurlHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Handler/EasyHandle.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Exception/GuzzleException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Exception/ConnectException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Exception/ClientException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Handler/StreamHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Handler/CurlFactory.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Cookie/CookieJarInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Cookie/SetCookie.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/PrepareBodyMiddleware.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/http-message/src/UriInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/MessageFormatterInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/TransferStats.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/http-message/src/StreamInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/http-message/src/MessageInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/psr/http-message/src/ResponseInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/SignBlobInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/ProjectIdProviderInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/CacheTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/UpdateMetadataInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/CredentialsLoader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/views/google-settings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/Middleware/ProxyAuthTokenMiddleware.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/Middleware/SimpleMiddleware.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/Middleware/ScopedAccessTokenMiddleware.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/Middleware/AuthTokenMiddleware.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/Credentials/IAMCredentials.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/Credentials/GCECredentials.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/Credentials/UserRefreshCredentials.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/Credentials/ServiceAccountJwtAccessCredentials.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/Credentials/ServiceAccountCredentials.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/Cache/InvalidArgumentException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/Cache/TypedItem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/Cache/SysVCacheItemPool.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/Cache/MemoryCacheItemPool.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/Credentials/AppIdentityCredentials.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/Cache/Item.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/Iam.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/views/bing-settings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/FetchAuthTokenInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/Credentials/InsecureCredentials.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/views/index.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/GetQuotaProjectInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/GCECache.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/views/indexnow-history.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/views/console.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/google/auth/src/OAuth2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/PrimeField.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BinaryField/Integer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/BCMath.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/GMP/DefaultEngine.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/PHP32.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/PHP64.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/OpenSSL.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/PHP/DefaultEngine.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/PHP/Base.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/PHP/Reductions/EvalBarrett.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/PHP/Reductions/PowerOfTwo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/PHP/Reductions/Classic.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/PHP/Reductions/Barrett.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/PHP/Reductions/MontgomeryMult.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/PHP/Reductions/Montgomery.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/PHP/OpenSSL.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/PHP/Montgomery.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/BCMath/DefaultEngine.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/BCMath/Base.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/BCMath/Reductions/EvalBarrett.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/BCMath/Reductions/Barrett.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/BCMath/OpenSSL.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/BCMath/BuiltIn.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/PHP.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/Engine.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/GMP.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BinaryField.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/Common/FiniteField.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/Common/FiniteField/Integer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/PrimeField/Integer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/MaskGenAlgorithm.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/AlgorithmIdentifier.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/GeneralName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/ECPrivateKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/FieldElement.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/Pentanomial.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/RSAPublicKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/Validity.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/IssuingDistributionPoint.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/Attribute.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/PBKDF2params.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/OneAsymmetricKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/AdministrationDomainName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/EcdsaSigValue.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/PrivateDomainName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/netscape_ca_policy_url.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/HoldInstructionCode.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/BasicConstraints.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/CRLNumber.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/Time.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/CertificationRequestInfo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/PBEParameter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/SubjectDirectoryAttributes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/PublicKeyInfo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/Extension.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/PolicyQualifierInfo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/DistributionPoint.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/OrganizationName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/CertificateIssuer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/GeneralSubtrees.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/CRLDistributionPoints.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/AttributeValue.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/RSASSA_PSS_params.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/AttributeTypeAndValue.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/DHParameter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/ExtKeyUsageSyntax.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/CertificationRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/PolicyMappings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/SpecifiedECDomain.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/AnotherName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/SignedPublicKeyAndChallenge.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/ReasonFlags.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/PolicyQualifierId.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/DirectoryString.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/DssSigValue.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/FieldID.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/OrganizationalUnitNames.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/GeneralSubtree.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/EncryptedData.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/DigestInfo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/PolicyInformation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/ORAddress.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/EDIPartyName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/PrivateKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/ECPoint.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/InvalidityDate.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/ExtensionAttribute.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/CPSuri.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/BuiltInDomainDefinedAttributes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/AttributeType.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/NoticeReference.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/PrivateKeyUsagePeriod.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/AuthorityInfoAccessSyntax.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/Certificate.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/Name.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/CertPolicyId.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/BaseDistance.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/KeyUsage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/Attributes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/NetworkAddress.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/RDNSequence.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/SubjectPublicKeyInfo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/BuiltInStandardAttributes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/Characteristic_two.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/AccessDescription.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/PublicKeyAndChallenge.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/TBSCertList.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/netscape_comment.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/DistributionPointName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/PrivateKeyInfo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/RevokedCertificate.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/CertificatePolicies.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/SubjectAltName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/KeyIdentifier.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/PKCS9String.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/PersonalName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/AuthorityKeyIdentifier.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/TBSCertificate.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/RC2CBCParameter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/PostalAddress.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/PBMAC1params.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/TerminalIdentifier.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/Curve.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/CertificateSerialNumber.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/RSAPrivateKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/netscape_cert_type.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/HashAlgorithm.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/CRLReason.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/DSAPublicKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/DSAPrivateKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/UserNotice.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/GeneralNames.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/NameConstraints.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/RelativeDistinguishedName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/Prime_p.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/OtherPrimeInfo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/KeyPurposeId.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/ExtensionAttributes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/OtherPrimeInfos.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/Extensions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/ECParameters.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/Trinomial.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/CountryName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/DSAParams.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/NumericUserIdentifier.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/PBES2params.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/EncryptedPrivateKeyInfo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/UniqueIdentifier.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/DisplayText.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/IssuerAltName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/CertificateList.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/PublicKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/SubjectInfoAccessSyntax.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Maps/BuiltInDomainDefinedAttribute.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1/Element.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ANSI.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/bootstrap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/ASN1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/File/X509.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/Random.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Net/SFTP.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/RC4.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/ChaCha20.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/DH.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/System/SSH/Agent.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Parameters.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Net/SFTP/Stream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/System/SSH/Agent/Identity.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/RSA/PrivateKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/BaseCurves/TwistedEdwards.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/BaseCurves/Montgomery.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/BaseCurves/Base.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/System/SSH/Common/Traits/ReadBytes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/BaseCurves/KoblitzPrime.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/BaseCurves/Prime.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/DH/PublicKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/BaseCurves/Binary.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/DH/PrivateKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/DH/Parameters.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/PrivateKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/PublicKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/RSA/PublicKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/PublicKeyLoader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Formats/Keys/PKCS1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/Salsa20.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/RSA/Formats/Keys/PuTTY.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/TripleDES.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/RC2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Formats/Keys/MontgomeryPublic.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Formats/Keys/libsodium.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/RSA/Formats/Keys/PKCS8.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Formats/Keys/PuTTY.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Formats/Keys/Common.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Formats/Signature/SSH2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/RSA/Formats/Keys/OpenSSH.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Formats/Signature/Raw.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Formats/Signature/ASN1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/RSA/Formats/Keys/XML.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Formats/Keys/PKCS8.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Formats/Keys/OpenSSH.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Formats/Keys/MontgomeryPrivate.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Formats/Keys/XML.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/RSA/Formats/Keys/PSS.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Exception/UnsupportedOperationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Exception/NoSupportedAlgorithmsException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/RSA/Formats/Keys/Raw.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Exception/UnsupportedAlgorithmException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/Blowfish.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/sect131r2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/sect571r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/RSA/Formats/Keys/MSBLOB.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/brainpoolP256r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/secp224k1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/secp192r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/brainpoolP384t1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/brainpoolP224t1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/RSA/Formats/Keys/PKCS1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/secp224r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/brainpoolP160t1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/secp160r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/prime239v2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/secp521r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/sect163r2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/DSA/PrivateKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/nistp256.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/brainpoolP384r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/nistk283.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/brainpoolP224r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/sect283k1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/brainpoolP192r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/DSA/Parameters.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/brainpoolP512r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/Curve25519.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/prime192v3.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/nistp521.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/secp112r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/prime239v3.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/nistk409.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/sect409k1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/prime256v1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/secp128r2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/brainpoolP320t1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/brainpoolP160r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/sect233r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/brainpoolP512t1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/secp256r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/nistp192.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/sect163k1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/sect239k1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/Curve448.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/secp112r2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/sect409r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/brainpoolP192t1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/Ed25519.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/nistk233.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/secp256k1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/sect233k1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/prime239v1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/DSA/PublicKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/brainpoolP256t1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/sect193r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/secp192k1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/secp160k1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/secp384r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/nistb409.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/sect571k1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/sect283r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/sect113r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/sect163r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/DH/Formats/Keys/PKCS8.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/DH/Formats/Keys/PKCS1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/DSA/Formats/Keys/PKCS1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/nistp384.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/DSA/Formats/Keys/OpenSSH.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/DSA/Formats/Keys/PuTTY.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/DSA/Formats/Keys/PKCS8.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/DSA/Formats/Keys/XML.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/Ed448.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/DSA/Formats/Signature/ASN1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/DSA/Formats/Keys/Raw.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/DSA/Formats/Signature/SSH2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/secp128r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/nistk163.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/secp160r2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/DSA/Formats/Signature/Raw.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/sect131r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/sect113r2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/nistt571.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/AES.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/nistp224.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/brainpoolP320r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Exception/BadConfigurationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/nistb233.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/prime192v1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/prime192v2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/Hash.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Exception/UnsupportedFormatException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/Curves/sect193r2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Exception/BadModeException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Exception/UnableToConnectException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Exception/UnsupportedCurveException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/Twofish.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Exception/InsufficientSetupException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/Rijndael.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Exception/InconsistentSetupException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/RSA.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Exception/NoKeyLoadedException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Exception/FileNotFoundException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/DES.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Exception/BadDecryptionException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/DSA.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/Common/StreamCipher.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/Common/PublicKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Common/Functions/Strings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Exception/ConnectionClosedException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/Common/PrivateKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/Common/Traits/Fingerprint.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/Common/AsymmetricKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/Common/Traits/PasswordProtected.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/Common/BlockCipher.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/Common/SymmetricKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/Common/Formats/Keys/PKCS1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/Common/Formats/Keys/OpenSSH.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Net/SSH2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/Common/Formats/Keys/PKCS8.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/Common/Formats/Keys/PKCS.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/Common/Formats/Keys/PuTTY.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/Common/Formats/Signature/Raw.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **5**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **5**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **0**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **0**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/Curl/Util.php:40:     * @return bool|string         @see curl_exec
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/Curl/Util.php:45:            $curlResponse = curl_exec($ch);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Handler/CurlHandler.php:44:        \curl_exec($easy->handle);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Utils.php:89:        if (\function_exists('curl_multi_exec') && \function_exists('curl_exec')) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/guzzle/src/Utils.php:91:        } elseif (\function_exists('curl_exec')) {
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/paragonie/random_compat/other/build_phar.php:4:    mkdir($dist, 0755);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/paragonie/random_compat/other/build_phar.php:7:    unlink($dist.'/random_compat.phar');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/paragonie/random_compat/other/build_phar.php:48:            file_put_contents(
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Crypt/EC/BaseCurves/Prime.php:672:        file_put_contents('temp.txt', $str);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Net/SFTP/Stream.php:387:     * fseek, fputs  / fwrite, fgets / fread and ftruncate.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Net/SFTP/Stream.php:612:    private function _mkdir($path, $mode, $options)
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Net/SFTP/Stream.php:619:        return $this->sftp->mkdir($path, $mode, $options & STREAM_MKDIR_RECURSIVE);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Net/SFTP/Stream.php:625:     * Only valid $options is STREAM_MKDIR_RECURSIVE per <http://php.net/streamwrapper.rmdir>, however,
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Net/SFTP/Stream.php:626:     * <http://php.net/rmdir>  does not have a $recursive parameter as mkdir() does so I don't know how
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Net/SFTP/Stream.php:627:     * STREAM_MKDIR_RECURSIVE is supposed to be set. Also, when I try it out with rmdir() I get 8 as
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Net/SFTP/Stream.php:635:    private function _rmdir($path, $options)
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Net/SFTP/Stream.php:642:        return $this->sftp->rmdir($path);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Net/SFTP/Stream.php:680:    private function _unlink($path)
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Net/SFTP.php:1956:    public function mkdir($dir, $mode = -1, $recursive = false)
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Net/SFTP.php:1973:                $result = $this->mkdir_helper($temp, $mode);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Net/SFTP.php:1978:        return $this->mkdir_helper($dir, $mode);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Net/SFTP.php:1989:    private function mkdir_helper($dir, $mode)
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Net/SFTP.php:2021:    public function rmdir($dir)
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/System/SSH/Agent.php:282:        if (strlen($this->socket_buffer) != fwrite($this->fsock, $this->socket_buffer)) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/autoload.php:12:            fwrite(STDERR, $err);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/composer/platform_check.php:17:            fwrite(STDERR, 'Composer detected issues in your platform:' . PHP_EOL.PHP_EOL . implode(PHP_EOL, $issues) . PHP_EOL.PHP_EOL);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/StreamHandler.php:178:        fwrite($stream, (string) $record['formatted']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/StreamHandler.php:183:        $this->errorMessage = preg_replace('{^(fopen|mkdir)\(.*?\): }', '', $msg);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/StreamHandler.php:213:            $status = mkdir($dir, 0777, true);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/RotatingFileHandler.php:160:                // suppress errors here as unlink() might fail if two processes
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/RotatingFileHandler.php:165:                unlink($file);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/SocketHandler.php:307:    protected function fwrite(string $data)
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/SocketHandler.php:310:            throw new \LogicException('fwrite called but $this->resource is not a resource');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/SocketHandler.php:313:        return @fwrite($this->resource, $data);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/monolog/monolog/src/Monolog/Handler/SocketHandler.php:402:                $chunk = $this->fwrite($data);
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/FnStream.php:60:     * An unserialize would allow the __destruct to run when the unserialized value goes out of scope.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/guzzlehttp/psr7/src/FnStream.php:66:        throw new \LogicException('FnStream should never be unserialized');
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger.php:411:     * __serialize() / __unserialize() were introduced in PHP 7.4:
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger.php:429:     * Will be called, automatically, when unserialize() is called on a BigInteger object.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/fast-indexing-api/vendor/phpseclib/phpseclib/phpseclib/Math/BigInteger/Engines/Engine.php:359:     * Will be called, automatically, when unserialize() is called on a BigInteger object.
```

