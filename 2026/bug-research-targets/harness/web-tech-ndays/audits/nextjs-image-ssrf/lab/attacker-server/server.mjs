import express from 'express';

const app = express();
const PORT = 4444;

// In-memory request log
const requestLog = [];

// Minimal 1x1 white JPEG (valid JPEG binary, no library needed)
// SOI + APP0 JFIF + DQT + SOF0 + DHT + SOS + EOI
const WHITE_1x1_JPEG = Buffer.from([
  0xff, 0xd8, 0xff, 0xe0, 0x00, 0x10, 0x4a, 0x46, 0x49, 0x46, 0x00, 0x01,
  0x01, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0xff, 0xdb, 0x00, 0x43,
  0x00, 0x08, 0x06, 0x06, 0x07, 0x06, 0x05, 0x08, 0x07, 0x07, 0x07, 0x09,
  0x09, 0x08, 0x0a, 0x0c, 0x14, 0x0d, 0x0c, 0x0b, 0x0b, 0x0c, 0x19, 0x12,
  0x13, 0x0f, 0x14, 0x1d, 0x1a, 0x1f, 0x1e, 0x1d, 0x1a, 0x1c, 0x1c, 0x20,
  0x24, 0x2e, 0x27, 0x20, 0x22, 0x2c, 0x23, 0x1c, 0x1c, 0x28, 0x37, 0x29,
  0x2c, 0x30, 0x31, 0x34, 0x34, 0x34, 0x1f, 0x27, 0x39, 0x3d, 0x38, 0x32,
  0x3c, 0x2e, 0x33, 0x34, 0x32, 0xff, 0xc0, 0x00, 0x0b, 0x08, 0x00, 0x01,
  0x00, 0x01, 0x01, 0x01, 0x11, 0x00, 0xff, 0xc4, 0x00, 0x1f, 0x00, 0x00,
  0x01, 0x05, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08,
  0x09, 0x0a, 0x0b, 0xff, 0xc4, 0x00, 0xb5, 0x10, 0x00, 0x02, 0x01, 0x03,
  0x03, 0x02, 0x04, 0x03, 0x05, 0x05, 0x04, 0x04, 0x00, 0x00, 0x01, 0x7d,
  0x01, 0x02, 0x03, 0x00, 0x04, 0x11, 0x05, 0x12, 0x21, 0x31, 0x41, 0x06,
  0x13, 0x51, 0x61, 0x07, 0x22, 0x71, 0x14, 0x32, 0x81, 0x91, 0xa1, 0x08,
  0x23, 0x42, 0xb1, 0xc1, 0x15, 0x52, 0xd1, 0xf0, 0x24, 0x33, 0x62, 0x72,
  0x82, 0x09, 0x0a, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x25, 0x26, 0x27, 0x28,
  0x29, 0x2a, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x43, 0x44, 0x45,
  0x46, 0x47, 0x48, 0x49, 0x4a, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59,
  0x5a, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x73, 0x74, 0x75,
  0x76, 0x77, 0x78, 0x79, 0x7a, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89,
  0x8a, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0x99, 0x9a, 0xa2, 0xa3, 0xa4,
  0xa5, 0xa6, 0xa7, 0xa8, 0xa9, 0xaa, 0xb2, 0xb3, 0xb4, 0xb5, 0xb6, 0xb7,
  0xb8, 0xb9, 0xba, 0xc2, 0xc3, 0xc4, 0xc5, 0xc6, 0xc7, 0xc8, 0xc9, 0xca,
  0xd2, 0xd3, 0xd4, 0xd5, 0xd6, 0xd7, 0xd8, 0xd9, 0xda, 0xe1, 0xe2, 0xe3,
  0xe4, 0xe5, 0xe6, 0xe7, 0xe8, 0xe9, 0xea, 0xf1, 0xf2, 0xf3, 0xf4, 0xf5,
  0xf6, 0xf7, 0xf8, 0xf9, 0xfa, 0xff, 0xda, 0x00, 0x08, 0x01, 0x01, 0x00,
  0x00, 0x3f, 0x00, 0xfb, 0xd0, 0xff, 0xd9,
]);

// Allowed redirect status codes
const ALLOWED_REDIRECT_STATUSES = new Set([301, 302, 307, 308]);

// Logging middleware — runs before every route
app.use((req, res, next) => {
  requestLog.push({
    timestamp: new Date().toISOString(),
    method: req.method,
    path: req.path,
    query: req.query,
    headers: req.headers,
    sourceIP: req.socket.remoteAddress,
  });
  next();
});

