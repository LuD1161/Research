# Privacy Concerns Analysis

**App:** Sanchaar Saathi v1.5.0 (Build 58)
**Analysis Date:** December 8, 2025
**Analysis Type:** Static Code Analysis

---

## Executive Summary

While the Sanchaar Saathi app implements several privacy-protective measures (MediaDRM instead of IMEI, limited call log scope, HTTPS-only), significant privacy concerns remain. This document catalogs identified concerns with technical evidence.

**Risk Level Scale:**
- 🔴 **HIGH** - Significant privacy impact
- 🟡 **MEDIUM** - Moderate privacy concern
- 🟢 **LOW** - Minor concern, mitigated by other factors

---

## 🔴 HIGH RISK CONCERNS

### 1. SIM Card Tracking via ICC ID

**Risk Level:** 🔴 HIGH

**Issue:** App collects ICC ID (Integrated Circuit Card Identifier) - a unique 18-22 digit serial number embedded in SIM cards.

**Technical Evidence:**
- **File:** `decompiled/smali/Q3/b.smali:470-702`
- **API Used:** `SubscriptionManager.getActiveSubscriptionInfoList()`
- **Data Collected:** ICC ID, Subscription ID, SIM slot index

**Code:**
```smali
# Q3/b.smali:565
invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;
```

**Privacy Impact:**

1. **Cross-Device Tracking:**
   - ICC ID remains constant when SIM is moved between devices
   - Enables tracking user across device changes
   - More persistent than device IDs (which change with new phones)

2. **SIM Change Detection:**
   - Government can detect when user switches SIM cards
   - Creates audit trail of all SIM cards used by an individual

3. **Carrier Information:**
   - ICC ID prefix identifies mobile carrier
   - Reveals if user switches between carriers

**Example Tracking Scenario:**
```
Day 1:  User with SIM A on Device 1 → ICC ID: 8991101200003204510
Day 30: User with SIM A on Device 2 → ICC ID: 8991101200003204510 (SAME)
Result: Government knows it's the same person despite device change
```

**ICC ID Structure:**
```
89    - Telecom identifier
91    - India country code
10    - Mobile carrier (Airtel, Jio, etc.)
1200003204510 - Unique serial number
```

**Recommendation:** Document ICC ID collection in privacy policy, provide opt-out mechanism.

---

### 2. Persistent Background Synchronization

**Risk Level:** 🔴 HIGH

**Issue:** App runs background worker every 15 minutes, even when app is closed, continuously syncing data to government servers.

**Technical Evidence:**
- **File:** `decompiled/smali/org/cdot/diu/main/MyApp.smali:108-114`
- **Interval:** 15 minutes (0xf constant)
- **Technology:** Android WorkManager PeriodicWorkRequest
- **Permissions:** `WAKE_LOCK`, `RECEIVE_BOOT_COMPLETED`

**Code:**
```smali
# MyApp.smali:108
const-wide/16 v2, 0xf              # 15 minutes
sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES
const-class v5, Lorg/cdot/diu/main/NetworkWorker;
```

**Privacy Impact:**

1. **Continuous Monitoring:**
   - App operates 24/7, not just when user opens it
   - Data collected passively without user awareness
   - No user control over sync frequency

2. **Battery Drain:**
   - `WAKE_LOCK` permission prevents device sleep during sync
   - Background worker wakes device every 15 minutes
   - Impact on device performance and battery life

3. **Auto-Start After Reboot:**
   - `RECEIVE_BOOT_COMPLETED` permission enables auto-start
   - App resumes monitoring after device restart
   - User cannot prevent monitoring by rebooting

4. **Network Exposure:**
   - Periodic connections to government servers
   - Creates network traffic pattern (every 15 min)
   - Potential for network-level surveillance

**Daily Sync Frequency:**
```
24 hours × 60 minutes = 1,440 minutes/day
1,440 minutes ÷ 15 minutes = 96 sync operations per day
```

**Recommendation:** Allow user to configure sync interval, provide option to disable background sync.

---

## 🟡 MEDIUM RISK CONCERNS

### 3. Android 9 Permission Without Usage (Theoretical IMEI Risk)

**Risk Level:** 🟡 MEDIUM

