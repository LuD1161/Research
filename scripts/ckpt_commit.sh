#!/usr/bin/env bash
# Concurrency-safe checkpoint COMMIT for parallel workflow agents.
#
# Every workflow agent calls this the moment it finishes its unit of work, so
# that work is durable in git immediately -- surviving API rate-limit aborts,
# SSH disconnects, process kills, and server restarts. Push is handled
# separately (ckpt_sync.sh) once per wave to avoid 14-way push thrash on a
# single branch.
#
# Each agent writes a UNIQUE checkpoint file, so parallel commits never touch
# the same path. The only shared resource is .git/index + the ref, which git
# guards with locks; we retry on contention.
#
# Usage: ckpt_commit.sh <relative-or-abs-file> "<commit message>"
set -uo pipefail

FILE="${1:?checkpoint file required}"
MSG="${2:?commit message required}"

ROOT="$(git rev-parse --show-toplevel 2>/dev/null)" || { echo "not a git repo" >&2; exit 1; }
cd "$ROOT" || exit 1

# Retry a command up to $max times, tolerating index.lock / ref-lock contention
# from sibling agents. Randomized sub-second backoff so 14 agents desynchronize.
retry() {
  local n=0 max=40
  until "$@"; do
    n=$((n + 1))
    [ "$n" -ge "$max" ] && return 1
    sleep "0.$(( (RANDOM % 9) + 1 ))"
  done
}

do_commit() {
  # -f because plugin source is gitignored; checkpoints live under analysis/.
  git add -f -- "$FILE" 2>/dev/null || return 1
  # If nothing changed (idempotent re-run committing identical content), succeed.
  if git diff --cached --quiet -- "$FILE" 2>/dev/null; then
    return 0
  fi
  # Commit ONLY this path -- ignores whatever sibling agents have staged.
  git commit -q -m "$MSG" -- "$FILE"
}

if retry do_commit; then
  echo "ckpt committed: $FILE"
  exit 0
fi
echo "ckpt commit FAILED after retries: $FILE" >&2
exit 1
