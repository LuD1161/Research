// review_pipeline_js.js — router-driven, durable, resumable discovery + adversarial verify
// + reachability verify for JS/npm packages.
//
// Adapted from review_pipeline.js (PHP/WordPress). Same architecture:
//   DISCOVER -> ADVERSARIAL VERIFY -> REACHABILITY VERIFY (for gated findings).
//
// Inputs: args.run (package slug), args.files (manifest files array from lens_router_js.py)

export const meta = {
  name: 'review-pipeline-js',
  description: 'JS/npm security review: discovery + adversarial verify + reachability verify',
  phases: [{ title: 'Load' }, { title: 'Discover' }, { title: 'Verify' }, { title: 'Reachability' }, { title: 'Sync' }],
}

const ROOT = '/DATA/openclaw/Repos/Research'
const RUN = (typeof args !== 'undefined' && args && args.run) || 'test-package'
const MANIFEST = `${ROOT}/analysis/pipeline-js/${RUN}/manifest.json`
const CK = `${ROOT}/analysis/pipeline-js/${RUN}/checkpoints`
const WAVE = 4
const TIER_MIN = 1

const DISC_SCHEMA = {
  type: 'object', additionalProperties: true, required: ['findings'],
  properties: { findings: { type: 'array', items: {
    type: 'object', additionalProperties: true,
    required: ['vuln_class', 'location', 'severity', 'reachability', 'justification'],
    properties: {
      vuln_class: { type: 'string' }, location: { type: 'string' }, severity: { type: 'string' },
      reachability: { type: 'string' }, justification: { type: 'string' },
      detection_pattern: { type: 'object', properties: {
        grep_pattern: { type: 'string' }, anti_pattern: { type: 'string' },
        section_name: { type: 'string' }, description: { type: 'string' },
      } },
    } } } },
}
const VERD_SCHEMA = {
  type: 'object', additionalProperties: true, required: ['is_real', 'severity', 'reasoning'],
  properties: { is_real: { type: 'boolean' }, severity: { type: 'string' }, reasoning: { type: 'string' } },
}
const REACH_SCHEMA = {
  type: 'object', additionalProperties: true,
  required: ['gate_breachable', 'gate_type', 'adjusted_severity', 'reasoning'],
  properties: {
    gate_breachable: { type: 'boolean' },
    gate_type: { type: 'string' },
    adjusted_severity: { type: 'string' },
    reasoning: { type: 'string' },
  },
}
const REACH_VULN_CLASSES = /broken_access|access.control|auth|priv.esc|idor|insecure.direct|prototype.poll|command.inj|ssrf/i
const REACH_SEVERITIES = /^(HIGH|CRITICAL|MED)/i

function durable(ckptAbs, label) {
  return `\n\n## DURABILITY PROTOCOL — follow EXACTLY (resumable, git-checkpointed)
Repo root: ${ROOT}
Your checkpoint file (absolute): ${ckptAbs}
STEP 0 (FIRST): run  cat ${ckptAbs} 2>/dev/null  — if it prints JSON with "_done": true,
  emit that exact JSON as your StructuredOutput result and STOP (no re-analysis, no re-commit).
... do the task only if STEP 0 did not short-circuit ...
FINAL STEP (mandatory): 1) build the result object and add "_done": true; 2) Write it as JSON to
  ${ckptAbs}; 3) run exactly  ${ROOT}/scripts/ckpt_commit.sh ${ckptAbs} "ckpt:${label}";
  4) emit the SAME JSON as your StructuredOutput result.`
}

async function syncWave(tag) {
  await agent(`Run once, exactly: ${ROOT}/scripts/ckpt_sync.sh\nThen emit {"synced": true}.`,
    { label: `sync:${tag}`, phase: 'Sync', schema: { type: 'object', additionalProperties: true, properties: { synced: { type: 'boolean' } }, required: ['synced'] } }
  ).catch(() => null)
}

let files = ((typeof args !== 'undefined' && args && args.files) || []).filter((f) => (f.tier || 1) >= TIER_MIN)
log(`manifest: ${files.length} files at tier>=${TIER_MIN} for ${RUN}`)
if (!files.length) { log('NO FILES — pass args.files'); return { run: RUN, error: 'no files in args' } }

