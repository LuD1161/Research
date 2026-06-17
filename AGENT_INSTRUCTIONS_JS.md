# Agent Instructions: Security Review Pipeline (JS/npm)

This is a generic methodology for running automated security reviews on npm packages (or any JS/TS codebase). Read `PIPELINE.md` for architecture details.

## When You Start

Ask the user:
1. **What to review?** — A package name, a directory path, or a list of targets.
2. **Scope?** — "tier-2 only" (high-signal files with handler+source+sink, recommended) or "full sweep" (all files with any security signal, 3-5x more expensive).
3. **Budget?** — Approximate cost per package: ~$3.50/file for tier-2. A 20-file tier-2 run ≈ $70. A 5-file run ≈ $18.
4. **Single or batch?** — One package at a time (reliable) or multiple (risk rate limits if >1 concurrent).

## Variables

Set these once per session:
```bash
ROOT="/DATA/openclaw/Repos/Research"
PACKAGES="/path/to/npm/packages"
SLUG="<package-name>"  # e.g. "express", "lodash", "axios"
```

## Step 1: Route (Static Classification)

Classify all JS/TS files by security relevance. No LLM cost — pure regex.

```bash
mkdir -p "$ROOT/analysis/pipeline-js/$SLUG/briefs" \
         "$ROOT/analysis/pipeline-js/$SLUG/checkpoints" \
         "$ROOT/analysis/pipeline-js/$SLUG/raw"

python3 "$ROOT/tools/lens_router_js.py" "$PACKAGES/$SLUG" \
  --briefs "$ROOT/analysis/pipeline-js/$SLUG/briefs" \
  --manifest "$ROOT/analysis/pipeline-js/$SLUG/manifest.json"
```

Output: manifest.json with every JS/TS file tagged (prototype_pollution, command_injection, path_traversal, ssrf, redos, sql_injection, code_injection, auth_bypass, nosql_injection, xxe) and tiered (0=skip, 1=review, 2=review+deep).

## Step 2: Scope the Review

Extract the files to review based on chosen scope:

```bash
# Tier-2 only (recommended)
python3 -c "
import json
m = json.load(open('$ROOT/analysis/pipeline-js/$SLUG/manifest.json'))
t2 = [f for f in m['files'] if f['tier'] == 2]
json.dump(t2, open('$ROOT/analysis/pipeline-js/$SLUG/tier2_files.json', 'w'), indent=1)
print(f'{len(t2)} tier-2 files')
"

# Full sweep (all tier>=1)
python3 -c "
import json
m = json.load(open('$ROOT/analysis/pipeline-js/$SLUG/manifest.json'))
files = [f for f in m['files'] if f['tier'] >= 1]
json.dump(files, open('$ROOT/analysis/pipeline-js/$SLUG/review_files.json', 'w'), indent=1)
print(f'{len(files)} files (tier>=1)')
"
```

Report the file count and estimated cost to the user before proceeding.

## Step 3: Run the Pipeline

Read the scoped file list and launch:

```
Workflow({
  scriptPath: "<ROOT>/workflows/resilient_run_js.js",
  args: {
    run: "<SLUG>",
    files: <full JSON array from tier2_files.json>
  }
})
```

**Important:**
- Pass the actual JSON array as `files`, not a string or file path.
- `resilient_run_js.js` auto-retries up to 5x on failure. Use `review_pipeline_js.js` directly if nested workflows aren't supported in your context.
- WAVE=4 (4 concurrent agents). Don't increase without checking rate limits.
- Pipeline checkpoints to git — re-runs skip completed work automatically.

## Step 4: Process Results

After the workflow completes:

### 4a. Save the result
Copy workflow output to `$ROOT/analysis/pipeline-js/$SLUG/raw/result.json`.

### 4b. Summarize findings
```python
import json
r = json.load(open(f'{ROOT}/analysis/pipeline-js/{SLUG}/raw/result.json'))
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
  "$ROOT/analysis/pipeline-js/$SLUG/raw/result.json" \
  --plugin-dir "$PACKAGES/$SLUG" \
  --learned "$ROOT/analysis/pipeline-js/learned_patterns_js.json"
```

### 4d. Update cost tracking
Add entry to `$ROOT/analysis/pipeline-js/costs.json`:
```json
{
  "package": "<SLUG>",
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
git add "analysis/pipeline-js/$SLUG/" \
  analysis/pipeline-js/learned_patterns_js.json \
  analysis/pipeline-js/costs.json
git commit -m "data: $SLUG security review — <N> files, <M> confirmed findings"
git push origin main
```

## Batch Mode

To review multiple packages:

1. Run them **sequentially**, not in parallel (parallel hits rate limits).
2. Between runs, check `analysis/pipeline-js/costs.json` for cumulative spend.
3. After each run, extract patterns — later packages benefit from earlier discoveries.

## What the Pipeline Produces

For each confirmed finding:
- **vuln_class**: e.g. prototype_pollution, command_injection, path_traversal, ssrf, sql_injection, nosql_injection, auth_bypass, code_injection, redos, xxe
- **severity**: after adversarial verify + reachability downgrade
- **reachability**: who can reach it, what gates protect it
- **detection_pattern**: a grep pattern to find this vuln class in other codebases
- **gate_breachable**: whether an attacker can actually reach the vulnerable code path

## Interpreting Results

- **confirmed_count**: findings that survived adversarial verification
- **reachability_downgraded**: confirmed findings where the gate is unbreachable (severity lowered)
- **Real MED+ findings**: confirmed AND not downgraded — these are the ones worth reporting
- **LOW findings**: real bugs but require elevated privileges or unlikely conditions

## Troubleshooting

- **Rate limits**: Run one pipeline at a time. WAVE=4 is safe.
- **SSL errors**: Transient — the retry logic handles them. If persistent, reduce WAVE to 2.
- **No findings**: Normal for well-maintained packages. The pipeline's false-negative rate is low for tier-2 files.
- **Too many findings**: Check if most are downgraded by reachability. Authenticated-only findings are real but low-priority.
- **Partial results**: Re-run with same args — checkpoints skip completed work.
- **TypeScript/ESM files**: The router handles `.ts`, `.mjs`, `.cjs` extensions. If a file is missed, check that `lens_router_js.py` includes those extensions in its glob.
- **Minified files**: Skip `*.min.js` and dist bundles — route only source files. Check the manifest for accidental inclusion of node_modules or build artifacts.

## Available Tools

| Tool | Purpose | Cost |
|------|---------|------|
| `tools/lens_router_js.py` | Static file classification (JS/TS) | Free (regex) |
| `tools/ast_surface_js.py` | AST surface extraction (babel/acorn) | Free (local) |
| `tools/pattern_extractor.py` | Harvest grep patterns from findings | Free (Python) |
| `scripts/enumerate_surface_js.sh` | Ripgrep surface enumeration for JS | Free (local) |
| `workflows/review_pipeline_js.js` | Main LLM pipeline (JS variant) | ~$3.50/file |
| `workflows/resilient_run_js.js` | Self-healing wrapper (JS variant) | Same as above |
