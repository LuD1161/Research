#!/usr/bin/env node

import { readFile, writeFile, mkdir } from 'fs/promises';
import { fileURLToPath } from 'url';
import { dirname, join } from 'path';

const __dirname = dirname(fileURLToPath(import.meta.url));
const MATRIX_PATH = join(__dirname, '..', 'payloads', 'ssrf-matrix.json');
const RESULTS_DIR = join(__dirname, '..', 'results');

const ORACLE_API = 'http://localhost:4010';
const DNS_API = 'http://localhost:15353';
const FETCH_TIMEOUT = 15_000;

const CONFIG_PORTS = {
  baseline: 13001,
  wildcard: 13002,
  subdomain: 13003,
  rebind: 13004,
};

async function clearOracleLogs() {
  await fetch(`${ORACLE_API}/logs/clear`, { method: 'POST' });
}

async function getOracleLogs() {
  const res = await fetch(`${ORACLE_API}/logs`);
  return res.json();
}

async function resetDnsRebind() {
  await fetch(`${DNS_API}/rebind/reset`, { method: 'POST' }).catch(() => {});
}

async function healthCheck(port) {
  try {
    const res = await fetch(`http://localhost:${port}/`, {
      signal: AbortSignal.timeout(5000),
    });
    return res.status < 500;
  } catch {
    return false;
  }
}

async function runPayload(payload) {
  const port = payload.port || CONFIG_PORTS[payload.config];
  const imageUrl = `http://localhost:${port}/_next/image?url=${encodeURIComponent(payload.url)}&w=64&q=75`;

  const logsBefore = await getOracleLogs();
  const logCountBefore = logsBefore.length;

  const start = Date.now();
  let status, headers, bodyHash, error;

  try {
    const res = await fetch(imageUrl, {
      signal: AbortSignal.timeout(FETCH_TIMEOUT),
    });
    status = res.status;
    headers = Object.fromEntries(res.headers.entries());
    const body = await res.arrayBuffer();
    bodyHash = `${body.byteLength}b`;
  } catch (err) {
    error = err.name === 'TimeoutError' ? 'timeout' : err.message;
    status = 0;
    headers = {};
    bodyHash = null;
  }

  const timing = Date.now() - start;

  // Poll oracle logs for up to 2s — covers races where the redirect completes
  // and Next.js returns the optimized image faster than the oracle has logged
  // the underlying fetch.
  let logsAfter = [];
  for (let i = 0; i < 20; i++) {
    logsAfter = await getOracleLogs();
    if (logsAfter.length > logCountBefore) break;
    await new Promise((r) => setTimeout(r, 100));
  }
  const newLogs = logsAfter.slice(logCountBefore);
  const oracleHit = newLogs.length > 0;

  let verdict;
  if (error === 'timeout' || (status === 0 && !error)) {
    verdict = 'HARNESS_ERROR';
  } else if (oracleHit) {
    verdict = 'SSRF_CONFIRMED';
  } else if (status === 200 || timing > 5000) {
    verdict = 'SSRF_LIKELY';
  } else {
    verdict = 'BLOCKED';
  }

  return {
    id: payload.id,
    technique: payload.technique,
    config: payload.config,
    guard_under_test: payload.guard_under_test,
    status,
    oracle_hit: oracleHit,
    oracle_logs: newLogs.length > 0 ? newLogs : undefined,
    timing_ms: timing,
    body_size: bodyHash,
    error: error || undefined,
    verdict,
  };
}

async function main() {
  const matrix = JSON.parse(await readFile(MATRIX_PATH, 'utf-8'));
  await mkdir(RESULTS_DIR, { recursive: true });

  const groups = {};
  for (const p of matrix) {
    const key = p.config;
    (groups[key] ||= []).push(p);
  }

  const allResults = [];

  for (const [config, payloads] of Object.entries(groups)) {
    const port = payloads[0].port || CONFIG_PORTS[config];
    console.log(`\n=== Config: ${config} (port ${port}) — ${payloads.length} payloads ===`);

    const healthy = await healthCheck(port);
    if (!healthy) {
      console.log(`  SKIP — app-${config} not reachable on port ${port}`);
      for (const p of payloads) {
        allResults.push({ id: p.id, verdict: 'HARNESS_ERROR', error: 'app not reachable' });
      }
      continue;
    }

    if (config === 'rebind') {
      await resetDnsRebind();
    }

    for (const payload of payloads) {
      await clearOracleLogs();
      if (config === 'rebind') {
        await resetDnsRebind();
      }

      const result = await runPayload(payload);
      allResults.push(result);

      const icon = result.verdict === 'SSRF_CONFIRMED' ? '🔴'
        : result.verdict === 'SSRF_LIKELY' ? '🟡'
        : result.verdict === 'BLOCKED' ? '🟢'
        : '⚠️';
      console.log(`  ${icon} ${result.id}: ${result.verdict} (${result.status}, ${result.timing_ms}ms, oracle=${result.oracle_hit})`);
    }

    await writeFile(
      join(RESULTS_DIR, `${config}-results.json`),
      JSON.stringify(payloads.map(p => allResults.find(r => r.id === p.id)), null, 2)
    );
  }

  await writeFile(join(RESULTS_DIR, 'all-results.json'), JSON.stringify(allResults, null, 2));

  console.log('\n=== Summary ===');
  const counts = { SSRF_CONFIRMED: 0, SSRF_LIKELY: 0, BLOCKED: 0, HARNESS_ERROR: 0 };
  for (const r of allResults) counts[r.verdict]++;
  console.log(`  CONFIRMED: ${counts.SSRF_CONFIRMED}`);
  console.log(`  LIKELY:    ${counts.SSRF_LIKELY}`);
  console.log(`  BLOCKED:   ${counts.BLOCKED}`);
  console.log(`  ERRORS:    ${counts.HARNESS_ERROR}`);

  if (counts.SSRF_CONFIRMED > 0) {
    console.log('\n=== CONFIRMED FINDINGS ===');
    for (const r of allResults.filter(r => r.verdict === 'SSRF_CONFIRMED')) {
      console.log(`  ${r.id} — ${r.technique} via ${r.config} (guard: ${r.guard_under_test})`);
    }
  }
}

main().catch(console.error);
