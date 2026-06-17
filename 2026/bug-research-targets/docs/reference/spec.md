# AIM & OBJECTIVE — Prepend this to the top of the main prompt

---

## Mission

Conduct a systematic, professional-grade security audit of the top 100 most-installed WordPress plugins to identify zero-day vulnerabilities through static source code analysis, automated taint tracking, and expert manual review. The end goal is a set of confirmed, reproducible vulnerability findings — each with a complete source-to-sink data flow trace, severity rating, and proof-of-concept sketch — ready for responsible disclosure to the respective plugin maintainers.

## Why These 100 Plugins

These are the 100 most widely deployed WordPress plugins by real-world installation count. WordPress powers roughly 43% of all websites on the internet. A single vulnerability in any of these plugins can affect tens of millions of live sites. The top 10 alone (Yoast SEO, Elementor, Contact Form 7, Site Kit, WooCommerce, Rank Math, Jetpack, Akismet, Redirection, LiteSpeed Cache) collectively run on an estimated 500M+ active installations. Finding and responsibly disclosing even one critical vulnerability in this set has outsized real-world security impact.

## What Success Looks Like

By the end of this research, you must have:

1. **A fully operational security research environment** — all tools installed, verified, and functional. Every tool passes its hard verification check. The environment is reproducible (git-tracked, scripted, idempotent).

2. **Complete source code** for every publicly available plugin in the top 100, downloaded, extracted, and integrity-verified. At least 60 plugins with full PHP source ready for analysis.

3. **A comprehensive attack surface map** for every plugin — every AJAX handler (authenticated and unauthenticated), every REST API route, every shortcode, every file upload handler, every cron job, every admin page. You must know every door into every plugin.

4. **Automated source-sink-sanitizer identification** for every plugin using AST-based analysis. Every superglobal access, every dangerous function call, every sanitizer application — catalogued with file, line number, enclosing function, and class context.

5. **Taint flow analysis** that traces user-controlled input from source to sink, identifying where sanitization is missing, insufficient, or mismatched to the sink type. This must use context-aware taint labels (a value sanitized for XSS is NOT sanitized for SQL injection).

6. **Confirmed vulnerability findings** with:
   - Complete data flow chain (source → propagation steps → sink)
   - Proof that no effective sanitizer exists on the path
   - Authentication requirements (or lack thereof)
   - CVSS 3.1 severity score
   - CWE classification
   - Proof-of-concept request sketch
   - Suggested remediation code

7. **Structured reports** — per-plugin reports, an executive summary, and a critical findings document — all version-controlled in git.

## Scope & Boundaries

**In scope:**
- Static analysis of plugin source code (PHP, JavaScript, SQL)
- Automated pattern scanning (Semgrep, ripgrep, custom rules)
- AST-based source-sink mapping and taint flow analysis
- Code Property Graph queries (Joern) for interprocedural data flow
- WordPress-specific analysis (hook chain resolution, database taint tracking)
- Manual expert review of high-signal findings
- Writing PoC request sketches (not live exploitation)

**Out of scope:**
- Active exploitation of any live website or production system
- Dynamic testing against third-party infrastructure
- Reverse engineering of obfuscated/encoded premium plugins
- Social engineering or credential-based attacks
- Denial of service testing

## Ethical Framework

This is a responsible security research project. All findings are intended for responsible disclosure:
- Vulnerabilities will be reported to plugin maintainers via their established security contact channels (typically security@vendor or HackerOne/Bugcrowd if available)
- Standard 90-day disclosure timeline applies
- No vulnerability details will be published before the maintainer has had reasonable time to patch
- No working exploits will be developed beyond the minimum needed to confirm the vulnerability exists
- All analysis is performed on downloaded source code, not on live installations

## Approach Summary

The analysis uses a five-layer pipeline, from fastest/broadest to slowest/deepest:

1. **Pattern matching** (Semgrep + ripgrep) — cast the widest net for obvious patterns
2. **Intraprocedural taint analysis** (custom tree-sitter tool) — track data flow within functions with context-aware taint labels
3. **Interprocedural analysis** (Joern CPG) — track data flow across function boundaries
4. **WordPress-aware analysis** (custom hook resolver + database taint oracle) — resolve WordPress hook chains and cross-request data flows
5. **Expert manual review** — synthesize all automated results, verify exploitability, assess real-world impact

No single layer achieves 100% source-sink accuracy (this is provably impossible for dynamic languages like PHP). The layered approach maximizes coverage by having each layer catch what the previous ones miss. See the addendum document for the 12 specific PHP/WordPress patterns that defeat static analysis and how each layer handles them.

---

# [MAIN PROMPT BEGINS HERE — paste the rest of the prompt below this line]

---

# WordPress Top 100 Plugin Security Research — Claude Code Master Prompt

You are setting up a professional security research environment to perform deep code analysis on the top 100 WordPress plugins. You will act as an expert security researcher with 20+ years of offensive security experience and world-class CTF skills. Every step must be verified before proceeding. Every major phase gets a git commit. No assumptions — verify everything.

---

## PHASE 0: REPO INITIALIZATION

Create a git repo at `~/wp-plugin-security-research` with this structure:

```
wp-plugin-security-research/
├── README.md                    # Project overview, methodology, findings summary
├── .gitignore                   # Ignore plugin source zips, node_modules, __pycache__, .venv
├── Makefile                     # Targets: setup, download, verify, analyze, report
├── requirements.txt             # Python dependencies
├── plugins/
│   ├── manifest.csv             # Master list: rank,name,slug,source_url,status
│   ├── zips/                    # Downloaded plugin archives (gitignored)
│   └── src/                    # Extracted source code (gitignored)
├── tools/
│   ├── install.sh               # Tool installer with verification
│   ├── verify_tools.sh          # Hard checks that ALL tools work
│   ├── verify_downloads.sh      # Verify all plugins downloaded & extracted correctly
│   ├── source_sink_mapper.py    # AST-based source/sink identification
│   ├── taint_tracer.py          # Intraprocedural taint flow tracker
│   ├── wp_audit_rules/          # Custom Semgrep rules for WordPress
│   │   ├── sqli.yaml
│   │   ├── xss.yaml
│   │   ├── rce.yaml
│   │   ├── ssrf.yaml
│   │   ├── auth_bypass.yaml
│   │   ├── object_injection.yaml
│   │   ├── open_redirect.yaml
│   │   ├── path_traversal.yaml
│   │   ├── csrf.yaml
│   │   └── crypto.yaml
│   └── joern_queries/           # Joern CPG queries
│       ├── source_sink.sc
│       ├── taint_flows.sc
│       └── attack_surface.sc
├── analysis/
│   ├── phase1_surface/          # Attack surface mapping results
│   ├── phase2_sources_sinks/    # Source-sink identification results
│   ├── phase3_taint_flows/      # Taint analysis results
│   ├── phase4_semgrep/          # Semgrep scan results
│   ├── phase5_manual/           # Manual audit findings
│   └── phase6_exploitability/   # Exploitability assessment
├── reports/
│   ├── per_plugin/              # Individual plugin reports
│   ├── executive_summary.md     # High-level findings
│   ├── critical_findings.md     # P0/P1 findings with PoC sketches
│   └── methodology.md          # Full methodology documentation
└── scripts/
    ├── download_plugins.sh      # Bulk downloader with retry + verification
    ├── extract_plugins.sh       # Extract and verify integrity
    ├── run_analysis.sh          # Full analysis pipeline
    └── generate_reports.sh      # Report generation
```

### Git setup:
```bash
git init
git add README.md .gitignore Makefile requirements.txt plugins/manifest.csv
git commit -m "feat: initialize wp plugin security research repo"
```

**HARD CHECK before proceeding:**
- [ ] `git log --oneline` shows the init commit
- [ ] Directory structure exists
- [ ] `.gitignore` includes: `plugins/zips/`, `plugins/src/`, `*.zip`, `node_modules/`, `__pycache__/`, `.venv/`, `*.pyc`

---

## PHASE 1: PLUGIN MANIFEST & DOWNLOAD

### 1.1 Create the master manifest

Create `plugins/manifest.csv` with ALL 100 plugins. Use this exact data:

