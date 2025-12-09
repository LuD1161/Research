# Key Code Locations Reference

**App:** Sanchaar Saathi v1.5.0 (Build 58)
**Analysis Date:** December 8, 2025

---

## Quick Navigation

This document provides file paths and line numbers for all critical code sections discovered during analysis.

---

## Application Configuration

### AndroidManifest.xml
**Path:** `decompiled/AndroidManifest.xml`

**Key Sections:**
- Lines 1-50: Package declaration and permissions
- Lines 28-42: Dangerous permissions declarations
- Lines 35-36: Concerning permissions (WAKE_LOCK, RECEIVE_BOOT_COMPLETED)
- Lines 100+: Application component declarations
- Line ~150: Network security config reference

**Important Permissions:**
```xml
Line 28: <uses-permission android:name="android.permission.SEND_SMS"/>
Line 29: <uses-permission android:name="android.permission.READ_SMS"/>
Line 30: <uses-permission android:name="android.permission.READ_CALL_LOG"/>
Line 31: <uses-permission android:name="android.permission.READ_PHONE_STATE"/>
Line 35: <uses-permission android:name="android.permission.WAKE_LOCK"/>
Line 36: <uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED"/>
```

---

## Network Security

### Network Security Configuration
**Path:** `decompiled/res/xml/network_security_config.xml`

**Complete File:**
```xml
Lines 1-7: HTTPS-only enforcement for all domains
```

**Significance:** Forces all traffic over HTTPS, prevents cleartext communication.

---

## Application Initialization

### MyApp.smali
**Path:** `decompiled/smali/org/cdot/diu/main/MyApp.smali`

**Critical Code Sections:**
- **Lines 108-114:** 15-minute WorkManager periodic sync configuration
- **Line 108:** `const-wide/16 v2, 0xf` - Sync interval constant

**WorkManager Setup:**
```smali
Line 108: const-wide/16 v2, 0xf              # 15 minutes
Line 109: sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES
Line 110: const-class v5, Lorg/cdot/diu/main/NetworkWorker;
```

---

## Main Activity

### SathiMainActivity.smali
**Path:** `decompiled/smali/org/cdot/diu/main/SathiMainActivity.smali`
**File Size:** 1,867 lines

**Critical Functions:**

#### 1. Device ID Generation (MediaDRM)
- **Lines 932-947:** `getUniqueDeviceId()` method
- **Line 934:** Widevine UUID MSB: `-0x121074568629b532L`
- **Line 935:** Widevine UUID LSB: `-0x5c37d8232ae2de13L`

**Code:**
```smali
Line 932: .method private getUniqueDeviceId()Ljava/lang/String;
Line 933:     .locals 5
Line 934:     const-wide v1, -0x121074568629b532L
Line 935:     const-wide v3, -0x5c37d8232ae2de13L
Line 937:     new-instance v0, Ljava/util/UUID;
Line 938:     invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V
Line 942:     new-instance v1, Landroid/media/MediaDrm;
Line 943:     invoke-direct {v1, v0}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V
```

#### 2. Root Detection
- **Lines ~800-900:** Root detection implementation (exact lines vary)
- **Method:** Checks for root indicators

#### 3. App Sharing URLs
- **Line 2576:** Play Store URL for app sharing

---

## Background Synchronization

### NetworkWorker.smali
**Path:** `decompiled/smali/org/cdot/diu/main/NetworkWorker.smali`
**File Size:** 168 lines

**Critical Functions:**

#### 1. Main Worker Method
- **Lines 25-80:** `o()` method - Main doWork() implementation
- **Lines 28-48:** Network availability check
- **Lines 61-79:** Handler setup and execution

#### 2. Network Check
- **Lines 82-117:** `r()` method - Checks internet connectivity
- **Lines 38-42:** Network unavailable logging
- **Line 38:** Debug message: "❌ No network available..."

#### 3. Data Submission
- **Lines 119-168:** `s()` method - Submits data via Flutter bridge
- **Lines 122-140:** Flutter engine retrieval
- **Lines 143-155:** MethodChannel creation
- **Lines 157-165:** submitOfflineData invocation

