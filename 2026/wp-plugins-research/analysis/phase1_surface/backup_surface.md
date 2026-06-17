# Attack Surface: backup

> Generated: 2026-06-16T19:03:53Z

## Section 1: Entry Points

### WordPress AJAX Handlers (authenticated)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Wordpress/Init.php:122:			add_action('wp_ajax_jetbackup_api', ['\JetBackup\Ajax\Ajax', 'main']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Wordpress/Init.php:126:				add_action('wp_ajax_jetbackup_heartbeat', ['\JetBackup\Ajax\Ajax', 'heartbeat']);
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
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Wordpress/UI.php:46:		$hook = add_menu_page('JetBackup', __('JetBackup','jetbackup'), 'manage_options', 'jetbackup', [ '\JetBackup\Wordpress\UI', 'loadUI'], $eddie_icon, 74);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Wordpress/UI.php:60:			$hook = add_submenu_page('jetbackup', $page['page_title'], __($page['menu_title'],'jetbackup'), 'manage_options', 'jetbackup#!/' . $page['slug'], function() {}, $position+1);
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
None found
```

### Widgets
```
None found
```

### Activation / Deactivation / Uninstall Hooks
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/backup.php:21:register_activation_hook(__FILE__, ['\JetBackup\Wordpress\Installer', 'install']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/backup.php:22:register_uninstall_hook(__FILE__,  ['\JetBackup\Wordpress\Installer', 'uninstall']);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/backup.php:23:register_deactivation_hook(__FILE__, ['\JetBackup\Wordpress\Installer', 'deactivate']);
```

