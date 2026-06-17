# Exp 07 Phase 0 — auth-lens A/B result

Pre-registered gate (see `ground_truth_phase0.json`, `exp07_PLAN.md`). Model
`claude-sonnet-4-6`, 1 file/agent, 3 reps/arm, 8 files, durable harness. 48/48 units
completed (after two rate-limit-throttled resumes — the durable checkpoints meant zero
re-work; that itself validated the resumable harness).

## Arms
- **A0** generic: "evaluate this file for security issues."
- **A1** generic + ONE access-control clause (nonce ≠ authorization; reachable handler doing
  privileged work with no `current_user_can` = broken access control).

## Result (raw scorer, vuln_class access-control match)
| file | label | A0 (k/3) | A1 (k/3) |
|---|---|---|---|
| P1 ControllerAjaxBrowse | positive | **0/3** | 3/3 |
| P2 ajax_paginate | positive | 1/3 | 3/3 |
| P3 get_icons | positive | 3/3 | 3/3 |
| P4 dismiss_notice | positive | 3/3 | 3/3 |
| N1 um ajax/class-secure | hard_neg | 2/3 | 0/3 |
| N2 um common/class-secure | hard_neg | 2/3 | 1/3 |
| N3 wc exporters | hard_neg* | 3/3 | 3/3 |
| E1 wc formatting | easy_neg | 0/3 | 0/3 |

|  | recall (pos) | FP (neg) |
|---|---|---|
| A0 | 7/12 = **0.58** | 7/12 = 0.58 |
| A1 | 12/12 = **1.00** | 4/12 = 0.33 |

## Two integrity corrections the run surfaced
1. **N3 is a LABEL GAP, not an FP.** Both arms (3/3) flagged `download_export_file`
   (`class-wc-admin-exporters.php`, hooked on `admin_init`): nonce `product-csv` checked, but
   **no `current_user_can`**. I had labeled N3 negative based on the *sibling* method
   `do_ajax_product_export` (correctly gated). The agents were right; my label was wrong. So
   N3 must leave the negative set. (Exploitability: same nonce-gated class as UM #1 — the
   `product-csv` nonce only mints on the cap-gated export page, so likely not a lower-priv
   exploit; code-level missing-cap is real. Not claimed as a CVE.)
2. **Scorer over-matches "capability" as data.** N1's A0 hits include
   `capability_enumeration` / `missing_capability_whitelist` / `user_controlled_capability_query`
   — these are "admin supplies arbitrary capability *strings* to a scanner," NOT missing
   authorization (the handler IS gated by `manage_options`). The substring matcher counts them.
   Affects A0 more than A1.

### Corrected (N3 removed from negatives)
| | recall (pos) | FP (neg, N1/N2/E1) |
|---|---|---|
| A0 | 0.58 | 4/9 = 0.44 |
| A1 | 1.00 | 1/9 = **0.11** |

## Decision: **PROCEED** (lens lever confirmed)
A1 beats A0 on recall by a wide, unambiguous margin (1.00 vs 0.58 — A0 missed P1 entirely
across all 3 reps and P2 in 2/3) **and** A1's false-positive rate is *lower*, not higher,
under every reasonable matching. The worry that "adding the line inflates FPs" did **not**
materialize here — the access-control clause made the model both more sensitive AND more
disciplined (it correctly cleared the gated handlers it would otherwise hand-wave).

Caveats (don't overclaim): 8 files, 3 reps, descriptive not inferential; recall ceiling is
flattered by easy positives (P3/P4 caught by both); the real lift is concentrated on P1/P2
(the cross-file-registered + buried-handler cases) — exactly where routing/structure should
help, motivating Phase 1 (routing × structural context).

## Bearing on the pipeline
This is the data that justifies the router injecting the access-control lens on handler files:
measured recall lift with no FP cost. The router (`tools/lens_router.py`) operationalizes it
per-file; `review_pipeline.js` runs it at scale.
