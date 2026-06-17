# Bug Research Targets — Master Index

Tracking ecosystems and projects for vulnerability research, CVE assignment, and bug bounties.
Modeled on the `wp-plugins-research` effort: open-source / auditable code, large install base,
a working CVE/bounty pipeline, and many low-maturity codebases.

## Workflow

Status lifecycle: **Backlog → Todo → In Progress → Done** (or **Parked**).

- **Backlog** — identified, not yet committed to.
- **Todo** — selected for an upcoming work cycle.
- **In Progress** — actively being researched; has its own folder under `targets/<slug>/`.
- **Done** — research cycle concluded (findings/CVEs logged).
- **Parked** — started but paused.

When a target moves to **In Progress**, create `targets/<slug>/` with its own notes,
methodology, surface enumeration, and findings. Keep this index as the single source of truth
for status — update the `Status` column here whenever a target moves.

Legend: 🟤 Backlog · 🔵 Todo · 🟡 In Progress · 🟢 Done · ⚪ Parked

## Core principle — validation-first, not source-only

Source-code review alone is not enough. Every reported finding must be **reproduced and
validated against a real, installable instance** of the target before it is logged as confirmed.
A working PoC against a running deployment is the high-signal artifact — it separates real,
bountyable/CVE-worthy bugs from theoretical taint flows (the WP effort showed how many
"findings" collapse on contact with a real install).

A target's **deployability** (how easily you can stand up a runnable instance) is therefore a
primary selection criterion. Prefer targets that:

- ship a one-command install: official **Docker image / `docker-compose`**, Helm chart, or VM/appliance image;
- can run locally with a free/community edition (no paid license to exercise the vuln);
- expose the vulnerable surface without exotic hardware (favors web apps over firmware early on).

Per-target lab requirement — each `targets/<slug>/` should contain:

- `lab/` — reproducible environment (compose file / setup script / install notes, pinned version).
- `findings/<id>.md` — each finding with: affected version, source-level root cause, **step-by-step repro against the running instance**, PoC (request/script), observed impact, and disclosure/CVE status.
- A finding is **not** marked confirmed until its repro is reproduced end-to-end on the lab instance.

The `Deploy` column below rates how easy it is to stand up a validation instance:
🟢 easy (official Docker/compose, **emulator, or browser load**) · 🟡 moderate (manual install / multi-service) · 🔴 hard (firmware/hardware/paid license).

"Installable instance" is not limited to a server you `docker run`. Client-side targets are just as
reproducible, with a different lab harness:

- **Android apps (🟢)** — the APK is the installable artifact. Lab = an emulator (Android Studio AVD)
  or rooted test device. Pull the APK, `apktool`/`jadx` to read source, install with `adb install`,
  then drive the *client-side* attack surface directly: exported activities/services/receivers
  (`adb shell am start ...`), exported content providers, deeplink/intent redirection, insecure
  local storage, WebView `addJavascriptInterface`, and broken cert pinning via Frida/objection +
  Burp. All of that is validatable locally without touching the vendor's servers. (Server-side bugs
  reached *through* the app still need the vendor's bounty scope/authorization — keep those separate.)
- **Browser extensions (🟢)** — the `.crx`/unpacked extension is the installable artifact. Lab =
  Chrome/Firefox with the extension loaded unpacked. Read `manifest.json` + JS, then exercise the
  real surface: content-script ↔ background message passing, `externally_connectable`, overbroad
  host permissions, DOM-based sinks, and `chrome.*` API misuse. A malicious-page PoC that triggers
  the bug in a loaded extension is the high-signal artifact.

For these, `lab/` holds the emulator/profile setup notes and the PoC app/page rather than a compose file.
The reusable, "set up once" rigs for Android and extensions are documented in [HARNESS.md](./HARNESS.md).
Per-platform pipeline designs: [harness/android/PIPELINE.md](./harness/android/PIPELINE.md) ·
[harness/extensions/PIPELINE.md](./harness/extensions/PIPELINE.md).

> **Bounty-vs-CVE note (browser-extensions):** the CVE/GHSA disclosure path is free and mature, but
> **no marketplace pays cash for third-party extension bugs** (Chrome VRP/Extensions VRP = Google-owned
> only; Mozilla excludes third-party code; huntr is AI/ML-only; Google data-abuse program dead since
> Aug 2024). Default payout = CVE + reputation, $0. For cash, target extensions whose **vendor runs a
> bounty program** or that ship a **desktop agent + companion extension** (native-messaging RCE).

---

## Tier 1 — Plugin / extension marketplaces (closest analogue, best ROI)