**Issue:** App has `READ_PHONE_STATE` permission which theoretically allows IMEI access on Android 9, but static analysis shows **no actual IMEI collection code**.

**Technical Evidence:**

**What the app HAS:**
- ✅ `READ_PHONE_STATE` permission (declared in AndroidManifest.xml)
- ✅ Minimum SDK: API 28 (Android 9)

**What the app DOES NOT have:**
- ❌ NO calls to `TelephonyManager.getImei()`
- ❌ NO calls to `TelephonyManager.getDeviceId()`
- ❌ NO calls to `Build.getSerial()`
- ❌ NO TelephonyManager usage in application code

**Verification Method:**
```bash
# Searched entire codebase for IMEI access methods
grep -r "getImei\|TelephonyManager.*getDeviceId" decompiled/
# Result: NO matches in application code (org/cdot/diu/main/*)

# Found "getDeviceId" in 5 framework files, but these were:
# - KeyEvent.getDeviceId() - input device ID (keyboard/touchscreen)
# - MotionEvent.getDeviceId() - pointer device ID
# NOT phone IMEI!
```

**Privacy Impact:**

**Current Risk (Low):**
- App uses `MediaDRM` (Widevine) for device identification instead
- App uses `SubscriptionManager` for SIM ICC ID tracking
- No evidence of IMEI collection in static code

**Theoretical Risk (Medium):**
- Permission exists and COULD be exploited in future app updates
- Android 9 users would be vulnerable if malicious update added IMEI code
- Permission model allows IMEI access on API 28 devices

**Risk Comparison:**

| Scenario | Current Version | After Malicious Update |
|----------|----------------|------------------------|
| Android 9 devices | 🟢 No IMEI collection | 🔴 Could collect IMEI |
| Android 10+ devices | 🟢 No IMEI access | 🟢 Still protected by OS |

**Recommendation:**
- App should either use READ_PHONE_STATE only for necessary functionality (call state monitoring) or raise minimum SDK to Android 10 (API 29) to eliminate theoretical IMEI risk entirely
- Document what READ_PHONE_STATE is actually used for (if anything beyond SIM enumeration)

---

### 4. Broad SMS Permissions

**Risk Level:** 🟡 MEDIUM

**Issue:** App requests both `READ_SMS` and `SEND_SMS` permissions, allowing complete SMS access.

**Technical Evidence:**
- **Permissions:** `android.permission.READ_SMS`, `android.permission.SEND_SMS`
- **Declared in:** `AndroidManifest.xml:28-29`

**Potential Uses:**
1. **READ_SMS:**
   - Read all SMS messages (not just OTPs)
   - Access message content, sender numbers, timestamps
   - Possible use: Detect fraud via SMS pattern analysis

2. **SEND_SMS:**
   - Send SMS on user's behalf
   - Possible use: SMS-based fraud reporting
   - Risk: Unsolicited SMS transmission

**Privacy Impact:**
- SMS can contain sensitive information (bank OTPs, personal messages)
- No visibility into what SMS data is collected
- No indication in app UI about SMS access

**Mitigation:**
- Android 6+ requires runtime permission grant (user must approve)
- User can revoke permission in system settings

**Recommendation:** Document specific SMS usage in privacy policy, implement minimal necessary access.

---

### 5. Complete Call Log Access

**Risk Level:** 🟡 MEDIUM

**Issue:** App requests `READ_CALL_LOG` permission for full call history access (though code filters to incoming/missed/rejected only).

**Technical Evidence:**
- **Permission:** `android.permission.READ_CALL_LOG`
- **Filtering Code:** `Q3/b.smali:335-353`
- **Time Window:** Last 29 days only

**What App COULD Access (with permission):**
- All calls (incoming, outgoing, missed, rejected, voicemail)
- Phone numbers, contact names, call duration
- Complete call history (not limited to 29 days)

**What App ACTUALLY Collects (per code analysis):**
- Incoming, missed, rejected calls only (NOT outgoing)
- Last 29 days only
- Phone numbers, call type, timestamp

**Privacy Impact:**

**Positive:**
- Static analysis confirms outgoing calls NOT collected
- 29-day window limits historical data

**Negative:**
- Permission grants broader access than actually used
- User cannot verify code filtering at runtime
- App could be updated to collect outgoing calls without permission change