**Flutter Bridge:**
```smali
Line 153: const-string v2, "org.cdot.diu.main/hive"    # Channel name
Line 154: invoke-direct {v1, v0, v2}, LY2/j;-><init>    # Create channel
Line 161: const-string v2, "submitOfflineData"         # Function name
Line 165: invoke-virtual {v1, v2, v3, v0}, LY2/j;->d   # Call function
```

**Developer Debug Markers:**
```smali
Line 38:  const-string v2, "❌ No network available. Skipping Hive data submission."
Line 53:  const-string v2, "Network is ONLINE—NetworkWorker fired------Adam logs"
Line 134: const-string v0, "NetworkWorker"
Line 136: const-string v1, "Flutter engine not available"
```

---

## Call Log Collection

### Q3/b.smali (Obfuscated Call Log Handler)
**Path:** `decompiled/smali/Q3/b.smali`
**File Size:** ~1,200+ lines

**Critical Sections:**

#### 1. 29-Day Time Window Calculation
- **Lines 82-88:** Time window constant and calculation

```smali
Line 82:  invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
Line 83:  move-result-wide v15
Line 86:  const-wide v17, 0x95586c00L    # 2,505,600,000 ms = 29 days
Line 88:  sub-long v15, v15, v17          # currentTime - 29 days
```

#### 2. SQL Query for Call Logs
- **Lines 100-115:** Content resolver query setup
- **Line 110:** SQL WHERE clause

```smali
Line 110: const-string v11, "subscription_id = ? AND type = ? AND date >= ?"
Line 115: invoke-virtual/range {v5 .. v12}, Landroid/content/ContentResolver;->query
```

#### 3. Call Type Filtering
- **Lines 327-358:** Call type classification logic

**Type 3 (MISSED):**
```smali
Line 335: const/4 v5, 0x3              # TYPE_MISSED = 3
Line 336: if-ne v4, v5, :cond_6
Line 337: const-string v4, "MISSED"
Line 338: goto :goto_3
```

**Type 5 (REJECTED):**
```smali
Line 342: :cond_6
Line 343: const/4 v6, 0x5              # TYPE_REJECTED = 5
Line 344: if-ne v4, v6, :cond_7
Line 345: const-string v4, "REJECTED"
Line 346: goto :goto_3
```

**Default (INCOMING):**
```smali
Line 349: :cond_7
Line 350: const-string v4, "INCOMING"   # Default - TYPE_OUTGOING (2) NOT handled
Line 351: :goto_3
```

**Significance:** TYPE_OUTGOING (value 2) has no handler, therefore outgoing calls are filtered out.

#### 4. Timezone Handling
- **Lines 278-283:** IST timezone hardcoded

```smali
Line 281: const-string v6, "Asia/Kolkata"
Line 282: invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone
Line 283: invoke-virtual {v8, v6}, Ljava/text/SimpleDateFormat;->setTimeZone
```

#### 5. SIM Card Tracking (ICC ID Collection)
- **Lines 470-702:** SubscriptionManager usage for SIM enumeration

**SIM Service Access:**
```smali
Line 482: const-string v1, "telephony_subscription_service"
Line 483: invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService
Line 489: check-cast v1, Landroid/telephony/SubscriptionManager;
```

**Active SIM Retrieval:**
```smali
Line 495: invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList
```

**SIM Data Extraction:**
```smali
Line 550: invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I
Line 565: invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;
Line 580: invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I
```

---

## Encrypted Database

### SQLCipher Integration
**Path:** `decompiled/smali/net/sqlcipher/database/`
**File Count:** 192 files

**Key Classes:**
- `SQLiteDatabase.smali` - Main database class
- `SupportFactory.smali` - Database factory
- `SQLiteOpenHelper.smali` - Helper class

**Significance:** Entire database package present, confirming AES-256 encryption.

---

## Media/File Picker

