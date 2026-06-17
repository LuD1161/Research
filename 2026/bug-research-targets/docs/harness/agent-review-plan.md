# Agent-Driven Security Review Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Set up a live WordPress Docker stack with all 65 plugins, then dispatch parallel Sonnet 4.6 sub-agents as expert security reviewers to vet automated findings against real running code, eliminating false positives and confirming exploitable vulnerabilities.

**Architecture:** Docker Compose runs WordPress + MySQL + WP-CLI. A preprocessing step splits findings per plugin into individual briefing files. A dispatcher script spawns one Sonnet 4.6 agent per top-priority plugin, each receiving: the plugin's findings, access to source code, curl/wp-cli commands against the live instance, Context7 MCP for WordPress API docs, and analysis tools (grep, PHP parser). Each agent produces a structured verdict JSON per finding.

**Tech Stack:** Docker Compose, WordPress 6.x, MySQL 8, WP-CLI, bash, Python 3.11, Sonnet 4.6 sub-agents

---

## File Structure

```
docker/
├── docker-compose.yml          # WP + MySQL + WP-CLI
├── setup-plugins.sh            # Install & activate all 65 plugins via WP-CLI
├── Makefile                    # start, stop, status, reset targets
└── healthcheck.sh              # Verify WP is running & plugins active

scripts/
├── prepare_agent_briefs.py     # Split findings into per-plugin briefing JSONs
└── dispatch_reviewers.py       # Orchestrator: spawn parallel review agents

analysis/
├── agent_briefs/               # Per-plugin briefing files (auto-generated)
│   ├── woocommerce_brief.json
│   ├── jetpack_brief.json
│   └── ...
└── phase5_manual/              # Agent-produced review verdicts
    ├── woocommerce/
    │   ├── verdicts.json       # All verdicts for this plugin
    │   └── confirmed/          # Individual confirmed finding reports
    └── ...

reports/
├── critical_findings.md        # Confirmed critical/high findings
└── executive_summary.md        # Stats: confirmed vs false positive
```

---

### Task 1: Docker Compose WordPress Stack

**Files:**
- Create: `docker/docker-compose.yml`
- Create: `docker/setup-plugins.sh`
- Create: `docker/healthcheck.sh`
- Create: `docker/Makefile`

- [ ] **Step 1: Create docker-compose.yml**

```yaml
# docker/docker-compose.yml
services:
  db:
    image: mysql:8.0
    restart: unless-stopped
    environment:
      MYSQL_ROOT_PASSWORD: rootpass
      MYSQL_DATABASE: wordpress
      MYSQL_USER: wpuser
      MYSQL_PASSWORD: wppass
    volumes:
      - db_data:/var/lib/mysql
    healthcheck:
      test: ["CMD", "mysqladmin", "ping", "-h", "localhost", "-u", "root", "-prootpass"]
      interval: 5s
      timeout: 5s
      retries: 10

  wordpress:
    image: wordpress:6-php8.2
    restart: unless-stopped
    depends_on:
      db:
        condition: service_healthy
    ports:
      - "8080:80"
    environment:
      WORDPRESS_DB_HOST: db
      WORDPRESS_DB_USER: wpuser
      WORDPRESS_DB_PASSWORD: wppass
      WORDPRESS_DB_NAME: wordpress
      WORDPRESS_DEBUG: "1"
      WORDPRESS_DEBUG_LOG: "1"
    volumes:
      - wp_data:/var/www/html
      - ../plugins/src:/var/www/html/wp-content/plugins-src:ro
    healthcheck:
      test: ["CMD", "curl", "-f", "http://localhost:80"]
      interval: 10s
      timeout: 5s
      retries: 12

  wpcli:
    image: wordpress:cli-2.10-php8.2
    depends_on:
      wordpress:
        condition: service_healthy
    user: "33:33"
    environment:
      WORDPRESS_DB_HOST: db
      WORDPRESS_DB_USER: wpuser
      WORDPRESS_DB_PASSWORD: wppass
      WORDPRESS_DB_NAME: wordpress
    volumes:
      - wp_data:/var/www/html
      - ../plugins/src:/var/www/html/wp-content/plugins-src:ro
      - ./setup-plugins.sh:/setup-plugins.sh:ro
    entrypoint: ["sh", "-c"]
    command: ["tail -f /dev/null"]

volumes:
  db_data:
  wp_data:
```