**Call Types:**
```
✅ TYPE_INCOMING (1)  - Collected
❌ TYPE_OUTGOING (2)  - NOT collected (no code handler)
✅ TYPE_MISSED (3)    - Collected
❌ TYPE_VOICEMAIL (4) - NOT collected
✅ TYPE_REJECTED (5)  - Collected
```

**Recommendation:** Request permission only for specific call types if Android supports it, document filtering in privacy policy.

---

### 6. Unclear Data Deletion Policy

**Risk Level:** 🟡 MEDIUM

**Issue:** Cannot verify whether data is deleted after successful server sync (requires runtime analysis).

**Technical Evidence:**
- **NetworkWorker.smali** contains `submitOfflineData` call
- **No obvious delete operations** in static code
- **SQLCipher database** present (local storage)

**Unverified Claims:**
- "Data deleted after successful sync" (cannot confirm via static analysis)
- "Call logs stored in RAM only" (cannot confirm without memory forensics)
- "Database stores reported numbers only" (requires runtime DB inspection)

**Privacy Impact:**

**If data is NOT deleted:**
- Complete call history persists on device
- Encrypted database could grow indefinitely
- Forensic analysis could recover historical data

**If data IS deleted:**
- Minimal local data retention
- Reduced risk from device theft/loss
- Better compliance with data minimization

**Required for Verification:**
- Runtime Frida instrumentation
- SQLCipher database monitoring before/after sync
- Memory forensics to verify RAM-only storage claims

**Recommendation:** Publish source code or allow independent security audits to verify deletion mechanisms.

---

### 7. Flutter Code Opacity

**Risk Level:** 🟡 MEDIUM

**Issue:** Flutter Dart code is compiled to native snapshots, preventing analysis of actual data transmission logic.

**Technical Evidence:**
- **Flutter Framework:** Present in `io/flutter/` directory
- **Dart VM Snapshot:** Compiled binary (not readable)
- **MethodChannel Bridge:** `submitOfflineData` called via bridge

**What We CANNOT Verify:**
- Actual server endpoints (URLs)
- HTTP headers and authentication
- Request/response format
- Data encryption during transmission
- Server-side data handling
- Third-party API integrations

**Privacy Impact:**
- Cannot verify what data is actually sent to servers
- Cannot confirm if additional data is collected beyond call logs
- Cannot verify server-side encryption/security
- Cannot identify third-party data sharing

**Analysis Limitations:**
```
Native Android Code (Smali)
  ↓ (MethodChannel)
Flutter Dart Code (Compiled Snapshot) ← OPAQUE
  ↓ (HTTP/HTTPS)
Government Servers ← OPAQUE
```

**Recommendation:** Open-source Flutter codebase, publish API documentation, allow security researchers to audit network layer.

---

## 🟢 LOW RISK CONCERNS

### 8. Camera Permission

**Risk Level:** 🟢 LOW

**Issue:** App requests `CAMERA` permission.

**Technical Evidence:**
- **Permission:** `android.permission.CAMERA`
- **Likely Use:** QR code scanning, document upload

**Privacy Impact:**
- Runtime permission (user must grant)
- Likely used for utility features (scan SIM barcode, upload ID)
- No evidence of background camera access

**Mitigation:** Permission can be revoked in system settings.

---

### 9. Storage Permissions

**Risk Level:** 🟢 LOW

**Issue:** App requests `READ_EXTERNAL_STORAGE` and `WRITE_EXTERNAL_STORAGE`.

**Technical Evidence:**
- **Permissions:** External storage read/write
- **Likely Use:** Document uploads, cache storage

**Privacy Impact:**
- Android 10+ enforces Scoped Storage (limits broad file access)
- Media picker implementation found (`E2/c.smali`)
- No evidence of mass file scanning

**Mitigation:** Android 11+ restricts storage access by default.

---

## Positive Privacy Measures

### ✅ What The App Does Well

1. **MediaDRM Instead of IMEI (Android 10+):**
   - Uses privacy-friendly device identification
   - No privileged phone state permission

2. **Limited Call Scope:**
   - Only incoming/missed/rejected (NOT outgoing)
   - 29-day retention window (not entire history)

