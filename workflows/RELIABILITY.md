# Durable / resumable workflows

Goal: a long multi-agent run must survive **API rate-limit aborts, SSH drops,
process kills, and full machine loss**, and be resumable — possibly on another
machine — with **zero lost agent work**.

## The core constraint

The Workflow script sandbox has **no filesystem and no shell** — only
`agent()` / `parallel()` / `pipeline()` / `log()` / `phase()`. The orchestrator
therefore cannot persist anything. Durability must live **inside the agents**,
which have `Bash` / `Write` / `Read`.

We learned this the hard way: the ultimate-member run's result existed only as a
returned value + a `/tmp` file. A session interruption would have wiped it. (It
happened to complete first — but the next run won't be so lucky.)

## The mechanism

Three pieces:

| Piece | What it does | Survives |
|---|---|---|
| `scripts/ckpt_commit.sh` | each agent writes a UNIQUE checkpoint JSON, then commits **just that file** (index.lock-retried, concurrency-safe) | kill / rate-limit / SSH drop (same box) |
| `scripts/ckpt_sync.sh` | one dedicated agent per wave does `pull --rebase` + `push` (single writer, no ref thrash) | losing the box entirely |
| **STEP 0 resume-check** in every agent prompt | `cat` the checkpoint; if `"_done": true`, emit it and stop | makes re-running the workflow the resume action — idempotent |

`workflows/_durable_template.js` wires all three: `durableAgent()` injects the
protocol preamble, `runWaves()` runs waves + a `syncWave()` barrier after each.

### Why per-agent commit but per-wave push?

True simultaneous per-agent `push` makes 14 agents fight over one branch ref
(non-fast-forward rejections, rebase thrash). Per-agent **commit** is instant and
lock-safe; per-wave **push** by a single writer is the reliable equivalent —
nothing is lost locally, and at most one wave lags the remote.

## Resume runbook

**Same machine** (after a kill): re-launch the same workflow. Either
`Workflow({scriptPath, resumeFromRunId})` for the fast session-local cache, or
just re-run it — STEP 0 makes every committed agent return instantly.

**Different machine** (box died): 
1. `git clone` / `git pull` the branch (checkpoints are committed + pushed).
2. Re-run the same workflow script. Done units short-circuit via STEP 0; only the
   unfinished tail actually spends tokens.

Optional speedup: before launching, the orchestrator lists the checkpoint dir and
passes only the *remaining* indices, so done units aren't even spawned. (Agent-
level STEP 0 is the correctness guarantee; this is just a cost optimization.)

## Checks before trusting a run
- Each agent's schema must allow the extra `_done` field
  (`additionalProperties: true`).
- Checkpoint filenames must be **unique per unit** (parallel commits must never
  collide on a path). Verified: 8-way parallel commit stress test, 0 lost.
- The final consolidated result should ALSO be written + committed by the
  orchestrator's caller (this main loop), not just returned — belt and suspenders.