```csv
rank,name,slug,download_url,source_type
1,Yoast SEO,wordpress-seo,https://downloads.wordpress.org/plugin/wordpress-seo.latest-stable.zip,public
2,Elementor Website Builder,elementor,https://downloads.wordpress.org/plugin/elementor.latest-stable.zip,public
3,Contact Form 7,contact-form-7,https://downloads.wordpress.org/plugin/contact-form-7.latest-stable.zip,public
4,Site Kit by Google,google-site-kit,https://downloads.wordpress.org/plugin/google-site-kit.latest-stable.zip,public
5,Elementor Pro,elementor-pro,,premium
6,WooCommerce,woocommerce,https://downloads.wordpress.org/plugin/woocommerce.latest-stable.zip,public
7,Rank Math SEO,seo-by-rank-math,https://downloads.wordpress.org/plugin/seo-by-rank-math.latest-stable.zip,public
8,Jetpack,jetpack,https://downloads.wordpress.org/plugin/jetpack.latest-stable.zip,public
9,Akismet Anti-spam,akismet,https://downloads.wordpress.org/plugin/akismet.latest-stable.zip,public
10,Redirection,redirection,https://downloads.wordpress.org/plugin/redirection.latest-stable.zip,public
11,WP Rocket,wp-rocket,,premium
12,Elementor AI,elementor-ai,,premium
13,LiteSpeed Cache,litespeed-cache,https://downloads.wordpress.org/plugin/litespeed-cache.latest-stable.zip,public
14,Wordfence Security,wordfence,https://downloads.wordpress.org/plugin/wordfence.latest-stable.zip,public
15,All in One SEO,all-in-one-seo-pack,https://downloads.wordpress.org/plugin/all-in-one-seo-pack.latest-stable.zip,public
16,MonsterInsights,google-analytics-for-wordpress,https://downloads.wordpress.org/plugin/google-analytics-for-wordpress.latest-stable.zip,public
17,WP Fastest Cache,wp-fastest-cache,https://downloads.wordpress.org/plugin/wp-fastest-cache.latest-stable.zip,public
18,Yoast SEO Premium,wordpress-seo-premium,,premium
19,Slider Revolution,revslider,,premium
20,NPS Survey,nps-survey,,proprietary
21,Gravity Forms,gravityforms,,premium
22,WC Admin Email,wc-admin-email,,proprietary
23,Rank Math SEO Pro,seo-by-rank-math-pro,,premium
24,Kadence Blocks,kadence-blocks,https://downloads.wordpress.org/plugin/kadence-blocks.latest-stable.zip,public
25,WPBakery Page Builder,js_composer,,premium
26,WPE Sign-On Plugin,wpe-sign-on-plugin,,proprietary
27,GTranslate,gtranslate,https://downloads.wordpress.org/plugin/gtranslate.latest-stable.zip,public
28,Smash Balloon Social Photo Feed,instagram-feed,https://downloads.wordpress.org/plugin/instagram-feed.latest-stable.zip,public
29,WPForms Lite,wpforms-lite,https://downloads.wordpress.org/plugin/wpforms-lite.latest-stable.zip,public
30,Essential Addons for Elementor,essential-addons-for-elementor-lite,https://downloads.wordpress.org/plugin/essential-addons-for-elementor-lite.latest-stable.zip,public
31,MC4WP Mailchimp for WordPress,mailchimp-for-wp,https://downloads.wordpress.org/plugin/mailchimp-for-wp.latest-stable.zip,public
32,ElementsKit Elementor Addons,elementskit-lite,https://downloads.wordpress.org/plugin/elementskit-lite.latest-stable.zip,public
33,Smush Image Optimization,wp-smushit,https://downloads.wordpress.org/plugin/wp-smushit.latest-stable.zip,public
34,Code Snippets,code-snippets,https://downloads.wordpress.org/plugin/code-snippets.latest-stable.zip,public
35,Regenerate Thumbnails,regenerate-thumbnails,https://downloads.wordpress.org/plugin/regenerate-thumbnails.latest-stable.zip,public
36,CookieYes,cookie-law-info,https://downloads.wordpress.org/plugin/cookie-law-info.latest-stable.zip,public
37,WPMU DEV PCS,wpmudev-pcs,,proprietary
38,XML Sitemap Generator for Google,google-sitemap-generator,https://downloads.wordpress.org/plugin/google-sitemap-generator.latest-stable.zip,public
39,CI HUB Connector,ci-hub-connector,https://downloads.wordpress.org/plugin/ci-hub-connector.latest-stable.zip,public
40,WPML Multilingual CMS,sitepress-multilingual-cms,,premium
41,Astra Pro Addon,astra-addon,,premium
42,KB Vector,kb-vector,,proprietary
43,Autoptimize,autoptimize,https://downloads.wordpress.org/plugin/autoptimize.latest-stable.zip,public
44,Ultimate Addons for Elementor,header-footer-elementor,https://downloads.wordpress.org/plugin/header-footer-elementor.latest-stable.zip,public
45,Elementor One,elementor-one,,premium
46,Elementor Hello Elementor,elementor-hello-elementor,,premium
47,Kadence Blocks Pro,kadence-blocks-pro,,premium
48,Popup Maker,popup-maker,https://downloads.wordpress.org/plugin/popup-maker.latest-stable.zip,public
49,Kadence Pro,kadence-pro,,premium
50,WP Super Cache,wp-super-cache,https://downloads.wordpress.org/plugin/wp-super-cache.latest-stable.zip,public
51,W3 Total Cache,w3-total-cache,https://downloads.wordpress.org/plugin/w3-total-cache.latest-stable.zip,public
52,Fluent Forms,fluentform,https://downloads.wordpress.org/plugin/fluentform.latest-stable.zip,public
53,Broken Link Checker,broken-link-checker,https://downloads.wordpress.org/plugin/broken-link-checker.latest-stable.zip,public
54,WP Abilities,wp-abilities,,proprietary
55,OptinMonster,optinmonster,https://downloads.wordpress.org/plugin/optinmonster.latest-stable.zip,public
56,GTM4WP,duracelltomi-google-tag-manager,https://downloads.wordpress.org/plugin/duracelltomi-google-tag-manager.latest-stable.zip,public
57,GeneratePress Pro,generatepress-pro,,premium
58,KB Custom SVG,kb-custom-svg,,proprietary
59,FluentSMTP,fluent-smtp,https://downloads.wordpress.org/plugin/fluent-smtp.latest-stable.zip,public
60,Object Cache,objectcache,,proprietary
61,Two-Factor,two-factor,https://downloads.wordpress.org/plugin/two-factor.latest-stable.zip,public
62,GeneratePress Premium,gp-premium,,premium
63,Complianz GDPR/CCPA,complianz-gdpr,https://downloads.wordpress.org/plugin/complianz-gdpr.latest-stable.zip,public
64,Hostinger Tools Plugin,hostinger-tools-plugin,,proprietary
65,HFE,hfe,,proprietary
66,OTGS Installer (WPML),otgs-installer-plugin,,premium
67,ZipWP,zipwp,,proprietary
68,Gutenberg Templates,gutenberg-templates,,proprietary
69,WooPayments,woocommerce-payments,https://downloads.wordpress.org/plugin/woocommerce-payments.latest-stable.zip,public
70,ZipWP Images,zipwp-images,,proprietary
71,EWWW Image Optimizer,ewww-image-optimizer,https://downloads.wordpress.org/plugin/ewww-image-optimizer.latest-stable.zip,public
72,WooCommerce Stripe Gateway,woocommerce-gateway-stripe,https://downloads.wordpress.org/plugin/woocommerce-gateway-stripe.latest-stable.zip,public
73,Hostinger Amplitude,hostinger-amplitude,,proprietary
74,Trustindex,trustindex,,proprietary
75,Hostinger Easy Onboarding,hostinger-easy-onboarding,,proprietary
76,WP-Optimize,wp-optimize,https://downloads.wordpress.org/plugin/wp-optimize.latest-stable.zip,public
77,PixelYourSite,pixelyoursite,https://downloads.wordpress.org/plugin/pixelyoursite.latest-stable.zip,public
78,Perfmatters,perfmatters,,premium
79,WP-PageNavi,wp-pagenavi,https://downloads.wordpress.org/plugin/wp-pagenavi.latest-stable.zip,public
80,Solid Security,better-wp-security,https://downloads.wordpress.org/plugin/better-wp-security.latest-stable.zip,public
81,GenerateBlocks,generateblocks,https://downloads.wordpress.org/plugin/generateblocks.latest-stable.zip,public
82,TablePress,tablepress,https://downloads.wordpress.org/plugin/tablepress.latest-stable.zip,public
83,Security Optimizer (SiteGround),sg-security,https://downloads.wordpress.org/plugin/sg-security.latest-stable.zip,public
84,Polylang,polylang,https://downloads.wordpress.org/plugin/polylang.latest-stable.zip,public
85,PRO Elements,pro-elements,https://downloads.wordpress.org/plugin/pro-elements.latest-stable.zip,public
86,Simple History,simple-history,https://downloads.wordpress.org/plugin/simple-history.latest-stable.zip,public
87,Search Regex,search-regex,https://downloads.wordpress.org/plugin/search-regex.latest-stable.zip,public
88,Premium Addons for Elementor,premium-addons-for-elementor,https://downloads.wordpress.org/plugin/premium-addons-for-elementor.latest-stable.zip,public
89,Spectra Gutenberg Blocks,ultimate-addons-for-gutenberg,https://downloads.wordpress.org/plugin/ultimate-addons-for-gutenberg.latest-stable.zip,public
90,Starter Templates,astra-sites,https://downloads.wordpress.org/plugin/astra-sites.latest-stable.zip,public
91,Formidable Forms,formidable,https://downloads.wordpress.org/plugin/formidable.latest-stable.zip,public
92,The Events Calendar,the-events-calendar,https://downloads.wordpress.org/plugin/the-events-calendar.latest-stable.zip,public
93,Forminator Forms,forminator,https://downloads.wordpress.org/plugin/forminator.latest-stable.zip,public
94,Font Awesome,font-awesome,https://downloads.wordpress.org/plugin/font-awesome.latest-stable.zip,public
95,WP Popular Posts,wordpress-popular-posts,https://downloads.wordpress.org/plugin/wordpress-popular-posts.latest-stable.zip,public
96,AddToAny Share Buttons,add-to-any,https://downloads.wordpress.org/plugin/add-to-any.latest-stable.zip,public
97,FileBird,filebird,https://downloads.wordpress.org/plugin/filebird.latest-stable.zip,public
98,WooCommerce PayPal Payments,woocommerce-paypal-payments,https://downloads.wordpress.org/plugin/woocommerce-paypal-payments.latest-stable.zip,public
99,Click to Chat,click-to-chat-for-whatsapp,https://downloads.wordpress.org/plugin/click-to-chat-for-whatsapp.latest-stable.zip,public
100,Cookie Notice GDPR/CCPA,cookie-notice,https://downloads.wordpress.org/plugin/cookie-notice.latest-stable.zip,public
```

### 1.2 Download script (`scripts/download_plugins.sh`)

Write a download script that:
- Reads `plugins/manifest.csv`
- Downloads only rows where `source_type` is `public`
- Saves to `plugins/zips/{slug}.zip`
- Retries up to 3 times on failure with exponential backoff
- Logs every result to `plugins/download.log` with timestamp
- Skips already-downloaded files (idempotent)
- Sleeps 1 second between downloads (polite to wordpress.org)
- At the end, prints a summary: downloaded / skipped / failed / total

### 1.3 Extract script (`scripts/extract_plugins.sh`)

Write an extraction script that:
- Unzips each `plugins/zips/{slug}.zip` into `plugins/src/{slug}/`
- Verifies each extracted directory contains at least one `.php` file
- Logs extraction status per plugin
- Produces `plugins/extraction_manifest.json`:
```json
{
  "wordpress-seo": {
    "status": "ok",
    "php_files": 1433,
    "total_lines": 372951,
    "extracted_at": "2026-06-14T12:00:00Z",
    "top_level_files": ["wordpress-seo.php", "readme.txt", "..."]
  }
}
```