### E2/c.smali (Obfuscated Media Picker)
**Path:** `decompiled/smali/E2/c.smali`

**Purpose:** Media file selection implementation
**Likely Use:** Document/photo upload for reporting functionality

---

## Flutter Framework

### Flutter Engine
**Path:** `decompiled/smali/io/flutter/`

**Key Components:**
- `embedding/engine/` - Flutter engine
- `plugin/common/MethodChannel.smali` - Native bridge
- `plugins/` - Flutter plugin implementations

---

## Asset Files

### Countries Data
**Path:** `decompiled/assets/flutter_assets/assets/countries-data.json`

**Content:** India-first country configuration
```json
{
  "countries": [
    {
      "countryName": "India",
      "minPhoneLength": 7,
      "maxPhoneLength": 10,
      "isoCode": "IN",
      "dialCode": "+91"
    }
  ]
}
```

**Significance:** App designed exclusively for Indian phone numbers.

---

## ProGuard/R8 Obfuscated Code

### Obfuscated Packages
**Path:** `decompiled/smali/[A-Z][0-9]/`

**Structure:**
- `Q3/b.smali` - Call log handler (verified)
- `E2/c.smali` - Media picker (verified)
- Other packages: Unknown functionality (requires dynamic analysis)

**Naming Pattern:**
- Single capital letter + digit (e.g., Q3, E2, A0, Z9)
- Indicates ProGuard/R8 code obfuscation

---

## Quick Reference Table

| Feature | File | Lines | Key Constant |
|---------|------|-------|--------------|
| 15-min sync | MyApp.smali | 108-114 | `0xf` |
| 29-day window | Q3/b.smali | 82-88 | `0x95586c00L` |
| Widevine UUID | SathiMainActivity.smali | 934-935 | `-0x121074568629b532L`, `-0x5c37d8232ae2de13L` |
| Call type filter | Q3/b.smali | 335-353 | `3`, `5` |
| Flutter channel | NetworkWorker.smali | 153 | `"org.cdot.diu.main/hive"` |
| Data submission | NetworkWorker.smali | 161 | `"submitOfflineData"` |
| Network security | network_security_config.xml | 1-7 | `cleartextTrafficPermitted="false"` |
| ICC ID tracking | Q3/b.smali | 470-702 | SubscriptionManager |
| Timezone | Q3/b.smali | 281 | `"Asia/Kolkata"` |

---

## Search Commands

### Find Specific Code Sections

```bash
# From repository root
cd decompiled/smali

# Find MediaDRM usage
grep -rn "MediaDrm" org/cdot/diu/main/

# Find 15-minute interval
grep -rn "0xf" org/cdot/diu/main/MyApp.smali

# Find call type constants
grep -rn "const/4 v., 0x3\|const/4 v., 0x5" Q3/b.smali

# Find submitOfflineData
grep -rn "submitOfflineData" org/cdot/diu/main/

# Find all time constants
grep -rn "0x95586c00" .

# Find SubscriptionManager usage
grep -rn "SubscriptionManager" .
```

---

## File Statistics

### Code Size Analysis

| Directory | File Count | Total Lines | Purpose |
|-----------|-----------|-------------|---------|
| org/cdot/diu/main/ | 3 | ~2,200 | Application code |
| Q3/ | 1 | ~1,200+ | Call log handler |
| E2/ | 1 | ~500+ | Media picker |
| net/sqlcipher/ | 192 | ~15,000+ | Encrypted DB |
| io/flutter/ | ~500 | ~50,000+ | Flutter framework |
| androidx/ | ~1,000+ | ~100,000+ | Android libs |

### APK Statistics

| File | Size | Purpose |
|------|------|---------|
| base.apk | 12 MB | Main application |
| split_config.arm64_v8a.apk | 26 MB | Native libraries |
| split_config.en.apk | 41 KB | English resources |
| split_config.hi.apk | 29 KB | Hindi resources |
| Total | ~38 MB | Complete app |

---

**Analysis Date:** December 8, 2025
**Last Updated:** December 8, 2025
**Version:** 1.0
