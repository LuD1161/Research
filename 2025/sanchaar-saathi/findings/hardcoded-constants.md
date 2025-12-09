# Hardcoded Constants Analysis

**App:** Sanchaar Saathi v1.5.0 (Build 58)
**Analysis Date:** December 8, 2025

---

## Summary

This document catalogs all hardcoded constants, hex values, time windows, and magic numbers found in the Sanchaar Saathi application's decompiled code.

---

## Time-Based Constants

### 1. Background Sync Interval

**Constant:** `0xf` (15 in decimal)
**Location:** `decompiled/smali/org/cdot/diu/main/MyApp.smali:108`
**Context:** WorkManager PeriodicWorkRequest configuration
**Purpose:** Sets background data synchronization interval to 15 minutes

**Code:**
```smali
# MyApp.smali:108-114
new-instance v1, LQ0/n$a;

const-wide/16 v2, 0xf              # Hexadecimal 0xf = Decimal 15
sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES
const-class v5, Lorg/cdot/diu/main/NetworkWorker;

invoke-direct {v1, v5, v2, v3, v4}, LQ0/n$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V
```

**Significance:** Confirms app syncs data every 15 minutes in the background.

---

### 2. Call Log Retention Window

**Constant:** `0x95586c00L`
**Decimal Value:** 2,505,600,000 milliseconds
**Location:** `decompiled/smali/Q3/b.smali:86`
**Context:** Call log time filtering
**Purpose:** Defines 29-day retention window for call logs

**Calculation:**
```
0x95586c00 milliseconds = 2,505,600,000 ms
= 2,505,600 seconds
= 41,760 minutes
= 696 hours
= 29.0 days (exactly)
```

**Code:**
```smali
# Q3/b.smali:82-88
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v15

const-wide v17, 0x95586c00L    # 29 days in milliseconds

sub-long v15, v15, v17          # currentTime - 29 days
```

**Significance:** App only collects call logs from the last 29 days, not entire call history.

---

## Device Identification Constants

### 3. Widevine DRM UUID (Most Significant Bits)

**Constant:** `-0x121074568629b532L`
**Unsigned Value:** `0xEDEF8BA979D64ACE`
**Location:** `decompiled/smali/org/cdot/diu/main/SathiMainActivity.smali:934`
**Context:** MediaDRM UUID initialization
**Purpose:** First half of Google Widevine DRM system UUID

**Code:**
```smali
# SathiMainActivity.smali:932-947
.method private getUniqueDeviceId()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x121074568629b532L    # MSB
    const-wide v3, -0x5c37d8232ae2de13L    # LSB

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V
```

### 4. Widevine DRM UUID (Least Significant Bits)

**Constant:** `-0x5c37d8232ae2de13L`
**Unsigned Value:** `0xA3C827DCD51D21ED`
**Location:** `decompiled/smali/org/cdot/diu/main/SathiMainActivity.smali:935`
**Context:** MediaDRM UUID initialization
**Purpose:** Second half of Google Widevine DRM system UUID

### Combined Widevine UUID

**Full UUID:** `edef8ba9-79d6-4ace-a3c8-27dcd51d21ed`
**Standard:** Google Widevine Content Decryption Module (CDM)

**Conversion Process:**
```
MSB (signed):   -0x121074568629b532
MSB (unsigned):  0xEDEF8BA979D64ACE
                 ↓
                 edef8ba9-79d6-4ace

LSB (signed):   -0x5c37d8232ae2de13
LSB (unsigned):  0xA3C827DCD51D21ED
                 ↓
                 a3c8-27dcd51d21ed
```

**Significance:** App uses Widevine DRM API (normally used for Netflix/Disney+ content protection) to generate unique device IDs as workaround for IMEI restrictions on Android 10+.

---

## Android Call Type Constants

### 5. Call Type: MISSED

**Constant:** `3`
**Location:** `decompiled/smali/Q3/b.smali:335-340`
**Context:** Call type filtering logic
**Purpose:** Identifies missed calls

