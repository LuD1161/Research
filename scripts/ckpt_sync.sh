#!/bin/bash
cd /DATA/openclaw/Repos/Research
git add analysis/pipeline-js/ 2>/dev/null
git -c user.name="Aseem Shrey" -c user.email="LuD1161@users.noreply.github.com" commit -m "ckpt: sync pipeline-js checkpoints" --allow-empty 2>/dev/null || true