- [ ] **Step 2: Create setup-plugins.sh**

```bash
#!/usr/bin/env bash
# docker/setup-plugins.sh
# Run inside the wpcli container to install WP and symlink all plugins
set -euo pipefail

echo "=== WordPress Setup ==="

# Install WordPress if not already installed
if ! wp core is-installed 2>/dev/null; then
    echo "Installing WordPress..."
    wp core install \
        --url="http://localhost:8080" \
        --title="Security Research" \
        --admin_user=admin \
        --admin_password=admin \
        --admin_email=admin@localhost.test \
        --skip-email
    echo "WordPress installed."
else
    echo "WordPress already installed."
fi

echo "=== Symlinking Plugins ==="
SRC_DIR="/var/www/html/wp-content/plugins-src"
PLUGIN_DIR="/var/www/html/wp-content/plugins"

for plugin_path in "$SRC_DIR"/*/; do
    slug=$(basename "$plugin_path")
    target="$PLUGIN_DIR/$slug"
    if [ ! -e "$target" ]; then
        ln -s "$plugin_path" "$target"
        echo "  Linked: $slug"
    fi
done

echo "=== Activating Plugins ==="
# Activate one at a time — some may fail due to dependencies
activated=0
failed=0
for plugin_path in "$SRC_DIR"/*/; do
    slug=$(basename "$plugin_path")
    if wp plugin is-active "$slug" 2>/dev/null; then
        continue
    fi
    if wp plugin activate "$slug" 2>/dev/null; then
        activated=$((activated + 1))
    else
        echo "  [WARN] Failed to activate: $slug"
        failed=$((failed + 1))
    fi
done

echo ""
echo "=== Plugin Status ==="
wp plugin list --format=table 2>/dev/null | head -70
echo ""
echo "Activated: $activated, Failed: $failed"
echo "Total plugins: $(wp plugin list --format=count 2>/dev/null)"
```

- [ ] **Step 3: Create healthcheck.sh**

```bash
#!/usr/bin/env bash
# docker/healthcheck.sh
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo "=== Docker Health Check ==="

# Check containers running
if ! docker compose -f "$REPO_ROOT/docker/docker-compose.yml" ps --status running | grep -q wordpress; then
    echo "[FAIL] WordPress container not running"
    exit 1
fi
echo "[PASS] WordPress container running"

# Check HTTP response
HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8080/ 2>/dev/null || echo "000")
if [ "$HTTP_CODE" = "200" ] || [ "$HTTP_CODE" = "302" ]; then
    echo "[PASS] WordPress responding (HTTP $HTTP_CODE)"
else
    echo "[FAIL] WordPress not responding (HTTP $HTTP_CODE)"
    exit 1
fi

# Check WP-CLI accessible
PLUGIN_COUNT=$(docker compose -f "$REPO_ROOT/docker/docker-compose.yml" exec -T wpcli wp plugin list --format=count 2>/dev/null || echo "0")
echo "[INFO] Plugins installed: $PLUGIN_COUNT"

ACTIVE_COUNT=$(docker compose -f "$REPO_ROOT/docker/docker-compose.yml" exec -T wpcli wp plugin list --status=active --format=count 2>/dev/null || echo "0")
echo "[INFO] Plugins active: $ACTIVE_COUNT"

if [ "$ACTIVE_COUNT" -gt 30 ]; then
    echo "[PASS] Sufficient plugins active for testing"
else
    echo "[WARN] Only $ACTIVE_COUNT plugins active — some may have failed activation"
fi

echo ""
echo "WP-CLI test: $(docker compose -f "$REPO_ROOT/docker/docker-compose.yml" exec -T wpcli wp core version 2>/dev/null)"
echo ""
echo "=== Stack Ready ==="
```

- [ ] **Step 4: Create docker/Makefile**