### XML-RPC / Heartbeat / Raw input (php://input)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Ajax.php:30:		$input = file_get_contents("php://input");
```

### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/public/cron/cron.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Factory.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/functions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/File/BZFile.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/File/GZFile.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/File/RegFile.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/Data/SetterGetter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/File/File.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/File/FileInfo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/Archive.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/Header/Header.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/Header/Sparse/SparseRegion.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/Header/Sparse/Sparse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/Scan/Scan.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/Gzip.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/Scan/ScanFile.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Filesystem/File.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Filesystem/AtomicWrite.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Backup/BackupAccount.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Crontab/Crontab.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Backup/BackupConfig.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Export/Export.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Backup/Backup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Schedule/ScheduleItem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Schedule/Schedule.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Export/Vendor/Vendor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/License/LicenseLocalKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/iAjax.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/License/License.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Settings/Updates.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Settings/Security.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/ListRecord.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Settings/Integrations.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Settings/Maintenance.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Settings/Settings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Settings/Automation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Settings/Logging.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Settings/Notifications.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Settings/Restore.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Settings/Performance.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Settings/General.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/aAjax.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Ajax.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Export/Vendor/DirectAdmin.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Export/Vendor/CPanel.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/UserInput/UserInput.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/JetBackupLinux/JetBackupLinuxObject.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/JetBackupLinux/JetBackupLinux.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/JetBackupLinux/Query.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/JetBackupLinux/QueueItem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/MFA/GoogleAuthenticator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Data/ReflectionObject.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Downloader/Downloader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ValidateDestination.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/DeleteBackupJob.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ListSchedules.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ValidateMFA.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/GetSettingsMaintenance.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ListQueueItems.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/GetSettingsPerformance.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/GetSettingsNotifications.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/DeleteDownload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/DeleteSnapshot.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ListDestinations.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ManageSettingsUpdates.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/GetDatabaseTables.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/GetSystemInfo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/CreateSupportUser.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/GetBackup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/GetBackupJob.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/GetDashboard.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ManageBackupJob.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ManageSettingsAutomation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ManageSchedule.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ManageSettingsNotifications.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/GetSettingsGeneral.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ExecuteCron.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/PanelPreload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/DuplicateBackupJob.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ManageSettingsSecurity.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ClearAlerts.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/GetSettingsSecurity.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/GetSettingsRestore.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/DeleteSchedule.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/AddToQueue.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ManageSettingsMaintenance.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/GetSettingsLogging.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ClearCompletedQueueItems.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ListDownloads.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/EditBackupNotes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/DeleteDestination.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/GetSchedule.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/DestinationSetExportConfig.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ManageSettingsPerformance.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/GetSettingsAutomation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/LockSnapshot.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/FileManager.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ListBackupJobs.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ManageShowcase.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/GetQRCode.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ListBackups.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/GetLog.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/GetQueueItem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ManageDestination.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ManageSettingsIntegrations.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/EnableBackupJob.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/GetDestination.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/SendTestEmail.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/StartOverQueueItem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ManageSettingsRestore.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/EnableDestination.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/GetSettingsUpdates.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ListAlerts.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Entities/Util.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/GetSettingsIntegrations.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/AbortQueueItem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ManageSettingsGeneral.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ManageSettingsLogging.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Ajax/Calls/ListDatabaseTables.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Data/Mysqldump.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Data/ArrayData.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Cron/Cron.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Data/DBObject.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Data/SleekStore.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Cron/Task/RetentionCleanup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Cron/Task/Task.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Cron/Task/Extract.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Cron/Task/System.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Cron/Task/Download.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Cron/Task/DownloadBackupLog.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Cron/Task/Backup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Cron/Task/PreRestore.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Data/Engine.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Cron/Task/Reindex.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/JetBackup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Cron/Task/Export.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Showcase/Showcase.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/ResumableTask/ResumableTaskItem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/ResumableTask/ResumableTask.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Cron/Task/Restore.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Integrations/Integrations.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Web/JetHttpResponse.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Wordpress/UI.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Wordpress/Installer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Web/File/FileStream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Web/File/FileException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Web/File/FileChunk.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Web/File/FileChunkIterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Web/File/FileDownload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SleekDB/SleekDB.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/ParagonIE/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Wordpress/Wordpress.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/Mysqldump/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SleekDB/Cache.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/Mysqldump/Mysqldump.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SleekDB/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/ParagonIE/ConstantTime/Base64DotSlashOrdered.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/ParagonIE/ConstantTime/EncoderInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/ParagonIE/ConstantTime/Base64.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/ParagonIE/ConstantTime/Base64DotSlash.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Wordpress/Init.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/ParagonIE/ConstantTime/Base32Hex.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/ParagonIE/ConstantTime/Encoding.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SleekDB/Classes/DocumentUpdater.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/ParagonIE/ConstantTime/Base32.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SleekDB/Classes/DocumentFinder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SleekDB/Classes/ConditionsHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SleekDB/Classes/CacheHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SleekDB/Classes/IoHelper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/ParagonIE/ConstantTime/Hex.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/ParagonIE/ConstantTime/Binary.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SocketAPI/Socket/Socket.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SleekDB/Classes/NestedHelper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SocketAPI/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SleekDB/Store.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SleekDB/Classes/DocumentReducer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Wordpress/MySQL.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/ParagonIE/ConstantTime/Base64UrlSafe.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/ParagonIE/ConstantTime/RFC4648.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SocketAPI/Client/WellKnown.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Wordpress/Blog.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SleekDB/Exceptions/IdNotAllowedException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SocketAPI/Client/Client.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SleekDB/Exceptions/JsonException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SleekDB/Exceptions/InvalidPropertyAccessException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SocketAPI/SocketAPI.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SleekDB/Exceptions/InvalidArgumentException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SocketAPI/Message/Message.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Wordpress/Helper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SleekDB/Exceptions/InvalidConfigurationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SocketAPI/Message/MessageWriter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SocketAPI/Message/MessageReader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SleekDB/Query.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SleekDB/Exceptions/IOException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SleekDB/QueryBuilder.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SocketAPI/Protocol/Protocol.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Wordpress/Update.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/SGB/Migration.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SocketAPI/Protocol/ProtocolListener.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/DirIterator/DirIteratorFile.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/DirIterator/DirIteratorExcludes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Integrations/Vendors/Woocommerce.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/SGB/Extractor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/DirIterator/DirIterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Web/JetHttpResponseHeaders.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Integrations/Vendors/Supercache.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Integrations/Vendors/Elementor.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Integrations/Vendors/Autoptimize.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Web/JetHttp.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Integrations/Vendors/W3TotalCache.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SocketAPI/Exception/SocketAPIException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SocketAPI/Exception/WellKnownException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SocketAPI/Exception/ClientException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SocketAPI/Exception/MessageException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SocketAPI/Exception/SocketException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SimpleThenticator/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/bootstrap.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/autoload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/RuntimeException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/Twofish.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/OutOfRangeException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/UnsupportedAlgorithmException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/UnsupportedFormatException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/OutOfBoundsException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/Common/FiniteField.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BinaryField/Integer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/UnsupportedOperationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/NoSupportedAlgorithmsException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/InsufficientSetupException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/UnsupportedCurveException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/InvalidArgumentException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/DH.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Parameters.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/BadConfigurationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/PublicKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/PrivateKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/Common/FiniteField/Integer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/RSA/PublicKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/UnexpectedValueException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/RSA/PrivateKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/BadModeException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/FileNotFoundException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/BaseCurves/TwistedEdwards.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/BaseCurves/Montgomery.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/BaseCurves/Binary.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/BaseCurves/Base.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/DH/PublicKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/DH/Parameters.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/DH/PrivateKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/RangeException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/BaseCurves/KoblitzPrime.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/LengthException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/BaseCurves/Prime.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/RC4.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/UnableToConnectException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/ChaCha20.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Formats/Keys/JWK.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Formats/Keys/OpenSSH.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/sect193r2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/sect163r2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Formats/Keys/PKCS8.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/nistp224.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Formats/Signature/ASN1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/secp224k1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/secp160r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/secp128r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/nistb409.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/brainpoolP384t1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/nistk233.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/sect571k1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/brainpoolP192t1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/nistk283.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/nistp384.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/secp521r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/sect409r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/secp384r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/sect233r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/brainpoolP320t1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/sect409k1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/sect283k1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/secp112r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/RSA/Formats/Keys/PuTTY.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/RSA/Formats/Keys/PSS.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/prime192v3.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/Curve25519.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/nistk409.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/brainpoolP224r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/RSA/Formats/Keys/PKCS8.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/brainpoolP512r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/secp256k1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/RSA/Formats/Keys/OpenSSH.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/nistp256.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/brainpoolP384r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/nistp192.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/prime239v3.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/prime256v1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/brainpoolP192r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/RSA/Formats/Keys/PKCS1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/Curve448.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/RSA/Formats/Keys/XML.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/sect239k1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/secp128r2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/nistp521.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/prime239v1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/nistb233.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/prime239v2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/secp256r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/sect163k1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/secp192k1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/RSA/Formats/Keys/Raw.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/sect233k1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/sect283r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/Ed25519.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/brainpoolP224t1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/RSA/Formats/Keys/MSBLOB.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/brainpoolP160r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/Ed448.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/RSA/Formats/Keys/JWK.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/brainpoolP512t1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/sect193r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/secp112r2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/secp160k1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/secp192r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/secp224r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Formats/Signature/IEEE.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/brainpoolP256r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/brainpoolP160t1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/sect113r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/brainpoolP320r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/sect163r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Formats/Signature/SSH2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/sect131r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Formats/Signature/Raw.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/brainpoolP256t1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/secp160r2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/sect131r2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/sect571r1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Formats/Keys/libsodium.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/sect113r2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/nistk163.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/prime192v1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/prime192v2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Formats/Keys/Common.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Formats/Keys/MontgomeryPrivate.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Formats/Keys/MontgomeryPublic.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/BadMethodCallException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/InconsistentSetupException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/BadDecryptionException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/NoKeyLoadedException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Formats/Keys/XML.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Formats/Keys/PuTTY.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/Salsa20.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Formats/Keys/PKCS1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/DH/Formats/Keys/PKCS1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/RC2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/DH/Formats/Keys/PKCS8.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/AES.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/TripleDES.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/LogicException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/ExceptionInterface.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC/Curves/nistt571.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/Random.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/ConnectionClosedException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Exception/BadFunctionCallException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/PublicKeyLoader.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/DSA/Parameters.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/DSA/PrivateKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/Rijndael.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/DSA/PublicKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Element.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/EC.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ANSI.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/PrimeField.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/Blowfish.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/RSA.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/Hash.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/DSA.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Common/ConstantUtilityTrait.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/Common/BlockCipher.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/Common/AsymmetricKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/X509.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/Common/PrivateKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Common/Functions/Strings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Net/SFTP.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/DES.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Net/SFTP/Attribute.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Net/SFTP/StatusCode.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Net/SFTP/FileType.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/DSA/Formats/Signature/ASN1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Net/SFTP/Stream.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/DSA/Formats/Keys/Raw.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/DSA/Formats/Keys/PKCS1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/DSA/Formats/Keys/XML.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/DSA/Formats/Keys/PuTTY.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/DSA/Formats/Keys/PKCS8.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/DSA/Formats/Signature/SSH2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/Common/Traits/Fingerprint.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/DSA/Formats/Keys/OpenSSH.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/Common/Traits/PasswordProtected.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/UniqueIdentifier.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/IssuerAltName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/NumericUserIdentifier.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/Engine.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/ECParameters.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/OtherPrimeInfos.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/EncryptedPrivateKeyInfo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/KeyPurposeId.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/BCMath.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/Common/Formats/Signature/Raw.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/NameConstraints.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/HashAlgorithm.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/RSAPrivateKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/DSAPrivateKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/GeneralNames.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/TBSCertificate.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/AuthorityKeyIdentifier.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/Common/Formats/Keys/PKCS.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/DistributionPointName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/PHP.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/PersonalName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/SubjectPublicKeyInfo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/PBMAC1params.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/BaseDistance.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/Name.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/netscape_comment.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/PrivateKeyUsagePeriod.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/BuiltInStandardAttributes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/CertPolicyId.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/Common/Formats/Keys/PKCS8.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/BuiltInDomainDefinedAttributes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/ExtensionAttribute.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/OrganizationalUnitNames.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/DssSigValue.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/PolicyQualifierId.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/EncryptedData.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/AttributeTypeAndValue.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/SpecifiedECDomain.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/SignedPublicKeyAndChallenge.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/OrganizationName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/GeneralSubtrees.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/Prime_p.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/PublicKeyInfo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/SubjectDirectoryAttributes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/netscape_ca_policy_url.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/InvalidityDate.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/CertificateIssuer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/DistributionPoint.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/EcdsaSigValue.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/PBKDF2params.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/Extension.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/AlgorithmIdentifier.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/PrivateDomainName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/GeneralName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/RSAPublicKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/ECPrivateKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/Attribute.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/IssuingDistributionPoint.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/MaskGenAlgorithm.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/Pentanomial.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/BasicConstraints.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/FieldElement.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/Validity.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/Time.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/CRLNumber.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/HoldInstructionCode.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/CRLDistributionPoints.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/AdministrationDomainName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/AttributeValue.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/OneAsymmetricKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/CertificationRequestInfo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/AnotherName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/PBEParameter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/PolicyMappings.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/ReasonFlags.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/ExtKeyUsageSyntax.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/DirectoryString.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/DHParameter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/CertificationRequest.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/PolicyQualifierInfo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/PrivateKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/DigestInfo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/AttributeType.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/GeneralSubtree.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/PolicyInformation.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/NoticeReference.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/ORAddress.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/Certificate.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/FieldID.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/RSASSA_PSS_params.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/KeyUsage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/RDNSequence.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/NetworkAddress.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/EDIPartyName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/CPSuri.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/AuthorityInfoAccessSyntax.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/PublicKeyAndChallenge.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/TBSCertList.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/PrivateKeyInfo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/RevokedCertificate.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/Characteristic_two.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/CertificatePolicies.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/SubjectAltName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/Attributes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/KeyIdentifier.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/AccessDescription.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/Common/Formats/Keys/OpenSSH.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/RC2CBCParameter.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/Common/Formats/Keys/PuTTY.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/TerminalIdentifier.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/CertificateSerialNumber.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/CRLReason.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/ECPoint.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/DSAPublicKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/PostalAddress.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/RelativeDistinguishedName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/OtherPrimeInfo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/ExtensionAttributes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/netscape_cert_type.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/Extensions.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/Curve.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/CountryName.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/PBES2params.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/PKCS9String.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/Common/Formats/Keys/JWK.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/PHP32.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/PHP64.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/UserNotice.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/Common/Formats/Keys/PKCS1.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/CertificateList.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/PublicKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/BuiltInDomainDefinedAttribute.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/Trinomial.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/OpenSSL.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/GMP/DefaultEngine.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/DisplayText.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/DSAParams.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/DSA/Formats/Signature/Raw.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Net/SFTP/OpenFlag.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/File/ASN1/Maps/SubjectInfoAccessSyntax.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Net/SFTP/OpenFlag5.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/Common/StreamCipher.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/Common/PublicKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Net/SFTP/PacketType.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BinaryField.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/GMP.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/SimpleThenticator/SimpleAuthenticator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/PHP/OpenSSL.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/BCMath/BuiltIn.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/BCMath/DefaultEngine.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/BCMath/Base.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/BCMath/OpenSSL.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Upload/Upload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/PHP/DefaultEngine.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/PrimeField/Integer.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/PHP/Montgomery.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/PHP/Base.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Net/SSH2/ChannelConnectionFailureReason.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Net/SSH2/TerminalMode.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Crypt/Common/SymmetricKey.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Net/SSH2/MessageType.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/System/SSH/Agent.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Net/SSH2/DisconnectReason.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Net/SSH2/MessageTypeExtra.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/PHP/Reductions/Classic.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/PHP/Reductions/MontgomeryMult.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/PHP/Reductions/Barrett.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/BCMath/Reductions/EvalBarrett.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/PHP/Reductions/PowerOfTwo.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/BCMath/Reductions/Barrett.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/PHP/Reductions/EvalBarrett.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/PHP/Reductions/Montgomery.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Net/SSH2.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/System/SSH/Agent/Identity.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Alert/Alert.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Cache/CacheHandler.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Snapshot/SnapshotItem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Download/Download.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/System/SSH/Common/Traits/ReadBytes.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Snapshot/SnapshotDownload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Snapshot/Snapshot.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/CLI/CLI.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Queue/QueueItemExtract.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/CLI/Command.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/BackupJob/BackupJob.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Queue/QueueItemReindex.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Queue/QueueItemDownload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Notification/Notification.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Queue/QueueItemExport.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Queue/Progress.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Notification/Email.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Log/LogController.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Log/Logger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Log/StdLogger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Queue/QueueItemRetentionCleanup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Log/FileLogger.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/HttpRequestException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Queue/aQueueItem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/QueueException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/ReindexException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Queue/QueueItemBackup.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/ExtractException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/TaskException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/DestinationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/RegistrationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/DirIteratorFileVanishedException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/DirIteratorFileIOException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/AjaxException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/DirIteratorException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/ExportException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/ScheduleException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/CronException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/RestoreException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/IOException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/BackupException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/ValidationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/ConfigException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/JetBackupLinuxException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/ConnectionException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/LogException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/VanishedException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/ExecutionTimeException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/NotificationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/SnapshotMetaException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/SGBExtractorException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/IOVanishedException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/ArchiveException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/CrontabException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/FieldsValidationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/SGBMigrationException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/GzipException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/DownloaderException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Queue/QueueItemRestore.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/LicenseException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/JBException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Queue/QueueItem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/DBException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Queue/Queue.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Exception/UserInputException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Queue/QueueItemSystem.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Config/Config.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Restore/Restore.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/DestinationFile.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/DestinationDiskUsage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Tree.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/ScanDirIterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/ScanDirIteratorFile.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/DestinationWrapper.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Restore/restore.template.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Destination.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Encryption/Crypt.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/IO/Execute.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Config/System.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/IO/Lock.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/IO/Process.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Config/Locations.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/S3/S3.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/S3/ChunkedDownload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/Local/ChunkedDownload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/Local/ChunkedUpload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/Local/DirIterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/Local/Local.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/S3/ChunkedUpload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/S3/DirIterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/S3/Client/Client.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/S3/Client/ObjectData.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/S3/Client/ClientManager.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/S3/Client/ClientRetry.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/S3/Client/ListObjects.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/S3/Client/Exception/ClientException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/JetStorage/JetStorage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/FTP/ChunkedDownload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/SFTP/SFTP.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/SFTP/ChunkedDownload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/SFTP/ChunkedUpload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/SFTP/DirIterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/FTP/FTP.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/FTP/ChunkedUpload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/FTP/DirIterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/FTP/FTPClient.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/DropBox/ChunkedDownload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/Box/Cache.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/DropBox/Client/Client.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/DropBox/Client/ClientException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/Box/ChunkedDownload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/Box/Box.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/Box/ChunkedUpload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/Box/Client/ListFiles.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/Box/Client/Client.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/Box/Client/File.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/Box/Client/ClientException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/Box/DirIterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/DropBox/DropBox.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/DropBox/ChunkedUpload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/DropBox/DirIterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/pCloud/pCloud.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/OneDrive/ChunkedDownload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/OneDrive/OneDrive.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/OneDrive/ChunkedUpload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/OneDrive/DirIterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/pCloud/ChunkedDownload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/OneDrive/Client/Client.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/OneDrive/Client/ClientException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/pCloud/ChunkedUpload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/pCloud/DirIterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/pCloud/Client/File.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/pCloud/Client/Client.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/pCloud/Client/DirIterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/pCloud/Client/ClientException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Integration/DestinationDiskUsage.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Integration/Destination.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/GoogleDrive/ChunkedUpload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/GoogleDrive/Cache.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/GoogleDrive/ChunkedDownload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/GoogleDrive/GoogleDrive.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/GoogleDrive/DirIterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Integration/DestinationChunkedUpload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/GoogleDrive/Client/Client.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/Imported/ChunkedUpload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/Imported/ChunkedDownload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/Imported/DirIterator.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/Imported/Imported.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/GoogleDrive/Client/File.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/GoogleDrive/Client/ListFiles.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Vendors/GoogleDrive/Client/ClientException.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Integration/DestinationChunkedDownload.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Integration/DestinationFile.php
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Destination/Integration/DestinationDirIterator.php
```

