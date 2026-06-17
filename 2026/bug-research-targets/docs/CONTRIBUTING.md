# Contributing — Agent Convention

How to add findings, audits, and methodology docs so the site stays self-organized.

---

## Directory Convention

```
docs/findings/<ecosystem>/<target-slug>/
├── index.md              # Target overview (optional but recommended)
├── 001-short-description.md   # First finding
├── 002-short-description.md   # Second finding
└── code-paths.md              # Supporting analysis (optional)
```

**Ecosystem slugs** (use existing or create new):
`wordpress`, `npm`, `android`, `extensions`, `joomla`, `drupal`, `jenkins`, ...

**Target slugs** must be kebab-case and should match the slug in [INDEX.md](targets/index.md) when applicable.

---

## Finding File Format

Use the [finding template](reference/finding-template.md):

```markdown
# <FINDING-ID> — <short title>

- **Status:** draft | reproduced | reported | CVE-assigned | fixed | rejected
- **Severity:** <CVSS / qualitative>
- **Affected component & version:** <plugin/module @ version>
- **Vuln class:** <SQLi / XSS / SSRF / authz bypass / RCE / path traversal / ...>

## Root cause (source level)
<file:line, tainted source → sink, why sanitization is missing>

## Reproduction (against running instance) — REQUIRED before "reproduced"
Lab: <ref to ../lab>, version <x>, auth context <role>.

1. <step>
2. <step>

PoC:
\```
<request / curl / script>
\```

## Observed impact
<what actually happened on the live instance — proof, not theory>

## Disclosure
- Reported: <date / channel>
- CVE / advisory: <id>
```

---

## Naming Rules

- **Finding IDs:** zero-padded 3-digit, sequential within the target: `001`, `002`, `003`
- **File names:** `NNN-short-description.md` in kebab-case
- **Ecosystem dirs:** lowercase, no special characters
- **Target dirs:** kebab-case matching the project/package name

---

## Post-Write Checklist

After adding a finding:

1. **Per-ecosystem tracker** — update `docs/findings/<ecosystem>/index.md` with a row for the new finding
2. **Cross-ecosystem overview** — update `docs/findings/index.md` if the finding is notable (Critical/High severity)
3. **mkdocs.yml nav** — add the finding page under the appropriate ecosystem section
4. **INDEX.md** — update the target's status if this is the first finding for a new target

---

## Adding a New Ecosystem

1. Create `docs/findings/<ecosystem>/`
2. Add `docs/findings/<ecosystem>/index.md` — ecosystem-level overview/tracker
3. Add a nav section in `mkdocs.yml` under `Findings:`
4. If the ecosystem has methodology docs, add them to `docs/methodology/` (symlink if they live elsewhere in the repo)

---

## Lab Artifacts

PoC environments, Docker Compose files, exploit scripts, and test harnesses go in:

- `harness/<ecosystem>/audits/<target-slug>/lab/` for reusable infrastructure
- `targets/<target-slug>/lab/` for per-target lab setups

Symlink into `docs/` only if the lab README is useful as documentation. Raw scripts and Docker files stay outside `docs/`.