```makefile
# docker/Makefile
COMPOSE := docker compose -f docker-compose.yml

.PHONY: start stop status setup reset logs

start:
	$(COMPOSE) up -d
	@echo "Waiting for WordPress to be healthy..."
	@sleep 10
	@bash healthcheck.sh || (echo "Stack not ready yet, waiting more..."; sleep 15; bash healthcheck.sh)

stop:
	$(COMPOSE) down

status:
	$(COMPOSE) ps
	@bash healthcheck.sh

setup: start
	$(COMPOSE) exec -T wpcli sh /setup-plugins.sh

reset:
	$(COMPOSE) down -v
	$(COMPOSE) up -d
	@sleep 15
	$(COMPOSE) exec -T wpcli sh /setup-plugins.sh

logs:
	$(COMPOSE) logs -f --tail=50

wp:
	$(COMPOSE) exec wpcli wp $(CMD)
```

- [ ] **Step 5: Start the stack and install plugins**

Run:
```bash
cd docker && make setup
```

Expected: WordPress running on localhost:8080, 50+ plugins symlinked and active.

- [ ] **Step 6: Verify and commit**

Run:
```bash
cd docker && bash healthcheck.sh
```

Expected: All checks PASS.

```bash
git add docker/
git commit -s -m "feat: add Docker WordPress stack for live plugin testing"
```

---

### Task 2: Per-Plugin Agent Briefing Generator

**Files:**
- Create: `scripts/prepare_agent_briefs.py`

- [ ] **Step 1: Write the briefing generator**

This script merges all analysis data for a plugin into a single briefing JSON that an agent can consume.

```python
#!/usr/bin/env python3
"""
Merge all analysis data for each plugin into a single agent briefing JSON.

Output: analysis/agent_briefs/{slug}_brief.json

Each briefing contains:
- Plugin metadata (slug, PHP file count, LOC)
- Attack surface summary (from phase1)
- Source-sink summary (from phase2)
- Taint flows to review (from phase3) — the primary work items
- Semgrep findings to review (from phase4)
- Priority score and recommended focus areas
"""
import json
import os
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parent.parent
TAINT_DIR = REPO_ROOT / "analysis" / "phase3_taint_flows"
SRCSINK_DIR = REPO_ROOT / "analysis" / "phase2_sources_sinks"
SURFACE_DIR = REPO_ROOT / "analysis" / "phase1_surface"
SEMGREP_FILE = REPO_ROOT / "analysis" / "phase4_semgrep" / "results.json"
MANIFEST_FILE = REPO_ROOT / "plugins" / "extraction_manifest.json"
OUTPUT_DIR = REPO_ROOT / "analysis" / "agent_briefs"


def load_semgrep_by_plugin():
    """Group semgrep results by plugin slug."""
    by_plugin = defaultdict(list)
    if not SEMGREP_FILE.exists():
        return by_plugin
    data = json.loads(SEMGREP_FILE.read_text())
    for r in data.get("results", []):
        path = r.get("path", "")
        match = re.match(r"plugins/src/([^/]+)/", path)
        if match:
            slug = match.group(1)
            by_plugin[slug].append({
                "rule": r["check_id"].split(".")[-1],
                "severity": r["extra"]["severity"],
                "message": r["extra"].get("message", ""),
                "file": path.replace(f"plugins/src/{slug}/", ""),
                "line_start": r["start"]["line"],
                "line_end": r["end"]["line"],
                "code": r["extra"].get("lines", ""),
            })
    return by_plugin


def load_surface(slug):
    """Load attack surface summary for a plugin."""
    surface_file = SURFACE_DIR / f"{slug}_surface.md"
    if not surface_file.exists():
        return None
    return surface_file.read_text()


def load_source_sink(slug):
    """Load source-sink mapping summary."""
    ss_file = SRCSINK_DIR / f"{slug}.json"
    if not ss_file.exists():
        return None
    data = json.loads(ss_file.read_text())
    return data.get("summary", {})


def load_taint_flows(slug):
    """Load taint analysis flows."""
    tf_file = TAINT_DIR / f"{slug}_taint_flows.json"
    if not tf_file.exists():
        return []
    data = json.loads(tf_file.read_text())
    return data.get("flows", [])


def compute_priority(taint_flows, semgrep_findings):
    """Compute priority score for sorting."""
    tc = sum(1 for f in taint_flows if f.get("severity") == "critical")
    th = sum(1 for f in taint_flows if f.get("severity") == "high")
    se = sum(1 for f in semgrep_findings if f.get("severity") == "ERROR")
    return tc * 10 + th * 5 + se * 3 + len(taint_flows) + len(semgrep_findings)


def main():
    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
    manifest = json.loads(MANIFEST_FILE.read_text()) if MANIFEST_FILE.exists() else {}
    semgrep_by_plugin = load_semgrep_by_plugin()

    all_slugs = set()
    for f in TAINT_DIR.iterdir():
        if f.suffix == ".json":
            all_slugs.add(f.stem.replace("_taint_flows", ""))
    for f in SRCSINK_DIR.iterdir():
        if f.suffix == ".json":
            all_slugs.add(f.stem)
    all_slugs.update(semgrep_by_plugin.keys())

    briefs = []
    for slug in sorted(all_slugs):
        taint_flows = load_taint_flows(slug)
        semgrep_findings = semgrep_by_plugin.get(slug, [])
        source_sink = load_source_sink(slug)
        surface = load_surface(slug)
        meta = manifest.get(slug, {})
        priority = compute_priority(taint_flows, semgrep_findings)

        brief = {
            "plugin_slug": slug,
            "priority_score": priority,
            "metadata": {
                "php_files": meta.get("php_files", 0),
                "total_lines": meta.get("total_lines", 0),
            },
            "attack_surface_summary": surface[:3000] if surface else None,
            "source_sink_summary": source_sink,
            "taint_flows": taint_flows,
            "semgrep_findings": semgrep_findings,
            "stats": {
                "taint_critical": sum(1 for f in taint_flows if f.get("severity") == "critical"),
                "taint_high": sum(1 for f in taint_flows if f.get("severity") == "high"),
                "taint_total": len(taint_flows),
                "semgrep_error": sum(1 for f in semgrep_findings if f.get("severity") == "ERROR"),
                "semgrep_warning": sum(1 for f in semgrep_findings if f.get("severity") == "WARNING"),
            },
        }

        out_file = OUTPUT_DIR / f"{slug}_brief.json"
        out_file.write_text(json.dumps(brief, indent=2))
        briefs.append((slug, priority))

    briefs.sort(key=lambda x: -x[1])
    print(f"Generated {len(briefs)} agent briefings in {OUTPUT_DIR}")
    print("\nTop 20 by priority:")
    for slug, score in briefs[:20]:
        print(f"  {slug:40s} {score:6d}")


if __name__ == "__main__":
    main()
```

