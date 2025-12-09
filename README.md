# Security Research Projects

This repository contains independent security research projects analyzing mobile applications and systems.

## 2025 Research Projects

### [Sanchaar Saathi App Analysis](2025/sanchaar-saathi/)

**Analysis Date:** December 8, 2025
**App Version:** 1.5.0 (Build 58)
**Package:** `com.dot.app.sancharsaathi`

Comprehensive security and privacy analysis of the Sanchaar Saathi Android application, mandated by the Indian government for telecom users.

**Key Findings:**
- 15-minute background sync intervals confirmed
- MediaDRM API used for device identification (not IMEI)
- Only incoming/missed/rejected calls collected (outgoing calls excluded)
- 29-day retention window hardcoded
- SQLCipher encrypted database for local storage
- HTTPS-only enforcement via Network Security Configuration

<details>
<summary><b>Analysis Methodology</b></summary>

- Static code analysis of decompiled APK
- Automated security scanning with MobSF v4.4.4
- Manual Smali bytecode review
- Hardcoded constant extraction and verification

</details>

[**→ Full Analysis Report**](2025/sanchaar-saathi/README.md)

---

<details>
<summary><b>Repository Structure</b></summary>

```
Research/
├── README.md                    # This file
└── 2025/                        # 2025 research projects
    └── sanchaar-saathi/         # Sanchaar Saathi app analysis
        ├── README.md            # Project overview
        ├── reports/             # Detailed analysis reports
        ├── apk/                 # Application binaries
        ├── decompiled/          # Decompiled app code
        ├── findings/            # Organized security findings
        └── tools/               # Analysis scripts
```

</details>

---

<details>
<summary><b>About</b></summary>

Independent security research focused on mobile application privacy and security analysis. All research is conducted ethically for defensive security purposes only.

**Researcher:** Aseem Shrey
**Analysis Tools:** MobSF, Apktool, Claude Code (Anthropic's CLI), Manual Code Review

</details>

---

## Contact

**Questions or feedback?**

- **Twitter:** [@aseemshrey](https://twitter.com/aseemshrey)
- **Issues:** [Open an issue](https://github.com/LuD1161/Research/issues) on this repository

For inquiries about the research, feel free to reach out via Twitter or open an issue on GitHub.

---

## Disclaimer

**⚠️ Important Notice**

This research is provided **for educational and security awareness purposes only**. All findings represent analysis conducted at specific points in time and may not reflect current application versions or behavior.

**Key Points:**
- All research is conducted ethically for **defensive security purposes only**
- Analysis performed on legally obtained applications from official sources
- No unauthorized access to servers, databases, or user data
- Users should conduct their own due diligence before making decisions based on this research

**This research is NOT intended for:**
- Malicious purposes or unauthorized access
- Circumventing security controls
- Creating exploits or attack tools
- Any illegal activities

**No Warranty:** The information is provided "as is" without warranty of any kind. The researcher assumes no liability for any consequences arising from the use of this information.
