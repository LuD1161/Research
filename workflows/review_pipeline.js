// review_pipeline.js — router-driven, durable, resumable discovery + adversarial verify.
//
// Inputs (set MANIFEST below): a manifest produced by tools/lens_router.py:
//   { plugin_dir, files: [{id, file, rel, tags, tier, lines, brief}] }
// Each file already has a COMPOSED BRIEF on disk (general pass + ONLY its routed lenses).
//
// Flow per file:  DISCOVER (cheap model reads brief + target, 1 file) -> for each finding,
//   ADVERSARIAL VERIFY (refute-by-default). Everything checkpoints to git per agent and
//   syncs per wave, so a rate-limit/SSH/host death resumes by re-running (done units skip).

export const meta = {
  name: 'review-pipeline',
  description: 'Router-driven durable discovery + adversarial verify over a lens-routed manifest',
  phases: [{ title: 'Load' }, { title: 'Discover' }, { title: 'Verify' }, { title: 'Sync' }],
}

const ROOT = '/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review'
// ---- set per run -----------------------------------------------------------------
const RUN = 'recaptcha'
const MANIFEST = `${ROOT}/analysis/pipeline/${RUN}/manifest.json`
const CK = `${ROOT}/analysis/pipeline/${RUN}/checkpoints`
const WAVE = 4 // keep modest: Sonnet server-side burst throttle trips ~14-wide
const TIER_MIN = 1 // small plugin -> exhaustive sweep of all tier>=1 files

const DISC_SCHEMA = {
  type: 'object', additionalProperties: true, required: ['findings'],
  properties: { findings: { type: 'array', items: {
    type: 'object', additionalProperties: true,
    required: ['vuln_class', 'location', 'severity', 'reachability', 'justification'],
    properties: {
      vuln_class: { type: 'string' }, location: { type: 'string' }, severity: { type: 'string' },
      reachability: { type: 'string' }, justification: { type: 'string' },
    } } } },
}
const VERD_SCHEMA = {
  type: 'object', additionalProperties: true, required: ['is_real', 'severity', 'reasoning'],
  properties: { is_real: { type: 'boolean' }, severity: { type: 'string' }, reasoning: { type: 'string' } },
}

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

// ---- manifest comes via args (real JSON) — NOT via an LLM loader agent, which truncates
// bulk structured data. Launch with: Workflow({scriptPath, args: {files: <manifest.files>}}).
let files = ((typeof args !== 'undefined' && args && args.files) || []).filter((f) => (f.tier || 1) >= TIER_MIN)
log(`manifest: ${files.length} files at tier>=${TIER_MIN} (MANIFEST=${MANIFEST})`)
if (!files.length) { log('NO FILES — pass args.files'); return { run: RUN, error: 'no files in args' } }

// ---- DISCOVER (waves) ------------------------------------------------------------
async function discover(i) {
  const f = files[i]
  const ckpt = `${CK}/disc_${f.id}.json`
  const prompt =
    `You are reviewing ONE file for security vulnerabilities. First run:  cat ${f.brief}\n` +
    `That is your review brief (general pass + the lenses the static router matched for THIS file). ` +
    `Then read the target file:  ${f.file}\n` +
    `Follow the brief. Report concrete, code-grounded findings only.`
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
    `Adversarially verify this security finding. Default to is_real=false unless the code proves it.\n` +
    `Read the file: ${d.file}\nFinding: ${JSON.stringify(find)}\n` +
    `Confirm the FULL path: is the sink reachable with attacker-controlled input, is there no ` +
    `sanitizer/guard you missed, and is the claimed reachability/auth correct? Be concrete.`
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
return {
  run: RUN, plugin: MANIFEST, files_reviewed: discResults.length,
  raw_findings: toVerify.length, confirmed_count: confirmed.length,
  confirmed, all_with_verdicts: verified,
}