- [ ] **Step 2: Run and verify**

Run:
```bash
source .venv/bin/activate
python3 scripts/prepare_agent_briefs.py
ls analysis/agent_briefs/ | wc -l
```

Expected: 65+ briefing JSONs generated.

- [ ] **Step 3: Commit**

```bash
git add scripts/prepare_agent_briefs.py
git commit -s -m "feat: add per-plugin agent briefing generator"
```

---

### Task 3: Agent Review Prompt & Dispatch System

**Files:**
- Create: `scripts/agent_review_prompt.md` — the master prompt template
- Create: `scripts/dispatch_reviewers.py` — orchestrator (reference only — actual dispatch uses Claude Code Agent tool)

- [ ] **Step 1: Write the agent review prompt template**

This is the master prompt that each sub-agent receives. It must be self-contained — the agent has zero prior context.

Create `scripts/agent_review_prompt.md`:

````markdown
# WordPress Plugin Security Review — Agent Brief

## Your Role

You are an expert WordPress security researcher with 20+ years of offensive security experience. You are reviewing automated findings for **{plugin_slug}** to determine which are real, exploitable vulnerabilities and which are false positives.

## Your Task

For each finding in the briefing data below, you must:

1. **Read the actual source code** at the file/line referenced
2. **Trace the full data flow** — from source to sink — in the real code
3. **Check for sanitization** the automated tools may have missed (inline casts, wrapper functions, WordPress core protections)
4. **Check authentication requirements** — is this code path actually reachable without auth? Trace the hook registration.
5. **Test against the live WordPress instance** when possible — use curl to hit AJAX endpoints, REST routes
6. **Classify each finding** as: CONFIRMED, FALSE_POSITIVE, or NEEDS_MORE_INFO
7. **For CONFIRMED findings** — write a PoC request sketch and assess real-world impact

## Available Tools & Resources

### Source Code Access
- Plugin source at: `plugins/src/{plugin_slug}/`
- Read files with the Read tool
- Search with: `rg "pattern" plugins/src/{plugin_slug}/`

