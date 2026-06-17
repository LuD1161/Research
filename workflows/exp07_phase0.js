// exp07 Phase 0 — auth-lens A/B, on the DURABLE harness (per-agent checkpoint+commit).
// A0 = generic prompt; A1 = generic + one access-control clause. Same files, same model,
// 3 reps/arm, 1 file/agent, no structural context, no arm labels in the prompt text.
// 8 files x 2 arms x 3 reps = 48 durable agents. Resumable: re-run -> done units cat+return.

export const meta = {
  name: 'exp07-phase0',
  description: 'Auth-lens A/B (generic vs +access-control clause) on a frozen labeled set, durable+resumable',
  phases: [{ title: 'Review' }, { title: 'Sync' }],
}

const ROOT = '/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review'
const PR = '/home/openclaw/Repos/Research/2026/wp-plugins-research/plugins/src'
const CKPT = `${ROOT}/analysis/experiments/exp07/phase0/checkpoints`
const WAVE = 3 // server-side burst throttle is hot; go gentle. Done units self-skip on resume.

// Frozen labeled set (mirrors ground_truth_phase0.json). label is for our records; the
// agent never sees it.
const FILES = [
  { id: 'P1', rel: 'smart-slider-3/Nextend/Framework/Browse/ControllerAjaxBrowse.php', label: 'positive' },
  { id: 'P2', rel: 'ultimate-member/includes/core/class-query.php', label: 'positive' },
  { id: 'P3', rel: 'ultimate-member/includes/ajax/class-forms.php', label: 'positive' },
  { id: 'P4', rel: 'ultimate-member/includes/admin/core/class-admin-notices.php', label: 'positive' },
  { id: 'N1', rel: 'ultimate-member/includes/ajax/class-secure.php', label: 'hard_negative' },
  { id: 'N2', rel: 'ultimate-member/includes/common/class-secure.php', label: 'hard_negative' },
  { id: 'N3', rel: 'woocommerce/includes/admin/class-wc-admin-exporters.php', label: 'hard_negative' },
  { id: 'E1', rel: 'woocommerce/includes/wc-formatting-functions.php', label: 'easy_negative' },
]

const SCHEMA = {
  type: 'object', additionalProperties: true, required: ['findings'],
  properties: {
    findings: {
      type: 'array',
      items: {
        type: 'object', additionalProperties: true,
        required: ['vuln_class', 'location', 'severity', 'justification'],
        properties: {
          vuln_class: { type: 'string' }, location: { type: 'string' },
          severity: { type: 'string' }, justification: { type: 'string' },
        },
      },
    },
  },
}

const BASE = (abs) =>
  `You are a senior application security reviewer. Read the single PHP file at:\n${abs}\n\n` +
  `Evaluate it for security vulnerabilities. Report every concrete security issue you find. ` +
  `For each finding give: vuln_class (short snake_case), location (function name and/or line), ` +
  `severity (low/medium/high/critical), and a one-sentence justification. ` +
  `If you find no issues, return an empty findings array.`

const AC_CLAUSE =
  `\n\nADDITIONAL FOCUS — ACCESS CONTROL: For every request-reachable handler in this file ` +
  `(WordPress AJAX 'wp_ajax_'/'wp_ajax_nopriv_', REST routes, admin-post, or form handlers), ` +
  `determine who can reach it and whether it enforces an appropriate capability check ` +
  `(current_user_can(...)) for the privileged or state-changing action it performs. ` +
  `A nonce / check_ajax_referer / wp_verify_nonce is CSRF protection, NOT authorization. ` +
  `A reachable handler that performs a privileged or state-changing action with only a nonce ` +
  `check and no capability check is a BROKEN ACCESS CONTROL vulnerability — report it with ` +
  `vuln_class 'broken_access_control'.`

function armPrompt(arm, abs) {
  return arm === 'A1' ? BASE(abs) + AC_CLAUSE : BASE(abs)
}

function durablePreamble(ckptAbs, label) {
  return `\n\n## DURABILITY PROTOCOL — follow EXACTLY (resumable, git-checkpointed)
Repo root: ${ROOT}
Your checkpoint file (absolute): ${ckptAbs}

STEP 0 — RESUME CHECK (FIRST, before any analysis):
  Run:  cat ${ckptAbs} 2>/dev/null
  If it prints JSON containing "_done": true, your work is ALREADY done — emit that exact
  JSON object as your StructuredOutput result and STOP. Do not re-analyze, do not re-commit.

... perform the review task above only if STEP 0 did not short-circuit ...

FINAL STEP — CHECKPOINT (mandatory, even if findings is empty):
  1. Build the result object {findings:[...]} and add "_done": true.
  2. Write it as JSON to ${ckptAbs} (Write tool; create parent dirs if needed).
  3. Run exactly:  ${ROOT}/scripts/ckpt_commit.sh ${ckptAbs} "ckpt:${label}"
  4. Emit the SAME JSON object as your StructuredOutput result.`
}

// build 48 units, then deterministically scramble (no Math.random in sandbox): index-based
// interleave so no file or arm clusters in a wave.
let units = []
for (const f of FILES) for (const arm of ['A0', 'A1']) for (let rep = 1; rep <= 3; rep++) units.push({ f, arm, rep })
units = units
  .map((u, i) => ({ u, k: (i * 7 + 13) % units.length })) // fixed permutation
  .sort((a, b) => a.k - b.k)
  .map((x) => x.u)

async function reviewUnit(idx) {
  const { f, arm, rep } = units[idx]
  const ckptAbs = `${CKPT}/${f.id}_${arm}_r${rep}.json`
  const label = `${f.id}-${arm}-r${rep}`
  const abs = `${PR}/${f.rel}`
  try {
    const res = await agent(armPrompt(arm, abs) + durablePreamble(ckptAbs, label), {
      label, phase: 'Review', schema: SCHEMA, model: 'sonnet', effort: 'high',
    })
    const findings = (res && res.findings) || []
    return { fileId: f.id, label: f.label, arm, rep, findings }
  } catch (e) {
    return { __failed: idx }
  }
}

async function syncWave(tag) {
  await agent(
    `Run this once, exactly: ${ROOT}/scripts/ckpt_sync.sh\nThen emit {"synced": true}.`,
    { label: `sync:${tag}`, phase: 'Sync', schema: { type: 'object', additionalProperties: true, properties: { synced: { type: 'boolean' } }, required: ['synced'] } }
  ).catch(() => null)
}

let pending = Array.from({ length: units.length }, (_, i) => i)
const out = []
for (let attempt = 0; attempt < 3 && pending.length; attempt++) {
  const failed = []
  for (let s = 0; s < pending.length; s += WAVE) {
    const chunk = pending.slice(s, s + WAVE)
    const wr = await parallel(chunk.map((i) => () => reviewUnit(i)))
    for (const r of wr) {
      if (r && r.__failed != null) failed.push(r.__failed)
      else if (r != null) out.push(r)
    }
    await syncWave(`a${attempt}w${Math.floor(s / WAVE)}`)
    log(`attempt ${attempt} wave ${Math.floor(s / WAVE)}: ok=${out.length} failed=${failed.length}`)
  }
  pending = failed
}

return { experiment: 'exp07_phase0', units: units.length, collected: out.length, results: out }
