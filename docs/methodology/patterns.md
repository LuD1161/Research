# Self-Improving Pattern Library

LLM agents discover vulnerability patterns during reviews. These are distilled into static grep patterns that feed back into future runs — the scanner gets smarter with each review.

## How It Works

1. **Discovery**: Each finding includes a `detection_pattern` with:
    - `grep_pattern`: ripgrep regex to detect this vuln class
    - `anti_pattern`: regex indicating the issue is mitigated
    - `section_name`: human-readable label
    - `description`: what the pattern catches

2. **Extraction**: After each pipeline run, `pattern_extractor.py` validates patterns against the source plugin and adds new ones to `learned_patterns.json`

3. **Application**: `enumerate_surface.sh` Section 4 loads learned patterns at runtime. Files matching `grep_pattern` but NOT `anti_pattern` are flagged as suspicious.

## Current Patterns (14)

| ID | Pattern | Vuln Class | Source |
|----|---------|-----------|--------|
| lp_001 | `wp_ajax_(nopriv_)?\w+` without `check_ajax_referer` | CSRF | woo-order-export-lite |
| lp_002 | `header(.*Content-Disposition)` without `sanitize_file_name` | HTTP header injection | woo-order-export-lite |
| lp_003 | `file_get_contents\|fopen` without `realpath` | Path traversal | woo-order-export-lite |
| lp_004 | `admin_(post\|action)_` without `current_user_can` | Broken access control | advanced-google-recaptcha |
| lp_005 | `wp_ajax_nopriv_` (any) | Unauth handler | advanced-google-recaptcha |
| lp_006 | `style=.*\$` without `esc_attr` | CSS injection | advanced-google-recaptcha |
| lp_007 | `wp_redirect\|header.*Location` without `esc_url` | URL injection | advanced-google-recaptcha |
| lp_008 | `WC_Order\|get_billing` without `manage_woocommerce` | Data exposure | woo-order-export-lite |
| lp_009 | `echo.*apply_filters` without `esc_html` | XSS via filter | ajax-search-for-woocommerce |
| lp_010 | `echo json_encode` without `wp_send_json` | Missing Content-Type | ajax-search-for-woocommerce |
| lp_011 | `implode(\s*[',]\s*\$` without `intval` | SQL injection | ajax-search-for-woocommerce |
| lp_012 | `unserialize(` without `allowed_classes` | Object injection | ajax-search-for-woocommerce |
| lp_013 | `$query[.where.].*implode` without `intval` | SQLi WHERE | ajax-search-for-woocommerce |
| lp_014 | `$_POST[.*][.*]['s']` (raw nested) | Input sanitization | ajax-search-for-woocommerce |

## Adding Patterns

After a pipeline run:
```bash
python3 tools/pattern_extractor.py \
  analysis/pipeline/<slug>/raw/result.json \
  --plugin-dir plugins/src/<slug> \
  --learned analysis/pipeline/learned_patterns.json
```

## Pattern Quality

The pattern + anti-pattern approach avoids the completeness trap of static scanners:
- **Not an allowlist**: We detect known-bad patterns, not known-good functions
- **False-positive suppression**: Anti-patterns filter out mitigated instances
- **Growing coverage**: Every review adds new patterns the static scanner didn't know about
