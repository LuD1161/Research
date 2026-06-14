# Analysis Methodology: Five-Layer Pipeline

This document describes the five-layer analysis pipeline used to audit the top 100
WordPress plugins for security vulnerabilities. Each layer addresses a distinct class
of vulnerabilities and complements the others. Coverage estimates are based on
empirical data from prior WordPress security research and the known limitations
of each technique.

---

## Overview

```
┌─────────────────────────────────────────────────────────────────────┐
│                    WordPress Plugin Source Code                      │
└──────────────────────────────┬──────────────────────────────────────┘
                               │
              ┌────────────────▼────────────────┐
              │  Layer 1: Pattern Matching       │  ← Semgrep + ripgrep
              │  Broadest net, lowest precision  │
              └────────────────┬────────────────┘
                               │ ~60% coverage, ~40% FP rate
              ┌────────────────▼────────────────┐
              │  Layer 2: Intraprocedural Taint  │  ← custom tree-sitter tool
              │  Context-aware within functions  │
              └────────────────┬────────────────┘
                               │ ~75% coverage, ~20% FP rate
              ┌────────────────▼────────────────┐
              │  Layer 3: Interprocedural CPG    │  ← Joern
              │  Cross-function dataflow         │
              └────────────────┬────────────────┘
                               │ ~85% coverage, ~15% FP rate
              ┌────────────────▼────────────────┐
              │  Layer 4: WordPress-Aware        │  ← hook resolver + DB oracle
              │  WP-specific patterns            │
              └────────────────┬────────────────┘
                               │ ~90% coverage, ~10% FP rate
              ┌────────────────▼────────────────┐
              │  Layer 5: Manual Expert Review   │  ← human analyst
              │  Synthesize, verify, assess      │
              └─────────────────────────────────┘
                               │ ~95% coverage (analyst-bound)
```

---

## Layer 1: Pattern Matching (Semgrep + ripgrep)

### Purpose

Cast the widest possible net. Identify obvious vulnerability patterns syntactically
without requiring full program analysis. Generate a triaged candidate list for
deeper layers.

### Tools

- **Semgrep** with custom WordPress-specific rulesets (`tools/wp_audit_rules/`)
- **ripgrep** for regex-based searches (dangerous functions, superglobal usage)

### Rules Coverage

| Rule file | Vulnerability class |
|-----------|-------------------|
| `sqli.yaml` | SQL injection via `$wpdb->query` without `prepare()` |
| `xss.yaml` | Unescaped `echo` of user input |
| `rce.yaml` | `eval`, `assert`, `system`, `exec`, shell functions |
| `csrf.yaml` | AJAX handlers missing nonce verification |
| `auth_bypass.yaml` | Missing `current_user_can()` before privileged actions |
| `ssrf.yaml` | `wp_remote_*` with user-controlled URL |
| `path_traversal.yaml` | File functions with unvalidated path |
| `object_injection.yaml` | `unserialize()` of user input |
| `open_redirect.yaml` | `wp_redirect()` with user-controlled URL |
| `crypto.yaml` | Weak hashing (`md5`, `sha1`) for passwords/tokens |

### Coverage Estimate

**~60% of exploitable vulnerabilities** (high recall, lower precision).

Pattern matching excels at:
- Syntactically obvious sinks without any sanitization nearby
- Dangerous function calls (`eval`, `extract`, `unserialize`)
- Missing security function calls (nonce checks, capability checks)

Pattern matching misses:
- Indirect flows through multiple function calls
- Vulnerabilities where a sanitizer is present but wrong-context
- Cross-request (stored) vulnerabilities
- Any runtime-resolved dispatch (hooks, dynamic methods, variable variables)

### Output

Results written to `analysis/phase1_semgrep/` as SARIF + JSON.
High-severity findings automatically promoted to Layer 2 queue.

### Running

```bash
semgrep --config tools/wp_audit_rules/ plugins/<plugin>/ --output analysis/phase1_semgrep/<plugin>.json --json
# or via pipeline:
make analyze PLUGIN=<plugin>
```

