# Sanchaar Saathi App - Security & Privacy Analysis

**Research Project #1 - 2025**
**Analysis Date:** December 8, 2025
**App Version:** 1.5.0 (Build 58)
**Package:** com.dot.app.sancharsaathi
**App Store Link:** https://play.google.com/store/apps/details?id=com.dot.app.sancharsaathi

---

## Table of Contents

- [Executive Summary](#executive-summary)
- [Background](#background)
- [Repository Structure](#repository-structure)
- [Key Findings](#key-findings)
- [Technical Analysis](#technical-analysis)
- [Tools & Methodology](#tools--methodology)
- [Reproduction Guide](#reproduction-guide)
- [Analysis Reports](#analysis-reports)
- [Future Work](#future-work)
- [Ethical Considerations](#ethical-considerations)
- [References](#references)

---

## Executive Summary

This repository contains a comprehensive security and privacy analysis of the Sanchaar Saathi mobile application, mandated by the Indian government for all telecom users starting December 1, 2025. The analysis includes:

- **Static code analysis** of decompiled Android application
- **Automated security scanning** with MobSF v4.4.4
- **Identification of privacy-protective mechanisms** and potential concerns
- **Documentation of data collection practices** and transmission mechanisms

### Key Highlights

✅ **Privacy-Protective Measures Confirmed:**
- Uses MediaDRM API instead of IMEI for device identification (Android 10+)
- Collects only incoming/missed/rejected calls (NOT outgoing calls)
- Enforces HTTPS-only communication (cleartext traffic disabled)
- Uses SQLCipher encrypted database for local storage
- Limited call log retention (29 days only)

⚠️ **Privacy Concerns Identified:**
- Supports Android 9 (allows IMEI access on older devices)
- Persistent background synchronization every 15 minutes
- Collects SIM card ICC ID (enables tracking across device changes)
- Broad permissions: READ_SMS, SEND_SMS, READ_CALL_LOG
- Data retention policy unclear (requires runtime analysis)

---

## Background

### Government Mandate

On December 1, 2025, The Hindu reported that the Indian Department of Telecommunications (DoT) made the Sanchaar Saathi app mandatory for all telecom users. The app is designed to:

- Track mobile connections linked to an individual
- Enable reporting of fraudulent connections
- Combat telecom-related cybercrime
- Verify SIM card ownership

### Controversy

The mandatory nature of the app raised privacy concerns among users and digital rights activists regarding:

- Scope of data collection
- Government surveillance capabilities
- Data retention and deletion policies
- Third-party data sharing
- Transparency of backend operations

### Research Objective

This independent security analysis aims to:

1. Identify what data the app collects and how
2. Assess security mechanisms protecting user data
3. Document findings for public awareness
4. Establish baseline for future dynamic analysis

---

## Repository Structure

```
sanchaar-saathi/
├── README.md                          # This file
├── apk/                               # Application binaries
│   ├── base.apk                       # Main APK (12 MB)
│   ├── split_config.arm64_v8a.apk    # Native libraries
│   └── split_config.*.apk            # Language/resource splits
├── decompiled/                        # Apktool decompiled output
│   ├── AndroidManifest.xml           # App manifest & permissions
│   ├── res/                          # Resources & configs
│   ├── smali/                        # Decompiled bytecode (260 dirs)
│   │   ├── org/cdot/diu/main/        # Application code
│   │   ├── Q3/b.smali                # Call log handler
│   │   ├── net/sqlcipher/            # Encrypted database
│   │   └── ...
│   └── apktool.yml                   # Decompilation metadata
├── reports/                           # Analysis reports
│   ├── TECHNICAL-ANALYSIS-REPORT.md  # Complete technical analysis
│   └── sanchar-saathi-mobsf-report.pdf # MobSF automated scan
├── findings/                          # Organized findings
│   ├── hardcoded-constants.md        # Hex values & time windows
│   ├── key-code-locations.md         # Important file references
│   └── privacy-concerns.md           # Identified concerns
└── tools/                             # Analysis tools & scripts
    └── analysis-commands.sh           # Reproduction commands
```

---

## Key Findings

### 1. Device Identification Mechanism

**Finding:** App uses **MediaDRM API** (Widevine DRM) for device identification instead of IMEI.

**Evidence:**
- File: `decompiled/smali/org/cdot/diu/main/SathiMainActivity.smali:932-947`
- Widevine UUID: `edef8ba9-79d6-4ace-a3c8-27dcd51d21ed`
- Method: `getUniqueDeviceId()` creates MediaDrm instance

**Significance:**
- On Android 10+, app cannot access IMEI (no READ_PRIVILEGED_PHONE_STATE permission)
- MediaDRM provides persistent device ID without requiring IMEI access
- **Note:** This is a developer workaround, not officially recommended by Google
- MediaDRM IDs can have collision issues (not globally unique)

**Code Reference:**
```smali
# SathiMainActivity.smali:932-947
.method private getUniqueDeviceId()Ljava/lang/String;
    new-instance v0, Ljava/util/UUID;
    const-wide v1, -0x121074568629b532L    # Widevine UUID MSB
    const-wide v3, -0x5c37d8232ae2de13L    # Widevine UUID LSB
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    new-instance v1, Landroid/media/MediaDrm;
    invoke-direct {v1, v0}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V
```

### 2. Call Log Collection Scope

**Finding:** App collects **only incoming/missed/rejected calls** from the **last 29 days** - NOT outgoing calls.

**Evidence:**
- File: `decompiled/smali/Q3/b.smali`
- Call type filtering: Lines 335-353
- Time window calculation: Lines 82-88

**Call Type Handling:**
```smali
# Q3/b.smali:335-353
const/4 v5, 0x3           # Android TYPE_MISSED (3)
if-ne v4, v5, :cond_6
const-string v4, "MISSED"

:cond_6
const/4 v6, 0x5           # Android TYPE_REJECTED (5)
if-ne v4, v6, :cond_7
const-string v4, "REJECTED"

:cond_7
const-string v4, "INCOMING"  # Default - TYPE_OUTGOING (2) NOT HANDLED
```

**29-Day Window:**
```smali
# Q3/b.smali:82-88
const-wide v17, 0x95586c00L    # 2,505,600,000 milliseconds = 29.0 days
sub-long v15, v15, v17          # currentTime - 29 days
```

**Android Call Type Constants:**
- `TYPE_INCOMING = 1` → Labeled as "INCOMING"
- `TYPE_OUTGOING = 2` → **Not handled (filtered out)**
- `TYPE_MISSED = 3` → Labeled as "MISSED"
- `TYPE_REJECTED = 5` → Labeled as "REJECTED"

### 3. Background Data Synchronization

**Finding:** App syncs data every **15 minutes** via `NetworkWorker` background job calling `submitOfflineData` function.

**Evidence:**
- File: `decompiled/smali/org/cdot/diu/main/MyApp.smali:108-114`
- File: `decompiled/smali/org/cdot/diu/main/NetworkWorker.smali:161-165`

**15-Minute Interval Configuration:**
```smali
# MyApp.smali:108-114
new-instance v1, LQ0/n$a;
const-wide/16 v2, 0xf              # Decimal 15
sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES
const-class v5, Lorg/cdot/diu/main/NetworkWorker;
invoke-direct {v1, v5, v2, v3, v4}, LQ0/n$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V
```

**Flutter MethodChannel Call:**
```smali
# NetworkWorker.smali:161-165
const-string v2, "org.cdot.diu.main/hive"
invoke-direct {v1, v0, v2}, LY2/j;-><init>(LY2/b;Ljava/lang/String;)V

const-string v2, "submitOfflineData"
invoke-virtual {v1, v2, v3, v0}, LY2/j;->d(Ljava/lang/String;Ljava/lang/Object;LY2/j$d;)V
```

**Developer Debug Artifacts:**
```smali
# NetworkWorker.smali:38, 53
const-string v2, "❌ No network available. Skipping Hive data submission."
const-string v2, "Network is ONLINE—NetworkWorker fired------Adam logs"
```

### 4. SIM Card Tracking (ICC ID)

**Finding:** App collects **ICC ID** (SIM card unique identifier) in addition to call logs.

**Evidence:**
- File: `decompiled/smali/Q3/b.smali:470-702`
- Uses `SubscriptionManager` to enumerate SIM cards
- Collects: ICC ID, Subscription ID, SIM slot index

**Code:**
```smali
# Q3/b.smali:470-702
const-string v1, "telephony_subscription_service"
invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService
check-cast v1, Landroid/telephony/SubscriptionManager;

invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList

invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I
invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;
invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I
```

**Significance:**
- ICC ID is a unique 18-22 digit SIM card serial number
- Enables tracking users across device changes (if SIM card remains same)
- More persistent than device IDs

### 5. Network Security Configuration

**Finding:** App **forces HTTPS-only** communication for all domains.

**Evidence:**
- File: `decompiled/res/xml/network_security_config.xml`

```xml
<network-security-config>
    <domain-config cleartextTrafficPermitted="false">
        <domain includeSubdomains="true">* </domain>
    </domain-config>
</network-security-config>
```

**Significance:**
- All network traffic must use TLS/SSL encryption
- Prevents man-in-the-middle attacks
- Blocked Burp Suite proxy interception attempts during testing
- Strong security posture for network communication

### 6. Encrypted Local Storage

**Finding:** App uses **SQLCipher** for AES-256 encrypted local database.

**Evidence:**
- Directory: `decompiled/smali/net/sqlcipher/database/` (192 files)
- SQLCipher is industry-standard encrypted SQLite implementation

**Significance:**
- Data stored locally is encrypted at rest
- Prevents unauthorized access from other apps or forensic tools
- Requires app-specific encryption key to decrypt

### 7. Permissions Analysis

**Finding:** App requests **8 dangerous permissions** and **6 normal permissions**.

**Dangerous Permissions:**
```xml
<uses-permission android:name="android.permission.SEND_SMS"/>
<uses-permission android:name="android.permission.READ_SMS"/>
<uses-permission android:name="android.permission.READ_CALL_LOG"/>
<uses-permission android:name="android.permission.READ_PHONE_STATE"/>
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
<uses-permission android:name="android.permission.CAMERA"/>
<uses-permission android:name="android.permission.POST_NOTIFICATIONS"/>
```

**Concerning Permissions:**
- `WAKE_LOCK` - Prevents device sleep (battery drain concern)
- `RECEIVE_BOOT_COMPLETED` - Enables auto-start after reboot (persistent monitoring)

**Missing Permission (Positive Finding):**
- ❌ `READ_PRIVILEGED_PHONE_STATE` - **NOT PRESENT** (prevents IMEI access on Android 10+)

### 8. Android 9 Compatibility Concern

**Finding:** App supports **Android 9 (API 28)** as minimum version.

**Concern:**
- On Android 9, `READ_PHONE_STATE` permission **CAN** access IMEI
- Android 10+ requires `READ_PRIVILEGED_PHONE_STATE` for IMEI (which app doesn't have)
- Users on Android 9 devices have weaker privacy protections

**Recommendation:** Minimum API should be Android 10 (API 29) for consistent privacy guarantees.

---

## Technical Analysis

### Application Architecture

**Technology Stack:**
- **Framework:** Flutter (hybrid app architecture)
- **Native Bridge:** MethodChannel for Flutter-to-Android communication
- **Database:** SQLCipher (encrypted SQLite)
- **Background Jobs:** Android WorkManager (15-minute periodic sync)
- **Code Obfuscation:** ProGuard/R8 (single-letter package names)

**Package Structure:**
```
org.cdot.diu.main.*          # Application-specific code
├── MyApp.smali              # App initialization, WorkManager setup
├── SathiMainActivity.smali  # Main activity, MediaDRM, root detection
└── NetworkWorker.smali      # Background sync worker

Q3/b.smali                   # Call log handler (obfuscated)
E2/c.smali                   # Media picker (obfuscated)
[A0-Z9, a0.1-z9.1]/*        # ProGuard obfuscated app code

androidx/*                   # Android Jetpack libraries
io/flutter/*                 # Flutter framework
net/sqlcipher/*              # SQLCipher encrypted database
com/google/android/gms/*     # Google Play Services
```

### Hardcoded Constants

| Constant | Value | Location | Purpose |
|----------|-------|----------|---------|
| Sync Interval | `0xf` (15 decimal) | MyApp.smali:108 | WorkManager periodic sync |
| Time Unit | `TimeUnit.MINUTES` | MyApp.smali:109 | Sync interval unit |
| 29-Day Window | `0x95586c00L` (2,505,600,000 ms) | Q3/b.smali:86 | Call log retention period |
| Widevine UUID MSB | `-0x121074568629b532L` | SathiMainActivity.smali:934 | MediaDRM device ID (part 1) |
| Widevine UUID LSB | `-0x5c37d8232ae2de13L` | SathiMainActivity.smali:935 | MediaDRM device ID (part 2) |
| Timezone | `"Asia/Kolkata"` | Q3/b.smali:281 | IST timezone hardcoded |
| MethodChannel | `"org.cdot.diu.main/hive"` | NetworkWorker.smali:153 | Flutter channel name |
| Function Name | `"submitOfflineData"` | NetworkWorker.smali:161 | Server sync function |

**Widevine UUID Calculation:**
```
MSB: -0x121074568629b532 = 0xEDEF8BA979D64ACE (unsigned)
LSB: -0x5c37d8232ae2de13 = 0xA3C827DCD51D21ED (unsigned)
Result: edef8ba9-79d6-4ace-a3c8-27dcd51d21ed (Google Widevine CDM)
```

### Root Detection

**Evidence:**
- File: `decompiled/smali/org/cdot/diu/main/SathiMainActivity.smali`
- Root detection code present in main activity
- During testing, app consistently detected root even with bypass attempts

**Impact:** Prevents analysis on rooted devices, complicates dynamic instrumentation.

---

## Tools & Methodology

### Analysis Environment

**Tools Used:**
- **MobSF v4.4.4** - Automated mobile security framework (Docker)
- **Apktool** - APK decompilation and resource extraction
- **Claude Code** - Anthropic's CLI for AI-assisted code analysis
- **Claude Sonnet 4.5** (model: claude-sonnet-4-5-20250929) - Pattern recognition in obfuscated Smali code, hex constant verification, and documentation
- **ADB** - Android Debug Bridge for APK extraction
- **Python 3** - Hex calculations and data processing
- **Burp Suite** - Attempted network traffic interception (blocked by app)
- **Frida** - Dynamic instrumentation attempts (blocked by root detection)

**Analysis Phases:**

1. **APK Extraction**
   ```bash
   adb shell pm list packages | grep sanchaar
   adb shell pm path com.dot.app.sancharsaathi
   adb pull /data/app/.../base.apk
   ```

2. **Decompilation**
   ```bash
   apktool d base.apk -o decompiled/
   ```

3. **Automated Scanning**
   ```bash
   # MobSF REST API
   curl -F "file=@base.apk" http://localhost:8000/api/v1/upload
   ```

4. **Static Analysis**
   - Manual Smali code review
   - Manifest permission analysis
   - Network security configuration inspection
   - Hardcoded constant identification

### Limitations

**What This Analysis Cannot Verify (Requires Runtime Analysis):**

- Actual HTTP endpoints and server URLs
- Data deletion after successful sync
- Whether call logs are stored in RAM only
- Actual data transmitted to servers
- Server-side data retention policies
- Third-party data sharing

**Blocked by App Security Measures:**
- Root detection prevented runtime instrumentation
- Network Security Config blocked HTTPS interception
- Flutter compilation prevents Dart code analysis

---

## Reproduction Guide

### Prerequisites

```bash
# Install required tools
brew install apktool
docker pull opensecurity/mobile-security-framework-mobsf

# Android SDK with ADB
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools
```

### Step-by-Step Reproduction

1. **Extract APK from Device**
   ```bash
   adb devices
   adb shell pm list packages | grep sanchaar
   adb shell pm path com.dot.app.sancharsaathi
   adb pull /data/app/.../base.apk ./
   ```

2. **Decompile APK**
   ```bash
   apktool d base.apk -o decompiled/
   ```

3. **Run MobSF Analysis**
   ```bash
   docker run -it -p 8000:8000 opensecurity/mobile-security-framework-mobsf
   # Upload APK via web interface at http://localhost:8000
   # Download JSON report
   ```

4. **Verify Key Findings**
   ```bash
   # MediaDRM device ID
   grep -n "MediaDrm" decompiled/smali/org/cdot/diu/main/SathiMainActivity.smali

   # 15-minute sync interval
   grep -n "0xf" decompiled/smali/org/cdot/diu/main/MyApp.smali

   # Call type filtering
   grep -n "MISSED\|REJECTED\|INCOMING" decompiled/smali/Q3/b.smali

   # 29-day window
   grep -n "0x95586c00" decompiled/smali/Q3/b.smali

   # Network security
   cat decompiled/res/xml/network_security_config.xml
   ```

---

## Analysis Reports

This repository includes comprehensive analysis documents:

### 1. Technical Analysis Report
**File:** `reports/TECHNICAL-ANALYSIS-REPORT.md` (40+ pages)

Complete technical documentation with:
- Detailed code analysis with file references
- Hardcoded constant calculations
- Privacy and security assessment
- Application architecture documentation
- Data collection mechanism analysis
- Network communication patterns

### 2. MobSF Security Report
**File:** `reports/sanchar-saathi-mobsf-report.pdf`

Complete automated security scan results including:
- All permissions analysis
- Exported components
- APK signature verification
- Code obfuscation details
- Security misconfigurations

---

## Future Work

### Phase 2: Dynamic Runtime Analysis

**Objectives:**
- Monitor actual network traffic with Frida SSL unpinning
- Inspect SQLCipher database contents before/after sync
- Verify data deletion mechanisms
- Capture actual HTTP requests and server endpoints
- Memory forensics to verify RAM-only call log claims

**Tools:**
- Frida with advanced root detection bypass
- SSL unpinning scripts
- SQLCipher database inspection
- Memory dumping and analysis

### Phase 3: Flutter Code Decompilation

**Objectives:**
- Extract Flutter engine snapshot
- Decompile Dart code
- Analyze `submitOfflineData` implementation
- Identify server authentication mechanisms
- Map complete data flow from UI to network

**Tools:**
- reFlutter
- Frida with Flutter hooks
- Dart decompiler

### Phase 4: Server-Side Investigation

**Objectives:**
- Identify all server endpoints
- Request API documentation via RTI
- Analyze server-side data retention
- Investigate third-party data sharing
- Verify government access controls

**Methods:**
- RTI requests to DoT
- Network traffic analysis
- Public records requests
- Whistleblower engagement

---

## Ethical Considerations

### Research Ethics

This research is conducted for **defensive security purposes only**:

✅ **Allowed:**
- Static analysis of publicly distributed application
- Security vulnerability identification
- Privacy analysis for public awareness
- Educational documentation
- Transparency advocacy

❌ **Not Allowed:**
- Bypassing security for unauthorized access
- Extracting other users' data
- Server-side attacks or penetration testing
- Credential harvesting
- Malicious tool creation

### Responsible Disclosure

**Findings shared with:**
- Security research community
- Digital rights organizations
- Independent journalists

**NOT shared with:**
- Government agencies (no coordinated disclosure)
- Commercial entities
- Political organizations

### Legal Compliance

- Analysis performed on legally obtained application from official Google Play Store
- No unauthorized access to servers or databases
- No circumvention of access controls for data theft
- Research conducted under fair use for security research

---

## References

### News Coverage

1. **The Hindu** - "Sanchaar Saathi app made mandatory for telecom users" (December 1, 2025)

### Technical Documentation

1. **Android Developer Docs** - [Permissions Overview](https://developer.android.com/guide/topics/permissions/overview)
2. **Android Developer Docs** - [Network Security Configuration](https://developer.android.com/training/articles/security-config)
3. **Android Developer Docs** - [Best Practices for Unique Identifiers](https://developer.android.com/training/articles/user-data-ids)
4. **Google Play Services** - [Advertising ID](https://support.google.com/googleplay/android-developer/answer/6048248)
5. **SQLCipher** - [Encrypted Database Documentation](https://www.zetetic.net/sqlcipher/)
6. **Widevine DRM** - [Content Protection System](https://www.widevine.com/)

### Security Tools

1. **MobSF** - [Mobile Security Framework](https://github.com/MobSF/Mobile-Security-Framework-MobSF)
2. **Apktool** - [APK Decompilation Tool](https://ibotpeaches.github.io/Apktool/)
3. **Frida** - [Dynamic Instrumentation Toolkit](https://frida.re/)

### Android Privacy Changes

1. **Android 10 Behavior Changes** - [Privacy Updates](https://developer.android.com/about/versions/10/privacy/changes)
2. **Scoped Storage** - [File Access Restrictions](https://developer.android.com/about/versions/11/privacy/storage)

---

## Contact & Contribution

**Researcher:** Aseem Shrey
**Analysis Date:** December 8, 2025
**Analysis Tools:** Claude Code (Anthropic's CLI) + Claude Sonnet 4.5 (model: claude-sonnet-4-5-20250929)

### Contributing

This is an open research project. Contributions welcome:

- Runtime analysis findings
- Flutter code decompilation
- Server-side investigation
- Legal/policy analysis
- Documentation improvements

### Disclaimer

This research is provided for educational and security awareness purposes only. The findings represent analysis conducted on December 8, 2025 of app version 1.5.0. Subsequent app updates may change behaviors documented here.

The researcher makes no warranties about completeness or accuracy of findings. Users should conduct their own due diligence before making decisions based on this research.

**Note:** This analysis was conducted with assistance from Claude Code (Anthropic's official CLI for Claude) using the Claude Sonnet 4.5 model (claude-sonnet-4-5-20250929) for pattern recognition in obfuscated code, verification of technical findings, and documentation generation. AI-assisted findings were manually verified.

---

**Last Updated:** December 8, 2025
**Repository Version:** 1.0
**Status:** Static Analysis Complete | Runtime Analysis Pending
