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

**Pipeline:** 3 raw findings → 3 confirmed (3 HIGH breachable)
