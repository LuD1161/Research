# Agent Instructions: WP Plugin Security Review Pipeline

Read `PIPELINE.md` for full architecture docs. This file contains step-by-step instructions for running the pipeline.

## Before You Start

Ask the user:
1. **Which plugin(s)?** — Get the plugin slug(s) to review. Must exist in `/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/<slug>/`
2. **Scope?** — Tier-2 only (recommended, high-signal files) or full sweep (all tier>=1, expensive)?
3. **Already routed?** — Check if `analysis/pipeline/<slug>/manifest.json` exists. If yes, skip step 1.

## Step 1: Route the Plugin

```bash
SLUG="<plugin-slug>"
ROOT="/DATA/openclaw/Repos/Research"
PLUGINS="/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src"

mkdir -p "$ROOT/analysis/pipeline/$SLUG/briefs" \
         "$ROOT/analysis/pipeline/$SLUG/checkpoints" \
         "$ROOT/analysis/pipeline/$SLUG/raw"

python3 "$ROOT/tools/lens_router.py" "$PLUGINS/$SLUG" \
  --briefs "$ROOT/analysis/pipeline/$SLUG/briefs" \
  --manifest "$ROOT/analysis/pipeline/$SLUG/manifest.json"
```

## Step 2: Extract Tier-2 Files

```bash
python3 -c "
import json
m = json.load(open('$ROOT/analysis/pipeline/$SLUG/manifest.json'))
t2 = [f for f in m['files'] if f['tier'] == 2]
json.dump(t2, open('$ROOT/analysis/pipeline/$SLUG/tier2_files.json', 'w'), indent=1)
print(f'{len(t2)} tier-2 files')
"
```

## Step 3: Launch the Pipeline

Read `$ROOT/analysis/pipeline/$SLUG/tier2_files.json` and launch:

```
Workflow({
  scriptPath: "/DATA/openclaw/Repos/Research/workflows/resilient_run.js",
  args: {
    run: "<SLUG>",
    files: <full JSON contents of tier2_files.json>
  }
})
```

**Important**: Pass the actual JSON array from tier2_files.json as the `files` value — not a string, not a file path. The workflow reads `args.files` directly.

If `resilient_run.js` fails (nested workflow not supported in your context), fall back to:

```
Workflow({
  scriptPath: "/DATA/openclaw/Repos/Research/workflows/review_pipeline.js",
  args: {
    run: "<SLUG>",
    files: <full JSON contents of tier2_files.json>
  }
})
```

## Step 4: Save Results

Copy the workflow output to `analysis/pipeline/$SLUG/raw/result.json`.

## Step 5: Extract Learned Patterns

```bash
python3 "$ROOT/tools/pattern_extractor.py" \
  "$ROOT/analysis/pipeline/$SLUG/raw/result.json" \
  --plugin-dir "$PLUGINS/$SLUG" \
  --learned "$ROOT/analysis/pipeline/learned_patterns.json"
```

## Step 6: Update Cost Tracking

Add an entry to `analysis/pipeline/costs.json` with:
- plugin, run_id, date
- agents, duration_ms, subagent_tokens, tool_uses (from workflow output `<usage>` block)
- estimated_cost_usd: `(tokens * 0.6 / 1M * 3.0 + tokens * 0.4 / 1M * 15.0) * 1.2`
- results: files_reviewed, raw_findings, confirmed, reachability_applied, reachability_downgraded

## Step 7: Commit and Push

```bash
cd "$ROOT"
git add "analysis/pipeline/$SLUG/" analysis/pipeline/learned_patterns.json analysis/pipeline/costs.json
git commit -m "data: $SLUG security review — <N> files, <M> confirmed findings"
git push origin main
```

## Available Plugins

All plugins in `/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/` are available. To list:

```bash
ls /home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src/ | grep -E '^[a-z0-9]'
```

## Already Completed

Check `analysis/pipeline/costs.json` and `analysis/pipeline/` subdirectories for completed runs. Don't re-run unless the user asks.

## Troubleshooting

- **Rate limits / SSL errors**: WAVE is set to 4. The pipeline retries 3x per phase. `resilient_run.js` retries 5x at the workflow level.
- **Manifest already exists**: Skip step 1, go straight to step 2.
- **Partial results**: Re-run with the same args — checkpointed agents are skipped automatically.
- **Nested workflow error**: Use `review_pipeline.js` directly instead of `resilient_run.js`.
