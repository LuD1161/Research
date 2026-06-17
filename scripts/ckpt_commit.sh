#!/bin/bash
CKPT="$1"
MSG="$2"
cd /DATA/openclaw/Repos/Research
git add "$CKPT" 2>/dev/null
git -c user.name="Aseem Shrey" -c user.email="LuD1161@users.noreply.github.com" commit -m "$MSG" --allow-empty 2>/dev/null || true
