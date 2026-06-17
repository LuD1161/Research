export const meta = {
  name: 'a-retry-1file',
  description: 'Test A: rediscover CVE-2021-32790 in WooCommerce 5.5.0 (blind). Test B: review smart-slider-3. Opus 4.8, throttled, adversarial verify.',
  phases: [
    { title: 'Review', detail: '49 batches (woo-5.5.0 REST/data-store + smart-slider-3), open-ended discovery' },
    { title: 'Verify', detail: 'adversarial refute pass per finding' },
  ],
}

const BATCHES = [{"id": "wooR_00", "base": "/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review/plugins/src/woocommerce-5.5.0", "target": "woo-5.5.0-retry-1file", "files": ["includes/data-stores/abstract-wc-order-data-store-cpt.php"]}, {"id": "wooR_01", "base": "/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review/plugins/src/woocommerce-5.5.0", "target": "woo-5.5.0-retry-1file", "files": ["includes/data-stores/abstract-wc-order-item-type-data-store.php"]}, {"id": "wooR_02", "base": "/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review/plugins/src/woocommerce-5.5.0", "target": "woo-5.5.0-retry-1file", "files": ["includes/data-stores/class-wc-coupon-data-store-cpt.php"]}, {"id": "wooR_03", "base": "/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review/plugins/src/woocommerce-5.5.0", "target": "woo-5.5.0-retry-1file", "files": ["includes/data-stores/class-wc-customer-data-store.php"]}, {"id": "wooR_04", "base": "/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review/plugins/src/woocommerce-5.5.0", "target": "woo-5.5.0-retry-1file", "files": ["includes/data-stores/class-wc-customer-data-store-session.php"]}, {"id": "wooR_05", "base": "/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review/plugins/src/woocommerce-5.5.0", "target": "woo-5.5.0-retry-1file", "files": ["includes/data-stores/class-wc-customer-download-data-store.php"]}, {"id": "wooR_06", "base": "/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review/plugins/src/woocommerce-5.5.0", "target": "woo-5.5.0-retry-1file", "files": ["includes/data-stores/class-wc-customer-download-log-data-store.php"]}, {"id": "wooR_07", "base": "/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review/plugins/src/woocommerce-5.5.0", "target": "woo-5.5.0-retry-1file", "files": ["includes/data-stores/class-wc-data-store-wp.php"]}, {"id": "wooR_08", "base": "/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review/plugins/src/woocommerce-5.5.0", "target": "woo-5.5.0-retry-1file", "files": ["includes/data-stores/class-wc-order-data-store-cpt.php"]}, {"id": "wooR_09", "base": "/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review/plugins/src/woocommerce-5.5.0", "target": "woo-5.5.0-retry-1file", "files": ["includes/data-stores/class-wc-order-item-coupon-data-store.php"]}, {"id": "wooR_10", "base": "/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review/plugins/src/woocommerce-5.5.0", "target": "woo-5.5.0-retry-1file", "files": ["includes/data-stores/class-wc-order-item-data-store.php"]}, {"id": "wooR_11", "base": "/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review/plugins/src/woocommerce-5.5.0", "target": "woo-5.5.0-retry-1file", "files": ["includes/data-stores/class-wc-order-item-fee-data-store.php"]}, {"id": "wooR_12", "base": "/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review/plugins/src/woocommerce-5.5.0", "target": "woo-5.5.0-retry-1file", "files": ["includes/data-stores/class-wc-order-item-product-data-store.php"]}, {"id": "wooR_13", "base": "/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review/plugins/src/woocommerce-5.5.0", "target": "woo-5.5.0-retry-1file", "files": ["includes/data-stores/class-wc-order-item-shipping-data-store.php"]}, {"id": "wooR_14", "base": "/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review/plugins/src/woocommerce-5.5.0", "target": "woo-5.5.0-retry-1file", "files": ["includes/data-stores/class-wc-order-item-tax-data-store.php"]}, {"id": "wooR_15", "base": "/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review/plugins/src/woocommerce-5.5.0", "target": "woo-5.5.0-retry-1file", "files": ["includes/data-stores/class-wc-order-refund-data-store-cpt.php"]}, {"id": "wooR_16", "base": "/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review/plugins/src/woocommerce-5.5.0", "target": "woo-5.5.0-retry-1file", "files": ["includes/data-stores/class-wc-payment-token-data-store.php"]}, {"id": "wooR_17", "base": "/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review/plugins/src/woocommerce-5.5.0", "target": "woo-5.5.0-retry-1file", "files": ["includes/data-stores/class-wc-product-data-store-cpt.php"]}, {"id": "wooR_18", "base": "/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review/plugins/src/woocommerce-5.5.0", "target": "woo-5.5.0-retry-1file", "files": ["includes/data-stores/class-wc-product-grouped-data-store-cpt.php"]}, {"id": "wooR_19", "base": "/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review/plugins/src/woocommerce-5.5.0", "target": "woo-5.5.0-retry-1file", "files": ["includes/data-stores/class-wc-product-variable-data-store-cpt.php"]}, {"id": "wooR_20", "base": "/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review/plugins/src/woocommerce-5.5.0", "target": "woo-5.5.0-retry-1file", "files": ["includes/data-stores/class-wc-product-variation-data-store-cpt.php"]}, {"id": "wooR_21", "base": "/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review/plugins/src/woocommerce-5.5.0", "target": "woo-5.5.0-retry-1file", "files": ["includes/data-stores/class-wc-shipping-zone-data-store.php"]}, {"id": "wooR_22", "base": "/home/openclaw/Repos/Research/.claude/worktrees/woo-security-review/plugins/src/woocommerce-5.5.0", "target": "woo-5.5.0-retry-1file", "files": ["includes/data-stores/class-wc-webhook-data-store.php"]}]
const N = BATCHES.length