// GET /redirect
// Query params: to (required), status (optional, default 302)
app.get('/redirect', (req, res) => {
  const { to, status } = req.query;

  if (!to) {
    return res.status(400).send('Missing required query parameter: to');
  }

  const statusCode = status !== undefined ? parseInt(status, 10) : 302;

  if (!ALLOWED_REDIRECT_STATUSES.has(statusCode)) {
    return res
      .status(400)
      .send(`Invalid status code. Allowed values: 301, 302, 307, 308`);
  }

  res.redirect(statusCode, to);
});

// GET /redirect-chain
// Query params: hops (number of intermediate redirects), final (final target URL)
app.get('/redirect-chain', (req, res) => {
  const { hops, final: finalUrl } = req.query;

  if (!finalUrl) {
    return res.status(400).send('Missing required query parameter: final');
  }

  const totalHops = hops !== undefined ? parseInt(hops, 10) : 0;

  if (isNaN(totalHops) || totalHops < 0) {
    return res.status(400).send('Invalid hops parameter: must be a non-negative integer');
  }

  // hop=0 means this is the last intermediate — redirect straight to final
  const currentHop = parseInt(req.query._hop ?? '0', 10);
  const remainingHops = totalHops - currentHop;

  if (remainingHops <= 0) {
    // All intermediate hops exhausted, redirect to final target
    return res.redirect(302, finalUrl);
  }

  // Redirect to the next hop on this server
  const nextHop = currentHop + 1;
  const baseUrl = `http://${req.headers.host || `10.99.0.10:${PORT}`}`;
  const nextUrl = `${baseUrl}/redirect-chain?hops=${totalHops}&final=${encodeURIComponent(finalUrl)}&_hop=${nextHop}`;
  res.redirect(302, nextUrl);
});

// GET /image.jpg — returns a valid 1x1 white JPEG
app.get('/image.jpg', (req, res) => {
  res.set('Content-Type', 'image/jpeg');
  res.set('Content-Length', WHITE_1x1_JPEG.length.toString());
  res.send(WHITE_1x1_JPEG);
});

// GET /slow — delays response by `delay` ms (max 30000), then returns 200
app.get('/slow', (req, res) => {
  const MAX_DELAY = 30000;
  const requestedDelay = req.query.delay !== undefined ? parseInt(req.query.delay, 10) : 0;

  if (isNaN(requestedDelay) || requestedDelay < 0) {
    return res.status(400).send('Invalid delay parameter: must be a non-negative integer');
  }

  const delay = Math.min(requestedDelay, MAX_DELAY);

  setTimeout(() => {
    res.status(200).type('text/plain').send('delayed');
  }, delay);
});

// GET /large — streams `bytes` null bytes (max 100MB)
app.get('/large', (req, res) => {
  const MAX_BYTES = 104857600; // 100MB
  const requestedBytes = req.query.bytes !== undefined ? parseInt(req.query.bytes, 10) : 0;

  if (isNaN(requestedBytes) || requestedBytes < 0) {
    return res.status(400).send('Invalid bytes parameter: must be a non-negative integer');
  }

  const totalBytes = Math.min(requestedBytes, MAX_BYTES);

  res.set('Content-Type', 'application/octet-stream');
  res.set('Content-Length', totalBytes.toString());

  if (totalBytes === 0) {
    return res.end();
  }

  // Stream in 64KB chunks to avoid holding a large buffer in memory
  const CHUNK_SIZE = 65536;
  const chunk = Buffer.alloc(Math.min(CHUNK_SIZE, totalBytes));
  let remaining = totalBytes;

  const writeNext = () => {
    while (remaining > 0) {
      const toWrite = Math.min(chunk.length, remaining);
      const slice = toWrite === chunk.length ? chunk : chunk.slice(0, toWrite);
      const ok = res.write(slice);
      remaining -= toWrite;
      if (remaining === 0) {
        res.end();
        return;
      }
      if (!ok) {
        // Back-pressure: wait for drain before continuing
        res.once('drain', writeNext);
        return;
      }
    }
  };

  writeNext();
});

// GET /logs — return the in-memory request log as JSON
app.get('/logs', (req, res) => {
  res.json(requestLog);
});

// POST /logs/clear — reset the log array
app.post('/logs/clear', (req, res) => {
  requestLog.length = 0;
  res.json({ ok: true, message: 'Log cleared' });
});

// Start server
app.listen(PORT, '0.0.0.0', () => {
  console.log(`Attacker server listening on 0.0.0.0:${PORT}`);
});
