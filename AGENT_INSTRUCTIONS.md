# Agent Instructions: Security Review Pipeline

This is a generic methodology for running automated security reviews on WordPress plugins (or any PHP codebase). Read `PIPELINE.md` for architecture details.

## When You Start

Ask the user:
1. **What to review?** — A plugin slug, a directory path, or a list of targets.
2. **Scope?** — "tier-2 only" (high-signal files with handler+source+sink, recommended) or "full sweep" (all files with any security signal, 3-5x more expensive).
3. **Budget?** — Approximate cost per plugin: ~$3.50/file for tier-2. A 20-file tier-2 run ≈ $70. A 5-file run ≈ $18.
4. **Single or batch?** — One plugin at a time (reliable) or multiple (risk rate limits if >1 concurrent).

## Variables

Set these once per session:
```bash
ROOT="/DATA/openclaw/Repos/Research"
PLUGINS="/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src"
SLUG="<plugin-slug>"  # e.g. "woocommerce", "contact-form-7"
```

## Step 1: Route (Static Classification)

Classify all PHP files by security relevance. No LLM cost — pure regex.

```bash
mkdir -p "$ROOT/analysis/pipeline/$SLUG/briefs" \
         "$ROOT/analysis/pipeline/$SLUG/checkpoints" \
         "$ROOT/analysis/pipeline/$SLUG/raw"

python3 "$ROOT/tools/lens_router.py" "$PLUGINS/$SLUG" \
  --briefs "$ROOT/analysis/pipeline/$SLUG/briefs" \
  --manifest "$ROOT/analysis/pipeline/$SLUG/manifest.json"
```

Output: manifest.json with every PHP file tagged (access_control, sqli, xss, fileio, deserialize, ssrf, auth_token) and tiered (0=skip, 1=review, 2=review+deep).

## Step 2: Scope the Review

Extract the files to review based on chosen scope:

```bash
# Tier-2 only (recommended)
python3 -c "
import json
m = json.load(open('$ROOT/analysis/pipeline/$SLUG/manifest.json'))
t2 = [f for f in m['files'] if f['tier'] == 2]
json.dump(t2, open('$ROOT/analysis/pipeline/$SLUG/tier2_files.json', 'w'), indent=1)
print(f'{len(t2)} tier-2 files')
"

# Full sweep (all tier>=1)
python3 -c "
import json
m = json.load(open('$ROOT/analysis/pipeline/$SLUG/manifest.json'))
files = [f for f in m['files'] if f['tier'] >= 1]
json.dump(files, open('$ROOT/analysis/pipeline/$SLUG/review_files.json', 'w'), indent=1)
print(f'{len(files)} files (tier>=1)')
"
```

Report the file count and estimated cost to the user before proceeding.

## Step 3: Run the Pipeline

Read the scoped file list and launch:

```
Workflow({
  scriptPath: "<ROOT>/workflows/resilient_run.js",
  args: {
    run: "<SLUG>",
    files: <full JSON array from tier2_files.json>
  }
})
```

**Important:**
- Pass the actual JSON array as `files`, not a string or file path.
- `resilient_run.js` auto-retries up to 5x on failure. Use `review_pipeline.js` directly if nested workflows aren't supported in your context.
- WAVE=4 (4 concurrent agents). Don't increase without checking rate limits.
- Pipeline checkpoints to git — re-runs skip completed work automatically.

## Step 4: Process Results

After the workflow completes:

### 4a. Save the result
Copy workflow output to `$ROOT/analysis/pipeline/$SLUG/raw/result.json`.

### 4b. Summarize findings
```python
import json
r = json.load(open(f'{ROOT}/analysis/pipeline/{SLUG}/raw/result.json'))
res = r.get('result', r)
for c in res.get('confirmed', []):
    f, v = c['finding'], c['verdict']
    sev = v.get('severity', f.get('severity', '?'))
    reach = c.get('reachability', {})
    pre = v.get('severity_pre_reach', '')
    down = f' (downgraded from {pre})' if pre else ''
    print(f'[{sev.upper()}] {c["id"]} {f["vuln_class"]} @ {f["location"][:60]}{down}')
```

### 4c. Extract learned patterns
```bash
python3 "$ROOT/tools/pattern_extractor.py" \
  "$ROOT/analysis/pipeline/$SLUG/raw/result.json" \
  --plugin-dir "$PLUGINS/$SLUG" \
  --learned "$ROOT/analysis/pipeline/learned_patterns.json"
```

### 4d. Update cost tracking
Add entry to `$ROOT/analysis/pipeline/costs.json`:
```json
{
  "plugin": "<SLUG>",
  "date": "<YYYY-MM-DD>",
  "scope": "tier-2 only (<N> of <M> files)",
  "agents": <from workflow usage>,
  "subagent_tokens": <from workflow usage>,
  "duration_ms": <from workflow usage>,
  "estimated_cost_usd": "<(tokens * 0.6 / 1M * 3.0 + tokens * 0.4 / 1M * 15.0) * 1.2>",
  "results": {
    "files_reviewed": <N>,
    "raw_findings": <N>,
    "confirmed": <N>,
    "reachability_applied": <N>,
    "reachability_downgraded": <N>
  }
}
```

## Step 5: Commit and Push

```bash
cd "$ROOT"
git add "analysis/pipeline/$SLUG/" \
  analysis/pipeline/learned_patterns.json \
  analysis/pipeline/costs.json
git commit -m "data: $SLUG security review — <N> files, <M> confirmed findings"
git push origin main
```

## Batch Mode

To review multiple plugins:

1. Run them **sequentially**, not in parallel (parallel hits rate limits).
2. Between runs, check `analysis/pipeline/costs.json` for cumulative spend.
3. After each run, extract patterns — later plugins benefit from earlier discoveries.

## What the Pipeline Produces

For each confirmed finding:
- **vuln_class**: e.g. csrf_missing_nonce, broken_access_control, sql_injection
- **severity**: after adversarial verify + reachability downgrade
- **reachability**: who can reach it, what gates protect it
- **detection_pattern**: a grep pattern to find this vuln class in other codebases
- **gate_breachable**: whether an attacker can actually obtain the secret/nonce/token

## Interpreting Results

- **confirmed_count**: findings that survived adversarial verification
- **reachability_downgraded**: confirmed findings where the gate is unbreachable (severity lowered)
- **Real MED+ findings**: confirmed AND not downgraded — these are the ones worth reporting
- **LOW findings**: real bugs but require elevated privileges or unlikely conditions

## Troubleshooting

- **Rate limits**: Run one pipeline at a time. WAVE=4 is safe.
- **SSL errors**: Transient — the retry logic handles them. If persistent, reduce WAVE to 2.
- **No findings**: Normal for well-maintained plugins. The pipeline's false-negative rate is low for tier-2 files.
- **Too many findings**: Check if most are downgraded by reachability. Admin-only findings are real but low-priority.
- **Partial results**: Re-run with same args — checkpoints skip completed work.

## Available Tools

| Tool | Purpose | Cost |
|------|---------|------|
| `tools/lens_router.py` | Static file classification | Free (regex) |
| `tools/ast_surface.py` | Tree-sitter AST surface extraction | Free (local) |
| `tools/pattern_extractor.py` | Harvest grep patterns from findings | Free (Python) |
| `scripts/enumerate_surface.sh` | Ripgrep surface enumeration | Free (local) |
| `workflows/review_pipeline.js` | Main LLM pipeline | ~$3.50/file |
| `workflows/resilient_run.js` | Self-healing wrapper | Same as above |