### 1.4 Verification script (`tools/verify_downloads.sh`)

This script is a HARD GATE. It must:
- Count how many public plugins exist in manifest (should be ~63)
- Count how many zips exist in `plugins/zips/`
- Count how many extracted dirs exist in `plugins/src/`
- For each extracted plugin, verify the main plugin PHP file exists (the one with the `Plugin Name:` header)
- Print PASS/FAIL for each plugin
- Exit with code 0 only if ALL public plugins are downloaded AND extracted
- Exit with code 1 and print exactly what is missing if anything fails

```bash
# Example output:
# [PASS] wordpress-seo: zip OK, extracted OK, 1433 PHP files
# [PASS] elementor: zip OK, extracted OK, 1232 PHP files
# [FAIL] akismet: zip MISSING
# ...
# RESULT: 62/63 plugins ready. 1 FAILED. Exit 1.
```

### Git commit:
```bash
git add plugins/manifest.csv scripts/download_plugins.sh scripts/extract_plugins.sh tools/verify_downloads.sh
git commit -m "feat: add plugin manifest and download/extract/verify pipeline"
```

Then RUN the download, extract, and verify:
```bash
bash scripts/download_plugins.sh
bash scripts/extract_plugins.sh
bash tools/verify_downloads.sh
```

**HARD CHECK — DO NOT PROCEED UNTIL:**
- [ ] `tools/verify_downloads.sh` exits with code 0
- [ ] At least 60 plugins are downloaded and extracted
- [ ] `plugins/extraction_manifest.json` exists and is valid JSON
- [ ] `git status` is clean (source/zips are gitignored)

```bash
git add plugins/extraction_manifest.json plugins/download.log
git commit -m "data: download and extract all public wordpress plugins"
```

---

## PHASE 2: TOOL INSTALLATION & VERIFICATION

### 2.1 Install script (`tools/install.sh`)

Create an installer that installs ALL of the following. Each tool MUST be verified after installation.

#### Python environment:
```bash
python3 -m venv .venv
source .venv/bin/activate
```

#### Python packages (put in `requirements.txt`):
```
tree-sitter==0.24.0
tree-sitter-php==0.23.11
semgrep
pyyaml
networkx
graphviz
tabulate
rich
jinja2
```

#### System tools:
```bash
# PHP CLI (needed for some analysis tools)
sudo apt-get update && sudo apt-get install -y php-cli php-ast php-mbstring php-xml

# Graphviz (for rendering data flow graphs)
sudo apt-get install -y graphviz

# jq (JSON processing)
sudo apt-get install -y jq

# ripgrep (faster than grep)
sudo apt-get install -y ripgrep

# cloc (count lines of code)
sudo apt-get install -y cloc
```

#### Semgrep:
```bash
pip install semgrep
semgrep --version
```

#### Joern (Code Property Graph):
```bash
# Install Joern for PHP CPG analysis
curl -L "https://github.com/joernio/joern/releases/latest/download/joern-install.sh" -o joern-install.sh
chmod +x joern-install.sh
./joern-install.sh --install-dir=$HOME/joern
export PATH=$HOME/joern/joern-cli/bin:$PATH
```
NOTE: Joern requires Java 21+. Install if not present:
```bash
sudo apt-get install -y openjdk-21-jdk
```

#### PHP CodeSniffer with WordPress rules:
```bash
composer global require squizlabs/php_codesniffer
composer global require wp-coding-standards/wpcs
phpcs --config-set installed_paths $(composer global config home)/vendor/wp-coding-standards/wpcs
```

#### Psalm (PHP static analysis with taint tracking):
```bash
# Install per-project since plugins have different structures
composer global require vimeo/psalm
```

### 2.2 Tool verification script (`tools/verify_tools.sh`)

This is the HARD GATE for tools. Create a script that tests every single tool:

```bash
#!/usr/bin/env bash
set -euo pipefail

PASS=0
FAIL=0
WARN=0

check() {
    local name="$1"
    local cmd="$2"
    local required="${3:-true}"
    
    if eval "$cmd" &>/dev/null; then
        echo "[PASS] $name"
        ((PASS++))
    elif [ "$required" = "true" ]; then
        echo "[FAIL] $name — REQUIRED"
        ((FAIL++))
    else
        echo "[WARN] $name — optional, skipping"
        ((WARN++))
    fi
}

echo "=== Tool Verification ==="
echo ""

# Python & venv
check "Python 3.10+"          "python3 --version | grep -E '3\.(1[0-9]|[2-9][0-9])'"
check "venv active"           "[ -n \"\${VIRTUAL_ENV:-}\" ]"

# Python packages
check "tree-sitter"           "python3 -c 'import tree_sitter'"
check "tree-sitter-php"       "python3 -c 'import tree_sitter_php'"
check "semgrep"               "semgrep --version"
check "networkx"              "python3 -c 'import networkx'"
check "rich"                  "python3 -c 'import rich'"
check "tabulate"              "python3 -c 'import tabulate'"
check "pyyaml"                "python3 -c 'import yaml'"
check "jinja2"                "python3 -c 'import jinja2'"

# System tools
check "php-cli"               "php --version"
check "ripgrep"               "rg --version"
check "jq"                    "jq --version"
check "graphviz/dot"          "dot -V"
check "cloc"                  "cloc --version"
check "composer"              "composer --version"

# Security tools
check "semgrep rules test"    "echo '<?php eval(\$x);' > /tmp/_test.php && semgrep --config auto /tmp/_test.php && rm /tmp/_test.php"
check "joern"                 "joern --version" "false"  # optional - complex install
check "phpcs"                 "phpcs --version" "false"
check "psalm"                 "psalm --version" "false"

# Functional test: tree-sitter can parse PHP
check "tree-sitter PHP parse" "python3 -c \"
import tree_sitter_php as tsphp
import tree_sitter as ts
parser = ts.Parser(ts.Language(tsphp.language()))
tree = parser.parse(b'<?php echo 1;')
assert tree.root_node.child_count > 0
\""

echo ""
echo "=== Results ==="
echo "PASS: $PASS | FAIL: $FAIL | WARN: $WARN"
echo ""

if [ "$FAIL" -gt 0 ]; then
    echo "BLOCKED: $FAIL required tools missing. Fix before proceeding."
    exit 1
else
    echo "ALL REQUIRED TOOLS VERIFIED. Proceed to analysis."
    exit 0
fi
```

### Git commit:
```bash
git add tools/install.sh tools/verify_tools.sh requirements.txt
git commit -m "feat: add tool installation and verification pipeline"
```

Then RUN:
```bash
bash tools/install.sh
source .venv/bin/activate
bash tools/verify_tools.sh
```

**HARD CHECK — DO NOT PROCEED UNTIL:**
- [ ] `tools/verify_tools.sh` exits with code 0
- [ ] tree-sitter can parse PHP (the functional test passes)
- [ ] semgrep is installed and can scan a PHP file
- [ ] ripgrep is available

```bash
git commit --allow-empty -m "checkpoint: all tools verified and operational"
```

---

## PHASE 3: SOURCE-SINK MAPPING (AST-BASED)

### 3.1 WordPress Source & Sink Definitions

Create `tools/wp_sources_sinks.yaml`:

```yaml
# WordPress PHP Sources — where user/attacker input enters
sources:
  superglobals:
    - "$_GET"
    - "$_POST"
    - "$_REQUEST"
    - "$_COOKIE"
    - "$_SERVER"
    - "$_FILES"
    - "$_ENV"
    
  wordpress_input_functions:
    - "get_query_var"
    - "get_search_query"
    - "wp_unslash"
    - "wp_kses_post"          # If used as source, not sanitizer
    - "sanitize_text_field"    # Returns sanitized input — still a source
    - "sanitize_email"
    - "sanitize_file_name"
    - "sanitize_title"
    - "absint"
    - "intval"
    - "stripslashes_deep"
    - "rest_get_parameters"
    - "WP_REST_Request::get_param"
    - "WP_REST_Request::get_params"
    - "WP_REST_Request::get_json_params"
    - "WP_REST_Request::get_body"
    - "WP_REST_Request::get_body_params"
    - "WP_REST_Request::get_url_params"
    - "WP_REST_Request::get_query_params"
    - "WP_REST_Request::get_file_params"
    - "WP_REST_Request::get_header"
    - "WP_REST_Request::get_headers"
    
  php_input:
    - "file_get_contents('php://input')"
    - "php_sapi_name"
    - "getenv"
    - "apache_request_headers"
    - "getallheaders"
    
  database_reads:
    - "$wpdb->get_var"
    - "$wpdb->get_row"
    - "$wpdb->get_col"
    - "$wpdb->get_results"
    - "get_option"
    - "get_user_meta"
    - "get_post_meta"
    - "get_term_meta"
    - "get_transient"
    - "get_site_transient"
    - "get_comment_meta"

# WordPress PHP Sinks — where data causes damage
sinks:
  sql_injection:
    - "$wpdb->query"
    - "$wpdb->get_var"
    - "$wpdb->get_row"
    - "$wpdb->get_col"
    - "$wpdb->get_results"
    
  code_execution:
    - "eval"
    - "assert"
    - "preg_replace"           # with /e modifier
    - "create_function"
    - "call_user_func"
    - "call_user_func_array"
    - "array_map"              # when callback is user-controlled
    - "array_filter"
    - "usort"
    - "uasort"
    - "uksort"
    
  command_injection:
    - "exec"
    - "system"
    - "passthru"
    - "shell_exec"
    - "popen"
    - "proc_open"
    - "pcntl_exec"
    - "backtick_operator"      # `$cmd`
    
  file_operations:
    - "file_get_contents"
    - "file_put_contents"
    - "fopen"
    - "fwrite"
    - "readfile"
    - "file"
    - "include"
    - "include_once"
    - "require"
    - "require_once"
    - "move_uploaded_file"
    - "copy"
    - "rename"
    - "unlink"
    - "mkdir"
    - "rmdir"
    
  xss_output:
    - "echo"
    - "print"
    - "printf"
    - "vprintf"
    - "wp_die"
    - "wp_send_json"
    - "wp_send_json_success"
    - "wp_send_json_error"
    
  deserialization:
    - "unserialize"
    - "maybe_unserialize"
    
  ssrf:
    - "wp_remote_get"
    - "wp_remote_post"
    - "wp_remote_request"
    - "wp_safe_remote_get"
    - "wp_safe_remote_post"
    - "wp_safe_remote_request"
    - "curl_exec"
    - "curl_multi_exec"
    
  redirect:
    - "wp_redirect"
    - "wp_safe_redirect"
    - "header"                 # header('Location: ...')
    
  variable_injection:
    - "extract"
    - "parse_str"              # parse_str without second arg
    - "mb_parse_str"
    - "import_request_variables"

# Sanitizers — functions that break taint chains
sanitizers:
  sql:
    - "$wpdb->prepare"
    - "absint"
    - "intval"
    - "(int)"
    - "(float)"
    
  xss:
    - "esc_html"
    - "esc_attr"
    - "esc_url"
    - "esc_js"
    - "esc_textarea"
    - "wp_kses"
    - "wp_kses_post"
    - "wp_kses_data"
    - "htmlspecialchars"
    - "htmlentities"
    - "strip_tags"
    
  file_path:
    - "realpath"
    - "wp_normalize_path"
    - "validate_file"
    
  command:
    - "escapeshellarg"
    - "escapeshellcmd"
    
  auth_checks:
    - "current_user_can"
    - "wp_verify_nonce"
    - "check_admin_referer"
    - "check_ajax_referer"
    - "is_user_logged_in"
    - "wp_check_password"
```