### Live WordPress Instance
The plugin is running on a live WordPress instance at `http://localhost:8080`
- Admin login: admin / admin
- WP-CLI: `docker compose -f docker/docker-compose.yml exec -T wpcli wp <command>`
- Test AJAX: `curl -s -X POST http://localhost:8080/wp-admin/admin-ajax.php -d "action=<action>&param=value"`
- Test REST: `curl -s http://localhost:8080/wp-json/<namespace>/<route>`
- Get nonce: `docker compose -f docker/docker-compose.yml exec -T wpcli wp eval 'echo wp_create_nonce("wp_rest");'`
- Check plugin active: `docker compose -f docker/docker-compose.yml exec -T wpcli wp plugin is-active {plugin_slug}`

### WordPress Documentation
Use Context7 MCP to look up WordPress functions:
- `mcp__plugin_context7_context7__resolve-library-id` with query "wordpress" to get the library ID
- `mcp__plugin_context7_context7__query-docs` to look up specific functions like `wp_verify_nonce`, `current_user_can`, `$wpdb->prepare`

### Analysis Tools
- Source-sink data: `analysis/phase2_sources_sinks/{plugin_slug}.json`
- Attack surface: `analysis/phase1_surface/{plugin_slug}_surface.md`
- Source/sink/sanitizer definitions: `tools/wp_sources_sinks.yaml`
- Run custom taint check: `source .venv/bin/activate && python3 tools/taint_tracer.py --input plugins/src/{plugin_slug} --sources-sinks tools/wp_sources_sinks.yaml --output /tmp/recheck/`

## Critical Review Methodology

### For each taint flow finding:

1. **Read the source code** at the exact file:line
2. **Trace backwards** — where does this function get called? Is it a hook callback? Which hook?
   - `wp_ajax_nopriv_*` → unauthenticated (HIGH priority)
   - `wp_ajax_*` → needs login (still check if subscriber can reach it)
   - `rest_api_init` → check permission_callback
   - `add_shortcode` → runs for any visitor viewing a post
3. **Trace forwards** — does the tainted data actually reach the sink?
   - Check for sanitization between source and sink
   - Check for type casting (`(int)`, `absint()`)
   - Check for `$wpdb->prepare()` wrapping the query
   - Check for output escaping (`esc_html()`, `esc_attr()`)
4. **Check WordPress core protections:**
   - Is there a nonce check? (`wp_verify_nonce`, `check_ajax_referer`)
   - Is there a capability check? (`current_user_can`)
   - Does WP core sanitize this input automatically? (e.g., `$_REQUEST` through `wp_magic_quotes`)
5. **Assess exploitability:**
   - Can an attacker control the source value?
   - Is the code path reachable in a default installation?
   - What's the worst-case impact?

### Common False Positive Patterns (catch these!)

- `array_map('intval', $data)` — the callback is a hardcoded string, NOT user-controlled → NOT RCE
- `usort($array, [$this, 'compare_method'])` — callback is a fixed method → NOT RCE
- `call_user_func($known_function, $args)` — if `$known_function` is hardcoded or comes from a whitelist → NOT RCE
- `$wpdb->insert($table, $data)` — WordPress internally calls `prepare()` inside `insert()` → NOT SQLi (usually)
- `get_option()` returning data used in a `switch` or comparison → NOT dangerous if not output/queried
- `echo esc_html($var)` — properly escaped → NOT XSS
- Data flows through sanitize_text_field() before reaching output → likely NOT XSS (but verify context)

### RCE-Specific Checks
- `eval()` — is the argument truly user-controlled? Trace the full chain.
- `preg_replace` with `/e` modifier — only in PHP < 7.0, check the minimum PHP version
- `assert()` — only callable with strings in PHP < 8.0
- `create_function()` — deprecated in PHP 7.2, removed in PHP 8.0

## Output Format

You MUST output your verdicts as a single JSON object with this structure. Write this to `analysis/phase5_manual/{plugin_slug}/verdicts.json`:

```json
{
  "plugin": "{plugin_slug}",
  "review_date": "2026-06-14",
  "reviewer": "sonnet-4.6-agent",
  "total_findings_reviewed": 42,
  "confirmed": 3,
  "false_positive": 37,
  "needs_info": 2,
  "verdicts": [
    {
      "finding_id": "woocommerce-sqli-001",
      "original_severity": "critical",
      "verdict": "CONFIRMED | FALSE_POSITIVE | NEEDS_MORE_INFO",
      "confidence": "high | medium | low",
      "reasoning": "Detailed explanation of why this is/isn't a real vulnerability. Include what you checked.",
      "source_file": "includes/class-wc-ajax.php",
      "source_line": 234,
      "sink_file": "includes/class-wc-ajax.php",
      "sink_line": 239,
      "vulnerability_class": "sql_injection",
      "auth_required": "none | subscriber | editor | admin",
      "nonce_required": true,
      "cvss_score": 9.8,
      "cvss_vector": "CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H",
      "cwe": "CWE-89",
      "poc_sketch": "POST /wp-admin/admin-ajax.php HTTP/1.1\nContent-Type: application/x-www-form-urlencoded\n\naction=vulnerable_action&param=' OR 1=1--",
      "remediation": "$safe = $wpdb->prepare('SELECT * FROM t WHERE id = %d', intval($_POST['param']));"
    }
  ],
  "summary": "Brief summary of the plugin's security posture and most notable findings.",
  "feedback": "Any feedback on the automated tools — what they got wrong, patterns they should add, etc."
}
```

## IMPORTANT RULES

1. **Be skeptical of automated findings.** Most will be false positives. That's expected.
2. **Read the actual code.** Don't trust the automated summary — read the PHP.
3. **Trace the FULL path.** A source in function A and a sink in function A does NOT mean there's a flow — the variables may be unrelated.
4. **Check auth FIRST.** An authenticated-only SQLi behind an admin-only page is lower priority than an unauthenticated one.
5. **Don't over-report.** A finding marked CONFIRMED must be exploitable in practice, not just theoretically possible.
6. **When in doubt, mark NEEDS_MORE_INFO** with a note about what additional analysis is needed.
7. **If the plugin isn't active** on the Docker instance (activation may have failed due to dependencies), still review the code statically but note that live testing wasn't possible.

## Briefing Data

The following findings are loaded from: `analysis/agent_briefs/{plugin_slug}_brief.json`

Review ALL taint flows (prioritize critical/high) and the top Semgrep ERROR-severity findings.
````

- [ ] **Step 2: Commit**

```bash
git add scripts/agent_review_prompt.md scripts/prepare_agent_briefs.py
git commit -s -m "feat: add agent review prompt template and briefing system"
```

---

### Task 4: Run Agent Briefing Generator

- [ ] **Step 1: Generate all briefings**

```bash
source .venv/bin/activate
python3 scripts/prepare_agent_briefs.py
```

- [ ] **Step 2: Create output directories for each priority plugin**

```bash
for slug in woocommerce jetpack wpforms-lite the-events-calendar forminator click-to-chat-for-whatsapp better-wp-security wordfence formidable fluentform w3-total-cache complianz-gdpr wp-optimize wp-fastest-cache woocommerce-payments code-snippets litespeed-cache elementor contact-form-7 all-in-one-seo-pack; do
    mkdir -p "analysis/phase5_manual/$slug/confirmed"
done
```

- [ ] **Step 3: Commit**

```bash
git add analysis/agent_briefs/ analysis/phase5_manual/
git commit -s -m "data: generate agent briefings for all plugins"
```

---

### Task 5: Start Docker Stack & Install Plugins

- [ ] **Step 1: Start the stack**

```bash
cd docker && make setup
```

- [ ] **Step 2: Verify health**

```bash
cd docker && bash healthcheck.sh
```

- [ ] **Step 3: Verify specific high-priority plugins are active**

```bash
for slug in woocommerce jetpack wordfence elementor contact-form-7 code-snippets w3-total-cache litespeed-cache; do
    STATUS=$(docker compose -f docker/docker-compose.yml exec -T wpcli wp plugin is-active "$slug" 2>/dev/null && echo "ACTIVE" || echo "INACTIVE")
    echo "$slug: $STATUS"
done
```

---

### Task 6: Dispatch Parallel Review Agents

This is the main event. Each agent gets spawned via the Claude Code `Agent` tool with `model: "sonnet"`.

