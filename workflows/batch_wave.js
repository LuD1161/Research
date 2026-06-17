// batch_wave.js — run a wave of plugins sequentially through the review pipeline.
//
// Usage: Workflow({scriptPath: '.../batch_wave.js', args: {wave: 1}})
// Or:    Workflow({scriptPath: '.../batch_wave.js', args: {slugs: ['plugin-a', 'plugin-b']}})
//
// Runs each plugin's tier2_files.json through review_pipeline.js one at a time
// (sequential to avoid rate limits). Checkpoints per-plugin so a crash resumes
// from the last incomplete plugin.

export const meta = {
  name: 'batch-wave',
  description: 'Run a wave of plugins sequentially through the security review pipeline',
  phases: [{ title: 'Review' }],
}

const ROOT = '/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review'

// Resolve plugin list from args
let slugs = args.slugs
if (!slugs && args.wave) {
  const waveFile = `${ROOT}/analysis/pipeline/wave_${String(args.wave).padStart(2, '0')}.json`
  const waveData = await agent(`Read ${waveFile} and return its raw JSON content, nothing else.`, { label: 'load-wave', phase: 'Review', model: 'haiku' })
  slugs = JSON.parse(waveData.replace(/```json?\n?/g, '').replace(/```/g, '').trim())
}

if (!slugs || !slugs.length) {
  return { error: 'no slugs — pass args.slugs or args.wave' }
}

log(`wave: ${slugs.length} plugins`)

const results = []
for (let i = 0; i < slugs.length; i++) {
  const slug = slugs[i]
  const tier2Path = `${ROOT}/analysis/pipeline/${slug}/tier2_files.json`

  log(`[${i + 1}/${slugs.length}] ${slug}`)

  // Load tier2 files
  const loader = await agent(
    `Read ${tier2Path} and return its raw JSON content. Nothing else — just the JSON array.`,
    { label: `load:${slug}`, phase: 'Review', model: 'haiku' }
  )

  let files
  try {
    files = JSON.parse(loader.replace(/```json?\n?/g, '').replace(/```/g, '').trim())
  } catch (e) {
    log(`${slug}: failed to parse tier2 files — skipping`)
    results.push({ slug, error: 'tier2_parse_failed' })
    continue
  }

  if (!files.length) {
    log(`${slug}: 0 tier-2 files — skipping`)
    results.push({ slug, files: 0, skipped: true })
    continue
  }

  // Run pipeline — catch errors so one failure doesn't block the wave
  try {
    const result = await workflow(
      { scriptPath: `${ROOT}/workflows/review_pipeline.js` },
      { run: slug, files }
    )
    const confirmed = result.confirmed_count || 0
    const downgraded = result.reachability_downgraded || 0
    log(`${slug}: ${files.length} files → ${result.raw_findings || 0} raw → ${confirmed} confirmed (${downgraded} downgraded)`)
    results.push({ slug, files: files.length, ...result })
  } catch (e) {
    log(`${slug}: pipeline error — ${e.message || e}. Moving to next plugin.`)
    results.push({ slug, files: files.length, error: String(e.message || e).slice(0, 200) })
    continue
  }
}

// Update tracker.json with results
const trackerPath = `${ROOT}/analysis/pipeline/tracker.json`
const trackerAgent = await agent(
  `Read ${trackerPath}, parse as JSON, then update the following plugins and write back:\n` +
  results.map(r => {
    if (r.error) return `"${r.slug}": set status to "failed", error to "${r.error.slice(0, 100)}"`
    if (r.skipped) return `"${r.slug}": set status to "skipped" (0 tier-2 files)`
    return `"${r.slug}": set status to "done", files_reviewed=${r.files_reviewed || 0}, raw_findings=${r.raw_findings || 0}, confirmed=${r.confirmed_count || 0}, reachability_downgraded=${r.reachability_downgraded || 0}`
  }).join('\n') +
  `\nAlso update the top-level "done", "pending" counts. Write the updated JSON back to ${trackerPath}. Return {"updated": true}.`,
  { label: 'update-tracker', phase: 'Review', model: 'haiku' }
)

log(`wave complete: ${results.length} plugins, ${results.filter(r => !r.error && !r.skipped).length} succeeded`)
return { wave: args.wave || 'custom', results }
