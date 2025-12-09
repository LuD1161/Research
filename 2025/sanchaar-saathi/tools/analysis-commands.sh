#!/bin/bash

# Sanchaar Saathi - Analysis Reproduction Commands
# App: com.dot.app.sancharsaathi v1.5.0 (Build 58)
# Analysis Date: December 8, 2025

set -e  # Exit on error

echo "=========================================="
echo "Sanchaar Saathi - Analysis Commands"
echo "=========================================="
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check prerequisites
echo "Checking prerequisites..."
echo ""

if command_exists adb; then
    echo -e "${GREEN}✓${NC} ADB installed"
else
    echo -e "${RED}✗${NC} ADB not found. Install Android SDK Platform Tools."
fi

if command_exists apktool; then
    echo -e "${GREEN}✓${NC} Apktool installed"
else
    echo -e "${RED}✗${NC} Apktool not found. Install: brew install apktool"
fi

if command_exists docker; then
    echo -e "${GREEN}✓${NC} Docker installed"
else
    echo -e "${RED}✗${NC} Docker not found. Install: brew install docker"
fi

echo ""
echo "=========================================="
echo "1. APK Extraction from Device"
echo "=========================================="
echo ""

cat << 'EOF'
# List connected devices
adb devices

# Find app package
adb shell pm list packages | grep sanchaar

# Get APK path
adb shell pm path com.dot.app.sancharsaathi

# Pull APK (adjust path as needed)
adb pull /data/app/~~.../com.dot.app.sancharsaathi-.../base.apk ./apk/

# Pull split APKs (architecture and languages)
adb pull /data/app/~~.../com.dot.app.sancharsaathi-.../split_config.arm64_v8a.apk ./apk/
adb pull /data/app/~~.../com.dot.app.sancharsaathi-.../split_config.en.apk ./apk/
adb pull /data/app/~~.../com.dot.app.sancharsaathi-.../split_config.hi.apk ./apk/
EOF

echo ""
echo "=========================================="
echo "2. APK Decompilation"
echo "=========================================="
echo ""

cat << 'EOF'
# Decompile base APK
apktool d apk/base.apk -o decompiled/

# View decompiled structure
tree -L 2 decompiled/

# View AndroidManifest.xml
cat decompiled/AndroidManifest.xml

# View Network Security Config
cat decompiled/res/xml/network_security_config.xml
EOF

echo ""
echo "=========================================="
echo "3. MobSF Analysis"
echo "=========================================="
echo ""

cat << 'EOF'
# Start MobSF Docker container
docker run -it -p 8000:8000 opensecurity/mobile-security-framework-mobsf

# Upload APK via web interface
# Open browser: http://localhost:8000
# Click "Upload & Analyze"
# Select apk/base.apk

# Or use REST API
MOBSF_API_KEY="your_api_key_here"
curl -F "file=@apk/base.apk" http://localhost:8000/api/v1/upload \
  -H "Authorization:$MOBSF_API_KEY"

# Download JSON report
curl -X POST http://localhost:8000/api/v1/report_json \
  -H "Authorization:$MOBSF_API_KEY" \
  -d "hash=<md5_hash>" > reports/mobsf-report.json
EOF

echo ""
echo "=========================================="
echo "4. Key Finding Verification"
echo "=========================================="
echo ""

cat << 'EOF'
# Navigate to decompiled directory
cd decompiled/smali

# Find MediaDRM device ID implementation
grep -rn "MediaDrm" org/cdot/diu/main/SathiMainActivity.smali
# Expected: Lines 932-947

# Find 15-minute sync interval
grep -n "0xf" org/cdot/diu/main/MyApp.smali
# Expected: Line 108 (const-wide/16 v2, 0xf)

# Find 29-day call log window
grep -n "0x95586c00" Q3/b.smali
# Expected: Line 86

# Find call type filtering
grep -n "MISSED\|REJECTED\|INCOMING" Q3/b.smali
# Expected: Lines 335-353

# Find submitOfflineData function call
grep -n "submitOfflineData" org/cdot/diu/main/NetworkWorker.smali
# Expected: Line 161

# Find ICC ID collection
grep -n "getIccId" Q3/b.smali
# Expected: Line 565

# Find hardcoded timezone
grep -n "Asia/Kolkata" Q3/b.smali
# Expected: Line 281

# Find developer debug markers
grep -n "Adam logs" org/cdot/diu/main/NetworkWorker.smali
# Expected: Line 53
EOF

echo ""
echo "=========================================="
echo "5. Widevine UUID Decoding"
echo "=========================================="
echo ""

cat << 'EOF'
# Python script to decode Widevine UUID
python3 << PYTHON
import uuid

# From SathiMainActivity.smali:934-935
msb_signed = -0x121074568629b532
lsb_signed = -0x5c37d8232ae2de13

