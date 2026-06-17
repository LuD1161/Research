# Build brief: multi-ecosystem LLM vulnerability-discovery pipeline (start with npm)

Canonical handoff spec for the agent building the testing setup. Sits alongside the corpus and
methodology in this folder. Treat the other docs here as read-only inputs.

## Context & goal
We run validation-first security research: find ORIGINAL bugs in widely-used packages, then PROVE
each one with a crafted HTTP request against a real running instance — never source-review alone.
The methodology was proven on WordPress plugins. Now build the generalized pipeline and instantiate
it for the npm/Node ecosystem first.

Reference docs (read first — same folder, do not modify):
- METHODOLOGY.md        — the discovery method (ecosystem → request-reachable package → source→sink → curl)
- CORPUS.md             — ~150 target packages, pre-tagged by vuln class + default-vs-conditional reachability
- REMOTE-VALIDATION.md  — fingerprint/scope/legal for the later remote-validation step
- AUDIT-TARGETS.md      — Tier-A 10 with concrete audit plans

## Architecture — two swappable layers + one shared spine
Ecosystem-agnostic core. Per ecosystem you swap exactly two things:

1. TOOLING ADAPTER (code, NOT a prompt): stands up the test environment and extracts static +
   dynamic FACTS. This is where the real engineering is.
2. BASE SYSTEM PROMPT (text): encodes that ecosystem's source/sink/lesson vocabulary.

SHARED SPINE (identical across ecosystems, build once): discovery→adversarial-verify loop,
"dynamic = fact / static = hints" rule, static tiering, file-adaptive lens injection, dedup +
novelty gate.

When we later add Python/Go/etc., we write ONE new adapter + ONE new base prompt and reuse the
whole spine. Do not hardcode npm assumptions into the spine.

## THE KEY NEW BUILD for npm: a per-package harness generator
Unlike WordPress (the plugin owns wp_ajax_*/REST entry points you can curl on a Docker instance),
an npm package owns NOTHING reachable — it's just module.exports. So:
- The real "source" is the PUBLIC API SURFACE: exported function parameters.
- Reachability = "is this exported function callable with attacker-shaped input by a consuming app
  AT DEFAULT CONFIG?"
- You MUST auto-generate a minimal harness app per package: `npm install <pkg>@<version>`, wire its
  exported API into an Express/Next route at DEFAULT options, expose it over HTTP.
- That harness is BOTH the dynamic-fact source AND the validation-first PoC target. A finding is not
  "confirmed" until a crafted curl against the harness triggers the sink. They merge.
- The LLM's weakest judgment here is "does the sink fire under DEFAULT options, or only behind an
  opt-in unsafe flag?" Feed the harness's default-config reachability as a hard fact so the model
  stops reporting bugs that need {unsafe:true}. (CORPUS.md already tags each package
  default-vs-conditional — use it as the prior.)

## Pipeline stages (per package)
0. STATIC EXTRACT (no LLM): AST → export map, call graph, shallow arg-flow (export param → sink),
   lens tags per file. (Port of our ast_surface.py to JS/TS; CodeQL/Joern JS is fine, keep arg-flow
   shallow — grounding, not full taint.)
1. TIER (no LLM, static):
   - Tier 0 skip: no source AND no sink AND not reachable from an export (incl. second-order: a
     no-param export that reads a file/global and returns it still counts as a sink path).
   - Tier 1: has a source OR a sink → per-file review with routed prompt.
   - Tier 2: has source AND sink, or is an exported entry to a dangerous sink → per-file + lenses +
     dynamic facts.
2. HARNESS + DYNAMIC FACTS: generate harness app, probe default-config reachability per export.
3. DISCOVER (cheap model, e.g. Sonnet-class, 1 file at a time): base system prompt + GENERAL
   open-ended pass + matched lenses + attached static context (export/arg-flow) + dynamic facts.
4. ADVERSARIAL VERIFY (cheap model, refute-by-default): try to disprove each candidate; require
   concrete evidence. Survivors only.
5. VALIDATE: build the crafted curl, run it against the harness, require an observable effect
   (status delta / leaked bytes / sink fired / timing / OOB callback). No curl proof = not confirmed.
6. DEDUP + NOVELTY: query OSV by package@version. IMPORTANT: a bypass of an already-fixed CVE
   (incomplete patch) is NOVEL and in-scope — FLAG near-known findings, do not drop them.

## Hard rules (from prior evidence — do not relax)
- DYNAMIC OUTPUT = TRUST AS FACT (reachability/auth/default-config). Static/AST output = attach as
  "hints, not a checklist." Never make static output the candidate list (it caps you at the
  scanner's blind spots — we measured 280 false positives doing that).
- ALWAYS include a general open-ended pass alongside injected lenses, or you inherit the corpus/lens
  bias and miss off-class bugs. The CORPUS.md per-package vuln-class tag is a HINT, not a constraint.
- The file/lens classifier must be STATIC (regex/AST), not an LLM, to stay cheap.
- Cheap model for BOTH discovery and verify; the static pre-pass removes dead weight first.

## JS lens-routing table (inject matched lenses; a file may match several)
| File signal (AST/grep) | Lens |
|---|---|
| export → child_process / eval / new Function / template compile | SSTI / code-injection / RCE |
| export builds SQL / .raw / whereRaw / identifier interpolation | SQLi |
| recursive merge/set/defaultsDeep with computed keys | prototype pollution |
| export → fs op with path/entry-name from arg | path traversal / zip-slip |
| export builds RegExp from arg, or static catastrophic regex | ReDoS |
| export → outbound http/fetch with URL from arg | SSRF / redirect / CRLF |
| XML / YAML / unserialize / CBOR / BSON entry | XXE / object injection / deserialization |
| signature/token verify, alg/kid from header | auth bypass (alg confusion, XSW) |
| HTML / markdown → output | XSS / mXSS (context-aware) |

## Scale & inputs
- Targets: the ~150 packages in CORPUS.md (each row has pkg, vuln-class tag, default-vs-conditional,
  CVE history, audit-saturation). Unit of fan-out = the package (libraries are 10–100 files, so
  tiering runs inside each package). Cheap model × small file counts = tractable for all 150.
- Prioritize: "best fresh-bug bets" + "patch-incomplete / recurring-class" sections of CORPUS.md.

## Deliverables
1. The shared spine (stages 1,3,4,6 + lens injection), ecosystem-agnostic.
2. The npm tooling adapter: JS AST/export-map/arg-flow extractor (stage 0), tierer (stage 1), and
   the per-package harness generator (stages 2 & 5).
3. The npm base system prompt (vocabulary + lessons above).
4. A per-package output: confirmed findings, each with affected version, source→sink root cause, the
   curl PoC, observed effect on the harness, and OSV novelty status.

## Out of scope / guardrails
- Remote validation against live third-party sites is a SEPARATE, later step and ONLY within
  authorized bug-bounty scope (see REMOTE-VALIDATION.md). For now, validate against the local harness
  only — no authorization needed for that.
- Don't modify the reference docs; treat CORPUS.md as read-only input.