**Dispatch strategy:**
- **Wave 1 (highest priority — 5 agents in parallel):** woocommerce, jetpack, wpforms-lite, forminator, wordfence
- **Wave 2 (high priority — 5 agents in parallel):** the-events-calendar, click-to-chat-for-whatsapp, better-wp-security, formidable, fluentform
- **Wave 3 (medium priority — 5 agents in parallel):** w3-total-cache, complianz-gdpr, wp-optimize, wp-fastest-cache, woocommerce-payments
- **Wave 4 (special interest — 5 agents in parallel):** code-snippets, litespeed-cache, elementor, contact-form-7, all-in-one-seo-pack

Each wave completes before the next starts, so the orchestrator can review intermediate results.

- [ ] **Step 1: Dispatch Wave 1**

For each plugin in the wave, call the Agent tool with:
- `model: "sonnet"`
- `description: "Security review: {slug}"`
- `prompt:` — the full agent review prompt (from `scripts/agent_review_prompt.md`) with `{plugin_slug}` replaced, plus the briefing data inlined or referenced

The prompt to each agent should include:
1. The full review methodology from `scripts/agent_review_prompt.md`
2. The key stats from the briefing: how many critical/high flows, top semgrep rules hit
3. Instruction to read `analysis/agent_briefs/{slug}_brief.json` for full data
4. Instruction to write verdicts to `analysis/phase5_manual/{slug}/verdicts.json`
5. Reminder about available tools: Read, Bash (curl, rg, docker compose exec), Context7 MCP

- [ ] **Step 2: Review Wave 1 results**

After all 5 agents complete, check:
```bash
for slug in woocommerce jetpack wpforms-lite forminator wordfence; do
    if [ -f "analysis/phase5_manual/$slug/verdicts.json" ]; then
        CONFIRMED=$(python3 -c "import json; d=json.load(open('analysis/phase5_manual/$slug/verdicts.json')); print(d.get('confirmed', 0))")
        TOTAL=$(python3 -c "import json; d=json.load(open('analysis/phase5_manual/$slug/verdicts.json')); print(d.get('total_findings_reviewed', 0))")
        echo "$slug: $CONFIRMED confirmed / $TOTAL reviewed"
    else
        echo "$slug: NO VERDICTS FILE"
    fi
done
```

- [ ] **Step 3-6: Dispatch Waves 2-4** (same pattern)

- [ ] **Step 7: Commit all verdicts**

```bash
git add analysis/phase5_manual/
git commit -s -m "data: agent-driven security review verdicts for top 20 plugins"
```

---

### Task 7: Aggregate Results & Generate Reports

**Files:**
- Create: `scripts/aggregate_verdicts.py`

- [ ] **Step 1: Write aggregation script**