const REVIEW_SCHEMA = {
  type: 'object', required: ['findings'],
  properties: { findings: { type: 'array', items: {
    type: 'object',
    required: ['file','line','title','vuln_class','severity','auth_required','data_flow','confidence'],
    properties: {
      file: {type:'string'}, line: {type:'integer'}, title: {type:'string'},
      vuln_class: {type:'string'},
      severity: {type:'string', enum:['critical','high','medium','low']},
      auth_required: {type:'string'},
      entry_point: {type:'string'}, data_flow: {type:'string'},
      confidence: {type:'string', enum:['high','medium','low']},
    } } } },
}
const VERDICT_SCHEMA = {
  type: 'object', required: ['is_real','confidence','severity','auth_required','reasoning'],
  properties: {
    is_real: {type:'boolean'}, confidence: {type:'string', enum:['high','medium','low']},
    severity: {type:'string', enum:['critical','high','medium','low','none']},
    auth_required: {type:'string'}, reasoning: {type:'string'},
  },
}

const reviewPrompt = (b) => `You are a world-class WordPress/PHP security researcher doing OPEN-ENDED vulnerability discovery (NOT triage). Target: ${b.target}.

Review EVERY file below IN FULL (absolute paths). Use Grep/Bash to follow data flows across files.
${b.files.map(f => `- ${b.base}/${f}`).join('\n')}

For each file, hunt for genuinely exploitable vulnerabilities:
- Trace attacker input (\$_GET/\$_POST/\$_REQUEST/\$_FILES, WP_REST_Request params, AJAX actions, shortcode atts, imported file contents, post/user meta) to dangerous sinks: raw \$wpdb SQL, echo/print output, file read/write/include, eval/call_user_func/dynamic dispatch, unserialize/maybe_unserialize, wp_redirect, wp_remote_* SSRF, command exec.
- CRITICAL for SQL: a value placed inside a quoted SQL string literal is INJECTABLE unless \$wpdb->prepare is used. Note that esc_like() only escapes LIKE wildcards (% _) and sanitize_text_field() does NOT escape quotes — neither prevents SQL injection on its own. Flag any string concatenated into a query without prepare()/%s/%d.
- Determine reachability + auth: which hook/route/AJAX action registers the handler? wp_ajax_nopriv_* = unauthenticated; missing permission_callback / current_user_can = broken access control. Note REST endpoints reachable by low-privileged API keys.
- Look for what scanners miss: IDOR / missing ownership or capability checks, auth bypass, path traversal in file params, object injection via unserialize on user-supplied data, second-order flows.

Discipline: report ONLY real vulnerabilities you can defend with a complete source->sink trace and a concrete attacker scenario. Precision over recall. Most files have zero findings. Cite exact file:line. Return via schema.`

const verifyPrompt = (f, base) => `Adversarially verify this CLAIMED WordPress vulnerability. DEFAULT to REFUTE unless the full exploit path holds.

Claim (JSON): ${JSON.stringify(f)}
The cited file is under: ${base}/

1. Read the actual code + context. Follow the registering hook/route to the true auth level.
2. Confirm the source is attacker-controlled and reaches the sink with NO effective context-correct sanitizer on every path. For SQL: confirm whether \$wpdb->prepare / %s / %d is used; remember esc_like and sanitize_text_field do NOT escape quotes.
3. Check WP core defenses and wrapper-function sanitization the reviewer may have missed.
4. is_real = true ONLY if a real attacker at the stated (or higher) privilege can exploit it on a default/common install.

Return verdict via schema; name the specific check/sanitizer that saves it, or why none does.`

phase('Review')
const reviewAndVerify = async (i) => {
  const b = BATCHES[i]
  const review = await agent(reviewPrompt(b), { label: `review:${b.id}`, phase: 'Review', schema: REVIEW_SCHEMA, model: 'opus', effort: 'high' })
  const findings = (review && review.findings) || []
  if (!findings.length) return []
  const verified = await parallel(findings.map((f) => () =>
    agent(verifyPrompt(f, b.base), { label: `verify:${b.id}`, phase: 'Verify', schema: VERDICT_SCHEMA, model: 'opus', effort: 'high' })
      .then((v) => ({ ...f, target: b.target, batch: b.id, verdict: v }))
  ))
  return verified.filter(Boolean)
}

const WAVE = 6
const results = []
for (let s = 0; s < N; s += WAVE) {
  const idxs = Array.from({length: Math.min(WAVE, N - s)}, (_, k) => s + k)
  const wr = await parallel(idxs.map((i) => () => reviewAndVerify(i)))
  for (const r of wr) if (Array.isArray(r)) results.push(...r)
  log(`Wave ${s/WAVE+1}/${Math.ceil(N/WAVE)} done. Cumulative findings: ${results.length}.`)
}

const confirmed = results.filter((x) => x.verdict && x.verdict.is_real)
const byTarget = (t) => ({
  confirmed: confirmed.filter(x => x.target === t),
  all: results.filter(x => x.target === t),
})
log(`Done. raw=${results.length} confirmed=${confirmed.length}`)
return {
  raw_findings: results.length,
  confirmed_count: confirmed.length,
  woo_cve: byTarget('woo-5.5.0'),
  smart_slider: byTarget('smart-slider-3'),
  all_with_verdicts: results,
}
