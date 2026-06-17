#!/usr/bin/env python3
"""pattern_extractor.py — distill confirmed pipeline findings into reusable grep patterns.

Reads a pipeline result JSON, extracts detection_pattern objects from confirmed
findings, validates them against the source plugin, deduplicates against existing
learned patterns, and appends new ones to learned_patterns.json.

Usage:
  pattern_extractor.py <result.json> --plugin-dir <dir> [--learned <patterns.json>]
  pattern_extractor.py <result.json> --plugin-dir <dir> --learned analysis/pipeline/learned_patterns.json
"""
import json, argparse, subprocess, sys, os
from datetime import date

def load_result(path):
    with open(path) as f:
        data = json.load(f)
    if 'result' in data and isinstance(data['result'], dict):
        return data['result']
    return data

def extract_patterns(result, source_plugin):
    """Pull detection_pattern objects from confirmed findings."""
    patterns = []
    for item in result.get('confirmed', []):
        finding = item.get('finding', {})
        dp = finding.get('detection_pattern')
        if not dp or not dp.get('grep_pattern'):
            continue
        patterns.append({
            'grep_pattern': dp['grep_pattern'],
            'anti_pattern': dp.get('anti_pattern', ''),
            'section_name': dp.get('section_name', finding.get('vuln_class', 'unknown')),
            'description': dp.get('description', ''),
            'vuln_class': finding.get('vuln_class', ''),
            'source_plugin': source_plugin,
            'source_file': item.get('rel', ''),
            'source_finding_id': item.get('id', ''),
            'added': str(date.today()),
        })
    return patterns

def validate_pattern(pattern, plugin_dir):
    """Run the grep pattern against the plugin to confirm it matches something."""
    try:
        r = subprocess.run(
            ['rg', '-g', '*.php', '-l', '-e', pattern['grep_pattern'], plugin_dir],
            capture_output=True, text=True, timeout=10
        )
        if r.returncode >= 2:
            return False, f"rg error: {r.stderr.strip()}"
        matches = [l for l in r.stdout.strip().split('\n') if l]
        return len(matches) > 0, f"{len(matches)} files match"
    except Exception as e:
        return False, str(e)

def deduplicate(new_patterns, existing_patterns):
    """Remove patterns whose grep_pattern already exists in the library."""
    existing_greps = {p['grep_pattern'] for p in existing_patterns}
    deduped = []
    for p in new_patterns:
        if p['grep_pattern'] not in existing_greps:
            deduped.append(p)
            existing_greps.add(p['grep_pattern'])
    return deduped

def assign_ids(patterns, existing_patterns):
    """Assign sequential IDs starting after the highest existing ID."""
    max_id = 0
    for p in existing_patterns:
        pid = p.get('id', '')
        if pid.startswith('lp_'):
            try:
                max_id = max(max_id, int(pid[3:]))
            except ValueError:
                pass
    for i, p in enumerate(patterns):
        p['id'] = f"lp_{max_id + i + 1:03d}"
    return patterns

def main():
    parser = argparse.ArgumentParser(description='Extract grep patterns from pipeline findings')
    parser.add_argument('result', help='Pipeline result JSON file')
    parser.add_argument('--plugin-dir', required=True, help='Plugin source directory for validation')
    parser.add_argument('--learned', default=None, help='Path to learned_patterns.json (read + append)')
    parser.add_argument('--dry-run', action='store_true', help='Print patterns without writing')
    args = parser.parse_args()

    result = load_result(args.result)
    source_plugin = os.path.basename(args.plugin_dir.rstrip('/'))

    raw = extract_patterns(result, source_plugin)
    print(f"extracted: {len(raw)} patterns from confirmed findings")

    existing = []
    learned_path = args.learned
    if learned_path and os.path.exists(learned_path):
        with open(learned_path) as f:
            existing = json.load(f)
        print(f"existing library: {len(existing)} patterns")

    deduped = deduplicate(raw, existing)
    print(f"after dedup: {len(deduped)} new patterns")

    validated = []
    for p in deduped:
        ok, msg = validate_pattern(p, args.plugin_dir)
        status = "PASS" if ok else "FAIL"
        print(f"  [{status}] {p['section_name']}: {p['grep_pattern'][:50]}... — {msg}")
        if ok:
            validated.append(p)

    print(f"validated: {len(validated)} patterns")

    if not validated:
        print("no new patterns to add")
        return

    validated = assign_ids(validated, existing)

    if args.dry_run:
        print("\n--- DRY RUN (would add): ---")
        print(json.dumps(validated, indent=2))
        return

    if learned_path:
        merged = existing + validated
        with open(learned_path, 'w') as f:
            json.dump(merged, f, indent=2)
        print(f"wrote {len(merged)} total patterns to {learned_path}")
    else:
        print(json.dumps(validated, indent=2))

if __name__ == '__main__':
    main()