## Section 2: Authentication & Authorization

### Capability Checks
- `current_user_can` calls: **7**

### Nonce Verifications
- `wp_verify_nonce` / `check_ajax_referer` / `check_admin_referer` calls: **2**

## Section 3: Dangerous Operations

### Direct Database Queries
- `$wpdb->(query|get_var|get_row|get_col|get_results)` calls: **1**

### Database Queries Using prepare()
- `$wpdb->prepare` calls: **0**

### External HTTP Requests
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Web/JetHttp.php:364:		curl_exec($this->_curl);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Web/JetHttp.php:376:		$this->_response->setBody(curl_exec($this->_curl));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Wordpress/Wordpress.php:45:		return wp_remote_get($url, $args);
```

### File System Operations (first 30 matches)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/File/RegFile.php:48:		if ($length === null) return fwrite($this->_fd, $data);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/File/RegFile.php:50:		return fwrite($this->_fd, $data, $length);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/Archive.php:328:		$bytes_written = fwrite($fp, $json_data);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/Archive.php:344:			if (!unlink($lockfile)) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/Archive.php:390:			unlink($swap_file);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/Archive.php:408:		if (file_exists($lockfile) && !unlink($lockfile)) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/Archive.php:411:		if (file_exists($swap_file) && !unlink($swap_file)) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/Archive.php:983:			if(!file_exists($directory) && !@mkdir($directory, 0777, true)) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/Archive.php:1119:						if (!file_exists($output) && !@mkdir($output, 0755, true)) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/Gzip.php:63:			$bytesWritten = @file_put_contents($tempFile, $jsonData);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/Gzip.php:136:			$bytesWritten = fwrite($gzfd, $compressed);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/Gzip.php:148:			@unlink($file);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/Gzip.php:149:			@unlink($info_file);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/Gzip.php:193:			$bytesWritten = fwrite($fd, $chunk);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/Gzip.php:205:			@unlink($file);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Archive/Gzip.php:206:			@unlink($info_file);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Entities/Util.php:75:			unlink($directory);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Entities/Util.php:92:					if(!@unlink($file->path())) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Entities/Util.php:109:		if($obj !== false && ($remove_main || strlen($obj->path) != $main_length) && !@rmdir($obj->path)) {
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Entities/Util.php:110:			// On NFS, if directory contains only .nfs* files (recursively), rmdir will fail
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Entities/Util.php:146:				@mkdir($destination . '/' . $destFile, $permissions);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Entities/Util.php:375:		if(!file_exists($folder)) mkdir($folder, 0700, true);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Entities/Util.php:376:		if(!file_exists($htaccess_file)) file_put_contents($htaccess_file, "Deny from all");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Entities/Util.php:377:		if(!file_exists($html_file)) file_put_contents($html_file, "");
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Entities/Util.php:378:		if(!file_exists($config_file)) file_put_contents($config_file, self::IISWebConfig());
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Filesystem/AtomicWrite.php:34:			@mkdir($dir, 0700, true);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Filesystem/AtomicWrite.php:46:			$bytes = @file_put_contents($swapFile, $content, LOCK_EX);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Filesystem/AtomicWrite.php:75:			@unlink($swapFile);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Crontab/Crontab.php:74:			$created = file_put_contents($this->_temp_cron, $crontab);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Backup/Backup.php:96:				fwrite($list_fd, "{$header->getSize(false)} {$header->getMtime(false)} {$header->getFilename()}\n");
```

