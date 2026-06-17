# WP Plugin Security Review Pipeline

Automated security review of WordPress plugins using LLM agents with static pre-filtering and self-improving pattern detection.

> **For agents**: Read [`AGENT_INSTRUCTIONS.md`](agent-instructions.md) for step-by-step instructions to run the pipeline on any plugin. It includes what to ask the user, exact commands, and troubleshooting.

## Quick Start — Run a Plugin Review

```bash
# 1. Set variables
PLUGIN_SLUG="your-plugin-slug"
ROOT="/DATA/openclaw/Repos/Research/.claude/worktrees/woo-security-review"
PLUGINS="/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src"

# 2. Route: classify files and generate review briefs
mkdir -p "$ROOT/analysis/pipeline/$PLUGIN_SLUG/briefs" \
         "$ROOT/analysis/pipeline/$PLUGIN_SLUG/checkpoints" \
         "$ROOT/analysis/pipeline/$PLUGIN_SLUG/raw"

python3 "$ROOT/tools/lens_router.py" "$PLUGINS/$PLUGIN_SLUG" \
  --briefs "$ROOT/analysis/pipeline/$PLUGIN_SLUG/briefs" \
  --manifest "$ROOT/analysis/pipeline/$PLUGIN_SLUG/manifest.json"

# 3. Extract tier-2 files (high-signal: handler + source + sink)
python3 -c "
import json
m = json.load(open('$ROOT/analysis/pipeline/$PLUGIN_SLUG/manifest.json'))
t2 = [f for f in m['files'] if f['tier'] == 2]
json.dump(t2, open('$ROOT/analysis/pipeline/$PLUGIN_SLUG/tier2_files.json','w'), indent=1)
print(f'{len(t2)} tier-2 files')
"

# 4. Run the pipeline via Claude Code Workflow tool
```

Then in Claude Code, run:
```
Workflow({
  scriptPath: "<ROOT>/workflows/resilient_run.js",
  args: {
    run: "<PLUGIN_SLUG>",
    files: <contents of tier2_files.json>
  }
})
```

Or for the raw pipeline without retry wrapper:
```
Workflow({
  scriptPath: "<ROOT>/workflows/review_pipeline.js",
  args: {
    run: "<PLUGIN_SLUG>",
    files: <contents of tier2_files.json>
  }
})
```

## Pipeline Architecture

```
lens_router.py (static regex classifier)
  ↓ manifest.json + per-file briefs
review_pipeline.js
  ├── DISCOVER (Sonnet agents read brief + file, report findings + detection_patterns)
  ├── ADVERSARIAL VERIFY (Sonnet agents try to refute each finding, default is_real=false)
  ├── REACHABILITY VERIFY (Sonnet agents trace gating mechanisms for access-control findings)
  └── SYNC (git checkpoint per wave)
  ↓ result.json
pattern_extractor.py (harvest new grep patterns from confirmed findings)
  ↓ learned_patterns.json (growing pattern library)
enumerate_surface.sh (static surface enumeration, loads learned patterns)
```

## Key Files

| File | Purpose |
|------|---------|
| `tools/lens_router.py` | Static file classifier — regex-based, no LLM. Tags files with security lenses (access_control, sqli, xss, fileio, deserialize, ssrf, auth_token). Assigns tier 0/1/2. |
| `workflows/review_pipeline.js` | Main pipeline workflow — discover + verify + reachability. Durable: checkpoints to git, resumes on re-run. |
| `workflows/resilient_run.js` | Self-healing wrapper — retries pipeline up to 5x on partial failure. |
| `tools/pattern_extractor.py` | Post-pipeline: extracts detection_pattern objects from confirmed findings into learned_patterns.json. |
| `scripts/enumerate_surface.sh` | Static surface enumeration with ripgrep. Section 4 loads learned patterns. |
| `analysis/pipeline/learned_patterns.json` | Growing pattern library — grep + anti-pattern pairs discovered by agents. |
| `analysis/pipeline/costs.json` | Cost tracking ledger — tokens, agents, duration, estimated USD per run. |
| `analysis/pipeline/tracker.json` | Per-plugin status: pending/done/failed/skipped. The batch scoreboard. |
| `analysis/pipeline/wave_01.json` ... `wave_10.json` | Pre-sorted batches of 10 plugins each (heaviest first). |
| `workflows/batch_wave.js` | Run a wave of 10 plugins sequentially. Updates tracker.json on completion. |
| `workflows/rerun_failed.js` | Re-run all non-done plugins from tracker.json. |

## Discovery Schema

Each finding includes:
```json
{
  "vuln_class": "csrf_missing_nonce",
  "location": "function_name(), line X",
  "severity": "medium",
  "reachability": "who can reach it",
  "justification": "code-grounded explanation",
  "detection_pattern": {
    "grep_pattern": "ripgrep-compatible regex for this vuln class",
    "anti_pattern": "regex indicating mitigation is present",
    "section_name": "short label",
    "description": "what the pattern catches"
  }
}
```

## Reachability Verify

The adversarial verifier has a blind spot: it confirms access-control findings without checking whether the gating secret/nonce/token is obtainable by an attacker. The reachability stage catches this:

- Runs on confirmed findings matching access-control vuln classes or severity >= MED
- Traces the full exploitation prerequisite chain
- Sets `gate_breachable=false` (default when uncertain) and downgrades severity when the gate is unbreachable
- Preserves original severity as `severity_pre_reach`

## Pattern Feedback Loop

Agents output `detection_pattern` objects alongside findings. After a run:

```bash
python3 tools/pattern_extractor.py \
  analysis/pipeline/$SLUG/raw/result.json \
  --plugin-dir $PLUGINS/$SLUG \
  --learned analysis/pipeline/learned_patterns.json
```

This validates patterns against the source plugin and appends new ones to the library. Future `enumerate_surface.sh` runs and `lens_router.py` (planned) will use them.

## Cost Tracking

After each run, record to `analysis/pipeline/costs.json`:
```json
{
  "plugin": "slug",
  "agents": 24,
  "subagent_tokens": 1481193,
  "duration_ms": 1129299,
  "estimated_cost_usd": 13.86,
  "results": { "files_reviewed": 4, "raw_findings": 11, "confirmed": 4 }
}
```

Typical costs (Sonnet 4.6, tier-2 only):
- ~$3.50/file reviewed
- ~$0.58/agent
- ~62k tokens/agent average

## Tuning

- `WAVE` in review_pipeline.js: concurrent agents per wave. Default 4. Set higher if you have headroom, but >8 risks SSL/rate-limit errors.
- `TIER_MIN`: 1 = all files with any signal, 2 = only files with handler+source+sink.
- `MAX_RETRIES` in resilient_run.js: default 5.
- Retry attempts in review_pipeline.js: 3 per phase.

## Completed Runs

| Plugin | Files | Raw | Confirmed | Downgraded | Real MED+ | Cost |
|--------|-------|-----|-----------|------------|-----------|------|
| advanced-google-recaptcha | 15 | 29 | 10 | 3 | 0 | ~$14* |
| woo-order-export-lite | 4 | 11 | 4 | 2 | 2 CSRF | $13.86 |
| ajax-search-for-woocommerce | 15 | 5 | 0 | 0 | 0 | partial* |
| flexible-shipping | 27 | — | — | — | — | in progress |

*Pre-cost-tracking or partial run

## Batch Status

100 plugins routed into 10 waves. Check `analysis/pipeline/tracker.json` for live status.

To run: `Workflow({scriptPath: "workflows/batch_wave.js", args: {wave: N}})`
To retry: `Workflow({scriptPath: "workflows/rerun_failed.js"})`
