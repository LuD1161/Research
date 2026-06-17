# Cost & Progress

## Current Status

**28 done, 60 pending, 7 skipped, 8 failed** (out of 103 total plugins)

## Wave Progress

| Wave | Status | Plugins Done | Findings | Cost | Time |
|------|--------|-------------|----------|------|------|
| 10 | done | 3/10 (7 skipped) | 5 confirmed | ~$20 | 21m |
| 9 | done | 10/10 | 25 confirmed | ~$74 | 86m |
| 8 | done | 10/10 | 23 confirmed | ~$83 | 103m |
| 7 | partial | 2/10 (8 rate-limited) | 4 confirmed | ~$26 | 25m |
| 6 | pending | — | — | ~$187 est | — |
| 5 | pending | — | — | ~$264 est | — |
| 4 | pending | — | — | ~$364 est | — |
| 3 | pending | — | — | ~$559 est | — |
| 2 | pending | — | — | ~$805 est | — |
| 1 | pending | — | — | ~$1,398 est | — |

**Spent so far: ~$203** | **Remaining estimate: ~$3,577** | **Total: ~$3,870**

## Per-Plugin Cost Benchmarks

| Plugin | Files | Agents | Tokens | Cost | $/File |
|--------|-------|--------|--------|------|--------|
| woo-order-export-lite | 4 | 24 | 1.48M | $13.86 | $3.47 |
| ajax-search-for-woocommerce | 15 | 63 | 3.69M | $34.57 | $2.30 |
| flexible-shipping | 27 | 49 | 1.99M | $18.67 | $0.69 |

Average: **~$2.50/file**, **~$0.50/agent**, **~60k tokens/agent**

## How to Resume

Re-run failed plugins:
```
Workflow({scriptPath: "workflows/rerun_failed.js"})
```

Run a specific wave:
```
Workflow({scriptPath: "workflows/batch_wave.js", args: {wave: 7}})
```

Check status:
```bash
python3 -c "import json; t=json.load(open('analysis/pipeline/tracker.json')); print(f'done={t[\"done\"]} pending={t[\"pending\"]} skipped={t[\"skipped\"]} failed={t[\"failed\"]}')"
```
