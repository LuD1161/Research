# multiparty

**Files reviewed:** 1 | **Raw findings:** 4 | **Confirmed:** 3

## Confirmed Findings

| # | Vuln Class | Severity | Breachable | Location |
|---|-----------|----------|------------|----------|
| 1 | `unsanitized_filename_exposure` | **MEDIUM** | Yes | `handleFile (line 697-744), uploadPath (line 831-835), onParseHeadersEn` |
| 2 | `unbounded_resource_consumption` | **LOW** | — | `Form constructor (line 64), handleFile (line 697-744)` |
| 3 | `missing_input_length_validation` | **LOW** | — | `Form.prototype.parse (line 91), setUpParser (line 808-829)` |

### Finding 1: unsanitized_filename_exposure

**Severity:** MEDIUM | **Location:** `handleFile (line 697-744), uploadPath (line 831-835), onParseHeadersEnd (line 507-547)`

**Justification:** The raw, attacker-controlled filename from the Content-Disposition header is stored in publicFile.originalFilename (line 701) without any sanitization and emitted to the application via self.emit('file', fileStream.name, publicFile) at line 738. While the actual upload path is safe (uid.sync(18) prefix + FILE_EXT_RE-sanitized extension + path.join to a fixed uploadDir), the originalFilename field is a well-known dangerous sink: if downstream application code passes it to fs.rename, fs.createWriteStream, or path.join without sanitization, full path traversal results. This is the documented root cause of CVE-2021-43803 (Next.js) and similar exploits where frameworks naively used originalFilename in file persistence.

??? note "Adversarial Verification"
    Confirmed. The raw Content-Disposition filename from the multipart header reaches application event handlers via publicFile.originalFilename without forward-slash path traversal sanitization. parseFilename() (line 853) strips only Windows-style backslash path components via lastIndexOf('\\'), but does NOT strip forward-slash sequences such as '../../../etc/passwd'. The value is stored directly as fileStream.filename -> publicFile.originalFilename (line 701) and emitted to all 'file' event listeners (line 738). The actual on-disk storage path (uploadPath, line 831-835) is safe: it uses uid.sync(18) as the base name and only appends the FILE_EXT_RE-sanitized extension via path.join to a fixed uploadDir. No schema validation (zod/joi/ajv) exists anywhere in the parsing pipeline. The vulnerable path requires no non-default options: adding a 'file' event listener automatically sets autoFiles=true (lines 82-84), and passing a callback to parse() also enables autoFiles (line 100). The attack is reachable by any unauthenticated HTTP client sending a multipart/form-data request with a Content-Disposition filename containing '../' sequences. The library documents originalFilename as the raw user-supplied value and does not sanitize it, creating a well-known dangerous sink documented in CVE-2021-43803 and similar exploits where frameworks naively used originalFilename in file persistence operations.

**Reachability:** gate=`no gate — default config` | breachable=True | adjusted_severity=medium

**Detection pattern:** `originalFilename|original_filename`
**Anti-pattern:** `path\.basename|originalFilename\.replace|sanitize.*filename`

### Finding 2: unbounded_resource_consumption

**Severity:** LOW | **Location:** `Form constructor (line 64), handleFile (line 697-744)`

**Justification:** The default value of maxFilesSize is Infinity (line 64: self.maxFilesSize = opts.maxFilesSize || Infinity). The LimitStream enforces this limit in _transform, but with an Infinity limit it effectively never triggers. An attacker can upload arbitrarily large files, limited only by available disk space and connection timeout, potentially exhausting disk and causing a denial of service. The developer must explicitly configure maxFilesSize to be protected.

??? note "Adversarial Verification"
    Confirmed real. Line 64 sets `self.maxFilesSize = opts.maxFilesSize || Infinity`. The LimitStream at line 550-573 checks `this.bytes > this.limit` (line 564); since `Infinity - 0 = Infinity` (line 723) and no value exceeds Infinity in JS, the guard never fires. handleFile (line 697) is only reached when autoFiles is true (line 542-543), which happens automatically whenever a caller passes a callback to form.parse() or adds a 'file' event listener — the two most common usage patterns. Without explicit maxFilesSize, an attacker can upload arbitrarily large files limited only by disk space and TCP timeout. No sanitizer or schema validation intercepts this path. The README explicitly documents the default as Infinity. Severity is low because: (1) it is a documented default rather than a hidden bug, (2) exploitation requires autoFiles to be active, and (3) disk exhaustion DoS is generally lower severity than RCE/data-exposure bugs.

**Detection pattern:** `maxFilesSize.*Infinity|maxFileSize.*Infinity`
**Anti-pattern:** `maxFilesSize\s*=.*[0-9]|maxFileSize\s*=.*[0-9]`

### Finding 3: missing_input_length_validation

**Severity:** LOW | **Location:** `Form.prototype.parse (line 91), setUpParser (line 808-829)`

**Justification:** The boundary value extracted from the Content-Type header (lines 188-190) is passed directly to setUpParser without any length validation. setUpParser allocates Buffer.alloc(boundary.length + 4) and Buffer.alloc(boundary.length + 8) (lines 809 and 811). RFC 2046 specifies a maximum boundary length of 70 characters, but multiparty does not enforce this. While HTTP server header limits cap the practical attack at approximately 8-16 KB per request (creating ~16 KB of buffer allocations), this is still an unnecessary resource amplification with no benefit.

??? note "Adversarial Verification"
    The finding is confirmed. The full attack path is: (1) An HTTP client sends a Content-Type header containing an arbitrarily long boundary value, e.g. 'multipart/form-data; boundary=AAAA...AAAA'. (2) In Form.prototype.parse (line 174), the raw Content-Type header is read from req.headers['content-type'] with no length check. (3) The boundary is extracted via CONTENT_TYPE_BOUNDARY_RE regex (lines 187-190) with no length check. (4) setUpParser is called directly with the raw boundary string (line 198). (5) Inside setUpParser (lines 808-812), Buffer.alloc(boundary.length + 4) and Buffer.alloc(boundary.length + 8) are called. No guard, schema validator, max-length check, or RFC 2046 enforcement (max 70 chars) exists anywhere in the file — confirmed by grep for MAX_BOUNDARY, boundary.length >, maxBoundary, boundaryMax all returning 0 results. The path requires no special options or non-default configuration; it is triggered by the ordinary code path for any multipart/form-data request. The only practical cap is the HTTP server's header size limit (typically 8-16 KB), which means a single request can force ~16 KB of buffer allocations. This is a real but low-severity issue: it is a minor resource amplification with no auth requirement, constrained in practice by server header limits.

**Detection pattern:** `Buffer\.alloc.*boundary\.length|boundary\.length.*Buffer\.alloc`
**Anti-pattern:** `boundary\.length\s*>|boundary length.*max|MAX_BOUNDARY`