### 3.2 Build the AST-based source-sink mapper (`tools/source_sink_mapper.py`)

Write a Python script using tree-sitter that:

1. **Parses every PHP file** in a plugin directory into an AST
2. **Walks the AST** to find:
   - All **source nodes**: variable accesses matching superglobals, function calls matching source functions
   - All **sink nodes**: function calls matching sink functions
   - All **sanitizer nodes**: function calls matching sanitizer functions
3. **Extracts context** for each: file path, line number, enclosing function/method, the full expression
4. **Maps function/method boundaries**: which function contains which sources/sinks
5. **Identifies direct source→sink flows** within the same function where no sanitizer appears between them
6. **Outputs structured JSON** per plugin:

```json
{
  "plugin": "wordpress-seo",
  "scan_time": "2026-06-14T12:00:00Z",
  "summary": {
    "total_sources": 234,
    "total_sinks": 567,
    "total_sanitizers": 890,
    "direct_flows": 12,
    "functions_with_sources": 89,
    "functions_with_sinks": 145,
    "unauthenticated_entry_points": 5
  },
  "sources": [
    {
      "type": "superglobal",
      "name": "$_POST['action']",
      "file": "includes/ajax.php",
      "line": 45,
      "function": "handle_form_submit",
      "class": "WPSEO_Ajax",
      "expression": "$_POST['action']"
    }
  ],
  "sinks": [
    {
      "type": "sql_injection",
      "name": "$wpdb->query",
      "file": "includes/database.php",
      "line": 123,
      "function": "save_settings",
      "class": "WPSEO_Options",
      "expression": "$wpdb->query(\"UPDATE ...\")",
      "has_prepare": false
    }
  ],
  "flows": [
    {
      "source": {"name": "$_POST['id']", "file": "ajax.php", "line": 45},
      "sink": {"name": "$wpdb->query", "file": "ajax.php", "line": 52},
      "sanitizers_between": [],
      "severity": "critical",
      "flow_type": "sql_injection",
      "confidence": "high"
    }
  ]
}
```

Key implementation details for the AST walker:

```python
# Pseudocode for the core logic:

# 1. Parse file
parser = ts.Parser(ts.Language(tsphp.language()))
tree = parser.parse(source_bytes)

# 2. Walk nodes recursively
def visit(node, scope_stack):
    # Track function/method scope
    if node.type in ('function_definition', 'method_declaration'):
        scope_stack.append(extract_function_info(node))
    
    # Check for sources
    if is_source(node):
        record_source(node, scope_stack)
    
    # Check for sinks
    if is_sink(node):
        record_sink(node, scope_stack)
        
    # Check for sanitizers
    if is_sanitizer(node):
        record_sanitizer(node, scope_stack)
    
    for child in node.children:
        visit(child, scope_stack)
    
    if node.type in ('function_definition', 'method_declaration'):
        scope_stack.pop()

# 3. For each function, check if source reaches sink without sanitizer
# Use the line numbers and expression analysis within the function body
```

**Critical AST node types to handle in tree-sitter-php:**
- `variable_name` — for `$_GET`, `$_POST`, etc.
- `subscript_expression` — for `$_GET['key']`
- `function_call_expression` — for function-based sources/sinks
- `member_call_expression` — for `$wpdb->query()`
- `scoped_call_expression` — for `ClassName::method()`
- `function_definition` — scope boundaries
- `method_declaration` — scope boundaries
- `class_declaration` — class context
- `assignment_expression` — taint propagation (`$x = $_GET['y']`)
- `argument` — what's being passed to sinks
- `binary_expression` — string concatenation propagating taint
- `encapsed_string` — `"string with $var"` interpolation

### 3.3 Build the intraprocedural taint tracer (`tools/taint_tracer.py`)

This is the CRITICAL tool. It does data flow analysis within functions:

1. **For each function/method body**, build a simplified data flow graph:
   - Track variable assignments: `$x = $_GET['y']` → `$x` is tainted
   - Track taint propagation: `$z = $x . "foo"` → `$z` is tainted
   - Track sanitization: `$safe = esc_html($x)` → `$safe` is NOT tainted
   - Track array access: `$a['key'] = $_POST['val']` → `$a['key']` is tainted
   - Track function returns: if a function returns tainted data, callers get taint

2. **Walk the function line by line** (in AST order):
   - Maintain a set of `tainted_variables`
   - When a source is found, add the assigned variable to `tainted_variables`
   - When a sanitizer is found, remove the output variable from `tainted_variables`
   - When a sink is found, check if any of its arguments are in `tainted_variables`
   - If yes → record a TAINT FLOW with full chain

3. **Output taint flows** with the complete chain:
```json
{
  "flow_id": "woocommerce-sqli-001",
  "severity": "critical",
  "confidence": "high",
  "plugin": "woocommerce",
  "vulnerability_class": "sql_injection",
  "source": {
    "expression": "$_POST['order_id']",
    "file": "includes/class-wc-ajax.php",
    "line": 234
  },
  "chain": [
    {"step": 1, "line": 234, "expression": "$order_id = $_POST['order_id']", "action": "taint_source"},
    {"step": 2, "line": 238, "expression": "$query = \"SELECT * FROM orders WHERE id = $order_id\"", "action": "taint_propagation"},
    {"step": 3, "line": 239, "expression": "$wpdb->query($query)", "action": "sink_reached"}
  ],
  "sink": {
    "expression": "$wpdb->query($query)",
    "file": "includes/class-wc-ajax.php",
    "line": 239
  },
  "missing_sanitizer": "$wpdb->prepare() not used",
  "auth_required": false,
  "nonce_verified": false
}
```

### Git commit:
```bash
git add tools/wp_sources_sinks.yaml tools/source_sink_mapper.py tools/taint_tracer.py
git commit -m "feat: add AST-based source-sink mapper and taint tracer"
```

Then RUN on all plugins:
```bash
source .venv/bin/activate
python3 tools/source_sink_mapper.py --input plugins/src/ --output analysis/phase2_sources_sinks/
python3 tools/taint_tracer.py --input plugins/src/ --sources-sinks tools/wp_sources_sinks.yaml --output analysis/phase3_taint_flows/
```

**HARD CHECK:**
- [ ] `analysis/phase2_sources_sinks/` contains one JSON file per plugin
- [ ] `analysis/phase3_taint_flows/` contains taint flow results
- [ ] `python3 -c "import json; json.load(open('analysis/phase2_sources_sinks/woocommerce.json'))"` succeeds
- [ ] At least 10 plugins have non-zero taint flows identified

```bash
git add analysis/phase2_sources_sinks/ analysis/phase3_taint_flows/
git commit -m "data: source-sink mapping and taint analysis results for all plugins"
```

---

## PHASE 4: SEMGREP CUSTOM RULES

### 4.1 Write WordPress-specific Semgrep rules

Create rules in `tools/wp_audit_rules/`. Each rule file targets a specific vulnerability class. Here are the critical ones to implement:

#### `sqli.yaml` — SQL Injection
```yaml
rules:
  - id: wp-sqli-query-no-prepare
    message: "$wpdb->query() called without $wpdb->prepare() — potential SQL injection"
    severity: ERROR
    languages: [php]
    patterns:
      - pattern: $wpdb->query($ARG)
      - pattern-not: $wpdb->query($wpdb->prepare(...))
    metadata:
      category: security
      subcategory: sql-injection
      
  - id: wp-sqli-get-var-no-prepare
    message: "$wpdb->get_var() without prepare()"
    severity: ERROR
    languages: [php]
    patterns:
      - pattern: $wpdb->get_var($ARG)
      - pattern-not: $wpdb->get_var($wpdb->prepare(...))
      
  - id: wp-sqli-get-results-no-prepare
    message: "$wpdb->get_results() without prepare()"
    severity: ERROR
    languages: [php]
    patterns:
      - pattern: $wpdb->get_results($ARG)
      - pattern-not: $wpdb->get_results($wpdb->prepare(...))

  - id: wp-sqli-direct-interpolation
    message: "User input directly interpolated into SQL query string"
    severity: ERROR
    languages: [php]
    patterns:
      - pattern: |
          $X = $_GET[$KEY];
          ...
          $wpdb->query("..." . $X . "...");
      - pattern: |
          $X = $_POST[$KEY];
          ...
          $wpdb->query("..." . $X . "...");
```