| Slug | Target | Lang | Bounty / CVE pipeline | Deploy | Status |
|------|--------|------|-----------------------|--------|--------|
| jenkins-plugins | Jenkins plugins | Java | Jenkins security team (CVE) | 🟢 | 🟤 Backlog |
| joomla-extensions | Joomla extensions (JED) | PHP | Patchstack / CVE | 🟢 | 🟤 Backlog |
| drupal-modules | Drupal contrib modules | PHP | Drupal security team (SA-CONTRIB) | 🟢 | 🟤 Backlog |
| magento-extensions | Magento / Adobe Commerce extensions | PHP | Adobe / CVE | 🟡 | 🟤 Backlog |
| prestashop-modules | PrestaShop modules & themes | PHP | Friends-of-Presto / CVE | 🟢 | 🟤 Backlog |
| opencart-extensions | OpenCart extensions | PHP | CVE | 🟢 | 🟤 Backlog |
| shopify-apps | Shopify apps | JS/Ruby | Shopify bounty | 🔴 | 🟤 Backlog |
| woocommerce-addons | WooCommerce add-ons (3rd party) | PHP | Patchstack / Wordfence | 🟢 | 🟤 Backlog |
| browser-extensions | Chrome / Firefox / Edge extensions | JS | CVE/GHSA (cash narrow — see note) | 🟢 | 🟤 Backlog |
| vscode-extensions | VS Code extensions | JS/TS | CVE / GitHub advisories | 🟢 | 🟤 Backlog |
| atlassian-marketplace | Atlassian (Jira/Confluence) apps | Java | Atlassian bounty | 🟡 | 🟤 Backlog |
| github-actions | GitHub Actions / Marketplace actions | YAML/JS | GitHub advisories | 🟡 | 🟤 Backlog |
| home-assistant-integrations | Home Assistant integrations | Python | CVE | 🟢 | 🟤 Backlog |
| n8n-noderead-nodes | n8n / Node-RED community nodes | JS | CVE / huntr | 🟢 | 🟤 Backlog |
| wordpress-themes | WordPress themes | PHP | Patchstack / Wordfence | 🟢 | 🟤 Backlog |

## Tier 2 — Self-hosted web apps (clone-and-audit)

| Slug | Target | Lang | Bounty / CVE pipeline | Deploy | Status |
|------|--------|------|-----------------------|--------|--------|
| nextcloud | Nextcloud / ownCloud | PHP | HackerOne | 🟢 | 🟤 Backlog |
| moodle | Moodle LMS | PHP | Moodle security / CVE | 🟢 | 🟤 Backlog |
| gitlab-ce | GitLab CE | Ruby | HackerOne | 🟢 | 🟤 Backlog |
| grafana-stack | Grafana / Kibana / Prometheus | Go/JS | CVE / bounty | 🟢 | 🟤 Backlog |
| media-servers | Jellyfin / Emby / Plex | C#/JS | CVE | 🟢 | 🟤 Backlog |
| phpmyadmin-adminer | phpMyAdmin / Adminer | PHP | CVE | 🟢 | 🟤 Backlog |
| mediawiki | MediaWiki + extensions | PHP | Wikimedia bounty | 🟢 | 🟤 Backlog |
| webmail | Roundcube / SquirrelMail / Zimbra | PHP | CVE | 🟡 | 🟤 Backlog |
| helpdesk | osTicket / Zammad / FreeScout | PHP | CVE / GitHub | 🟢 | 🟤 Backlog |
| chat-platforms | Mattermost / Rocket.Chat | Go/JS | HackerOne | 🟢 | 🟤 Backlog |
| headless-cms | Strapi / Directus / Payload | JS/TS | CVE / huntr | 🟢 | 🟤 Backlog |
| ghost | Ghost | Node | CVE | 🟢 | 🟤 Backlog |
| gitea-forgejo | Gitea / Forgejo | Go | CVE | 🟢 | 🟤 Backlog |
| wikis-docs | Bookstack / Wiki.js / Outline | PHP/JS | CVE | 🟢 | 🟤 Backlog |
| network-monitoring | Cacti / Zabbix / LibreNMS / Nagios | PHP | CVE / ZDI | 🟢 | 🟤 Backlog |
| firewalls | pfSense / OPNsense | PHP | CVE | 🟡 | 🟤 Backlog |
| dns-adblock | Pi-hole / AdGuard Home | PHP/Go | CVE | 🟢 | 🟤 Backlog |
| vaultwarden | Vaultwarden | Rust | CVE | 🟢 | 🟤 Backlog |
| trendy-selfhost | Paperless-ngx / Immich | Python/TS | CVE / huntr | 🟢 | 🟤 Backlog |

## Tier 3 — Network / infra appliances & IoT (high CVE prestige)