### Deserialization (object injection surface)
```
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Config/Config.php:185:		$data = $jetbackup_config ? unserialize(Crypt::decrypt($jetbackup_config, DB_PASSWORD)) : [];
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Cron/Task/Restore.php:747:		$this->_insertAdminUser( (array) unserialize( $admin_user ));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Cron/Task/Restore.php:847:				$session_tokens = unserialize($user->session_tokens);
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Cron/Task/Restore.php:1240:			case (($unserialized = @unserialize($data, ['allowed_classes' => false])) !== false || $data == 'b:0;'):
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/Cron/Task/Restore.php:1242:				return serialize($this->_changeColumnsValue($unserialized, $old_value, $new_value));
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/ResumableTask/ResumableTask.php:48:				$data = $contents ? @unserialize($contents) : false;
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/ResumableTask/ResumableTask.php:68:			$data     = $contents ? @unserialize($contents) : false;
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger.php:376:     * __serialize() / __unserialize() were introduced in PHP 7.4:
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger.php:394:     * Will be called, automatically, when unserialize() is called on a BigInteger object.
/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/backup/src/JetBackup/3rdparty/phpseclib3/Math/BigInteger/Engines/Engine.php:349:     * Will be called, automatically, when unserialize() is called on a BigInteger object.
```

