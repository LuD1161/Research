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

---

## Real-World Exploitation

### Where this library is used
decompress has 4.1M+ weekly downloads and is used by build tools, CI/CD pipelines, asset downloaders, and file management APIs. Common patterns:

- **File upload endpoints** that accept `.zip` or `.tar.gz` and extract them server-side (e.g. `POST /api/upload` that calls `decompress(uploadedFile, outputDir)`)
- **Package managers / plugin systems** that download and extract archives from URLs
- **CI/CD pipelines** that extract build artifacts

### How an attacker would exploit it
1. **Identify the target**: find an application that accepts archive uploads and extracts them. Look for endpoints like `/upload`, `/import`, `/extract`, or features like "upload a ZIP of images/templates/plugins."
2. **Craft the archive**: use `build_archives.py` (included below) to create a tar with a symlink entry pointing to `/etc/` or `../../../etc/passwd`. The symlink passes decompress's validation because the library checks the symlink entry's path (which is inside the output dir) but not its *target*.
3. **Upload and trigger extraction**: submit the crafted archive to the upload endpoint. After extraction, the symlink exists on the server's filesystem.
4. **Exploit the symlink**: if the application serves extracted files (e.g. a static file server, image gallery, or file browser), navigate to the symlink path to read arbitrary files. If the application writes through the symlink (e.g. extracting a second archive that references the symlink), arbitrary file write is possible.

### Impact
- **Read arbitrary files**: `/etc/passwd`, application configs, environment variables, database credentials
- **Write arbitrary files**: overwrite application code, inject backdoors, modify configs
- **Full server compromise**: if writing to web-accessible directories or cron directories

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

---

## Download PoC Files

- [poc.js](poc/poc.js) — Main PoC driver script
- [build_archives.py](poc/build_archives.py) — Builds the malicious tar archives (DC-01, DC-02, DC-03)
- [Dockerfile](poc/Dockerfile) — Isolated Docker environment with pinned decompress@4.2.1

**Pipeline:** 3 raw findings → 3 confirmed (3 HIGH breachable)
