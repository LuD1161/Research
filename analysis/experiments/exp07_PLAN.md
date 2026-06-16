# Exp 07 (PLAN, rev 2) — Static-context routing for per-file LLM security review

Revised after Codex review (round 1). Key changes: factorial design to de-confound
routing vs. context; context carries no bug-location; pre-registered ground truth + hard
negatives; phased (cheap auth-lens A/B first); normalized verify + paired stats.

## Hypotheses (decomposed, to avoid confounding)
At fixed model (Sonnet 4.6) and granularity (1 file):
- **H1 (routing):** lens-routed prompts beat a generic prompt.
- **H2 (context):** AST-derived *structural* context (reachability + arg-origin, **no sink
  line, no "this is vulnerable"**) beats no context.
- **H3 (additivity):** routing + context > either alone.

Grounded in exp 04 (granularity), exp 05 (per-file works, misses access-control), exp 06
(one access-control clause recovered it).

## Phase 0 — minimal, pre-registered auth-lens A/B (do this FIRST; Codex Low-2)
Cheapest highest-signal test before building the router.
- Arms: **A0** generic prompt vs **A1** generic + one access-control clause.
- Set: a pre-registered access-control positive set (≥4 missing-cap / unauth-reachable handlers
  drawn from smart-slider-3 + WooCommerce) + hard auth negatives (handlers WITH correct
  `current_user_can`+nonce). No structural context in either arm.
- Proceed to the full factorial only if A1 > A0 on access-control recall with FP not worse.

## Phase 1 — factorial design (de-confounds routing vs context; Codex High-1)
Four arms on the **same** files, same model, 1 file/agent:

| Arm | Prompt | Structural context |
|---|---|---|
| A (control) | generic | none |
| B (context-only) | generic | yes |
| C (routing-only) | routed lenses | none |
| D (full) | routed lenses | yes |

Routing effect = (C,D) vs (A,B); context effect = (B,D) vs (A,C); additivity from the 2×2.

## Context discipline — no localization leakage (Codex High-3)
- **All four arms** receive the **identical neutral "sink inventory"** (list of sink *calls*
  present in the file, no verdict) so context never gives Arm D a localization edge.
- The *extra* context in B/D is **structural only**: registering hook / caller chain /
  arg-origin (param ← caller ← request). **No sink line numbers, no sanitizer snippets, no
  "vulnerable here".** Documented as a hybrid static-assisted harness, not pure LLM.

## Ground truth — pre-registered, committed before any agent run (Codex High-4, Med-5/6)
`analysis/experiments/exp07/ground_truth.json`, schema per item:
`{file, function, vuln_class, acceptable_locations[] (incl. registrar/dispatcher for
access-control), aliases[], required_evidence, auth, impact}`.
- **Positives (≥8):** the 4 known (CVE webhook SQLi, Sanitize `js:`, Vimeo XSS,
  ControllerAjaxBrowse missing-cap) + ≥2 more access-control positives + ≥2 across other classes.
- **Hard negatives (≥12), tag-matched:** prepared-SQL file, escaped-output file,
  nonce+`current_user_can` handler, safe traversal-checked file, safe `unserialize` (allowed_classes),
  and **files previously mis-flagged** (e.g. the coupon-XSS sink). Easy negatives (interfaces/enums)
  only as a small sanity subset.

## Components (with fixture tests BEFORE agent runs; Codex High-2)
1. `tools/feature_extract.py` (extends `ast_surface.py`): per-file →
   `{sources[], sinks[], callbacks[], reachable_from[], arg_origin[], lens_tags[], tier}`.
   Must handle the positives' real shapes: `$args['search']`→SQL, custom `Request->getVar`,
   `Data->get(...)`→`addScript`, dynamic controller dispatch.
   - **Fixture tests** assert expected tags + structural context for every positive/negative
     file; extractor must pass before any agent run.
2. `tools/lens_router.py`: lens_tags → prompt fragments (sql/xss/auth/fileio/deserialize/ssrf);
   composes `general + matched lenses (+ context for B/D)`. Always include general lens
   (avoid off-type misses).
3. Runner workflow (Codex Low-1): explicit model id **`claude-sonnet-4-6`**, **3 reps/arm**,
   **randomized arm+file order**, **no arm labels in prompts**, stable JSON output paths,
   throttled waves of 5 + retry/backoff.
4. Shared **verify** pass — normalized (Codex Med-3): store raw findings; identical verifier
   prompt/model for all arms; **dedupe**; report **pre-verify recall** AND **post-verify
   precision = verified-TP / all-verified-real**.
5. `tools/score_run.py`: matches findings to ground truth by `vuln_class` + acceptable_locations
   (NOT a blind ±5 line rule); access-control catches citing the registrar/dispatcher count.

## Tiering kept OUT of the comparison (Codex Med-2)
All arms run on the full labeled set. `tier` is recorded as a **classifier metric only**;
skip-safety (does tier-0 drop any positive?) is evaluated **separately** against the labels —
never used to skip files inside the A/B/C/D comparison.

## Metrics & decision rule (Codex Med-1, Med-4)
- Per-file, per-rep paired table (catch = k/3). Report pre-verify recall, post-verify
  precision, FP count on negatives, and **router tag accuracy split into over-tag / under-tag**.
- **Decision (paired, not single-file):** adopt routing if C/D beat A/B on recall across **≥3
  access-control positives** with FP not worse post-verify; report routing and context effects
  separately with a McNemar-style paired test over the per-file/per-rep outcomes; require a real
  margin, not a one-file k/3 flip.

## Risks / controls
Nondeterminism → 3 reps + paired stats. Classifier error → fixture tests + over/under-tag
metrics; mis-tagged file still gets general lens. Leakage → neutral sink inventory to all arms,
structural-only extra context. Cost → Sonnet, ~20 files × 4 arms × 3 reps; throttle. Over-spec →
general lens always included.

## Implementation notes (Codex round-2, non-blocking — APPROVED)
- A/C arms are "no **extra** structural context," not "no context" — all arms share the neutral
  sink inventory as a common baseline; describe results that way.
- The paired test is **descriptive**, not inferential — don't overclaim significance from reps on
  the same files; cluster/bootstrap by file if a stat is reported.
- `ground_truth.json` + fixture expectations are **immutable once agent runs start**; any addition
  is a new experiment or explicitly flagged post hoc.
- Each hard negative records **why it is negative**, so a "verified-real on a negative" can be
  triaged as either a scorer FP or a newly discovered label gap.

## Deliverables
`tools/feature_extract.py` (+fixtures), `tools/lens_router.py`, `tools/score_run.py`, runner
workflow, `analysis/experiments/exp07/ground_truth.json`, `exp07_results.md`, MAP.md row.
Phase 0 result gates Phase 1.

> Status: **Codex-reviewed, APPROVED after 2 rounds** (model gpt-5.5). Ready to implement.
