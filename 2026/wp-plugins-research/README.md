# WordPress Top 100 Plugin Security Research

Systematic security audit of the top 100 most-installed WordPress plugins through static source code analysis, automated taint tracking, and expert manual review.

## Mission

Identify zero-day vulnerabilities in the most widely deployed WordPress plugins (100M+ combined installs) for responsible disclosure to maintainers.

## Methodology

Five-layer analysis pipeline:

1. **Pattern matching** (Semgrep + ripgrep) — broadest net for obvious patterns
2. **Intraprocedural taint analysis** (custom tree-sitter tool) — context-aware taint labels within functions
3. **Interprocedural analysis** (Joern CPG) — cross-function data flow tracking
4. **WordPress-aware analysis** (hook resolver + DB taint oracle) — WP-specific patterns
5. **Expert manual review** — synthesize results, verify exploitability, assess impact

## Scope

**In scope:** Static analysis of plugin PHP/JS/SQL, automated scanning, AST-based taint tracking, CPG queries, manual code review, PoC request sketches.

**Out of scope:** Active exploitation of live sites, dynamic testing against third-party infrastructure, reverse engineering obfuscated premium plugins, DoS testing.

## Ethical Framework

- All findings reported via responsible disclosure (90-day timeline)
- No working exploits beyond minimum to confirm vulnerability existence
- All analysis on downloaded source code, not live installations

## Quick Start

```bash
make setup        # Install tools + Python venv
make download     # Download all public plugins
make verify       # Verify downloads + tools
make analyze      # Run full analysis pipeline
make report       # Generate reports
```

## Structure

```
plugins/          # Plugin manifest, zips (gitignored), source (gitignored)
tools/            # Analysis tools, Semgrep rules, Joern queries
analysis/         # Results by phase
reports/          # Per-plugin reports, executive summary, critical findings
scripts/          # Pipeline automation scripts
docs/             # Methodology, anti-patterns, design specs
```