#### `xss.yaml` — Cross-Site Scripting
```yaml
rules:
  - id: wp-xss-echo-get
    message: "Unescaped echo of $_GET — reflected XSS"
    severity: ERROR
    languages: [php]
    patterns:
      - pattern: echo $_GET[$KEY];
      - pattern: echo $_GET;
      
  - id: wp-xss-echo-post
    message: "Unescaped echo of $_POST"
    severity: ERROR
    languages: [php]
    pattern: echo $_POST[$KEY];
    
  - id: wp-xss-echo-request
    message: "Unescaped echo of $_REQUEST"
    severity: ERROR
    languages: [php]
    pattern: echo $_REQUEST[$KEY];
    
  - id: wp-xss-echo-server
    message: "Unescaped echo of $_SERVER"
    severity: WARNING
    languages: [php]
    patterns:
      - pattern: echo $_SERVER[$KEY];
      - pattern-not: echo esc_html($_SERVER[$KEY]);
      - pattern-not: echo esc_attr($_SERVER[$KEY]);
```

#### `rce.yaml` — Remote Code Execution
```yaml
rules:
  - id: wp-rce-eval
    message: "eval() detected — potential remote code execution"
    severity: ERROR
    languages: [php]
    pattern: eval($ARG);
    
  - id: wp-rce-eval-post
    message: "CRITICAL: eval() with POST data — direct RCE"
    severity: ERROR
    languages: [php]
    pattern: |
      $X = $_POST[$KEY];
      ...
      eval($X);
      
  - id: wp-rce-assert
    message: "assert() with variable — potential RCE in PHP < 8"
    severity: WARNING
    languages: [php]
    pattern: assert($ARG);
    
  - id: wp-rce-create-function
    message: "create_function() is deprecated and dangerous"
    severity: ERROR
    languages: [php]
    pattern: create_function(...);
```

#### `auth_bypass.yaml` — Authentication/Authorization Issues
```yaml
rules:
  - id: wp-auth-nopriv-no-nonce
    message: "wp_ajax_nopriv handler without nonce verification"
    severity: ERROR
    languages: [php]
    patterns:
      - pattern: |
          add_action('wp_ajax_nopriv_$ACTION', ...);
      - pattern-inside: |
          function $FUNC(...) {
            ...
          }
      - pattern-not-inside: |
          function $FUNC(...) {
            ...
            check_ajax_referer(...);
            ...
          }
      - pattern-not-inside: |
          function $FUNC(...) {
            ...
            wp_verify_nonce(...);
            ...
          }
          
  - id: wp-auth-rest-return-true
    message: "REST route with __return_true permission — fully public endpoint"
    severity: WARNING
    languages: [php]
    pattern: |
      register_rest_route(..., ..., array(..., 'permission_callback' => '__return_true', ...));
      
  - id: wp-auth-missing-capability-check
    message: "Admin AJAX handler without current_user_can() check"
    severity: WARNING
    languages: [php]
    patterns:
      - pattern: |
          add_action('wp_ajax_$ACTION', array($OBJ, '$METHOD'));
```

#### `object_injection.yaml` — Deserialization
```yaml
rules:
  - id: wp-deserialize-raw
    message: "Raw unserialize() without allowed_classes — object injection risk"
    severity: ERROR
    languages: [php]
    patterns:
      - pattern: unserialize($ARG)
      - pattern-not: unserialize($ARG, ['allowed_classes' => false])
      - pattern-not: unserialize($ARG, array('allowed_classes' => false))

  - id: wp-deserialize-user-input
    message: "CRITICAL: unserialize on user-controlled input"
    severity: ERROR
    languages: [php]
    pattern: |
      $X = $_POST[$KEY];
      ...
      unserialize($X);
```

#### `ssrf.yaml` — Server-Side Request Forgery
```yaml
rules:
  - id: wp-ssrf-remote-get
    message: "wp_remote_get with user-controlled URL — SSRF risk"
    severity: ERROR
    languages: [php]
    patterns:
      - pattern: |
          $URL = $_GET[$KEY];
          ...
          wp_remote_get($URL);
      - pattern: |
          $URL = $_POST[$KEY];
          ...
          wp_remote_get($URL);
```

#### `open_redirect.yaml`
```yaml
rules:
  - id: wp-redirect-user-input
    message: "wp_redirect() with user input — open redirect"
    severity: ERROR
    languages: [php]
    patterns:
      - pattern: wp_redirect($_GET[$KEY]);
      - pattern: wp_redirect($_POST[$KEY]);
      - pattern: wp_redirect($_REQUEST[$KEY]);
      
  - id: wp-redirect-unsafe
    message: "wp_redirect() used instead of wp_safe_redirect() with variable"
    severity: WARNING
    languages: [php]
    patterns:
      - pattern: wp_redirect($URL);
      - pattern-not: wp_safe_redirect($URL);
```

#### `csrf.yaml`
```yaml
rules:
  - id: wp-csrf-form-no-nonce
    message: "Form action handler without nonce verification"
    severity: ERROR
    languages: [php]
    patterns:
      - pattern: |
          if (isset($_POST[$KEY])) {
            ...
          }
      - pattern-not-inside: |
          ...
          wp_verify_nonce(...);
          ...
      - pattern-not-inside: |
          ...
          check_admin_referer(...);
          ...
```

#### `path_traversal.yaml`
```yaml
rules:
  - id: wp-path-traversal-include
    message: "Dynamic file inclusion with user input — LFI/RFI"
    severity: ERROR
    languages: [php]
    patterns:
      - pattern: include($_GET[$KEY]);
      - pattern: include($_POST[$KEY]);
      - pattern: require($_GET[$KEY]);
      - pattern: require_once($_REQUEST[$KEY]);
      
  - id: wp-path-traversal-file-read
    message: "file_get_contents with user-controlled path"
    severity: ERROR
    languages: [php]
    pattern: |
      $PATH = $_GET[$KEY];
      ...
      file_get_contents($PATH);
```

#### `crypto.yaml`
```yaml
rules:
  - id: wp-crypto-md5-password
    message: "MD5 used for password hashing — use wp_hash_password()"
    severity: ERROR
    languages: [php]
    pattern: md5($PASSWORD);
    
  - id: wp-crypto-weak-random
    message: "rand()/mt_rand() used for security — use wp_rand() or random_int()"
    severity: WARNING
    languages: [php]
    patterns:
      - pattern: rand(...)
      - pattern: mt_rand(...)
```

### 4.2 Run Semgrep

```bash
# Run all custom rules against all plugins
semgrep --config tools/wp_audit_rules/ \
  plugins/src/ \
  --json \
  --output analysis/phase4_semgrep/results.json \
  --exclude='*/vendor/*' \
  --exclude='*/node_modules/*' \
  --exclude='*/tests/*' \
  --exclude='*/test/*' \
  --timeout 300

# Also run Semgrep's built-in PHP security rules
semgrep --config "p/php-security-audit" \
  plugins/src/ \
  --json \
  --output analysis/phase4_semgrep/builtin_results.json \
  --exclude='*/vendor/*' \
  --exclude='*/node_modules/*' \
  --exclude='*/tests/*' \
  --timeout 300
```

### Git commit:
```bash
git add tools/wp_audit_rules/
git commit -m "feat: add custom WordPress Semgrep security rules"
```

After running:
```bash
git add analysis/phase4_semgrep/
git commit -m "data: semgrep scan results — custom + builtin rules"
```

**HARD CHECK:**
- [ ] `analysis/phase4_semgrep/results.json` is valid JSON
- [ ] `jq '.results | length' analysis/phase4_semgrep/results.json` returns a number > 0
- [ ] At least the `sqli`, `xss`, `rce`, and `auth_bypass` rules produced findings

---

## PHASE 5: ATTACK SURFACE ENUMERATION

Before deep analysis, map the full attack surface. Create `scripts/enumerate_surface.sh`:

```bash
#!/usr/bin/env bash
# Enumerate the complete attack surface per plugin

SRC="plugins/src"
OUT="analysis/phase1_surface"
mkdir -p "$OUT"

for plugin_dir in "$SRC"/*/; do
  slug=$(basename "$plugin_dir")
  echo "=== Mapping attack surface: $slug ==="
  
  {
    echo "# Attack Surface: $slug"
    echo "## Date: $(date -Iseconds)"
    echo ""
    
    echo "## 1. Entry Points"
    echo ""
    
    echo "### WordPress AJAX Handlers (authenticated)"
    rg "add_action\s*\(\s*['\"]wp_ajax_" "$plugin_dir" --include='*.php' -n --no-heading || echo "None found"
    echo ""
    
    echo "### WordPress AJAX Handlers (UNAUTHENTICATED)"
    rg "add_action\s*\(\s*['\"]wp_ajax_nopriv_" "$plugin_dir" --include='*.php' -n --no-heading || echo "None found"
    echo ""
    
    echo "### REST API Routes"
    rg "register_rest_route" "$plugin_dir" --include='*.php' -n --no-heading || echo "None found"
    echo ""
    
    echo "### Admin Pages / Menu Items"
    rg "add_menu_page\|add_submenu_page\|add_options_page\|add_management_page" "$plugin_dir" --include='*.php' -n --no-heading || echo "None found"
    echo ""
    
    echo "### Shortcodes"
    rg "add_shortcode" "$plugin_dir" --include='*.php' -n --no-heading || echo "None found"
    echo ""
    
    echo "### Cron Jobs"
    rg "wp_schedule_event\|wp_schedule_single_event" "$plugin_dir" --include='*.php' -n --no-heading || echo "None found"
    echo ""
    
    echo "### File Upload Handlers"
    rg "wp_handle_upload\|move_uploaded_file\|wp_upload_dir" "$plugin_dir" --include='*.php' -n --no-heading || echo "None found"
    echo ""
    
    echo "## 2. Authentication & Authorization"
    echo ""
    
    echo "### Capability Checks"
    rg "current_user_can" "$plugin_dir" --include='*.php' -c --no-heading 2>/dev/null || echo "0"
    echo ""
    
    echo "### Nonce Verifications"
    rg "wp_verify_nonce\|check_ajax_referer\|check_admin_referer" "$plugin_dir" --include='*.php' -c --no-heading 2>/dev/null || echo "0"
    echo ""
    
    echo "## 3. Dangerous Operations"
    echo ""
    
    echo "### Direct Database Queries"
    rg '\$wpdb->(query|get_var|get_row|get_col|get_results)' "$plugin_dir" --include='*.php' -c --no-heading 2>/dev/null || echo "0"
    echo ""
    
    echo "### Database Queries Using prepare()"
    rg '\$wpdb->prepare' "$plugin_dir" --include='*.php' -c --no-heading 2>/dev/null || echo "0"
    echo ""
    
    echo "### External HTTP Requests"
    rg "wp_remote_get\|wp_remote_post\|wp_safe_remote\|curl_exec\|file_get_contents.*http" "$plugin_dir" --include='*.php' -n --no-heading || echo "None found"
    echo ""
    
    echo "### File System Operations"
    rg "file_put_contents\|fwrite\|move_uploaded_file\|unlink\|rmdir\|mkdir" "$plugin_dir" --include='*.php' -n --no-heading | head -30 || echo "None found"
    echo ""
    
  } > "$OUT/${slug}_surface.md"
  
  echo "  -> $OUT/${slug}_surface.md"
done
```

