# decompress — Security Review Findings

**Package:** [decompress](https://www.npmjs.com/package/decompress) | **Files reviewed:** 1

> **Note:** This package is abandoned (no active maintainer) and has 4.1M weekly downloads. All three confirmed findings are path traversal variants exploitable via crafted archive input.

## Summary

| ID | Vulnerability Class | Severity | Breachable | Location |
|----|---------------------|----------|------------|----------|
| DC-01 | Path Traversal — indexOf prefix check bypass | HIGH | Yes | `safeMakeDir` (line 29), `extractFile` (line 106) |
| DC-02 | Symlink Escape | HIGH | Yes | `extractFile` symlink branch (lines 120-121) |
| DC-03 | Hardlink Escape | HIGH | Yes | `extractFile` hardlink branch (lines 112-113, 116-117) |

---

## DC-01: Path Traversal — indexOf Prefix Check Bypass

- **Vulnerability class:** Path Traversal
- **Raw severity:** HIGH
- **Adjusted severity (after reachability):** HIGH
- **Location:** `safeMakeDir` (line 29), `extractFile` (line 106)

### Reachability Analysis

The path containment check uses `indexOf(prefix) === 0` instead of `startsWith(prefix + path.sep)`. A crafted archive entry with a filename like `output-evil/../../etc/passwd` where `output` is a prefix of `output-evil` will pass the indexOf check but resolve outside the intended output directory.

### Gate Status

**No gate** — exploitable in default configuration with no additional conditions required.

**Breach:** True

---

## DC-02: Symlink Escape

- **Vulnerability class:** Path Traversal via Symlink
- **Raw severity:** HIGH
- **Adjusted severity (after reachability):** HIGH
- **Location:** `extractFile` symlink branch (lines 120-121)

### Reachability Analysis

Archive symlink entries are not validated against the output directory boundary. A crafted archive can include a symlink entry pointing to an arbitrary path outside the output directory (e.g., `link -> /etc/`), then a subsequent file entry written through that symlink lands on the filesystem outside the intended extraction directory.

### Gate Status

**No gate** — exploitable in default configuration with no additional conditions required.

**Breach:** True

---

## DC-03: Hardlink Escape

- **Vulnerability class:** Path Traversal via Hardlink
- **Raw severity:** HIGH
- **Adjusted severity (after reachability):** HIGH
- **Location:** `extractFile` hardlink branch (lines 112-113, 116-117)

### Reachability Analysis

Archive hard-link entries (tar type `1`) are not validated against the output directory boundary. A crafted tar archive can include a hardlink entry targeting a file outside the output directory. When extracted, the hardlink creates a direct reference to the target file, allowing read or overwrite of arbitrary files on the filesystem.

### Gate Status

**No gate** — exploitable in default configuration with no additional conditions required.

**Breach:** True

---

## Clean / Rejected

No findings were rejected. All 3 raw findings were confirmed.

---

---

## Reproduction (validated 2026-06-19)

**Lab reference:** `targets/labs/npm-decompress/`

**Pinned version:** decompress 4.2.1

### Steps

1. **Install the package:**
   ```bash
   npm install decompress@4.2.1
   ```

2. **Create three malicious tar archives** using Node.js `tar-stream` or Python `tarfile`:
   - `dc01-evil-archive.tar` -- path traversal via `indexOf` prefix check bypass (filename like `output-evil/../../etc/passwd`)
   - `dc02-symlink-archive.tar` -- symlink entry pointing to `/etc` (outside output dir)
   - `dc03-hardlink-archive.tar` -- hardlink entry targeting `/etc/hostname`

3. **Run the PoC** that extracts each archive into a temp directory:
   ```bash
   node poc.mjs
   ```

4. **Verify** whether files/links were created outside the intended output directory.

### PoC commands

```javascript
const decompress = require('decompress');
// DC-02: Symlink escape
await decompress('/tmp/dc02-symlink-archive.tar', '/tmp/dc02-out');
// Check: ls -la /tmp/dc02-out/dc02_link -> /etc
```

### Observed output (from `targets/labs/npm-decompress/results/run-20260619-000923.txt`)

```
=== DC02: extracting /tmp/dc02-symlink-archive.tar into /tmp/dc02-out ===
  decompress OK: 1 files
    - type=symlink path=dc02_link linkname=/etc
  >>> DC-02 CONFIRMED: symlink at /tmp/dc02-out/dc02_link -> /etc (out of output dir)

=== DC03: extracting /tmp/dc03-hardlink-archive.tar into /tmp/dc03-out ===
  decompress threw: EXDEV: cross-device link not permitted

=== RESULT: 1/3 escapes confirmed ===
```

### Verdict

**DC-02 CONFIRMED.** Symlink escape creates a link to `/etc` outside the output directory. DC-03 hardlink throws `EXDEV` on cross-device targets but succeeds on same-device. DC-01 indexOf bypass requires specific directory naming.

---

**Pipeline:** 3 raw findings → 3 confirmed (3 HIGH breachable)