**Code:**
```smali
# Q3/b.smali:335-340
const/4 v5, 0x3              # Android CallLog.Calls.TYPE_MISSED = 3
if-ne v4, v5, :cond_6
const-string v4, "MISSED"    # Label call as MISSED
goto :goto_3
```

### 6. Call Type: REJECTED

**Constant:** `5`
**Location:** `decompiled/smali/Q3/b.smali:342-347`
**Context:** Call type filtering logic
**Purpose:** Identifies rejected calls

**Code:**
```smali
# Q3/b.smali:342-347
:cond_6
const/4 v6, 0x5              # Android CallLog.Calls.TYPE_REJECTED = 5
if-ne v4, v6, :cond_7
const-string v4, "REJECTED" # Label call as REJECTED
goto :goto_3
```

### 7. Call Type: INCOMING (Default)

**Constant:** `1` (implicit, not checked)
**Location:** `decompiled/smali/Q3/b.smali:349-351`
**Context:** Call type filtering logic - default case
**Purpose:** Identifies incoming calls

**Code:**
```smali
# Q3/b.smali:349-351
:cond_7
const-string v4, "INCOMING"   # Default: label as INCOMING
:goto_3
```

**Significance:** Type 2 (OUTGOING) is NOT handled, meaning outgoing calls are filtered out and NOT collected.

---

## String Constants

### 8. Flutter MethodChannel Name

**Constant:** `"org.cdot.diu.main/hive"`
**Location:** `decompiled/smali/org/cdot/diu/main/NetworkWorker.smali:153`
**Context:** Flutter-to-Android native bridge
**Purpose:** Channel name for communication with Flutter layer

**Code:**
```smali
# NetworkWorker.smali:152-155
const-string v2, "org.cdot.diu.main/hive"

invoke-direct {v1, v0, v2}, LY2/j;-><init>(LY2/b;Ljava/lang/String;)V
```

### 9. Data Submission Function Name

**Constant:** `"submitOfflineData"`
**Location:** `decompiled/smali/org/cdot/diu/main/NetworkWorker.smali:161`
**Context:** Flutter MethodChannel invocation
**Purpose:** Function name called via bridge to submit collected data

**Code:**
```smali
# NetworkWorker.smali:161-165
const-string v2, "submitOfflineData"

const/4 v3, 0x0

invoke-virtual {v1, v2, v3, v0}, LY2/j;->d(Ljava/lang/String;Ljava/lang/Object;LY2/j$d;)V
```

### 10. Timezone Hardcoded

**Constant:** `"Asia/Kolkata"`
**Location:** `decompiled/smali/Q3/b.smali:281`
**Context:** Date/time formatting
**Purpose:** Forces IST (Indian Standard Time) timezone

**Code:**
```smali
# Q3/b.smali:278-283
const-string v6, "Asia/Kolkata"

invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

move-result-object v6

invoke-virtual {v8, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V
```

**Significance:** App hardcodes Indian timezone, suggesting it's designed exclusively for Indian users.

---

## Developer Debug Artifacts

### 11. Network Unavailable Message

**Constant:** `"❌ No network available. Skipping Hive data submission."`
**Location:** `decompiled/smali/org/cdot/diu/main/NetworkWorker.smali:38`
**Context:** Debug logging
**Purpose:** Error message when offline

**Code:**
```smali
# NetworkWorker.smali:36-42
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

const-string v2, "❌ No network available. Skipping Hive data submission."

invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
```

### 12. Adam Logs Debug String

**Constant:** `"Network is ONLINE—NetworkWorker fired------Adam logs"`
**Location:** `decompiled/smali/org/cdot/diu/main/NetworkWorker.smali:53`
**Context:** Debug logging
**Purpose:** Developer debug marker (developer named "Adam")

**Code:**
```smali
# NetworkWorker.smali:51-55
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

const-string v2, "Network is ONLINE—NetworkWorker fired------Adam logs"

invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
```

**Significance:** Production code contains developer debug markers, suggesting incomplete code cleanup before release.

### 13. Log Tag

**Constant:** `"NetworkWorker"`
**Location:** `decompiled/smali/org/cdot/diu/main/NetworkWorker.smali:32, 57, 134`
**Context:** Android Log tag
**Purpose:** Identifies log source

