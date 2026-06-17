#!/usr/bin/env node

import { readFile } from 'fs/promises';
import { dirname, join } from 'path';
import { fileURLToPath } from 'url';

const __dirname = dirname(fileURLToPath(import.meta.url));
const RESULTS_PATH = join(__dirname, '..', 'results', 'all-results.json');

async function main() {
  const results = JSON.parse(await readFile(RESULTS_PATH, 'utf-8'));

  const byVerdict = {};
  for (const r of results) {
    (byVerdict[r.verdict] ||= []).push(r);
  }

  const byTechnique = {};
  for (const r of results) {
    (byTechnique[r.technique] ||= []).push(r);
  }

  console.log('# SSRF Test Matrix Results\n');
  console.log(`Total payloads: ${results.length}\n`);

  console.log('## Verdict Summary\n');
  console.log(`| Verdict | Count |`);
  console.log(`|---------|-------|`);
  for (const v of ['SSRF_CONFIRMED', 'SSRF_LIKELY', 'BLOCKED', 'HARNESS_ERROR']) {
    console.log(`| ${v} | ${(byVerdict[v] || []).length} |`);
  }

  console.log('\n## Results by Technique\n');
  for (const [technique, items] of Object.entries(byTechnique)) {
    console.log(`### ${technique}\n`);
    console.log(`| ID | Config | Status | Oracle | Timing | Verdict |`);
    console.log(`|----|--------|--------|--------|--------|---------|`);
    for (const r of items) {
      console.log(`| ${r.id} | ${r.config} | ${r.status} | ${r.oracle_hit} | ${r.timing_ms}ms | **${r.verdict}** |`);
    }
    console.log('');
  }

  if (byVerdict.SSRF_CONFIRMED?.length) {
    console.log('## Confirmed Findings\n');
    for (const r of byVerdict.SSRF_CONFIRMED) {
      console.log(`### ${r.id}\n`);
      console.log(`- **Technique:** ${r.technique}`);
      console.log(`- **Config:** ${r.config}`);
      console.log(`- **Guard bypassed:** ${r.guard_under_test}`);
      console.log(`- **HTTP status:** ${r.status}`);
      console.log(`- **Timing:** ${r.timing_ms}ms`);
      if (r.oracle_logs) {
        console.log(`- **Oracle log entries:** ${r.oracle_logs.length}`);
        for (const log of r.oracle_logs) {
          console.log(`  - ${log.method} ${log.path} from ${log.sourceIP} at ${log.timestamp}`);
        }
      }
      console.log('');
    }
  }
}

main().catch(console.error);