### Git commit:
```bash
git add scripts/enumerate_surface.sh
git commit -m "feat: add attack surface enumeration script"
```

Run it:
```bash
bash scripts/enumerate_surface.sh
git add analysis/phase1_surface/
git commit -m "data: attack surface enumeration for all plugins"
```

---

## PHASE 6: EXPERT MANUAL ANALYSIS

This is where you become the 20-year security veteran. You have all the data from Phases 1-5. Now synthesize.

### 6.1 Triage methodology

For EACH plugin, in priority order (highest-signal first based on Phase 3-4 results), perform this analysis:

#### Step A — Understand the plugin's architecture
- Read the main plugin PHP file header
- Identify the plugin's hook registration (`add_action`, `add_filter`)
- Map the class hierarchy and autoloading
- Understand what data the plugin handles and where it stores it

#### Step B — Map unauthenticated attack surface
- List every `wp_ajax_nopriv_` handler
- List every REST route with `__return_true` permission callback
- List every shortcode (shortcodes run for any visitor viewing a page)
- Check if any admin-ajax handlers are callable without a valid nonce
- Check for any custom rewrite rules or query vars

#### Step C — Trace data flows from each unauthenticated entry point
For EACH unauthenticated entry point:
1. What input does it accept? (GET/POST params, JSON body, file uploads)
2. What validation/sanitization is applied?
3. Where does the data go? (database, file system, output, external request)
4. Is there a nonce check? Capability check?
5. Can the flow reach a dangerous sink?

#### Step D — Check authenticated surfaces for privilege escalation
- Can a Subscriber-level user access functionality intended for Admins?
- Are capability checks granular enough? (`edit_posts` vs `manage_options`)
- Can a user modify another user's data?

#### Step E — Check for logic bugs
- Race conditions in payment/order processing
- TOCTOU (time-of-check-time-of-use) in file operations
- Integer overflow/underflow in quantity/price calculations
- Business logic bypass (discount stacking, coupon reuse, trial abuse)

#### Step F — Check for information disclosure
- Debug/log files accessible via web
- Stack traces in error responses
- Version information disclosure
- Internal paths leaked in responses
- Database table/column names in error messages

### 6.2 Priority targets for deep analysis

Based on the preliminary scan, these plugins deserve the deepest analysis:

| Priority | Plugin | Reason |
|----------|--------|--------|
| P0 | **WooCommerce** | Handles money, huge codebase, many nopriv endpoints, raw SQL |
| P0 | **Elementor** | 10M+ installs, page builder = rich input surface |
| P0 | **Contact Form 7** | Universal form handler, #3 most popular |
| P0 | **Jetpack** | Massive surface (614 REST routes), VaultPress eval() |
| P0 | **Wordfence** | Security plugin vulns are ironic + high-impact |
| P1 | **WPForms Lite** | Form processing = rich input handling |
| P1 | **Code Snippets** | **Runs arbitrary PHP by design** — auth bypass = instant RCE |
| P1 | **W3 Total Cache** | eval() in cache grabber, NuSOAP eval chains |
| P1 | **LiteSpeed Cache** | Large install base, direct SQL, cache poisoning potential |
| P1 | **WooCommerce Payments** | Payment processing + 5 nopriv endpoints |
| P1 | **Rank Math SEO** | Complex REST API, high installs |
| P2 | **Fluent Forms** | Payment processing + 6 nopriv endpoints |
| P2 | **Broken Link Checker** | Fetches arbitrary URLs = SSRF surface |
| P2 | **Essential Addons for Elementor** | History of CVEs, widget rendering |
| P2 | **All in One SEO** | 3 nopriv endpoints including `aioseo_connect_process` |

### 6.3 Write findings

For EACH finding, create a structured report in `analysis/phase5_manual/{plugin}/{finding_id}.md`:

```markdown
# Finding: [PLUGIN-CLASS-NNN]

## Metadata
- **Plugin:** [name] v[version]
- **Severity:** Critical / High / Medium / Low / Informational
- **CVSS 3.1:** [score] ([vector string])
- **CWE:** CWE-[number] — [name]
- **Confidence:** Confirmed / High / Medium / Low
- **Auth Required:** None / Subscriber / Editor / Admin
- **User Interaction:** None / Required

## Summary
[One paragraph describing the vulnerability]

## Affected Code
**File:** `[path]`
**Lines:** [start]-[end]
**Function/Method:** `[class]::[method]` or `[function_name]`

```php
// Vulnerable code with annotations
```

## Data Flow
```
SOURCE: $_POST['param'] (line X)
  → $variable = $_POST['param'] (line X)
  → $query = "SELECT ... WHERE id = $variable" (line Y)  [NO SANITIZER]
  → $wpdb->query($query) (line Z)
SINK: SQL execution without prepare()
```

## Proof of Concept Sketch
```
POST /wp-admin/admin-ajax.php HTTP/1.1
Content-Type: application/x-www-form-urlencoded

action=vulnerable_action&param=' OR 1=1--
```

## Impact
[What can an attacker do with this vulnerability?]

## Remediation
```php
// Fixed code
$safe = $wpdb->prepare("SELECT ... WHERE id = %d", intval($_POST['param']));
$wpdb->query($safe);
```

## References
- [Links to similar CVEs, WordPress security best practices]
```

### Git commit after each plugin's manual analysis:
```bash
git add analysis/phase5_manual/{plugin}/
git commit -m "audit: manual security review of {plugin}"
```

---

## PHASE 7: EXPLOITABILITY ASSESSMENT

For each Critical/High finding from Phase 6:

1. **Determine reachability:** Can an unauthenticated attacker actually trigger this code path? Trace from the HTTP request all the way to the vulnerable code.

2. **Check for mitigating factors:**
   - WordPress core protections (nonce system, capability system)
   - PHP configuration (disable_functions, open_basedir)
   - Server configuration (ModSecurity, WAF rules)
   - Plugin's own validation that might block exploitation

3. **Assess real-world impact:**
   - How many sites use this plugin? (active install count)
   - Is the vulnerable feature enabled by default?
   - What's the worst case outcome? (RCE, data breach, defacement, privilege escalation)

4. **Rate severity** using CVSS 3.1 calculator

5. **Write up in `analysis/phase6_exploitability/`**

---

## PHASE 8: FINAL REPORTS

### 8.1 Generate per-plugin reports

For each plugin, create `reports/per_plugin/{slug}.md` containing:
- Attack surface summary
- Source/sink counts
- Taint flows identified
- Semgrep findings
- Manual audit findings
- Overall risk rating

### 8.2 Generate executive summary

`reports/executive_summary.md`:
- Total plugins analyzed
- Total findings by severity
- Top 10 most critical findings
- Plugins with highest risk scores
- Recommendations

### 8.3 Generate critical findings report

`reports/critical_findings.md`:
- All Critical/High findings
- PoC sketches for each
- Responsible disclosure timeline recommendation

### Git commit:
```bash
git add reports/
git commit -m "docs: final security research reports"
```

---

## VERIFICATION CHECKLIST — FINAL STATE

Before declaring the research environment complete, verify ALL of the following:

```bash
# 1. Repo health
git log --oneline | wc -l  # Should show 8+ commits
git status                  # Should be clean

# 2. Plugin data
bash tools/verify_downloads.sh  # Must exit 0

# 3. Tools
bash tools/verify_tools.sh      # Must exit 0

# 4. Analysis data exists
test -d analysis/phase1_surface && echo "PASS: surface" || echo "FAIL"
test -d analysis/phase2_sources_sinks && echo "PASS: sources/sinks" || echo "FAIL"
test -d analysis/phase3_taint_flows && echo "PASS: taint" || echo "FAIL"
test -f analysis/phase4_semgrep/results.json && echo "PASS: semgrep" || echo "FAIL"
test -d analysis/phase5_manual && echo "PASS: manual" || echo "FAIL"

# 5. Reports exist
test -f reports/executive_summary.md && echo "PASS: exec summary" || echo "FAIL"
test -f reports/critical_findings.md && echo "PASS: critical findings" || echo "FAIL"
test -f reports/methodology.md && echo "PASS: methodology" || echo "FAIL"

# 6. Custom tools work
python3 tools/source_sink_mapper.py --help   # Should show usage
python3 tools/taint_tracer.py --help         # Should show usage
semgrep --config tools/wp_audit_rules/ --test # Rules should be valid

echo ""
echo "=== RESEARCH ENVIRONMENT STATUS ==="
echo "If all checks passed: READY FOR DEEP ANALYSIS"
echo "If any failed: Fix before proceeding"
```

---

## BEHAVIORAL INSTRUCTIONS FOR THE AI AGENT