| Slug | Target | Lang | Bounty / CVE pipeline | Deploy | Status |
|------|--------|------|-----------------------|--------|--------|
| routers-nas | TP-Link / D-Link / Netgear / ASUS / Synology / QNAP / WD | C/Web | ZDI / vendor / CVE | 🔴 | 🟤 Backlog |
| ip-cameras-dvr | Hikvision / Dahua / Reolink | C/Web | ZDI / CVE | 🔴 | 🟤 Backlog |
| network-printers | HP / Canon / Brother | C/Web | ZDI / CVE | 🔴 | 🟤 Backlog |
| voip-pbx | Asterisk / FreePBX / Grandstream | C/PHP | CVE | 🟡 | 🟤 Backlog |
| vpn-gateways | Enterprise SSL-VPN gateways | C/Web | ZDI / vendor | 🔴 | 🟤 Backlog |

## Tier 4 — Mobile & API

| Slug | Target | Lang | Bounty / CVE pipeline | Deploy | Status |
|------|--------|------|-----------------------|--------|--------|
| android-apps | Android apps (APK audit) | Java/Kotlin | Vendor bounties | 🟢 | 🟤 Backlog |
| saas-bug-bounty | Public SaaS programs (IDOR/BOLA) | varies | HackerOne / Bugcrowd / Intigriti / YesWeHack | 🔴 | 🟤 Backlog |
| oauth-sso | OAuth / SSO integration misconfig | varies | Vendor bounties | 🔴 | 🟤 Backlog |

## Tier 5 — Developer ecosystems / supply chain

| Slug | Target | Lang | Bounty / CVE pipeline | Deploy | Status |
|------|--------|------|-----------------------|--------|--------|
| package-registries | npm / PyPI / RubyGems / Composer libs | varies | huntr / GitHub Security Lab | 🟢 | 🟤 Backlog |
| container-supplychain | Docker images / Helm charts | YAML | CVE | 🟢 | 🟤 Backlog |
| terraform-providers | Terraform providers / modules | Go/HCL | CVE | 🟡 | 🟤 Backlog |
| ai-ml-tooling | LangChain / llama.cpp / ComfyUI / Gradio / Ollama / MLflow / Ray / Triton / vLLM | Python | huntr (AI/ML bounties) | 🟢 | 🟤 Backlog |

## Tier 6 — Internet-scale n-day hunting (fingerprint → remote validate)

| Slug | Target | Lang | Bounty / CVE pipeline | Deploy | Status |
|------|--------|------|-----------------------|--------|--------|
| web-tech-ndays | Web-tech fingerprint → vulnerable npm/framework version → crafted remote probe → mass-validate | JS/varies | Bug-bounty programs (in-scope only) | 🟢 | 🔵 Todo (researching) |

> **Primary method (original discovery):** pick a hot ecosystem (Next.js/React/Node) → enumerate its
> commonly-used packages → filter to **request-reachable, server-side, user-data-processing** packages
> (the only ones a `curl` can trigger) → audit for a **new source→sink bug** → frame a crafted request
> that triggers it → validate locally, then remotely against in-scope live sites running it.
> Full spec: [harness/web-tech-ndays/METHODOLOGY.md](./harness/web-tech-ndays/METHODOLOGY.md) ·
> ranked Tier-A targets: [harness/web-tech-ndays/AUDIT-TARGETS.md](./harness/web-tech-ndays/AUDIT-TARGETS.md) ·
> full ~150-package corpus: [harness/web-tech-ndays/CORPUS.md](./harness/web-tech-ndays/CORPUS.md).
>
> **Secondary method (n-day distribution):** fingerprint sites by tech **+ version** → match to known
> CVEs with a remote signature → validate per-program. Same fingerprint+probe engine reused.
> Research: [harness/web-tech-ndays/REMOTE-VALIDATION.md](./harness/web-tech-ndays/REMOTE-VALIDATION.md).
> **Key finding:** mass-reporting known n-days is structurally penalized on bounty platforms (it's the
> criminal model) → **weight strongly toward original discovery**; use n-day validation only to build
> tooling/Signal, reported per-program with a hand-crafted PoC, never as bulk scanner output.
>
> **Legal guardrail:** crafted requests to third-party sites = **active scanning** — only against
> targets **in an authorized bug-bounty/pentest scope**; benign proof probes only, never destructive
> payloads. Local repro apps need no authorization and are where discovery happens.

---

## Active board (quick view)

_Move slugs between sections as they progress._

### 🔵 Todo
- _(none yet)_

### 🟡 In Progress
- _(none yet)_

### 🟢 Done
- _(none yet)_

### ⚪ Parked
- _(none yet)_