---

## Layer 2: Intraprocedural Taint Analysis (custom tree-sitter tool)

### Purpose

Refine Layer 1 findings with context-aware taint labels within individual functions.
Eliminate false positives where a sanitizer correctly clears taint before a sink.
Identify new findings where a sanitizer is present but in the wrong context.

### Tools

- **Custom Python tool** built on [tree-sitter-php](https://github.com/tree-sitter/tree-sitter-php)
- Source/sink/sanitizer definitions from `tools/wp_sources_sinks.yaml`
- Operates per-function (one CFG per method/function)

### Analysis Steps

1. Parse PHP source to AST using tree-sitter
2. Build a per-function control-flow graph (CFG)
3. Assign taint labels to AST nodes that read from sources (superglobals,
   WordPress input functions, DB reads)
4. Propagate taint labels forward through assignments, concatenation,
   function return values (intra-procedurally)
5. Check taint label at each sink call: if tainted, flag as candidate finding
6. Apply sanitizer context rules: a sanitizer clears taint only for its
   declared context (SQL, HTML, shell, file path)

### Taint Label Contexts

Each tainted value carries a set of context labels:

```
{ sql, html, shell, file_path, url, object }
```

- `sanitize_text_field` clears: `{ }` (none — it is an *input normalizer*, not a sink sanitizer)
- `$wpdb->prepare` clears: `{ sql }`
- `esc_html` clears: `{ html }`
- `escapeshellarg` clears: `{ shell }`
- `esc_url` clears: `{ url }`
- `absint` / `intval` clear: `{ sql }` (integer contexts only)

A finding is emitted when a value's taint label set still contains the context
matching the target sink at the point of the call.

### Coverage Estimate

**~75% of exploitable vulnerabilities**.

Intraprocedural taint adds over Layer 1:
- Eliminates ~50% of Layer 1 false positives (correct sanitizer present)
- Catches context-mismatch sanitizer cases (Pattern #9 in `anti_patterns.md`)
- Catches conditional sanitization failures on the unsanitized CFG branch (Pattern #7)

Intraprocedural taint misses:
- Flows that cross function boundaries (caught in Layer 3)
- All cross-request patterns (caught in Layer 4)
- Dynamic dispatch (hooks, `call_user_func`, `$$var`)

### Output

Results written to `analysis/phase2_taint/` as JSON with annotated CFG paths.

### Running

```bash
python scripts/run_analysis.py --layer 2 --plugin plugins/<plugin>/src/
```

---

## Layer 3: Interprocedural Analysis (Joern CPG)

### Purpose

Track taint across function and method call boundaries. Detect vulnerabilities
where user input flows through multiple functions before reaching a sink.
Use the Code Property Graph (CPG) which combines AST, CFG, PDG, and call graph.

### Tools

- **Joern** (open-source CPG platform for PHP)
- Queries: `tools/joern_queries/source_sink.sc`, `taint_flows.sc`, `attack_surface.sc`

### Analysis Steps

1. Build CPG for the plugin with `joern --import plugins/<plugin>/src/`
2. Run `source_sink.sc::allFlows()` for primary source-to-sink tracing
3. Run `taint_flows.sc::allAdvancedFlows()` for cross-function and
   wrong-context sanitizer detection
4. Run `attack_surface.sc::attackSurfaceSummary()` for entry point enumeration
5. Deduplicate against Layer 1 and Layer 2 findings

### Key Query Groups

| Script | Query | Finds |
|--------|-------|-------|
| `source_sink.sc` | `sqlInjectionFlows` | Superglobal → `$wpdb` sink |
| `source_sink.sc` | `xssFlows` | Superglobal → `echo`/`print`/`wp_send_json` |
| `source_sink.sc` | `commandInjectionFlows` | Superglobal → `exec`/`system`/`shell_exec` |
| `source_sink.sc` | `fileInclusionFlows` | Superglobal → `include`/`require`/`fopen` |
| `source_sink.sc` | `deserializationFlows` | User input or DB read → `unserialize` |
| `source_sink.sc` | `ssrfFlows` | Superglobal → `wp_remote_*`/`curl_exec` |
| `taint_flows.sc` | `crossFunctionSqlFlows` | Multi-hop SQL injection |
| `taint_flows.sc` | `hookTaintFlows` | Taint through `apply_filters` |
| `taint_flows.sc` | `objectPropertyTaintFlows` | `$this->prop` taint propagation |
| `taint_flows.sc` | `wrongContextSanitizerFlows` | Non-SQL sanitizer before SQL sink |
| `attack_surface.sc` | `unauthenticatedAjaxEndpoints` | `wp_ajax_nopriv_` handlers |
| `attack_surface.sc` | `publicRestEndpoints` | REST with `__return_true` |
| `attack_surface.sc` | `dynamicClassInstantiation` | `new $var()` with user input |

### Coverage Estimate

**~85% of exploitable vulnerabilities**.

Layer 3 adds over Layer 2:
- Cross-function taint flows (the most common real-world vulnerability pattern)
- Object property taint tracking
- Return value propagation from tainted callees
- Wrong-context sanitizer detection across function boundaries
- Full attack surface enumeration

Layer 3 misses:
- Cross-request (stored) patterns (the DB breaks the taint chain)
- WordPress hook system flows (callback registry is runtime)
- Dynamic dispatch (`$$var`, `$obj->$method()`, `call_user_func($var)`)
- These are partially handled by Layer 4

### Output

Joern results written to `analysis/phase3_joern/` as JSON + plain text flow paths.

### Running

```bash
joern --import plugins/<plugin>/src/
joern --script tools/joern_queries/source_sink.sc
joern --script tools/joern_queries/taint_flows.sc
joern --script tools/joern_queries/attack_surface.sc
```

Or via the pipeline script:
```bash
bash scripts/run_analysis.sh <plugin>
```

---

## Layer 4: WordPress-Aware Analysis (Hook Resolver + DB Taint Oracle)

### Purpose

Handle WordPress-specific patterns that standard static analysis cannot model:
the hook system, database-mediated taint, and WordPress API semantics.
This layer adds domain knowledge as a post-processing step on top of Layers 1–3.

### Components

#### 4a. Hook Resolver

Builds a global registry mapping hook names to all registered callbacks:

```
'wp_ajax_nopriv_search' → [handle_search(), \MyPlugin\Ajax::search()]
'the_content'           → [add_footnotes(), inject_ads(), ...]
'my_plugin_query'       → [<anonymous fn at plugin.php:42>]
```

Steps:
1. Grep all `add_action()` / `add_filter()` calls across the plugin corpus
2. Extract (hook_name, priority, callback) triples
3. For string-literal hook names: record exact mapping
4. For computed hook names: flag as unresolved (requires manual review)
5. Inject synthetic call edges from `apply_filters('X', ...)` to all registered
   callbacks for hook `X`
6. Re-run Joern taint analysis with the augmented call graph

#### 4b. DB Taint Oracle

Treats all database read functions as tainted sources, enabling second-order
vulnerability detection:

Sources treated as tainted at Layer 4 (in addition to superglobals):
- `$wpdb->get_var()`, `get_row()`, `get_col()`, `get_results()`
- `get_option()`, `get_user_meta()`, `get_post_meta()`, `get_term_meta()`
- `get_comment_meta()`
- `get_transient()`, `get_site_transient()`
- `wp_cache_get()`

This catches stored XSS and second-order SQLi where user data was previously
written to the database without adequate sanitization.

#### 4c. WordPress Security API Audit

Verifies that security-sensitive operations use the correct WordPress APIs:

- All AJAX handlers have `check_ajax_referer()` or `wp_verify_nonce()`
- All authenticated endpoints have `current_user_can()`
- All REST endpoints have a non-trivial `permission_callback`
- File uploads use `wp_handle_upload()` rather than raw `move_uploaded_file()`
- Redirects use `wp_safe_redirect()` rather than raw `header('Location: ...')`

### Coverage Estimate

**~90% of exploitable vulnerabilities**.

Layer 4 adds over Layer 3:
- Stored XSS and second-order SQLi (major vulnerability class)
- Hook-mediated taint flows (cross-plugin injection vectors)
- CSRF vulnerabilities from missing nonce checks
- Privilege escalation from missing capability checks
- Transient/cache-mediated taint (same pattern as stored, different mechanism)

Layer 4 misses:
- Novel or obfuscated patterns (no known signature)
- Logic-level vulnerabilities (business logic flaws, IDOR, race conditions)
- Vulnerabilities requiring understanding of plugin-specific invariants
- These require Layer 5 (manual review)

### Output

Results written to `analysis/phase4_wp_aware/` as structured JSON with
hook registry, DB taint findings, and API audit findings.

### Running

```bash
# Extract hook registry
bash scripts/enumerate_surface.sh plugins/<plugin>/src/

# Run DB taint oracle (re-runs Joern with augmented sources)
python scripts/run_analysis.py --layer 4 --plugin <plugin>
```

---

## Layer 5: Expert Manual Review

### Purpose

Synthesize all automated findings, verify exploitability, assess real-world impact,
eliminate remaining false positives, and discover vulnerability classes that
elude all automated tools. This layer is the final arbiter of whether a finding
becomes a reported vulnerability.

### Process

#### 5a. Finding Triage

For each candidate finding from Layers 1–4:

1. **Reproduce the flow** — trace the finding manually in the source code
2. **Verify the source** — confirm that the source is truly user-controlled and
   not already sanitized upstream
3. **Verify the sink** — confirm that the sink is genuinely dangerous in this
   context (e.g., the SQL query actually executes, the echo is in a page response)
4. **Check sanitizers on path** — verify that no correct-context sanitizer exists
   on any reaching path
5. **Assess authentication gating** — determine the minimum privilege level needed
   to trigger the path (unauthenticated, subscriber, contributor, admin)
6. **Construct minimal PoC** — write the minimum request that demonstrates the
   vulnerability exists (not a weaponised exploit)

#### 5b. Pattern-Based Manual Hunting

For each of the 12 anti-patterns in `docs/anti_patterns.md`, perform
pattern-specific manual review:

- **`$$var`**: enumerate all files with variable variables; assess each for
  user-controlled key
- **`$obj->$method()`**: enumerate dynamic dispatch sites; enumerate callable
  methods in scope
- **Hook flows**: review the hook registry output; manually trace each hook
  callback that accepts user data
- **`extract()`**: review every call site; assess subsequent variable usage
- **Magic methods**: enumerate all classes with `__get`/`__set`/`__call`;
  trace property accesses

#### 5c. Logic Vulnerability Review

Automated tools cannot detect business-logic flaws. Manual review specifically
targets:

- **Insecure Direct Object Reference (IDOR)**: API endpoints that return or
  modify records without verifying the current user owns them
- **Race conditions**: concurrent request patterns around file creation,
  option updates, or nonce consumption
- **Authentication bypass via edge cases**: zero-value user IDs, empty strings
  bypassing `!empty()` checks, type juggling (`0 == "admin"` in PHP)
- **Mass assignment**: endpoints accepting full object payloads and updating
  all fields without allowlisting
- **Feature interaction vulnerabilities**: combinations of two "safe" features
  that create a vulnerability when used together

#### 5d. Impact Assessment

For confirmed findings, assess:

- **CVSS score** (base metrics: AV, AC, PR, UI, S, C, I, A)
- **Affected install count** (from `plugins/manifest.csv`)
- **Exploitability** (authentication required, interaction required, complexity)
- **Impact** (data exposure, site takeover, lateral movement)
- **Disclosure timeline** (standard 90-day timeline per our ethical framework)

### Coverage Estimate

**~95% of exploitable vulnerabilities** (analyst-effort-bound).

The residual ~5% consists of:
- Vulnerabilities requiring dynamic testing to observe runtime state
- Obfuscated or encoded logic only reversible at runtime
- Timing-dependent race conditions
- Multi-step attack chains across multiple plugins or WordPress core

### Output

- Per-plugin reports: `reports/<plugin>/`
- Critical findings: `reports/critical_findings/`
- Executive summary: `reports/executive_summary.md`
- Disclosure drafts: `reports/disclosures/<plugin>/`

### Tooling for Manual Review

```bash
# Quickly navigate to a Semgrep finding location
code plugins/<plugin>/src/<file>.php:<line>

# Check what Layer 3 found for a specific function
cat analysis/phase3_joern/<plugin>.json | jq '.flows[] | select(.sink.method == "query")'

# Cross-reference the hook registry
cat analysis/phase4_wp_aware/<plugin>/hook_registry.json | jq '.["wp_ajax_nopriv_search"]'
```

---

## Pipeline Execution

### Full run (all layers, one plugin)

```bash
make analyze PLUGIN=<slug>
# equivalent to:
bash scripts/run_analysis.sh <slug>
```

### Full run (all 100 plugins)

```bash
make analyze
# Runs in parallel with GNU parallel or xargs -P
```

### Layer-by-layer execution

```bash
make analyze-l1 PLUGIN=<slug>   # Semgrep only
make analyze-l2 PLUGIN=<slug>   # tree-sitter taint only
make analyze-l3 PLUGIN=<slug>   # Joern only
make analyze-l4 PLUGIN=<slug>   # WP-aware only
make report     PLUGIN=<slug>   # Generate report from analysis/
```

---

## Coverage Summary by Vulnerability Class

| Vulnerability Class | L1 | L2 | L3 | L4 | L5 |
|--------------------|----|----|----|----|-----|
| Simple SQLi (inline) | ✓ | ✓ | ✓ | ✓ | ✓ |
| SQLi via function call | — | — | ✓ | ✓ | ✓ |
| SQLi with wrong sanitizer | — | ✓ | ✓ | ✓ | ✓ |
| Second-order SQLi | — | — | — | ✓ | ✓ |
| Reflected XSS | ✓ | ✓ | ✓ | ✓ | ✓ |
| Stored XSS | — | — | — | ✓ | ✓ |
| XSS via hooks | — | — | ~ | ✓ | ✓ |
| RCE (eval/system) | ✓ | ✓ | ✓ | ✓ | ✓ |
| RCE via dynamic dispatch | ✓* | ~ | ~ | ✓ | ✓ |
| PHP Object Injection | ✓ | ✓ | ✓ | ✓ | ✓ |
| CSRF (missing nonce) | ✓ | — | ✓ | ✓ | ✓ |
| Privilege Escalation | ✓ | — | ✓ | ✓ | ✓ |
| SSRF | ✓ | ✓ | ✓ | ✓ | ✓ |
| Path Traversal / LFI | ✓ | ✓ | ✓ | ✓ | ✓ |
| Open Redirect | ✓ | ✓ | ✓ | ✓ | ✓ |
| IDOR / Logic Flaws | — | — | — | — | ✓ |

**Legend:** ✓ = catches it, ~ = partial/approximation, — = does not catch, * = syntactic flag only

---

## Estimated Overall Coverage

| Layer | Cumulative Coverage | Cumulative FP Rate |
|-------|--------------------|--------------------|
| L1 only | ~60% | ~40% |
| L1 + L2 | ~75% | ~20% |
| L1 + L2 + L3 | ~85% | ~15% |
| L1 + L2 + L3 + L4 | ~90% | ~10% |
| All five layers | ~95% | <5% (analyst-verified) |

These estimates are based on a combination of:
- Published WordPress security research (Wordfence, Patchstack, WPScan advisories)
- Empirical FP rates from Semgrep WordPress rulesets
- Academic literature on taint analysis precision/recall for PHP

The residual 5% uncovered consists primarily of logic vulnerabilities, race conditions,
and vulnerabilities only triggerable through dynamic interaction.