1. **Never skip a HARD CHECK.** If a verification step fails, stop and fix it before proceeding.
2. **Commit frequently.** Every phase boundary gets a commit. Every major sub-task gets a commit.
3. **Be paranoid about false negatives.** A grep/semgrep finding is a LEAD, not a vulnerability. Always trace the full data flow manually.
4. **Think like an attacker.** For each entry point ask: "What's the worst thing I can do with this?"
5. **Check auth before everything else.** The most dangerous bugs are the ones reachable without authentication.
6. **Don't trust comments.** `// phpcs:ignore` and `// CSRF ok` in code are developer assertions, not proof. Verify independently.
7. **Look for what's missing,** not just what's present. Missing nonce checks, missing capability checks, missing output escaping — absence of defense is the vulnerability.
8. **Cross-reference with CVE databases.** After finding something, check if it's already known. If it's NOT known, it's more valuable.
9. **Document your uncertainty.** If you're not sure if something is exploitable, say so. Rate confidence honestly.
10. **Treat every plugin as potentially hostile.** Even security plugins can have vulnerabilities.

---

# ADDENDUM: Layered Analysis Strategy for Near-Complete Source-Sink Coverage

**Why this matters:** No single static analysis tool achieves 100% source-sink accuracy on PHP. This is not a tooling gap — it's a provable theoretical limit (Rice's theorem). PHP's dynamic features (variable variables, magic methods, `call_user_func`, WordPress's hook system) make complete static analysis impossible. The strategy below layers multiple approaches to maximize real coverage.

---

## THE 12 PATTERNS THAT DEFEAT STATIC ANALYSIS

Save this as `docs/anti_patterns.md` in the repo. These are real patterns found in the top 100 WordPress plugins. Your analysis pipeline must account for each one.

| # | Pattern | Why static analysis fails | How to catch it |
|---|---------|--------------------------|-----------------|
| 1 | `$$key` (variable variables) | Target variable unknown at parse time | Flag all `$$` usage as HIGH risk; treat as potential overwrite of any variable in scope |
| 2 | `$obj->$method()` (dynamic dispatch) | Method name is a runtime value | Flag all dynamic dispatch; enumerate possible methods from class hierarchy |
| 3 | `apply_filters()` / `do_action()` (WP hooks) | Callback chain is a runtime string registry | Build a hook registry by scanning all `add_filter`/`add_action` calls across ALL plugins, then resolve statically where possible |
| 4 | `call_user_func($var)` | Callback resolved at runtime | Flag as HIGH risk; check if `$var` can be user-influenced |
| 5 | `extract($array)` | Creates unknown variables from array keys | Flag ALL extract() as HIGH risk; treat as mass variable injection |
| 6 | Cross-request taint (DB stored → DB read) | Source and sink in different HTTP requests | Treat ALL `get_option`, `get_post_meta`, `get_transient`, `$wpdb->get_*` as TAINTED BY DEFAULT unless proven safe |
| 7 | Conditional sanitization (path-sensitive) | Need CFG + path constraints to determine reachability | Use Joern/CodeQL for path-sensitive queries; manually verify critical paths |
| 8 | Array element taint (`$parts[] = ...; implode()`) | Per-element tracking needed | Flag `implode()` where any element of the array was tainted |
| 9 | Context-specific sanitizers (esc_html vs prepare) | Sanitizer-sink mismatch | Encode sanitizer→sink mappings explicitly: esc_html covers XSS only, prepare covers SQL only |
| 10 | Magic methods (`__get`/`__set`/`__call`) | Implicit data flow invisible in AST | Resolve magic methods to their implementations; treat magic-enabled classes as data flow bridges |
| 11 | Cross-request via transients/cache | Same as #6 but via cache layer | Same treatment: `get_transient()` = tainted |
| 12 | Dynamic class instantiation (`new $var()`) | Class determined by input | Flag as HIGH risk; check if `$var` is user-controllable |

---

## THE FIVE-LAYER ANALYSIS PIPELINE

No single layer is sufficient. Run all five. Each layer catches what the previous ones miss.

### Layer 1: Pattern Matching (tree-sitter + ripgrep + Semgrep)
**Speed:** Fast (minutes)  
**Coverage:** ~20% of real vulnerabilities  
**False positives:** High (~50%)  
**Purpose:** Cast the widest net. Find obvious patterns.

```
What it catches:
  ✅ Direct $_GET/$_POST → echo (reflected XSS)
  ✅ $wpdb->query() without prepare()
  ✅ eval(), system(), exec() calls
  ✅ unserialize() without allowed_classes
  ✅ wp_redirect() with user input

What it misses:
  ❌ Anything requiring data flow tracking
  ❌ WordPress hook-mediated flows
  ❌ Cross-function taint propagation
  ❌ Context-specific sanitizer correctness
```

### Layer 2: Intraprocedural Taint Analysis (custom Python tool)
**Speed:** Moderate (tens of minutes)  
**Coverage:** ~35% of real vulnerabilities  
**False positives:** Medium (~30%)  
**Purpose:** Track data flow WITHIN each function.

Implementation approach:
```python
# For each function body:
# 1. Walk AST in execution order
# 2. Maintain tainted_vars set
# 3. Track assignments: $x = SOURCE → tainted_vars.add('$x')
# 4. Track propagation: $y = $x . "foo" → tainted_vars.add('$y')
# 5. Track sanitization: $z = esc_html($x) → tainted_vars.remove('$z') for XSS sinks
#    BUT keep $z tainted for SQL sinks (context-aware!)
# 6. Check sinks: if any argument is in tainted_vars → FINDING
```

Key detail — **context-aware taint labels**:
```python
# Don't just track "tainted" / "not tainted"
# Track WHAT KIND of taint, and WHAT sanitizes it

class TaintLabel:
    XSS = "xss"          # sanitized by: esc_html, esc_attr, wp_kses
    SQL = "sql"           # sanitized by: $wpdb->prepare, absint, intval
    CMD = "cmd"           # sanitized by: escapeshellarg, escapeshellcmd
    PATH = "path"         # sanitized by: realpath, validate_file
    URL = "url"           # sanitized by: esc_url, wp_validate_redirect
    ALL = {XSS, SQL, CMD, PATH, URL}  # raw user input has ALL labels

# When a source is found:
taint['$x'] = TaintLabel.ALL  # $_GET['x'] is dangerous for everything

# When a sanitizer is found:
# esc_html($x) removes XSS taint but NOT SQL taint
taint['$safe'] = taint['$x'] - {TaintLabel.XSS}

# When a sink is found:
# $wpdb->query($var) is only dangerous if SQL taint remains
if TaintLabel.SQL in taint.get('$var', set()):
    report_finding(...)
```

```
What it catches:
  ✅ Source → variable → sink within same function
  ✅ Partial sanitization (esc_html doesn't fix SQLi)
  ✅ String concatenation taint propagation
  ✅ Multiple assignment hops: $a = $_GET['x']; $b = $a; $c = $b; echo $c;

What it misses:
  ❌ Data flows across function calls
  ❌ Object property flows ($this->data = $input; ... echo $this->data)
  ❌ WordPress hook-mediated flows
  ❌ Array element tracking
```

### Layer 3: Interprocedural Analysis via Code Property Graph (Joern)
**Speed:** Slow (hours for large codebases)  
**Coverage:** ~45% of real vulnerabilities  
**False positives:** Low-Medium (~20%)  
**Purpose:** Track data flow ACROSS functions using AST + CFG + PDG.

Joern builds a **Code Property Graph** (CPG) = AST + Control Flow Graph + Program Dependence Graph merged into a queryable graph database. This lets you write queries like:

```scala
// Joern query: find flows from $_POST to $wpdb->query without prepare()
def source = cpg.call.name(".*\\$_POST.*")
def sink = cpg.call.name("query").where(_.receiver.code(".*wpdb.*"))
def sanitizer = cpg.call.name("prepare")

sink.reachableByFlows(source)
    .filter(flow => !flow.elements.exists(_.code.contains("prepare")))
    .map(flow => (flow.source.file, flow.source.lineNumber, flow.sink.lineNumber))
```

**Critical Joern queries to write** (save in `tools/joern_queries/`):

```scala
// 1. All flows from superglobals to SQL sinks
@main def sqlInjectionFlows() = {
  val sources = cpg.identifier.name("_GET|_POST|_REQUEST|_COOKIE").l
  val sinks = cpg.call.name("query|get_var|get_row|get_results")
    .where(_.argument.order(0).code(".*wpdb.*")).l
  sinks.reachableByFlows(sources).p
}

// 2. All flows from superglobals to output sinks (XSS)
@main def xssFlows() = {
  val sources = cpg.identifier.name("_GET|_POST|_REQUEST").l
  val sinks = cpg.call.name("echo|print|printf|wp_die").l
  sinks.reachableByFlows(sources).p
}

// 3. Find all unauthenticated entry points
@main def unauthedEntryPoints() = {
  cpg.call.name("add_action")
    .where(_.argument.order(1).code(".*wp_ajax_nopriv.*"))
    .argument.order(2).l
}

// 4. Find extract() with user-controlled input
@main def dangerousExtract() = {
  val sources = cpg.identifier.name("_GET|_POST|_REQUEST").l
  val sinks = cpg.call.name("extract").l
  sinks.reachableByFlows(sources).p
}
```

```
What it catches:
  ✅ Cross-function data flows (function A passes tainted data to function B)
  ✅ Path-sensitive analysis (which branch is taken)
  ✅ Object property tracking (partial — depends on class resolution)
  ✅ Return value propagation

What it misses:
  ❌ WordPress hook system (add_action/apply_filters)
  ❌ Dynamic dispatch ($obj->$method)
  ❌ Cross-request/stored taint
  ❌ Full PHP magic method resolution
```

### Layer 4: WordPress-Aware Static Analysis (Custom)
**Speed:** Moderate  
**Coverage:** +15% on top of Layer 3  
**Purpose:** Handle WordPress-specific patterns that generic tools miss.

Build a custom analysis pass that:

#### 4a. WordPress Hook Registry Builder
```python
# Scan ALL PHP files in ALL plugins
# Build a global registry: hook_name → [callback_function, priority, accepted_args]
# Then resolve apply_filters('hook_name', $data) to the actual callback chain

hook_registry = {}

# Pass 1: Find all add_action / add_filter calls
for php_file in all_php_files:
    tree = parser.parse(php_file)
    for call in find_calls(tree, ['add_action', 'add_filter']):
        hook_name = extract_string_arg(call, 0)   # 'wp_ajax_nopriv_xxx'
        callback = extract_arg(call, 1)             # 'my_handler_function'
        priority = extract_int_arg(call, 2, default=10)
        hook_registry.setdefault(hook_name, []).append({
            'callback': callback,
            'priority': priority,
            'file': php_file,
            'line': call.start_point[0]
        })

# Pass 2: For each apply_filters / do_action call, resolve the chain
for php_file in all_php_files:
    for call in find_calls(tree, ['apply_filters', 'do_action']):
        hook_name = extract_string_arg(call, 0)
        if hook_name in hook_registry:
            callbacks = sorted(hook_registry[hook_name], key=lambda x: x['priority'])
            # NOW we know the data flows through these callbacks in order
            # Analyze each callback for sanitization or taint propagation
```

#### 4b. Database Taint Oracle
```python
# WordPress stores data via update_option, update_post_meta, set_transient, etc.
# and retrieves via get_option, get_post_meta, get_transient, etc.
# Build a map: storage_key → was_the_stored_data_user_controlled?

storage_writes = {}  # key → {tainted: bool, source_file, source_line}

# Scan for writes
for call in find_calls(all_files, ['update_option', 'update_post_meta', 'set_transient']):
    key = extract_string_arg(call, 0)  # or arg 1 for post_meta
    value_arg = extract_arg(call, -1)   # last arg is the value
    is_tainted = check_if_tainted(value_arg)  # from Layer 2 analysis
    storage_writes[key] = {'tainted': is_tainted, ...}

# When analyzing reads, check if the stored data was tainted
for call in find_calls(all_files, ['get_option', 'get_post_meta', 'get_transient']):
    key = extract_string_arg(call, 0)
    if key in storage_writes and storage_writes[key]['tainted']:
        # This read returns USER-CONTROLLED DATA from a previous request
        # Mark the return value as TAINTED
        mark_tainted(call.return_value)
```

```
What it catches (in addition to Layer 3):
  ✅ WordPress hook-mediated data flows (when hook names are static strings)
  ✅ Cross-request stored taint (when storage keys are static strings)
  ✅ WordPress-specific source/sink/sanitizer semantics

What it STILL misses:
  ❌ Dynamic hook names: do_action("process_{$type}") — hook name is variable
  ❌ Dynamic storage keys: get_option($key) — key is variable
  ❌ Plugin-to-plugin interactions via hooks
  ❌ Runtime-only patterns (variable variables, dynamic dispatch)
```

### Layer 5: Targeted Dynamic Analysis (DAST + Instrumented Runtime)
**Speed:** Slow (hours-days per plugin)  
**Coverage:** The missing ~40% that static analysis cannot reach  
**Purpose:** Catch everything static analysis misses by actually running the code.

This is where you set up a local WordPress instance and:

#### 5a. Instrumented PHP Runtime
```php
// php.ini or auto_prepend_file — instrument EVERY function call
// to log actual source-to-sink data flows at runtime

// Option 1: Xdebug function trace
xdebug.trace_output_dir=/tmp/traces
xdebug.auto_trace=1
xdebug.collect_params=4
xdebug.collect_return=1

// Option 2: Custom taint tracking extension (if you want to go deep)
// PHP has an experimental taint extension: pecl install taint
// It tracks taint through ALL operations including string concatenation,
// variable variables, magic methods, etc.
// When tainted data reaches a sink, it throws a warning.
```

#### 5b. WordPress + Plugin Test Harness
```bash
# Docker setup for isolated testing
docker-compose.yml:
  wordpress:
    image: wordpress:latest
    volumes:
      - ./plugins/src/{plugin}:/var/www/html/wp-content/plugins/{plugin}
    environment:
      WORDPRESS_DEBUG: 1
      WORDPRESS_DEBUG_LOG: 1

  db:
    image: mysql:8.0

  # Proxy to capture all HTTP traffic
  proxy:
    image: mitmproxy/mitmproxy
    command: mitmweb --mode reverse:http://wordpress:80
```

#### 5c. Fuzzing Entry Points
```python
# For each unauthenticated entry point found in static analysis:
# 1. Craft requests with taint markers: TAINT_MARKER_12345
# 2. Send them through AJAX endpoints and REST routes
# 3. Check if the marker appears in:
#    - HTML output (XSS)
#    - SQL queries (SQLi — via query logging)
#    - File system operations (path traversal — via strace)
#    - Outbound HTTP requests (SSRF — via proxy)
#    - eval()/system() calls (RCE — via function trace)

# This catches EVERYTHING that static analysis misses:
# - Variable variables? The runtime resolves them.
# - Dynamic dispatch? The runtime calls the actual method.
# - WordPress hooks? The runtime executes the full callback chain.
# - Cross-request taint? Store taint marker, then read it back.
```

```
What it catches:
  ✅ EVERYTHING — if the code path is exercised
  
What it misses:
  ❌ Code paths not triggered by the fuzzer (coverage problem)
  ❌ Time-dependent bugs (race conditions)
  ❌ Configuration-dependent behavior
```

---

## PRACTICAL STRATEGY: HOW TO COMBINE THE LAYERS

```
                    ┌─────────────────────────────────────┐
                    │  Layer 1: Pattern Matching           │
                    │  (Semgrep + ripgrep)                 │
                    │  → Finds ~200 potential issues       │
                    │  → 50% are false positives           │
                    │  → ~100 real leads                   │
                    └──────────────┬──────────────────────┘
                                   │
                    ┌──────────────▼──────────────────────┐
                    │  Layer 2: Intraprocedural Taint      │
                    │  (Custom Python + tree-sitter)       │
                    │  → Confirms/rejects Layer 1 leads    │
                    │  → Finds ~50 new within-function     │
                    │    flows Layer 1 missed               │
                    │  → ~120 real leads total              │
                    └──────────────┬──────────────────────┘
                                   │
                    ┌──────────────▼──────────────────────┐
                    │  Layer 3: Code Property Graph        │
                    │  (Joern)                             │
                    │  → Cross-function data flow          │
                    │  → Confirms/rejects Layer 2 leads    │
                    │  → Finds ~30 cross-function flows    │
                    │  → ~100 confirmed + 30 new = ~130    │
                    └──────────────┬──────────────────────┘
                                   │
                    ┌──────────────▼──────────────────────┐
                    │  Layer 4: WP-Aware Analysis          │
                    │  (Custom hook resolver + DB oracle)   │
                    │  → Resolves hook-mediated flows      │
                    │  → Resolves stored taint             │
                    │  → Finds ~20 WP-specific issues      │
                    │  → ~150 total leads                  │
                    └──────────────┬──────────────────────┘
                                   │
                    ┌──────────────▼──────────────────────┐
                    │  Layer 5: Dynamic Analysis           │
                    │  (DAST + instrumented runtime)       │
                    │  → Validates all 150 leads           │
                    │  → Finds ~30 runtime-only issues     │
                    │  → Catches variable variables,       │
                    │    dynamic dispatch, magic methods    │
                    │  → ~80 CONFIRMED vulnerabilities     │
                    └─────────────────────────────────────┘
```

### Priority order for a time-constrained audit:

1. **First hour:** Run Semgrep + ripgrep patterns (Layer 1). Get the obvious hits.
2. **Next 2 hours:** Run taint tracer on the top 15 priority plugins (Layer 2). Confirm/reject.
3. **Next 4 hours:** Run Joern on the top 5 highest-signal plugins (Layer 3). Find cross-function flows.
4. **Next 4 hours:** Build hook registry, resolve WP-specific flows (Layer 4).
5. **Remaining time:** Set up Docker WordPress, fuzz the confirmed entry points (Layer 5).

### The "database reads are tainted" rule

This is the single highest-impact heuristic you can apply. Add this to your taint tracer:

```
RULE: Treat ALL data read from the WordPress database as POTENTIALLY TAINTED.

Rationale: Any data in wp_options, wp_postmeta, wp_usermeta, wp_comments,
or wp_transients could have been written by user input in a previous request.
Unless you can prove the write path was sanitized, assume the read is tainted.

This catches: stored XSS, stored SQLi, stored object injection, and every
variant of "data laundering through the database" — which is the #1 pattern
that purely static tools miss.

Implementation:
  get_option()         → return value is TAINTED
  get_post_meta()      → return value is TAINTED
  get_user_meta()      → return value is TAINTED
  get_term_meta()      → return value is TAINTED
  get_comment_meta()   → return value is TAINTED
  get_transient()      → return value is TAINTED
  get_site_transient() → return value is TAINTED
  $wpdb->get_var()     → return value is TAINTED
  $wpdb->get_row()     → return value is TAINTED
  $wpdb->get_results() → return value is TAINTED
  
  This will produce more false positives but ZERO false negatives
  for stored taint patterns.
```

---

## UPDATE THE MAIN PROMPT

Add this to Phase 3 of the main prompt, replacing the simple source-sink mapper with the layered approach. The key changes:

1. **`tools/taint_tracer.py`** must use CONTEXT-AWARE TAINT LABELS (XSS/SQL/CMD/PATH/URL), not just tainted/clean
2. **`tools/wp_hook_resolver.py`** — NEW TOOL — builds the global hook registry and resolves `apply_filters`/`do_action` chains
3. **`tools/db_taint_oracle.py`** — NEW TOOL — maps `update_option` → `get_option` flows across the codebase
4. **`tools/verify_tools.sh`** must verify Joern installation (Java 21 + Joern CLI)
5. **`scripts/run_analysis.sh`** must run all 5 layers in sequence, with each layer's output feeding the next
6. **All database reads** must be treated as tainted in the taint tracer

### Additional git commits:
```bash
git add tools/wp_hook_resolver.py tools/db_taint_oracle.py docs/anti_patterns.md
git commit -m "feat: add WP hook resolver, DB taint oracle, and anti-pattern docs"
```
