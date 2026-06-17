# Agent Instructions: Security Review Pipeline

Read `PIPELINE.md` for full architecture docs. This file has step-by-step instructions.

## Before You Start

Ask the user:
1. **What to review?** — A plugin slug, a wave number (1-10), or "all pending" / "re-run failed".
2. **Scope?** — Tier-2 only (recommended) or full sweep (all tier>=1, 3-5x more expensive).
3. **Already routed?** — Check `analysis/pipeline/<slug>/manifest.json`. If exists, skip routing.
4. **Check tracker** — Read `analysis/pipeline/tracker.json` to see what's done/pending/failed.

## Quick Paths

### Run a single plugin
```
Follow Steps 1-7 below.
```

### Run a wave (10 plugins)
All 100 plugins are pre-routed and split into waves (wave_01.json through wave_10.json).
```
Workflow({
  scriptPath: "/DATA/openclaw/Repos/Research/workflows/batch_wave.js",
  args: {"wave": <N>}
})
```
Wave 1 = largest plugins (403 tier-2, ~$1,398). Wave 10 = smallest (3 tier-2, ~$10).

### Re-run all failed/pending
```
Workflow({
  scriptPath: "/DATA/openclaw/Repos/Research/workflows/rerun_failed.js"
})
```
Or filter by status:
```
Workflow({
  scriptPath: "/DATA/openclaw/Repos/Research/workflows/rerun_failed.js",
  args: {"status": "failed"}
})
```

### Check progress
Read `analysis/pipeline/tracker.json` — every plugin has a status:
- **done**: completed successfully with results
- **pending**: not yet run
- **failed**: ran but errored (will be retried by rerun_failed.js)
- **skipped**: 0 tier-2 files, nothing to review

## Variables

```bash
ROOT="/DATA/openclaw/Repos/Research"
PLUGINS="/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src"
SLUG="<plugin-slug>"
```

## Step 1: Route the Plugin

Skip if `$ROOT/analysis/pipeline/$SLUG/manifest.json` exists.

```bash
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

**Important**: Pass the actual JSON array as `files`, not a string or path.

Fallback if nested workflows aren't supported:
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

Copy workflow output to `analysis/pipeline/$SLUG/raw/result.json`.

## Step 5: Extract Learned Patterns

```bash
python3 "$ROOT/tools/pattern_extractor.py" \
  "$ROOT/analysis/pipeline/$SLUG/raw/result.json" \
  --plugin-dir "$PLUGINS/$SLUG" \
  --learned "$ROOT/analysis/pipeline/learned_patterns.json"
```

## Step 6: Update Cost Tracking

Add entry to `analysis/pipeline/costs.json`:
- plugin, run_id, date
- agents, duration_ms, subagent_tokens, tool_uses (from workflow `<usage>` block)
- estimated_cost_usd: `(tokens * 0.6 / 1M * 3.0 + tokens * 0.4 / 1M * 15.0) * 1.2`
- results: files_reviewed, raw_findings, confirmed, reachability_applied, reachability_downgraded

## Step 7: Update Tracker and Commit

Update `analysis/pipeline/tracker.json` — set the plugin status to "done" with result summary.

```bash
cd "$ROOT"
git add "analysis/pipeline/$SLUG/" analysis/pipeline/learned_patterns.json \
  analysis/pipeline/costs.json analysis/pipeline/tracker.json
git -c user.name="Aseem Shrey" -c user.email="ashrey@andrew.cmu.edu" \
  commit -m "data: $SLUG security review — <N> files, <M> confirmed findings"
git push origin main
```

## Batch Waves

100 plugins pre-routed into 10 waves (sorted by tier-2 count, heaviest first):

| Wave | Plugins | Tier-2 Files | Est. Cost |
|------|---------|-------------|-----------|
| 1 | photo-gallery, foogallery, feeds-for-youtube, ... | 403 | ~$1,398 |
| 2 | presto-player, real-cookie-banner, ... | 232 | ~$805 |
| 3 | smart-slider-3, really-simple-ssl, ... | 161 | ~$559 |
| 4 | envira-gallery-lite, redux-framework, ... | 105 | ~$364 |
| 5 | kadence-starter-templates, ... | 76 | ~$264 |
| 6 | cmp-coming-soon-maintenance, ... | 54 | ~$187 |
| 7 | easy-fancybox, ... | 37 | ~$128 |
| 8 | cookiebot, ... | 27 | ~$94 |
| 9 | admin-site-enhancements, ... | 17 | ~$59 |
| 10 | header-and-footer-scripts, ... | 3 | ~$10 |

Run bottom-up (10→1) so the pattern library grows on smaller plugins first.

## Troubleshooting

- **Rate limits / SSL errors**: WAVE=4. Pipeline retries 3x/phase. resilient_run retries 5x.
- **Partial results**: Re-run same args — checkpoints skip completed work.
- **Nested workflow error**: Use `review_pipeline.js` directly instead of `resilient_run.js`.
- **Check what's stuck**: Look at `analysis/pipeline/<slug>/checkpoints/` timestamps.
- **Re-run failures**: `Workflow({scriptPath: ".../rerun_failed.js"})`
