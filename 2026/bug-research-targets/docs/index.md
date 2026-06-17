# Security Research Hub

Systematic vulnerability discovery across software ecosystems — validation-first methodology, agent-driven pipelines.

Every finding is reproduced against a running instance before it is logged as confirmed. A working PoC is the high-signal artifact.

---

## Active Research Tracks

| Ecosystem | Targets Analyzed | Confirmed Findings | Status |
|-----------|-----------------|-------------------|--------|
| **WordPress Plugins** | 155 plugins (of top 200) | 49 vulnerabilities | Pipeline complete |
| **npm / Node.js** | 14 packages | 33 vulnerabilities | Batch 1–4 complete |
| **Web-Tech N-Days** | Next.js image optimizer | 1 SSRF (reproduced) | Active |
| **Android Apps** | — | — | Pipeline designed |
| **Browser Extensions** | — | — | Pipeline designed |

---

## Quick Navigation

- **[Master Target Index](targets/index.md)** — 50+ targets across 6 tiers, with status tracking
- **[All Findings](findings/index.md)** — Cross-ecosystem vulnerability overview
- **[Methodology](methodology/overview.md)** — Reusable harness architectures and pipeline designs
- **[Reference](reference/anti-patterns.md)** — Anti-patterns, specs, and templates

---

!!! tip "For Agents"
    See [Contributing (Agent Convention)](CONTRIBUTING.md) for the directory structure and file format to use when adding new findings. The key convention: `docs/findings/<ecosystem>/<target-slug>/NNN-short-description.md`.