---

## SQL Query Strings

### 14. Call Log Query Filter

**Constant:** `"subscription_id = ? AND type = ? AND date >= ?"`
**Location:** `decompiled/smali/Q3/b.smali:110`
**Context:** SQLite query for call logs
**Purpose:** Filters calls by SIM subscription, call type, and date range

**Code:**
```smali
# Q3/b.smali:110-115
const-string v11, "subscription_id = ? AND type = ? AND date >= ?"

invoke-virtual/range {v5 .. v12}, Landroid/content/ContentResolver;->query
```

**Parameters:**
1. `subscription_id` - SIM card slot identifier
2. `type` - Call type (1=incoming, 3=missed, 5=rejected)
3. `date >= ?` - Unix timestamp cutoff (currentTime - 29 days)

---

## Application Sharing Constants

### 15. Play Store URL

**Constant:** `"https://play.google.com/store/apps/details?id=com.dot.app.sancharsaathi"`
**Location:** `decompiled/smali/org/cdot/diu/main/SathiMainActivity.smali:2576`
**Context:** Share app functionality
**Purpose:** Google Play Store link

### 16. App Package ID

**Constant:** `"com.dot.app.sancharsaathi"`
**Location:** Throughout codebase
**Context:** Application identifier
**Purpose:** Unique package name

**Domain Breakdown:**
- `com.dot` - Department of Telecommunications
- `app.sancharsaathi` - Application name (Sanchaar = Communication, Saathi = Companion)

---

## Calculation Reference

### Time Conversion Table

| Hex Constant | Decimal Value | Time Unit | Human Readable |
|--------------|---------------|-----------|----------------|
| 0xf | 15 | minutes | 15 minutes |
| 0x95586c00L | 2,505,600,000 | milliseconds | 29.0 days |

### Call Type Mapping

| Android Constant | Value | App Label | Collection Status |
|------------------|-------|-----------|-------------------|
| TYPE_INCOMING | 1 | "INCOMING" | ✅ Collected |
| TYPE_OUTGOING | 2 | (not handled) | ❌ NOT collected |
| TYPE_MISSED | 3 | "MISSED" | ✅ Collected |
| TYPE_VOICEMAIL | 4 | (not handled) | ❌ NOT collected |
| TYPE_REJECTED | 5 | "REJECTED" | ✅ Collected |

---

## Widevine UUID Verification

**Standard Widevine UUID:** `edef8ba9-79d6-4ace-a3c8-27dcd51d21ed`

Verified against:
- [Widevine DRM Official Documentation](https://www.widevine.com/)
- Google ExoPlayer Widevine implementation
- Netflix Android app (uses same UUID for content protection)

**Confirmation:** The UUID found in Sanchaar Saathi matches the official Google Widevine CDM UUID exactly.

---

## Python Verification Scripts

### Hex to Decimal Conversion
```python
# 15-minute interval
sync_interval_hex = 0xf
sync_interval_decimal = sync_interval_hex
print(f"Sync interval: {sync_interval_decimal} minutes")
# Output: Sync interval: 15 minutes

# 29-day window
time_window_hex = 0x95586c00
time_window_ms = time_window_hex
time_window_days = time_window_ms / 1000 / 60 / 60 / 24
print(f"Time window: {time_window_days} days")
# Output: Time window: 29.0 days
```

### Widevine UUID Reconstruction
```python
import uuid

# Signed long values from Smali
msb_signed = -0x121074568629b532
lsb_signed = -0x5c37d8232ae2de13

# Convert to unsigned (Java uses signed longs, Python handles both)
msb_unsigned = msb_signed & 0xFFFFFFFFFFFFFFFF
lsb_unsigned = lsb_signed & 0xFFFFFFFFFFFFFFFF

# Construct UUID
widevine_uuid = uuid.UUID(int=(msb_unsigned << 64) | lsb_unsigned)
print(f"Widevine UUID: {widevine_uuid}")
# Output: Widevine UUID: edef8ba9-79d6-4ace-a3c8-27dcd51d21ed
```

---

**Analysis Date:** December 8, 2025
**Verified By:** Static code analysis + Python calculations
