// rerun_failed.js — reads tracker.json, re-runs all plugins with status != "done".
//
// Usage: Workflow({scriptPath: '.../rerun_failed.js'})
// Or:    Workflow({scriptPath: '.../rerun_failed.js', args: {status: "failed"}})
//        to only re-run a specific status (failed, pending, skipped)

export const meta = {
  name: 'rerun-failed',
  description: 'Re-run all plugins not marked done in tracker.json',
  phases: [{ title: 'Retry' }],
}

const ROOT = '/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review'
const trackerPath = `${ROOT}/analysis/pipeline/tracker.json`
const filterStatus = (args && args.status) || null

// Load tracker
const trackerRaw = await agent(
  `Read ${trackerPath} and return its raw JSON content, nothing else.`,
  { label: 'load-tracker', phase: 'Retry', model: 'haiku' }
)

let tracker
try {
  tracker = JSON.parse(trackerRaw.replace(/```json?\n?/g, '').replace(/```/g, '').trim())
} catch (e) {
  return { error: 'failed to parse tracker.json' }
}

const toRetry = Object.entries(tracker.plugins)
  .filter(([_, v]) => v.status !== 'done')
  .filter(([_, v]) => !filterStatus || v.status === filterStatus)
  .map(([slug]) => slug)

log(`${toRetry.length} plugins to retry (filter: ${filterStatus || 'all non-done'})`)

if (!toRetry.length) {
  return { retried: 0, message: 'all plugins are done' }
}

// Run them through batch_wave
const result = await workflow(
  { scriptPath: `${ROOT}/workflows/batch_wave.js` },
  { slugs: toRetry }
)

return result
