// =============================================================================
// DURABLE / RESUMABLE WORKFLOW TEMPLATE
// =============================================================================
// Copy this block into any discovery/review workflow. It makes a run survive
// API rate-limit aborts, SSH drops, process kills, AND total machine loss, and
// makes it resumable on a DIFFERENT machine.
//
// WHY THIS SHAPE: the Workflow script sandbox has NO filesystem and NO shell —
// only agent()/parallel()/pipeline()/log()/phase(). So durability cannot live
// in the orchestrator. It lives inside each AGENT (which has Bash/Write/Read),
// driven by the prompt preamble below plus two committed git helpers:
//   scripts/ckpt_commit.sh  — per-agent, concurrency-safe local commit
//   scripts/ckpt_sync.sh    — per-wave, single-writer push to origin
//
// RESUME MODEL:
//   * Local commit per agent  => survives kill / rate-limit / SSH drop (same box)
//   * Push per wave           => survives losing the box; pull elsewhere + re-run
//   * STEP 0 resume-check      => a re-run makes every already-done agent return
//     its committed checkpoint INSTANTLY (cheap cat), so re-running the whole
//     workflow is the resume mechanism — idempotent by construction.
//
// "Pushed for each agent": true simultaneous per-agent push thrashes a single
// branch ref. Per-agent COMMIT (instant, lock-retried) + per-wave PUSH is the
// reliable equivalent: zero work lost locally, at most one wave of remote lag.
// =============================================================================

export const meta = {
  name: 'durable-template',
  description: 'Reference template: resumable, git-checkpointed discovery workflow',
  phases: [{ title: 'Work' }, { title: 'Sync' }],
}

// ---- CONFIG (edit per run) --------------------------------------------------
const ROOT = '/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review'
const CKPT_DIR = 'analysis/experiments/<RUN_ID>/checkpoints' // relative to repo root
const WAVE = 14 // Sonnet tolerates 14-wide; drop to 5 for Opus (rate limits)

// ---- DURABILITY PREAMBLE (injected into every agent prompt) ------------------
function durablePreamble(ckptRel, label) {
  return `

## DURABILITY PROTOCOL — follow EXACTLY (this run is resumable + git-checkpointed)
Repo root: ${ROOT}
Your checkpoint file (path relative to repo root): ${ckptRel}

STEP 0 — RESUME CHECK (do this FIRST, before any analysis):
  Run:  cat ${ckptRel} 2>/dev/null
  If it prints JSON that contains "_done": true, your work is ALREADY DONE.
  Emit that exact JSON object as your StructuredOutput result and STOP.
  Do NOT redo the analysis, do NOT re-commit.

... perform the assigned task only if STEP 0 did not short-circuit ...

FINAL STEP — CHECKPOINT (mandatory, even if you found nothing):
  1. Build your result object; add the field  "_done": true  to it.
  2. Write it as JSON to  ${ckptRel}  using the Write tool (create parent dirs if needed).
  3. Run exactly:  ${ROOT}/scripts/ckpt_commit.sh ${ckptRel} "ckpt:${label}"
     This commits your file to git immediately (concurrency-safe) so your work
     is never lost if the run dies. Do not skip it.
  4. Emit the SAME JSON object as your StructuredOutput result.
`
}

// A schema used with this template MUST allow the extra "_done" field, e.g.
// {type:'object', additionalProperties:true, properties:{...}, required:[...]}

// ---- DURABLE AGENT WRAPPER ---------------------------------------------------
async function durableAgent(taskPrompt, { ckptRel, label, schema, phase, model, effort }) {
  return agent(taskPrompt + durablePreamble(ckptRel, label), {
    label, phase: phase || 'Work', schema, model, effort,
  })
}

// ---- PER-WAVE SYNC BARRIER (single writer -> push) ---------------------------
async function syncWave(tag) {
  await agent(
    `Run this command once, exactly: ${ROOT}/scripts/ckpt_sync.sh\n` +
    `It pushes all checkpoint commits from this wave to origin. Then emit {"synced": true}.`,
    {
      label: `sync:${tag}`, phase: 'Sync',
      schema: { type: 'object', additionalProperties: true, properties: { synced: { type: 'boolean' } }, required: ['synced'] },
    }
  ).catch(() => null) // non-fatal: commits are safe locally; next sync catches up
}

// ---- RESUMABLE WAVE RUNNER ---------------------------------------------------
// unitFn(i) must return either a result object, or {__failed:i} on hard failure.
async function runWaves(unitFn, indices) {
  const out = [], failed = []
  for (let s = 0; s < indices.length; s += WAVE) {
    const chunk = indices.slice(s, s + WAVE)
    const wr = await parallel(chunk.map((i) => () => unitFn(i)))
    for (const r of wr) {
      if (r && r.__failed != null) failed.push(r.__failed)
      else if (r != null) out.push(r)
    }
    await syncWave(`w${Math.floor(s / WAVE)}`)
    log(`wave ${Math.floor(s / WAVE)} done; ok=${out.length} failed=${failed.length}`)
  }
  return { out, failed }
}

// ---- EXAMPLE USAGE (replace with real BATCHES + schemas + prompts) -----------
// const BATCHES = [ /* {id, files, base, ...} inlined; args passing is unreliable */ ]
// const reviewUnit = async (i) => {
//   const b = BATCHES[i]
//   try {
//     const review = await durableAgent(reviewPrompt(b), {
//       ckptRel: `${CKPT_DIR}/review_${b.id}.json`, label: `review:${b.id}`,
//       schema: REVIEW_SCHEMA, model: 'sonnet', effort: 'high',
//     })
//     return { batch: b.id, findings: (review && review.findings) || [] }
//   } catch (e) { return { __failed: i } }
// }
// let pending = Array.from({ length: BATCHES.length }, (_, i) => i)
// const results = []
// for (let attempt = 0; attempt < 3 && pending.length; attempt++) {
//   const { out, failed } = await runWaves(reviewUnit, pending)
//   results.push(...out); pending = failed
// }
// return { target: '<run>', total: BATCHES.length, results }
