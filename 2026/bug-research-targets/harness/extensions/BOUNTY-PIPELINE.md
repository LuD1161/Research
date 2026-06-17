# Browser-extension bounty/CVE pipeline — reality check

Source: exploratory research pass, 2026-06-16. Save-point so we don't re-derive this.

## TL;DR
The **CVE/disclosure** pipeline is mature and **free**. The **cash** pipeline is **narrow**.
Default outcome for a third-party extension bug = **CVE + takedown + reputation, $0 cash.**

## CVE / disclosure (works, free)
- **GitHub is the CNA** for open-source extensions on GitHub: draft a GHSA → "Request CVE" →
  GitHub Security Lab reviews (~72h) → publish. CVE is free and decoupled from any bounty.
- **MITRE web form** (cveform.mitre.org) is the fallback for off-GitHub / unresponsive maintainers.
- Malicious / policy-violating extensions → marketplace **abuse report** (enforcement, no payout).

## Cash — why it's narrow
- **Google Chrome VRP** = browser/ChromeOS only. **Chrome Extensions VRP = Google-owned extensions
  only.** Third-party extensions: report-only, no payout.
- **Google DDPRP** (historically paid up to $50K for extension/Android *data abuse*) is **effectively
  dead** — rode on GPSRP, which closed to submissions **Aug 31, 2024**.
- **Mozilla** bug bounty **excludes third-party add-on code** ("must be Mozilla's code"). AMO *the
  website* can qualify. Malicious add-ons → "Report Abuse", no payout. (Policy update Aug 4, 2025.)
- **huntr pivoted to AI/ML-only** (post-2023 Protect AI acquisition) — no longer covers extensions
  or general npm. Only relevant if the "extension" is actually an AI/ML library.
- HackerOne/Bugcrowd/Intigriti pay **only if the specific extension's vendor runs a program.**

## Where cash actually exists (target selection)
1. **Vendors that run their own bounty programs** (HackerOne/Bugcrowd/Intigriti) and also ship an
   extension — the extension bug lands in their existing scope.
2. **Bundled desktop-agent + companion-extension products** → **native-messaging RCE** (highest
   severity per bug; sandbox escape to full-OS privilege). Recent: CVE-2026-1079, CVE-2026-11658.
3. **AI/ML libraries** packaged as/with an extension → huntr ($1k–$50k by severity).

## Implication for the program
Treat extensions primarily as a **CVE-volume + reputation** track. If near-term **cash** is the goal,
rank Android (vendor bounties) and self-hosted web apps with real HackerOne programs above generic
extensions; pursue extension *cash* only via the three target classes above.

Sources: Chrome VRP rules, Chrome Extensions VRP rules (bughunters.google.com), Google Play bounty
shutdown (securityweek), Mozilla bug-bounty page, huntr guidelines, GitHub GHSA docs. Full URL list
in [PIPELINE.md](./PIPELINE.md) Section 5.