// ---- DISCOVER (waves) ------------------------------------------------------------
async function discover(i) {
  const f = files[i]
  const ckpt = `${CK}/disc_${f.id}.json`
  const prompt =
    `You are reviewing ONE JavaScript/TypeScript file from an npm package for security vulnerabilities. First run:  cat ${f.brief}\n` +
    `That is your review brief (general pass + the lenses the static router matched for THIS file). ` +
    `Then read the target file:  ${f.file}\n` +
    `Follow the brief. Report concrete, code-grounded findings only.\n\n` +
    `Key JS/Node security patterns to consider:\n` +
    `- Prototype pollution via recursive merge/set/extend with attacker-controlled keys\n` +
    `- Command injection via child_process with unsanitized input\n` +
    `- SSRF via fetch/axios/got/http.request with user-controlled URLs\n` +
    `- SQL/NoSQL injection via string interpolation in queries or operator injection ($where, $regex)\n` +
    `- Path traversal via fs operations with user-controlled paths\n` +
    `- ReDoS via RegExp from user input or catastrophic backtracking\n` +
    `- Deserialization issues (JSON.parse → proto pollution, yaml.load, XML entity expansion)\n` +
    `- Auth bypass (JWT alg confusion, timing-unsafe comparison, missing verification)\n\n` +
    `For each finding, also include a detection_pattern object with:\n` +
    `- grep_pattern: a ripgrep-compatible regex that would detect this vulnerability CLASS in ` +
    `OTHER npm packages (not specific to this file/package).\n` +
    `- anti_pattern: a regex that indicates the issue is mitigated.\n` +
    `- section_name: short label like "SSRF: fetch with user URL"\n` +
    `- description: what the pattern catches and why it matters.`
  try {
    const r = await agent(prompt + durable(ckpt, `disc-${f.id}`), { label: `disc:${f.id}`, phase: 'Discover', schema: DISC_SCHEMA, model: 'sonnet', effort: 'high' })
    return { id: f.id, file: f.file, rel: f.rel, tags: f.tags, findings: (r && r.findings) || [] }
  } catch (e) { return { __failed: i } }
}

let pending = files.map((_, i) => i)
const discResults = []
for (let attempt = 0; attempt < 3 && pending.length; attempt++) {
  const failed = []
  for (let s = 0; s < pending.length; s += WAVE) {
    const chunk = pending.slice(s, s + WAVE)
    const wr = await parallel(chunk.map((i) => () => discover(i)))
    for (const r of wr) { if (r && r.__failed != null) failed.push(r.__failed); else if (r) discResults.push(r) }
    await syncWave(`disc-a${attempt}w${Math.floor(s / WAVE)}`)
    log(`discover a${attempt} w${Math.floor(s / WAVE)}: files=${discResults.length} failed=${failed.length}`)
  }
  pending = failed
}

// ---- VERIFY (waves, refute-by-default) -------------------------------------------
const toVerify = []
for (const d of discResults) (d.findings || []).forEach((find, n) => toVerify.push({ d, find, n }))
log(`verifying ${toVerify.length} raw findings`)

async function verify(j) {
  const { d, find, n } = toVerify[j]
  const ckpt = `${CK}/verd_${d.id}_${n}.json`
  const prompt =
    `Adversarially verify this security finding in a JavaScript/TypeScript file. Default to is_real=false unless the code proves it.\n` +
    `Read the file: ${d.file}\nFinding: ${JSON.stringify(find)}\n` +
    `Confirm the FULL path: is the sink reachable with attacker-controlled input, is there no ` +
    `sanitizer/guard you missed, and is the claimed reachability/auth correct?\n` +
    `For JS specifically: check if the vulnerable path requires non-default options/config, ` +
    `whether the input is validated by a schema (zod/joi/ajv), and whether the package documents ` +
    `the parameter as user-controlled. Be concrete.`
  try {
    const v = await agent(prompt + durable(ckpt, `verd-${d.id}-${n}`), { label: `verd:${d.id}.${n}`, phase: 'Verify', schema: VERD_SCHEMA, model: 'sonnet', effort: 'high' })
    return { id: d.id, rel: d.rel, file: d.file, tags: d.tags, finding: find, verdict: v }
  } catch (e) { return { __failed: j } }
}

let vpending = toVerify.map((_, j) => j)
const verified = []
for (let attempt = 0; attempt < 3 && vpending.length; attempt++) {
  const failed = []
  for (let s = 0; s < vpending.length; s += WAVE) {
    const chunk = vpending.slice(s, s + WAVE)
    const wr = await parallel(chunk.map((j) => () => verify(j)))
    for (const r of wr) { if (r && r.__failed != null) failed.push(r.__failed); else if (r) verified.push(r) }
    await syncWave(`verd-a${attempt}w${Math.floor(s / WAVE)}`)
    log(`verify a${attempt} w${Math.floor(s / WAVE)}: done=${verified.length} failed=${failed.length}`)
  }
  vpending = failed
}

