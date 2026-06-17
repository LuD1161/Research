# <Target name> — research notes

- **Slug:** `<slug>`
- **Status:** 🟡 In Progress
- **Pipeline:** <CVE authority / bounty program + link>
- **Deploy:** 🟢/🟡/🔴 — <how an instance is stood up>
- **Pinned version under test:** <version / commit>

## Why this target
<install base / code maturity / payout rationale>

## Methodology
<surface enumeration approach, reuse from wp-plugins harness, tooling>

## Folder layout
- `lab/` — reproducible install (compose file / setup script / notes). Stand up before validating.
- `surface/` — attack-surface enumeration output.
- `findings/` — one file per finding (see `findings/_TEMPLATE.md`).

## Status log
- YYYY-MM-DD — <note>
