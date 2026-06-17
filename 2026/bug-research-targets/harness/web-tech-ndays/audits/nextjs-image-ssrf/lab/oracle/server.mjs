import express from 'express';
import zlib from 'zlib';
import { promisify } from 'util';

const deflate = promisify(zlib.deflate);

// ---------------------------------------------------------------------------
// PNG generation — raw PNG bytes, no image library
// ---------------------------------------------------------------------------

/**
 * Write a 4-byte big-endian unsigned integer into a Buffer at the given offset.
 */
function writeUInt32BE(buf, value, offset) {
  buf[offset]     = (value >>> 24) & 0xff;
  buf[offset + 1] = (value >>> 16) & 0xff;
  buf[offset + 2] = (value >>>  8) & 0xff;
  buf[offset + 3] =  value         & 0xff;
}

/**
 * Compute PNG CRC-32 over a Buffer slice [start, end).
 * Uses the standard PNG CRC polynomial 0xEDB88320.
 */
const CRC_TABLE = (() => {
  const t = new Uint32Array(256);
  for (let n = 0; n < 256; n++) {
    let c = n;
    for (let k = 0; k < 8; k++) {
      c = (c & 1) ? (0xEDB88320 ^ (c >>> 1)) : (c >>> 1);
    }
    t[n] = c;
  }
  return t;
})();

function crc32(buf, start, end) {
  let crc = 0xFFFFFFFF;
  for (let i = start; i < end; i++) {
    crc = CRC_TABLE[(crc ^ buf[i]) & 0xff] ^ (crc >>> 8);
  }
  return (crc ^ 0xFFFFFFFF) >>> 0;
}

/**
 * Build a PNG chunk: [length:4][type:4][data:N][crc:4]
 */
function makeChunk(type, data) {
  const typeBytes = Buffer.from(type, 'ascii');
  const len = data.length;
  const chunk = Buffer.allocUnsafe(4 + 4 + len + 4);

  writeUInt32BE(chunk, len, 0);
  typeBytes.copy(chunk, 4);
  data.copy(chunk, 8);

  const crc = crc32(chunk, 4, 8 + len);
  writeUInt32BE(chunk, crc, 8 + len);

  return chunk;
}

/**
 * Build the raw bytes of a 4x4 RGB PNG with:
 *   magenta (#FF00FF) at the four corners
 *   black   (#000000) everywhere else
 *
 * Returns a Promise<Buffer>.
 */
async function buildOraclePng() {
  // PNG signature
  const signature = Buffer.from([137, 80, 78, 71, 13, 10, 26, 10]);

  // IHDR: 13 bytes of image metadata
  const ihdrData = Buffer.allocUnsafe(13);
  writeUInt32BE(ihdrData, 4, 0);  // width
  writeUInt32BE(ihdrData, 4, 4);  // height
  ihdrData[8]  = 8;  // bit depth
  ihdrData[9]  = 2;  // color type: RGB (no alpha)
  ihdrData[10] = 0;  // compression method: deflate
  ihdrData[11] = 0;  // filter method: adaptive
  ihdrData[12] = 0;  // interlace method: none
  const ihdr = makeChunk('IHDR', ihdrData);

  // Raw scanlines: filter byte (0 = None) + 4 pixels × 3 bytes each
  // Row 0: M B B M  →  FF00FF 000000 000000 FF00FF
  // Row 1: B B B B  →  all zeros
  // Row 2: B B B B  →  all zeros
  // Row 3: M B B M  →  FF00FF 000000 000000 FF00FF
  const M = [0xFF, 0x00, 0xFF];
  const B = [0x00, 0x00, 0x00];

  const cornerRow = Buffer.from([0x00, ...M, ...B, ...B, ...M]);  // filter=None
  const blackRow  = Buffer.from([0x00, ...B, ...B, ...B, ...B]);

  const rawScanlines = Buffer.concat([cornerRow, blackRow, blackRow, cornerRow]);

  // Compress with zlib (deflate wrapper — this is what PNG IDAT expects)
  const compressed = await deflate(rawScanlines);
  const idat = makeChunk('IDAT', compressed);

  // IEND: empty chunk
  const iend = makeChunk('IEND', Buffer.alloc(0));

  return Buffer.concat([signature, ihdr, idat, iend]);
}

// Pre-build the PNG once at startup so /image.png is served synchronously.
const PNG_BUFFER = await buildOraclePng();

// ---------------------------------------------------------------------------
// Request log (in-memory)
// ---------------------------------------------------------------------------

const requestLog = [];

function logRequest(req) {
  requestLog.push({
    timestamp: new Date().toISOString(),
    method:    req.method,
    path:      req.path,
    query:     req.query,
    headers:   req.headers,
    sourceIP:  req.ip ?? req.socket?.remoteAddress ?? null,
  });
}

// ---------------------------------------------------------------------------
// Express server
// ---------------------------------------------------------------------------

const app = express();
app.use(express.json());

// Trust the first proxy so req.ip reflects the real client address inside Docker.
app.set('trust proxy', 1);

// ── /image.png ──────────────────────────────────────────────────────────────
app.get('/image.png', (req, res) => {
  logRequest(req);
  res.set('Content-Type', 'image/png');
  res.send(PNG_BUFFER);
});

// ── /metadata ───────────────────────────────────────────────────────────────
app.get('/metadata', (req, res) => {
  logRequest(req);
  res.json({
    'ami-id':        'ami-oracle-test',
    'instance-id':   'i-oracle-test',
    'security-credentials': {
      role: 'oracle-test-role',
    },
  });
});

// ── /logs ────────────────────────────────────────────────────────────────────
app.get('/logs', (_req, res) => {
  // Intentionally NOT logged — observer should not appear in its own log.
  res.json(requestLog);
});

// ── /logs/clear ──────────────────────────────────────────────────────────────
app.post('/logs/clear', (_req, res) => {
  // Intentionally NOT logged.
  requestLog.length = 0;
  res.json({ cleared: true });
});

// ── Start ────────────────────────────────────────────────────────────────────
const PORT = 80;
app.listen(PORT, '0.0.0.0', () => {
  console.log(`[oracle] listening on 0.0.0.0:${PORT}`);
});
