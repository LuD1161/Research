// resilient_run.js — self-healing wrapper: runs review_pipeline, checks completeness,
// retries up to MAX_RETRIES if the pipeline dies mid-run (SSL errors, rate limits, etc).
//
// Usage: Workflow({scriptPath: '.../resilient_run.js', args: {run: 'ajax-search-for-woocommerce', files: [...]}})
//
// On each attempt it passes the same args to review_pipeline.js. The pipeline's durable
// checkpointing means completed agents are skipped on retry — only failed/missing work reruns.

export const meta = {
  name: 'resilient-run',
  description: 'Self-healing wrapper: runs pipeline with automatic retry on partial failure',
  phases: [
    { title: 'Attempt' },
  ],
}

const ROOT = '/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review'
const MAX_RETRIES = 5
const slug = args.run

let lastResult = null
let attempt = 0

for (attempt = 0; attempt < MAX_RETRIES; attempt++) {
  phase('Attempt')
  log(`attempt ${attempt + 1}/${MAX_RETRIES} for ${slug}`)

  try {
    lastResult = await workflow(
      { scriptPath: `${ROOT}/workflows/review_pipeline.js` },
      { run: slug, files: args.files }
    )
  } catch (e) {
    log(`attempt ${attempt + 1} crashed: ${e.message || e}`)
    lastResult = null
    continue
  }

  if (!lastResult) {
    log(`attempt ${attempt + 1} returned null`)
    continue
  }

  // Check completeness: did all files get reviewed and all findings get verdicts?
  const filesReviewed = lastResult.files_reviewed || 0
  const totalFiles = args.files.length
  const rawFindings = lastResult.raw_findings || 0
  const allVerdicts = (lastResult.all_with_verdicts || []).length

  log(`attempt ${attempt + 1}: ${filesReviewed}/${totalFiles} files, ${rawFindings} raw, ${allVerdicts} verdicts`)

  if (filesReviewed >= totalFiles && (rawFindings === 0 || allVerdicts >= rawFindings)) {
    log(`complete after ${attempt + 1} attempt(s)`)
    break
  }

  log(`incomplete — retrying (${totalFiles - filesReviewed} files missing, ${rawFindings - allVerdicts} verdicts missing)`)
}

if (!lastResult) {
  log(`FAILED after ${MAX_RETRIES} attempts`)
  return { slug, error: 'all_attempts_failed', attempts: attempt }
}

return { slug, attempts: attempt + 1, ...lastResult }