const confirmed = verified.filter((v) => v.verdict && v.verdict.is_real)

// ---- REACHABILITY VERIFY (gated findings only) ------------------------------------
const needsReach = confirmed.map((v, idx) => ({ ...v, _ridx: idx })).filter((v) => {
  const vc = v.finding.vuln_class || ''
  const sev = (v.verdict && v.verdict.severity) || v.finding.severity || ''
  return REACH_VULN_CLASSES.test(vc) || REACH_SEVERITIES.test(sev)
})
log(`reachability check: ${needsReach.length} of ${confirmed.length} confirmed findings qualify`)

async function reachVerify(v) {
  const safeVc = (v.finding.vuln_class || 'unk').replace(/[^a-zA-Z0-9_-]/g, '_')
  const ckpt = `${CK}/reach_${v.id}_${v._ridx}_${safeVc}.json`
  const prompt =
    `REACHABILITY GATE ANALYSIS for a JavaScript/npm package vulnerability.\n\n` +
    `Read the file: ${v.file}\n` +
    `Finding: ${JSON.stringify(v.finding)}\n` +
    `Adversarial verdict: ${JSON.stringify(v.verdict)}\n\n` +
    `Determine whether an attacker can actually REACH and EXPLOIT this vulnerability:\n` +
    `1. Is this an exported/public API, or an internal function? Only exported functions are directly reachable.\n` +
    `2. Does the vulnerable code path require non-default options (e.g., {unsafe:true}, {allowPrototypes:true})?\n` +
    `   If yes, this is NOT default-reachable — set gate_breachable=false.\n` +
    `3. Does the function validate input before the sink (schema validation, type checking, allowlist)?\n` +
    `4. Is the vulnerable parameter typically user-controlled in real applications?\n\n` +
    `gate_type: name the mechanism (e.g., "non-default option required", "input validated by joi schema",\n` +
    `  "internal function not exported", "no gate — default config").\n` +
    `gate_breachable: true ONLY if the vulnerability is exploitable at DEFAULT configuration with\n` +
    `  typical usage patterns. Default to false when uncertain.\n` +
    `adjusted_severity: keep original if breachable at default config, downgrade if not.`
  try {
    const r = await agent(prompt + durable(ckpt, `reach-${v.id}-${v._ridx}`), { label: `reach:${v.id}.${v._ridx}`, phase: 'Reachability', schema: REACH_SCHEMA, model: 'sonnet', effort: 'high' })
    return { ...v, reachability: r }
  } catch (e) { return { ...v, reachability: null } }
}

const reachResults = []
if (needsReach.length) {
  phase('Reachability')
  let rpending = needsReach.map((_, i) => i)
  for (let attempt = 0; attempt < 3 && rpending.length; attempt++) {
    const failed = []
    for (let s = 0; s < rpending.length; s += WAVE) {
      const chunk = rpending.slice(s, s + WAVE)
      const wr = await parallel(chunk.map((i) => () => reachVerify(needsReach[i])))
      for (let k = 0; k < wr.length; k++) {
        if (wr[k] && wr[k].reachability) reachResults.push(wr[k])
        else failed.push(chunk[k])
      }
      await syncWave(`reach-a${attempt}w${Math.floor(s / WAVE)}`)
      log(`reach a${attempt} w${Math.floor(s / WAVE)}: done=${reachResults.length} failed=${failed.length}`)
    }
    rpending = failed
  }
}

const reachMap = new Map(reachResults.map((r) => [`${r.id}:${r._ridx}`, r.reachability]))
const finalConfirmed = confirmed.map((v, idx) => {
  const key = `${v.id}:${idx}`
  const reach = reachMap.get(key)
  if (!reach) return v
  if (!reach.gate_breachable && reach.adjusted_severity) {
    return { ...v, reachability: reach, verdict: { ...v.verdict, severity: reach.adjusted_severity, severity_pre_reach: v.verdict.severity } }
  }
  return { ...v, reachability: reach }
})
const downgraded = finalConfirmed.filter((v) => v.reachability && !v.reachability.gate_breachable)
log(`reachability: ${downgraded.length} findings downgraded, ${finalConfirmed.length - downgraded.length} unchanged`)

return {
  run: RUN, manifest: MANIFEST, files_reviewed: discResults.length,
  raw_findings: toVerify.length, confirmed_count: finalConfirmed.length,
  confirmed: finalConfirmed, all_with_verdicts: verified,
  reachability_applied: needsReach.length, reachability_downgraded: downgraded.length,
}
