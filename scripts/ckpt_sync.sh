<<<<<<< HEAD
#!/bin/bash
cd /DATA/openclaw/Repos/Research
git add analysis/pipeline-js/ 2>/dev/null
git -c user.name="Aseem Shrey" -c user.email="LuD1161@users.noreply.github.com" commit -m "ckpt: sync pipeline-js checkpoints" --allow-empty 2>/dev/null || true
=======
#!/usr/bin/env bash
# Concurrency-safe checkpoint PUSH (sync to remote) for resumable workflows.
#
# Called ONCE per wave by a single dedicated "sync" agent (never in parallel),
# so it never fights itself on the branch ref. It absorbs all the per-agent
# commits made during the wave and pushes them, making the run resumable on a
# DIFFERENT machine: `git pull` there + re-run the workflow, and every
# already-checkpointed agent short-circuits.
#
# Local commits already survive process/SSH/rate-limit death (same machine);
# this step is what makes the run survive losing the machine entirely.
#
# Usage: ckpt_sync.sh   (no args)
set -uo pipefail

ROOT="$(git rev-parse --show-toplevel 2>/dev/null)" || { echo "not a git repo" >&2; exit 1; }
cd "$ROOT" || exit 1
BRANCH="$(git rev-parse --abbrev-ref HEAD)"

retry() {
  local n=0 max=10
  until "$@"; do
    n=$((n + 1))
    [ "$n" -ge "$max" ] && return 1
    sleep "$(( (RANDOM % 3) + 1 ))"
  done
}

# Rebase onto remote first so a push from another worker/machine doesn't reject
# us; --autostash protects any in-flight worktree changes. Distinct checkpoint
# files mean rebases auto-merge with no conflicts.
sync() {
  git pull --rebase --autostash --no-edit -q origin "$BRANCH" 2>/dev/null || true
  git push -q origin "$BRANCH"
}

if retry sync; then
  echo "ckpt synced -> origin/$BRANCH @ $(git rev-parse --short HEAD)"
  exit 0
fi
# Non-fatal: commits are safe locally; next wave's sync will catch up.
echo "ckpt sync deferred (commits safe locally)" >&2
exit 0
>>>>>>> worktree-woo-security-review
