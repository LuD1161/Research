# Methodology Fixes & Tooling (worktree `woo-security-review`)

Bugs found in the existing pipeline and the tooling built to address them.

## Fix 1 — `enumerate_surface.sh` silently produced blank attack-surface maps
- **Bug:** the script used `rg --include='*.php'`. `--include` is a **grep** flag that ripgrep
  rejects (exit 2). Wrapped in `2>/dev/null || true`, every scan errored and rendered as
  **"None found"** — across the whole corpus. WooCommerce reported 0 AJAX / 0 REST / 0 `$wpdb` /
  0 `current_user_can` (actual `current_user_can` count: **356**).
- **Root cause pattern:** pairing `2>/dev/null || true` with a `"None found"` default turns a tool
  failure into a confident "safe" result.
- **Fix:** use `-g`/`--glob`; **fail loud** (distinguish rg exit 1 = no match from exit 2 = error,
  print `⚠ SCAN ERROR`); expanded entry-point taxonomy (admin-post, public REST, blocks, widgets,
  settings/meta-box save, activation hooks, xmlrpc/heartbeat/raw-input, unguarded direct-access
  files, deserialization).
- Note: the master prompt `docs/spec.md` also had a `\|`-alternation bug (ripgrep treats `\|` as a
  literal pipe), but the committed script used bare pipes so that one never bit.

## Fix 2 — grep allowlist → AST-based generic inventory (`tools/ast_surface.py`)
- A grep-for-known-names list is inherently incomplete and blind to runtime-resolved registrations.
- The AST extractor parses every PHP file (tree-sitter) and classifies every registration call by
  its first argument. On WooCommerce it found **6,373 registrations**, including **777 dynamic hook
  registrations** invisible to grep (e.g. `add_filter('render_block_' . $block_name)`,
  `do_action('woocommerce_blocks_validate_location_' . $location . '_fields')`).

## Gap 3 — baseline SQLi rules miss `get_col` (surfaced by exp 02)
- The custom `sqli.yaml` covers `query`/`get_var`/`get_row`/`get_results` but **not `get_col`** —
  the sink in CVE-2021-32790. The interpolation rules also require a **superglobal at the sink**, so
  a REST-param flow several hops away is invisible. Add a `get_col` no-prepare rule and treat REST
  params / function params as taint sources.

## Process recommendations (from the experiment series)
1. **Small review batches (1–3 files)** for the deep pass — big batches trade recall for cost (exp 02 vs 04).
2. **Pair a cheap discovery model with an adversarial-verify pass** — recall + precision (exp 05).
3. **Add an access-control lens** to the prompt for reachability bugs (exp 06).
4. **Validate output schema** — the 201–300 verdicts had `plugin:null/confirmed:null` drift; aggregates over them can't be trusted without normalization.
5. **Throttle for rate limits** — small batches, waves of 5–6, retry/backoff.
