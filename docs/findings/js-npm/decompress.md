# decompress

**Files reviewed:** 1 | **Raw findings:** 3 | **Confirmed:** 3

## Confirmed Findings

| # | Vuln Class | Severity | Breachable | Location |
|---|-----------|----------|------------|----------|
| 1 | `path_traversal` | **HIGH** | Yes | `safeMakeDir (line 29) and extractFile (line 106)` |
| 2 | `path_traversal` | **HIGH** | Yes | `extractFile — symlink branch (lines 120-121)` |
| 3 | `path_traversal` | **HIGH** | Yes | `extractFile — hardlink branch (lines 112-113, 116-117)` |

### Finding 1: path_traversal

**Severity:** HIGH | **Location:** `safeMakeDir (line 29) and extractFile (line 106)`

**Justification:** The output-directory containment checks at lines 29 and 106 use `String.prototype.indexOf(realOutputPath) !== 0` instead of `startsWith(realOutputPath + path.sep)`, so a sibling directory whose name shares the same prefix (e.g. output='/tmp/out' and dest='/tmp/out-evil/...') satisfies the check and permits writes outside the intended output tree.

??? note "Adversarial Verification"
    The vulnerability is real and confirmed by code analysis. Both guards use `String.prototype.indexOf(realOutputPath) !== 0` (line 29 in safeMakeDir, line 106 in extractFile). When realOutputPath is '/tmp/out' and the destination resolves to '/tmp/out-evil' (a sibling directory whose name shares the prefix), indexOf returns 0, so `0 !== 0` is false and no exception is thrown, allowing the write. The correct check would be `startsWith(realOutputPath + path.sep)`. Attack path: an archive with an entry path like '../out-evil/pwned.php' resolves via path.join to '/tmp/out-evil/pwned.php' (outside the intended output dir). The bypass requires the sibling directory ('/tmp/out-evil') to pre-exist on the filesystem at extraction time; if it does not exist, safeMakeDir recursively checks the parent ('/tmp'), whose indexOf returns -1 (throws correctly). No input schema validation (no zod/joi/ajv), no archive entry path sanitization, no non-default options required — decompress() is called directly with the archive input as the exported function's first argument. The reachability claim is slightly overstated ('any archive' should be 'archive with traversal path entries AND a pre-existing sibling dir with matching prefix'), but the condition is realistic in shared temp directory environments, CI/CD pipelines where multiple extractions occur, or any system where sibling directories predictably exist.

**Reachability:** gate=`no gate — default config` | breachable=True | adjusted_severity=high

**Detection pattern:** `\.indexOf\(real[Oo]utput[Pp]ath\)\s*[!=]==\s*0`
**Anti-pattern:** `startsWith\(real[Oo]utput[Pp]ath\s*\+\s*['"][\\/]['"]\)`

### Finding 2: path_traversal

**Severity:** HIGH | **Location:** `extractFile — symlink branch (lines 120-121)`

**Justification:** `fsP.symlink(x.linkname, dest)` is called with an archive-controlled `x.linkname` that is never validated; an attacker can create a symlink pointing to any absolute path (e.g. `/etc/passwd`), which persists in the output directory and allows subsequent reads of arbitrary files by the consuming application.

??? note "Adversarial Verification"
    Confirmed. Lines 120-121 call `fsP.symlink(x.linkname, dest)` with archive-controlled `x.linkname` that is never validated. The guards at lines 89-110 only verify that `dest` (the symlink file location) is within the output directory — they use `safeMakeDir` and `realpath`-based containment checks on `dest` and its parent directory, but none of these touch `x.linkname` (the symlink target). There is no `path.isAbsolute`, `startsWith`, `path.resolve`-based check, or any schema validation (no zod/joi/ajv) applied to `x.linkname` at any point in the call chain. An attacker can craft an archive (tar, tar.gz, tar.bz2, or zip) containing a symlink entry whose `linkname` field is an absolute path such as `/etc/passwd`, `/etc/shadow`, or any other path outside the output directory. The symlink file itself will be placed at `dest` inside the output directory (passes all containment checks), while pointing externally. Any subsequent file read by the consuming application that dereferences the symlink will access the attacker-chosen target. The symlink branch is reached by default whenever the archive contains a symlink entry and an output directory is specified — no non-default options or configuration required, no authentication required. The `preventWritingThroughSymlink` guard only prevents writing *through* an already-existing symlink at `dest`; it does not validate the new symlink's target. This is a well-known 'zip symlink' / path traversal via symlink attack. Package version: 4.2.1.

**Reachability:** gate=`no gate — default config` | breachable=True | adjusted_severity=high

**Detection pattern:** `fs(?:P|promises)?\.(symlink|symlinkSync)\s*\([^,)]*linkname`
**Anti-pattern:** `path\.resolve\s*\(.*linkname|isAbsolute|startsWith`

### Finding 3: path_traversal

**Severity:** HIGH | **Location:** `extractFile — hardlink branch (lines 112-113, 116-117)`

**Justification:** `fsP.link(x.linkname, dest)` is called with an archive-controlled `x.linkname` that is never validated; on systems where the output directory shares a filesystem with sensitive files (common for `/tmp` vs `/etc` on many Linux distros), an attacker can create a hardlink from within the output directory to any accessible file (e.g. `/etc/shadow`), exposing its contents.

??? note "Adversarial Verification"
    The vulnerability is confirmed real. In /DATA/openclaw/Repos/Research/packages/decompress/node_modules/decompress/index.js at lines 112-113 and 116-117, `fsP.link(x.linkname, dest)` is called with `x.linkname` sourced directly from the archive's tar header (set in decompress-tar/index.js line 32: `file.linkname = header.linkname`) with no sanitization. The tar header's linkname field is parsed raw from archive bytes by tar-stream (headers.js line 250) — no path normalization or containment check is applied anywhere in the chain. The guards that do exist (lines 96-110) call `safeMakeDir` and `fsP.realpath(path.dirname(dest))` to validate that the DESTINATION (new link location) stays within the output directory, but there is no corresponding check on `x.linkname` (the source path passed as the first argument to `fs.link()`). This means an attacker who crafts a tar archive with a type-'1' hardlink entry where `linkname` is an absolute path (e.g., `/etc/passwd`) can cause the library to create a hardlink inside the output directory pointing to that external file. No special options or configuration are required — the default plugin set includes `decompressTar()` and the hardlink branch executes whenever an archive entry has `type === 'link'`. No schema validation (zod/joi/ajv) is present. The readme contains no security disclaimers about untrusted archives. Reachability is direct: any caller passing an attacker-supplied archive buffer to `decompress(buf, outputDir)` is affected. OS-level mitigation: `protected_hardlinks=1` (confirmed active on this system) prevents unprivileged users from hardlinking files they do not own, which reduces practical impact for non-root processes. However, (a) processes running as root (common in Docker/CI) bypass this protection entirely, (b) the vulnerability is present in the code regardless of OS configuration, and (c) processes can hardlink their own files. Severity remains HIGH because the no-authentication reachability claim is correct with respect to the decompress API itself, and root execution is a common deployment pattern.

**Reachability:** gate=`no gate — default config` | breachable=True | adjusted_severity=high

**Detection pattern:** `fs(?:P|promises)?\.(link|linkSync)\s*\([^,)]*linkname`
**Anti-pattern:** `path\.resolve\s*\(.*linkname|isAbsolute|startsWith`