3. **HTTPS-Only Communication:**
   - Network Security Config forces TLS
   - Prevents man-in-the-middle attacks

4. **Encrypted Local Storage:**
   - SQLCipher AES-256 encryption
   - Protects data from other apps

5. **Code Obfuscation:**
   - ProGuard/R8 makes reverse engineering harder
   - Protects proprietary logic

---

## Privacy Risk Matrix

| Concern | Risk Level | Affected Users | Mitigation Available | Verifiable |
|---------|-----------|----------------|----------------------|------------|
| ICC ID tracking | 🔴 HIGH | All users | None (SIM required) | ✅ Yes |
| 15-min background sync | 🔴 HIGH | All users | Disable background data | ✅ Yes |
| Android 9 permission (no usage) | 🟡 MEDIUM | Android 9 devices | Monitor app updates | ✅ Yes |
| SMS permissions | 🟡 MEDIUM | All users | Revoke permission | ✅ Yes |
| Call log access | 🟡 MEDIUM | All users | Revoke permission | ✅ Yes |
| Data deletion unclear | 🟡 MEDIUM | All users | None | ❌ No |
| Flutter code opacity | 🟡 MEDIUM | All users | None | ❌ No |
| Camera permission | 🟢 LOW | All users | Revoke permission | ✅ Yes |
| Storage permissions | 🟢 LOW | All users | Revoke permission | ✅ Yes |

---

## User Protection Recommendations

### For Users

1. **Use Android 10 or Higher:**
   - Prevents IMEI access
   - Better privacy protections

2. **Review Permissions:**
   - Settings → Apps → Sanchaar Saathi → Permissions
   - Revoke SMS if not needed
   - Revoke camera if not uploading documents

3. **Monitor Battery Usage:**
   - Check if background sync drains battery
   - Restrict background data if needed

4. **Request Data Report:**
   - File RTI request for data collected
   - Verify what government stores

### For Developers

1. **Raise Minimum API Level:**
   - Set minSdkVersion to 29 (Android 10)
   - Ensure consistent privacy across all devices

2. **Document Data Collection:**
   - Publish detailed privacy policy
   - Explain ICC ID collection necessity
   - Document data retention policy

3. **Implement User Controls:**
   - Allow sync interval configuration
   - Provide data export/deletion
   - Show sync history in UI

4. **Open Source Audit:**
   - Publish Flutter codebase
   - Allow independent security audits
   - Document server-side architecture

---

## Comparison: Privacy-Protective vs Privacy-Invasive

### What Makes This App MORE Private Than Expected:

✅ Uses MediaDRM instead of IMEI (Android 10+)
✅ Filters out outgoing calls (only incoming/missed/rejected)
✅ 29-day retention limit (not entire history)
✅ HTTPS-only (no cleartext traffic)
✅ Local encryption with SQLCipher

### What Makes This App LESS Private Than Ideal:

❌ Android 9 support + READ_PHONE_STATE permission (theoretical IMEI risk via update)
❌ Collects ICC ID (persistent SIM tracking)
❌ Background sync every 15 minutes (continuous monitoring)
❌ Broad SMS permissions (unclear necessity)
❌ No data deletion verification
❌ Opaque Flutter code (cannot audit network layer)

---

## Required Further Analysis

**Runtime Analysis Needed:**
- [ ] Monitor actual HTTP requests with Frida SSL unpinning
- [ ] Inspect SQLCipher database before/after sync
- [ ] Verify data deletion mechanisms
- [ ] Memory forensics for RAM-only claims
- [ ] Network traffic capture for endpoint identification

**Server-Side Investigation:**
- [ ] RTI request for API documentation
- [ ] Server-side data retention policies
- [ ] Third-party data sharing agreements
- [ ] Access control mechanisms
- [ ] Audit logs availability

**Policy Analysis:**
- [ ] Privacy policy legal review
- [ ] Compliance with IT Act 2000
- [ ] GDPR-equivalent protections
- [ ] User consent mechanisms
- [ ] Data subject rights (access, deletion, portability)

---

**Analysis Date:** December 8, 2025
**Analysis Type:** Static Code Analysis Only
**Confidence Level:** High (for static findings), Medium (for behavior claims)
**Next Steps:** Runtime dynamic analysis with Frida