# Convert to unsigned
msb_unsigned = msb_signed & 0xFFFFFFFFFFFFFFFF
lsb_unsigned = lsb_signed & 0xFFFFFFFFFFFFFFFF

# Construct UUID
widevine_uuid = uuid.UUID(int=(msb_unsigned << 64) | lsb_unsigned)
print(f"Widevine UUID: {widevine_uuid}")
# Expected: edef8ba9-79d6-4ace-a3c8-27dcd51d21ed
PYTHON
EOF

echo ""
echo "=========================================="
echo "6. Time Window Calculations"
echo "=========================================="
echo ""

cat << 'EOF'
# Python calculations
python3 << PYTHON
# 15-minute sync interval
sync_interval = 0xf
print(f"Sync interval: {sync_interval} minutes")

# 29-day call log window
time_window_ms = 0x95586c00
time_window_days = time_window_ms / 1000 / 60 / 60 / 24
print(f"Call log window: {time_window_days} days")
PYTHON
EOF

echo ""
echo "=========================================="
echo "7. Permission Analysis"
echo "=========================================="
echo ""

cat << 'EOF'
# Extract all permissions
grep "uses-permission" decompiled/AndroidManifest.xml

# Check for dangerous permissions
grep -E "SEND_SMS|READ_SMS|READ_CALL_LOG|READ_PHONE_STATE|CAMERA|STORAGE" \
  decompiled/AndroidManifest.xml

# Verify missing privileged permission
grep "READ_PRIVILEGED_PHONE_STATE" decompiled/AndroidManifest.xml
# Expected: No output (permission not present)
EOF

echo ""
echo "=========================================="
echo "8. SQLCipher Database Verification"
echo "=========================================="
echo ""

cat << 'EOF'
# Check for SQLCipher presence
find decompiled/smali -name "*sqlcipher*" -type d

# Count SQLCipher classes
find decompiled/smali/net/sqlcipher -name "*.smali" | wc -l
# Expected: 192 files
EOF

echo ""
echo "=========================================="
echo "9. Code Statistics"
echo "=========================================="
echo ""

cat << 'EOF'
# Count total Smali files
find decompiled/smali -name "*.smali" | wc -l

# Count directories
find decompiled/smali -type d | wc -l

# App-specific code
find decompiled/smali/org/cdot/diu/main -name "*.smali"

# Obfuscated code (ProGuard/R8)
ls -1 decompiled/smali/ | grep -E "^[A-Z][0-9]$"

# Get file sizes
du -sh apk/*.apk
EOF

echo ""
echo "=========================================="
echo "10. Network Traffic Analysis (Requires Runtime)"
echo "=========================================="
echo ""

cat << 'EOF'
# This requires dynamic analysis with Frida
# Prerequisites: Rooted device or emulator with Frida

# Install Frida on device
adb push frida-server /data/local/tmp/
adb shell "chmod 755 /data/local/tmp/frida-server"
adb shell "/data/local/tmp/frida-server &"

# SSL unpinning (example script)
frida -U -f com.dot.app.sancharsaathi -l ssl-unpin.js

# Monitor network calls
frida -U -f com.dot.app.sancharsaathi -l network-monitor.js

# Capture traffic with mitmproxy
mitmproxy --mode transparent --set block_global=false
EOF

echo ""
echo "=========================================="
echo "11. Generate Analysis Report"
echo "=========================================="
echo ""

cat << 'EOF'
# Create findings summary
cat > findings/summary.txt << SUMMARY
Sanchaar Saathi v1.5.0 Analysis Summary
========================================

Key Findings:
1. MediaDRM device ID: edef8ba9-79d6-4ace-a3c8-27dcd51d21ed
2. 15-minute background sync: 0xf = 15 minutes
3. 29-day call log window: 0x95586c00 = 2,505,600,000 ms
4. Call types collected: INCOMING, MISSED, REJECTED (NOT OUTGOING)
5. ICC ID tracking: getIccId() called
6. HTTPS-only: cleartextTrafficPermitted="false"
7. SQLCipher encryption: 192 database files

Privacy Concerns:
- Android 9 support allows IMEI access
- Persistent background sync every 15 minutes
- SIM card ICC ID tracking
- Broad SMS permissions
SUMMARY
EOF

echo ""
echo "=========================================="
echo "Analysis Commands Complete"
echo "=========================================="
echo ""
echo -e "${GREEN}All analysis commands listed above.${NC}"
echo "For detailed findings, see:"
echo "  - reports/TECHNICAL-ANALYSIS-REPORT.md"
echo "  - findings/hardcoded-constants.md"
echo "  - findings/key-code-locations.md"
echo "  - findings/privacy-concerns.md"
echo ""
echo "Next steps:"
echo "  1. Static analysis: Complete ✓"
echo "  2. Runtime analysis: Pending (requires Frida)"
echo "  3. Flutter decompilation: Pending (requires reFlutter)"
echo "  4. Server investigation: Pending (requires RTI request)"
echo ""