```python
#!/usr/bin/env python3
"""Aggregate agent review verdicts into final reports."""
import json
import os
from pathlib import Path
from collections import Counter

REPO_ROOT = Path(__file__).resolve().parent.parent
VERDICTS_DIR = REPO_ROOT / "analysis" / "phase5_manual"
REPORTS_DIR = REPO_ROOT / "reports"


def main():
    all_confirmed = []
    stats = Counter()
    plugin_summaries = []

    for plugin_dir in sorted(VERDICTS_DIR.iterdir()):
        if not plugin_dir.is_dir():
            continue
        verdict_file = plugin_dir / "verdicts.json"
        if not verdict_file.exists():
            continue

        data = json.loads(verdict_file.read_text())
        slug = data.get("plugin", plugin_dir.name)

        stats["plugins_reviewed"] += 1
        stats["total_reviewed"] += data.get("total_findings_reviewed", 0)
        stats["confirmed"] += data.get("confirmed", 0)
        stats["false_positive"] += data.get("false_positive", 0)
        stats["needs_info"] += data.get("needs_info", 0)

        for v in data.get("verdicts", []):
            if v.get("verdict") == "CONFIRMED":
                v["plugin"] = slug
                all_confirmed.append(v)

        plugin_summaries.append({
            "plugin": slug,
            "reviewed": data.get("total_findings_reviewed", 0),
            "confirmed": data.get("confirmed", 0),
            "summary": data.get("summary", ""),
        })

    # Sort confirmed by CVSS score descending
    all_confirmed.sort(key=lambda x: -(x.get("cvss_score", 0) or 0))

    # Write critical findings report
    with open(REPORTS_DIR / "critical_findings.md", "w") as f:
        f.write("# Critical Security Findings — WordPress Top 100 Plugin Research\n\n")
        f.write(f"**Date:** 2026-06-14\n")
        f.write(f"**Plugins reviewed:** {stats['plugins_reviewed']}\n")
        f.write(f"**Findings reviewed:** {stats['total_reviewed']}\n")
        f.write(f"**Confirmed vulnerabilities:** {stats['confirmed']}\n")
        f.write(f"**False positives eliminated:** {stats['false_positive']}\n\n")
        f.write("---\n\n")

        for i, finding in enumerate(all_confirmed, 1):
            f.write(f"## {i}. [{finding.get('finding_id', 'N/A')}] {finding.get('vulnerability_class', 'unknown').upper()}\n\n")
            f.write(f"- **Plugin:** {finding.get('plugin', '?')}\n")
            f.write(f"- **CVSS:** {finding.get('cvss_score', '?')} ({finding.get('cvss_vector', '?')})\n")
            f.write(f"- **CWE:** {finding.get('cwe', '?')}\n")
            f.write(f"- **Auth Required:** {finding.get('auth_required', '?')}\n")
            f.write(f"- **File:** `{finding.get('source_file', '?')}:{finding.get('source_line', '?')}`\n\n")
            f.write(f"**Reasoning:** {finding.get('reasoning', 'N/A')}\n\n")
            if finding.get("poc_sketch"):
                f.write(f"**PoC:**\n```\n{finding['poc_sketch']}\n```\n\n")
            if finding.get("remediation"):
                f.write(f"**Fix:**\n```php\n{finding['remediation']}\n```\n\n")
            f.write("---\n\n")

    # Write executive summary
    with open(REPORTS_DIR / "executive_summary.md", "w") as f:
        f.write("# Executive Summary — WordPress Plugin Security Research\n\n")
        f.write(f"## Overview\n\n")
        f.write(f"- **Plugins analyzed:** {stats['plugins_reviewed']}\n")
        f.write(f"- **Automated findings triaged:** {stats['total_reviewed']}\n")
        f.write(f"- **Confirmed vulnerabilities:** {stats['confirmed']}\n")
        f.write(f"- **False positive rate:** {stats['false_positive']/(stats['total_reviewed'] or 1)*100:.1f}%\n")
        f.write(f"- **Needs further investigation:** {stats['needs_info']}\n\n")

        by_class = Counter(f.get("vulnerability_class", "unknown") for f in all_confirmed)
        f.write("## Confirmed Findings by Class\n\n")
        for cls, count in by_class.most_common():
            f.write(f"- **{cls}:** {count}\n")

        f.write("\n## Per-Plugin Summary\n\n")
        f.write("| Plugin | Reviewed | Confirmed | Summary |\n")
        f.write("|--------|----------|-----------|----------|\n")
        for ps in plugin_summaries:
            f.write(f"| {ps['plugin']} | {ps['reviewed']} | {ps['confirmed']} | {ps['summary'][:80]} |\n")

    print(f"Reports written to {REPORTS_DIR}")
    print(f"  critical_findings.md: {len(all_confirmed)} confirmed findings")
    print(f"  executive_summary.md: {stats['plugins_reviewed']} plugins summarized")


if __name__ == "__main__":
    main()
```

- [ ] **Step 2: Run after all agents complete**

```bash
source .venv/bin/activate
python3 scripts/aggregate_verdicts.py
```

- [ ] **Step 3: Final commit**

```bash
git add reports/ scripts/aggregate_verdicts.py analysis/phase5_manual/
git commit -s -m "docs: final security research reports with agent-validated findings"
```

---

## Execution Order

1. Task 1 → Docker stack setup (can run while Task 2 runs)
2. Task 2 → Briefing generator script
3. Task 3 → Agent prompt template
4. Task 4 → Generate briefings + create output dirs
5. Task 5 → Start Docker, install plugins, verify
6. Task 6 → **Main event: dispatch 4 waves of 5 parallel agents each**
7. Task 7 → Aggregate and report

Total estimated agents: 20 plugins × 1 agent each = 20 agent dispatches across 4 waves.
