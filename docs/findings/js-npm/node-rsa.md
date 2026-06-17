# node-rsa

**Files reviewed:** 5 | **Raw findings:** 20 | **Confirmed:** 11

## Confirmed Findings

| # | Vuln Class | Severity | Breachable | Location |
|---|-----------|----------|------------|----------|
| 1 | `pkcs1_v1_5_bleichenbacher_oracle` | **LOW** | No | `JsEngine.decrypt() lines 3393-3414, NodeNativeEngine.decrypt() line 40` |
| 2 | `redos` | **LOW** | No | `opensshFormat.autoImport (line 2144-2154), pkcs1Format.autoImport (lin` |
| 3 | `bleichenbacher_pkcs1v15_oracle` | **LOW** | No | `Pkcs1Scheme.encUnPad / JsEngine.decrypt / NodeNativeEngine.decrypt (li` |
| 4 | `weak_cryptography_default_hash` | **LOW** | — | `PssScheme (line 3112: DEFAULT_HASH3='sha1'), OaepScheme (line 2852: DE` |
| 5 | `redos` | **HIGH** | Yes | `autoImport functions in opensshFormat (lines 2145, 2151), pkcs1Format ` |
| 6 | `weak_crypto_default` | **LOW** | — | `DEFAULT_HASH (line 2853) in OaepScheme, DEFAULT_HASH3 (line 3113) in P` |
| 7 | `bleichenbacher_oracle` | **LOW** | No | `Pkcs1Scheme.encUnPad / JsEngine.decrypt (lines 3021-3065, 3390-3411)` |
| 8 | `weak_default_cryptographic_algorithm` | **LOW** | — | `PssScheme class, line 3112 (DEFAULT_HASH3 = 'sha1'); NodeNativePssSche` |
| 9 | `weak_algorithm_accepted_without_error` | **LOW** | No | `applyOptions function, lines 3331-3335: signingSchemeOptions.hash === ` |
| 10 | `information_exposure_through_error_message_suppression` | **LOW** | — | `$$encryptKey lines 3858-3860, $$decryptKey lines 3867-3869, NodeNative` |
| 11 | `prototype_property_access_via_user_key` | **LOW** | — | `NodeRSA.importKey (line 3795), NodeRSA.exportKey (line 3805)` |

### Finding 1: pkcs1_v1_5_bleichenbacher_oracle

**Severity:** LOW | **Location:** `JsEngine.decrypt() lines 3393-3414, NodeNativeEngine.decrypt() line 4026 (nativeAvailableForDecrypt returns false for pkcs1 private path, routing to JS fallback)`

**Justification:** The code comment at lines 3024-3033 explicitly acknowledges that while internal differential timing is mitigated, 'the valid/invalid binary oracle inherent to PKCS#1 v1.5 remains' — JsEngine.decrypt() throws 'Decryption failed' on any padding error, making success vs. failure distinguishable, enabling a Bleichenbacher attack to decrypt arbitrary RSA-PKCS1v1.5 ciphertexts in ~10^6 queries if the endpoint is reachable.

??? note "Adversarial Verification"
    Confirmed. The file is at /DATA/openclaw/Repos/Research/packages/node-rsa/node_modules/node-rsa/dist/index.node.cjs (not dist/cjs/index.cjs as the finding states, but the content matches). Key evidence: (1) nativeAvailableForDecrypt() at line 3984 explicitly returns false when !usePublic && encryptionScheme === 'pkcs1', routing to this.fallback.decrypt() which is a JsEngine instance. (2) JsEngine.decrypt() at lines 3393-3414 accumulates a 'bad' flag in constant-time but then throws 'Decryption failed' at line 3412 on any padding failure. (3) The library comment at lines 3023-3033 explicitly acknowledges: 'the valid/invalid binary oracle inherent to PKCS#1 v1.5 remains -- use OAEP for untrusted ciphertexts.' (4) The NodeNativeEngine.decrypt() at line 4027 also routes pkcs1 private decrypt to the JsEngine fallback. (5) The $$decryptKey() wrapper at line 3871-3872 catches and re-throws a generic error, but success-vs-failure remains distinguishable to a network attacker. QUALIFICATIONS: (a) The default encryption scheme is pkcs1_oaep (line 3271), so the vulnerable path requires explicit non-default configuration encryptionScheme:'pkcs1'. (b) No schema validation (zod/joi/ajv) guards the encryptionScheme option -- it is purely caller-controlled. (c) The oracle is inherent to PKCS#1 v1.5 and is explicitly documented as a known limitation, not a coding defect. (d) Exploitation requires a network-accessible decryption endpoint and ~10^6 adaptive chosen-ciphertext queries (Bleichenbacher 1998). The finding is real but applies only when callers deliberately opt into pkcs1 mode and expose decryption over a network.

**Reachability:** gate=`non-default option required` | breachable=False | adjusted_severity=low

**Detection pattern:** `throw.*[Dd]ecryption.fail|encUnPad.*null`
**Anti-pattern:** `RSA_PKCS1_OAEP_PADDING|pkcs1_oaep`

### Finding 2: redos

**Severity:** LOW | **Location:** `opensshFormat.autoImport (line 2144-2154), pkcs1Format.autoImport (line 2641-2652), pkcs8Format.autoImport (line 2756-2767) in /DATA/openclaw/Repos/Research/packages/node-rsa/node_modules/node-rsa/dist/index.node.js`

**Justification:** All four autoImport methods use the regex `(([A-Za-z0-9+/=]+\s*)+)` inside a lookahead with a subsequent backreference `\1`; the nested quantifiers combined with the alternation between base64-char and whitespace produce catastrophic polynomial (O(n^2) or worse) backtracking on inputs that match the PEM header but contain a long non-matching body (e.g., a string starting with `-----BEGIN RSA PRIVATE KEY-----` followed by N spaces and no closing tag).

??? note "Adversarial Verification"
    The vulnerability is confirmed real by direct code inspection.
    
    1. REGEX CONFIRMED: Three autoImport methods contain the exact nested-quantifier pattern `(([A-Za-z0-9+/=]+\s*)+)` inside a lookahead with back-reference `\1`. Confirmed at:
       - opensshFormat.autoImport lines 2144 and 2150 (OPENSSH PRIVATE KEY and ssh-rsa public)
       - pkcs1Format.autoImport lines 2641 and 2647 (RSA PRIVATE KEY and RSA PUBLIC KEY)
       - pkcs8Format.autoImport lines 2756 and 2762 (PRIVATE KEY and PUBLIC KEY)
    
    2. CALL CHAIN IS DIRECT AND UNGUARDED: importKey(keyData, format) at line 3791 calls detectAndImport() at line 2805. When format is undefined/null (the default), detectAndImport() iterates ALL registered formats via Object.values(FORMATS) and calls autoImport on each. No length limit, no schema validation (no zod/joi/ajv), no allow-listing before regex execution.
    
    3. REACHABILITY IS CORRECT: The public API entry point is importKey() and the constructor shorthand new NodeRSA(key) also calls importKey internally (line 3761). Any caller passing a string without specifying format triggers all three vulnerable handlers in sequence. This is the documented, default usage pattern.
    
    4. FOURTH autoImport IS NOT VULNERABLE: componentsFormat.autoImport (line 1937) returns false immediately for non-object input, so string inputs bypass it without running any regex.
    
    5. CATASTROPHIC BACKTRACKING IS REAL: The pattern `(([A-Za-z0-9+/=]+\s*)+)` has nested quantifiers where the outer + drives repetition of the inner group. V8 uses a backtracking NFA for this construct. On an input matching the PEM header prefix but lacking the closing delimiter, the engine must exhaustively try all partitions of N characters across the outer group repetitions before failing, producing O(n^2) or worse behaviour.
    
    6. NO MITIGATING GUARDS FOUND: No input sanitizer, no regex timeout, no character-count guard before the regex test calls. The g flag on the regex literal does not mitigate — the literal is re-evaluated per .test() call (lastIndex resets), and regardless the backtracking happens within a single .test() call.
    
    7. AUTH REQUIREMENT: None. Any unauthenticated attacker who can cause a server to call importKey() with their string (e.g., submitting a PEM string via API) can trigger this event-loop-blocking DoS.

**Reachability:** gate=`V8 backtracking budget (Irregexp) limits regex execution — not exploitable on Node 16+` | breachable=False | adjusted_severity=low

**Detection pattern:** `\(\([A-Za-z0-9+/=]+\\s\*\)\+\)`
**Anti-pattern:** `String\.raw|new RegExp|safe-regex|recheck`

### Finding 3: bleichenbacher_pkcs1v15_oracle

**Severity:** LOW | **Location:** `Pkcs1Scheme.encUnPad / JsEngine.decrypt / NodeNativeEngine.decrypt (lines 3031-3064, 3389-3410, 4022-4038) in /DATA/openclaw/Repos/Research/packages/node-rsa/node_modules/node-rsa/dist/index.node.js`

**Justification:** The code comment at line 3019-3030 explicitly acknowledges that 'the valid/invalid binary oracle inherent to PKCS#1 v1.5 remains'; the $$decryptKey wrapper re-throws a single 'Error during decryption' which closes the error-message oracle but not the binary-success/failure oracle observable by the caller; an attacker with ~2^20 adaptive chosen-ciphertext queries can recover the plaintext (Bleichenbacher 1998).

??? note "Adversarial Verification"
    The Bleichenbacher PKCS#1 v1.5 oracle finding is confirmed real but requires non-default configuration. Key evidence: (1) DEFAULT_ENCRYPTION_SCHEME is 'pkcs1_oaep' (line 3267) — the vulnerable 'pkcs1' path requires explicit opt-in via encryptionScheme:'pkcs1'. (2) The code comment at lines 3019-3030 explicitly acknowledges the binary oracle remains: 'the valid/invalid binary oracle inherent to PKCS#1 v1.5 remains — use OAEP for untrusted ciphertexts.' The comment also confirms the full Bleichenbacher mitigation (synthetic random plaintext per RFC 8017 §7.2.2 NOTE) was NOT implemented. (3) encUnPad (line 3031-3064) uses constant-time comparison internally but still returns null vs. Buffer — the JS engine decrypt() (line 3408) throws 'Decryption failed' on any null result. The $$decryptKey wrapper (line 3867-3869) normalizes the message to 'Error during decryption' but the throw-vs-return binary oracle remains observable by the calling application. (4) NodeNativeEngine.decrypt() (lines 4022-4038) checks nativeAvailableForDecrypt() which returns false for pkcs1 private-key decryption (line 3980), so it falls back to the JS engine — no separate native path escapes the analysis. (5) No input schema validation (zod/joi/ajv) is present; the buffer goes directly into ensureEngine().decrypt() with only a chunk-length modulus check. Reachability: Correct as stated — requires (a) caller sets encryptionScheme:'pkcs1' and (b) application exposes a decryption oracle (attacker submits chosen ciphertexts and observes success/failure). The cited file path in the finding (.esm/index.node.mjs) does not exist; the correct file is index.node.js, but line numbers 3031-3064 and 3389-3410 match exactly in that file and all code analysis is accurate. Severity 'medium' is appropriate: real cryptographic weakness, non-default trigger, no standalone exploit without an application-layer oracle.

**Reachability:** gate=`non-default option required` | breachable=False | adjusted_severity=low

**Detection pattern:** `RSA_PKCS1_PADDING|encryptionScheme.*pkcs1[^_]`
**Anti-pattern:** `RSA_PKCS1_OAEP_PADDING|pkcs1_oaep`

### Finding 4: weak_cryptography_default_hash

**Severity:** LOW | **Location:** `PssScheme (line 3112: DEFAULT_HASH3='sha1'), OaepScheme (line 2852: DEFAULT_HASH='sha1') in /DATA/openclaw/Repos/Research/packages/node-rsa/node_modules/node-rsa/dist/index.node.js`

**Justification:** SHA-1 is cryptographically broken for collision resistance (SHAttered 2017); while PSS pre-hashes the message and OAEP uses it only for label hashing (making direct collision exploitation harder), the default promotes SHA-1 in new code and weakens the overall security margin; NIST deprecated SHA-1 for all uses in SP 800-131A Rev 2.

??? note "Adversarial Verification"
    The OAEP sha1 default is confirmed real and active. In makeDefaultOptions() at line 3279-3280 of /DATA/openclaw/Repos/Research/packages/node-rsa/node_modules/node-rsa/dist/index.node.js, the default options object explicitly sets encryptionSchemeOptions: { hash: 'sha1' }. This is the actual effective default for OAEP encryption — not the module-level DEFAULT_HASH constant fallback at line 2873, which is dead code when called through the normal options path. Any caller using OAEP encryption (pkcs1_oaep, the default encryption scheme) without overriding the hash will silently use sha1 for both the label hash and the MGF1 mask generation function. For PSS signing the finding is partially inaccurate: makeDefaultOptions() sets signingSchemeOptions: { hash: 'sha256' } (line 3278), so DEFAULT_HASH3='sha1' at line 3112 is unreachable dead code for the signing path. No schema validation (zod/joi/ajv) guards the hash option; callers pass it directly via setOptions or the constructor. The vulnerability does not require non-default configuration — it IS the default configuration for OAEP. The sha1 weakness in OAEP is limited in exploitability (sha1 is used only for label hashing and MGF1, not for message integrity in the collision sense), but it still constitutes a documented weak cryptography default that violates NIST SP 800-131A Rev 2 guidance. Severity is correctly rated low.

**Detection pattern:** `DEFAULT_HASH.*=.*['"]sha1['"]`
**Anti-pattern:** `DEFAULT_HASH.*=.*['"]sha256['"]|DEFAULT_HASH.*=.*['"]sha384['"]|DEFAULT_HASH.*=.*['"]sha512['"]`

### Finding 5: redos

**Severity:** HIGH | **Location:** `autoImport functions in opensshFormat (lines 2145, 2151), pkcs1Format (lines 2642, 2648), pkcs8Format (lines 2757, 2763)`

**Justification:** All six autoImport regexes use the nested-quantifier pattern `(?=(([A-Za-z0-9+/=]+\s*)+))\1` inside a `^[\S\s]*...$` anchor. The inner group `([A-Za-z0-9+/=]+\s*)+` is a classic catastrophic backtracking pattern: when input contains a long base64-like segment without a matching end marker, the engine explores O(2^n) backtracking paths. A 10 KB crafted string with no valid PEM footer can lock the JS event loop for seconds.

??? note "Adversarial Verification"
    All six autoImport regexes in opensshFormat (lines 2145, 2151), pkcs1Format (lines 2642, 2648), and pkcs8Format (lines 2757, 2763) contain the catastrophic backtracking pattern `([A-Za-z0-9+/=]+\s*)+` inside a lookahead. When a BEGIN marker is present but the END marker is absent or mismatched, the regex engine must explore all partitions of a long base64-like segment across the outer and inner repetitions — O(2^n) backtracking paths. The call chain is fully confirmed: NodeRSA constructor (line 3761) accepts string|Uint8Array and calls importKey(), which calls detectAndImport() (line 2797), which — when no format is specified — iterates all four FORMATS providers calling autoImport() on each. componentsFormat.autoImport() (line 1938) bails out immediately for non-object input, so string input reaches all three PEM-based providers, executing all six vulnerable regexes sequentially on the same input. No length limit, no content sanitization, no schema validation (no zod/joi/ajv) exists anywhere in the path. The only guard is an empty-string check (line 3793), which does not mitigate the attack. No non-default options are required — the default constructor path (`new NodeRSA(keyString)`) is the vulnerable path. A crafted ~10 KB string containing a PEM BEGIN marker but no END marker (e.g., '-----BEGIN RSA PRIVATE KEY-----' + 'A'.repeat(10000)) is sufficient to trigger multi-second event loop stalls in Node.js/browser JS runtimes. The package README explicitly documents the constructor as accepting raw key strings from callers, making attacker-controlled input the intended use case. Reachability without authentication is confirmed.

**Reachability:** gate=`no gate — default config` | breachable=True | adjusted_severity=high

**Detection pattern:** `\(\[A-Za-z0-9+/=\]+\\s\*\)\+`
**Anti-pattern:** `simple non-backtracking split or indexOf-based PEM boundary detection instead of a single regex test`

### Finding 6: weak_crypto_default

**Severity:** LOW | **Location:** `DEFAULT_HASH (line 2853) in OaepScheme, DEFAULT_HASH3 (line 3113) in PssScheme, encryptionSchemeOptions default (line 3281)`

**Justification:** SHA-1 is set as the default hash for both PSS signing (DEFAULT_HASH3 = 'sha1' at line 3113) and OAEP encryption (DEFAULT_HASH = 'sha1' at line 2853, confirmed by encryptionSchemeOptions: { hash: 'sha1' } in makeDefaultOptions at line 3281). SHA-1 is broken for collision resistance (SHAttered attack). For PSS, a collision in the hash allows an attacker to find two messages with the same EMSA-PSS encoding, enabling signature forgery under certain conditions. NIST deprecated SHA-1 for digital signatures in 2011.

??? note "Adversarial Verification"
    The finding is partially confirmed but significantly overstated. OAEP SHA-1 default is real: line 3281 in makeDefaultOptions sets encryptionSchemeOptions: { hash: 'sha1' }, and the OaepScheme.hash() method at line 2874 falls back to DEFAULT_HASH ('sha1') via the ?? operator when no hash is explicitly provided. Any caller constructing NodeRSA without specifying encryptionScheme options gets SHA-1 for OAEP encryption. There is no sanitizer or guard that blocks this — the warning at lines 3332-3336 only fires for md4/md5, not sha1. The PSS signing claim is INCORRECT: makeDefaultOptions at line 3279 sets signingSchemeOptions: { hash: 'sha256' }, not sha1. DEFAULT_HASH3 = 'sha1' (line 3113) is only reachable if signingSchemeOptions is empty/bypassed after construction, which does not happen in the normal NodeRSA() constructor path (line 3755 always calls makeDefaultOptions which pre-sets sha256). The reachability claim that 'PSS signing default is sha1' is false. Regarding OAEP SHA-1: SHA-1 is broken for collision resistance (SHAttered), and while OAEP security proofs rely on the hash being collision-resistant for the label hash, the practical attack surface is lower than for signatures — there is no known practical OAEP-SHA-1 break in typical use. The severity is downgraded from medium to low because: (1) the PSS claim is wrong, (2) OAEP-SHA-1 has no known practical exploit despite being theoretically weak, and (3) this is a library default, not an attacker-controlled input path — no user/network data controls the hash selection. The missing warning for sha1 (vs the md4/md5 warning that does exist) is a real gap in security guidance.

**Detection pattern:** `DEFAULT_HASH.*=.*['"]sha1['"]`
**Anti-pattern:** `DEFAULT_HASH.*=.*['"]sha256['"]`

### Finding 7: bleichenbacher_oracle

**Severity:** LOW | **Location:** `Pkcs1Scheme.encUnPad / JsEngine.decrypt (lines 3021-3065, 3390-3411)`

**Justification:** The encUnPad method for PKCS#1 v1.5 accumulates a bad flag and returns null for all failure modes (constant-time internally), but the caller at line 3407 propagates null into a bad flag and ultimately throws 'Error during decryption' at line 3869. Any application that returns a different HTTP status, response body, or timing for decrypt success vs. failure exposes the classic Bleichenbacher '98 adaptive chosen-ciphertext attack, allowing plaintext recovery in O(10^6) queries. The code comment at line 3028 explicitly acknowledges the full Manger/Bleichenbacher fix was not implemented.

??? note "Adversarial Verification"
    The binary Bleichenbacher oracle is real but requires a non-default opt-in to the 'pkcs1' encryption scheme. The default scheme (line 3268) is 'pkcs1_oaep', which is not vulnerable. The vulnerable path activates only when a caller explicitly sets encryptionScheme: 'pkcs1'.
    
    Code path confirmed:
    1. encUnPad (lines 3032-3065) is internally constant-time: all checks (header byte, pad type, PS validity, minimum PS length) accumulate into a single bitwise 'bad' flag with no early return; one 'return null' covers all failure modes. The code comment at line 3021 explicitly confirms this.
    2. The code comment at lines 3026-3030 explicitly acknowledges that the full Bleichenbacher mitigation (RFC 8017 §7.2.2 NOTE — return synthetic plaintext) was NOT implemented, and states 'the valid/invalid binary oracle inherent to PKCS#1 v1.5 remains — use OAEP for untrusted ciphertexts.'
    3. JsEngine.decrypt (lines 3390-3411) accumulates bad flag and throws 'Decryption failed' at line 3409. This is re-wrapped at line 3869 as 'Error during decryption'. Success vs failure is distinguishable at the API level.
    4. The public decrypt() API (line 3832) accepts attacker-controlled ciphertext bytes directly with no schema validation (no zod/joi/ajv guards).
    
    Key mitigating factor: DEFAULT_ENCRYPTION_SCHEME = 'pkcs1_oaep' (line 3268). Any application using defaults is NOT exposed. The finding's claimed reachability ('any application that uses pkcs1 decryption') is accurate but restricted to the non-default opt-in case.
    
    Reachability: Real for applications that explicitly configure encryptionScheme: 'pkcs1' AND expose decrypt results or errors to an untrusted network caller in a way that distinguishes success from failure. The internal timing oracle is closed (constant-time unpadding), but the binary success/failure distinction is an inherent API-level oracle enabling Bleichenbacher '98 adaptive chosen-ciphertext attacks in O(10^6) queries.
    
    Severity confirmed at medium: the attack requires non-default configuration, but when present the oracle is fully exploitable with no guards.

**Reachability:** gate=`non-default option required` | breachable=False | adjusted_severity=low

**Detection pattern:** `encUnPad.*null|pkcs1.*decrypt.*throw`
**Anti-pattern:** `synthetic-plaintext Bleichenbacher mitigation|RFC 8017.*7\.2\.2.*NOTE`

### Finding 8: weak_default_cryptographic_algorithm

**Severity:** LOW | **Location:** `PssScheme class, line 3112 (DEFAULT_HASH3 = 'sha1'); NodeNativePssScheme.sign/verify, lines 4173/4185 (hash ?? DEFAULT_PSS_HASH where DEFAULT_PSS_HASH = 'sha1' at line 4087)`

**Justification:** Both pure-JS (line 3112: DEFAULT_HASH3 = 'sha1') and native (line 4087: DEFAULT_PSS_HASH = 'sha1') PSS implementations default to SHA-1 as the hash algorithm. SHA-1 is deprecated by NIST (SP 800-131A Rev 2) for digital signatures. Callers who omit the hash option silently use a broken algorithm without any warning.

??? note "Adversarial Verification"
    The finding is real but significantly overstated in its reachability claim. The true default path (caller creates NodeRSA with no options) uses SHA-256, not SHA-1: makeDefaultOptions() at line 3275-3288 sets signingSchemeOptions: { hash: 'sha256' }, so the ?? DEFAULT_PSS_HASH / ?? DEFAULT_HASH3 fallbacks at lines 4173/4185 and 3122 are never reached in the default case. SHA-1 is only reached when a caller explicitly passes the signing scheme as the bare string 'pss' (e.g. setOptions({ signingScheme: 'pss' })): the applyOptions() branch at line 3312-3313 sets signingSchemeOptions = {} (empty, no hash key), causing the SHA-1 fallback to fire silently. Same applies to the object form { scheme: 'pss' } with no hash key (line 3323). The finding's claim that 'any caller who does not explicitly set a hash silently uses SHA-1' is incorrect — the default is SHA-256. The actual vulnerable path requires a non-default, explicit caller action (passing 'pss' as a bare string without a hash), not mere omission. No schema validation (zod/joi/ajv) guards this path. No warning is emitted for the SHA-1 fallback (unlike md4/md5 which get a console.warn at line 3331-3334). The bug is real: callers who explicitly opt into PSS via string form without a hash get silent SHA-1 downgrade. But severity is low because it requires deliberate non-default misconfiguration, not passive omission, and no NIST deprecation warning is issued.

**Detection pattern:** `DEFAULT.*=.*['"]sha1['"]`
**Anti-pattern:** `DEFAULT.*=.*['"]sha256['"]`

### Finding 9: weak_algorithm_accepted_without_error

**Severity:** LOW | **Location:** `applyOptions function, lines 3331-3335: signingSchemeOptions.hash === 'md4' || 'md5' emits console.warn only`

**Justification:** At lines 3331-3335, when the signing hash is 'md4' or 'md5', only console.warn is emitted rather than throwing. MD5 is cryptographically broken for signatures (chosen-prefix collisions). The allowlist check at line 3328 includes md4 and md5 in NODE_HASHES so they pass validation and proceed to signing. Callers relying on the library to enforce secure configurations are not protected.

??? note "Adversarial Verification"
    Confirmed. At lines 3331-3335 of /DATA/openclaw/Repos/Research/packages/node-rsa/node_modules/node-rsa/dist/index.node.js, when signingSchemeOptions.hash is 'md4' or 'md5', the code emits console.warn but does not throw. The critical detail is that the allowedHashes guard at line 3328 explicitly permits md4 and md5 because NODE_HASHES (lines 3248-3257) includes both — so they pass validation and signing proceeds silently. Reachability is confirmed via two paths: (1) string form setOptions({signingScheme:'pkcs1-md5'}) — line 3306 splits on '-' yielding scheme='pkcs1' and hash='md5', which passes the allowedHashes check and hits warn-only; (2) object form setOptions({signingScheme:{scheme:'pkcs1',hash:'md5'}}) — lines 3320-3323 extract the hash directly, same outcome. No schema validation (zod/joi/ajv) is present. The default options at line 3278 use sha256, so this requires explicit non-default caller configuration; however the library documents signingScheme as a user-controlled parameter. The finding is real: the library design accepts cryptographically broken hashes for signing with warn-only semantics, giving callers a false sense of security that the library enforces safe configurations.

**Reachability:** gate=`non-default option required` | breachable=False | adjusted_severity=low

**Detection pattern:** `console\.warn.*md5|console\.warn.*md4`
**Anti-pattern:** `throw.*md5|throw.*md4`

### Finding 10: information_exposure_through_error_message_suppression

**Severity:** LOW | **Location:** `$$encryptKey lines 3858-3860, $$decryptKey lines 3867-3869, NodeNativePkcs1Scheme.verify lines 4153-4155, NodeNativePssScheme.verify lines 4200-4202`

**Justification:** All four crypto entry points use bare catch blocks that discard the original error. In $$encryptKey/$$decryptKey a generic string is thrown, masking programming errors. In the two native verify methods, exceptions silently return false — making a corrupted-key error or a missing-library error indistinguishable from a legitimately invalid signature. While discarding errors in decrypt provides some defense against timing oracles, the wholesale suppression in verify hides faults that indicate a mis-configured key or environment.

??? note "Adversarial Verification"
    All four code patterns are confirmed in the file exactly as described. $$encryptKey (lines 3854-3860) and $$decryptKey (lines 3863-3869) use bare catch blocks that discard the original error and throw a generic string, suppressing diagnostic information. NodeNativePkcs1Scheme.verify (lines 4139-4156) and NodeNativePssScheme.verify (lines 4184-4203) silently return false on any exception, making a corrupted-key error, a missing-module error, or a malformed-input error indistinguishable from a legitimately invalid signature. Reachability is correct: these are the internal entry points called by all encrypt/decrypt/verify callers with no authentication guard or special config required. The node-native engine is the default. No schema validation (zod/joi/ajv) or sanitizer was missed. The vuln class label is slightly inaccurate (this suppresses error info FROM the developer, it does not expose it TO an attacker), but the described behavior is real. Security impact is low: callers still receive false from verify and should reject; the risk is misdiagnosed key misconfiguration or environment issues, not an exploitable bypass. The finding is real at the stated low severity.

**Detection pattern:** `catch.*\{[\s]*return false`
**Anti-pattern:** `catch.*err.*\{.*log|catch.*e.*\{.*throw`

### Finding 11: prototype_property_access_via_user_key

**Severity:** LOW | **Location:** `NodeRSA.importKey (line 3795), NodeRSA.exportKey (line 3805)`

**Justification:** The lookup `EXPORT_FORMAT_ALIASES[format]` at lines 3795 and 3805 uses a user-supplied string as a plain-object property key with no hasOwnProperty guard or Object.create(null) map. Passing '__proto__' or 'constructor' resolves to inherited Object prototype members rather than alias strings; the `?? format` fallback then passes the raw inherited value to formatParse() which calls .split('-') on it, throwing a TypeError crash on non-string values. While not directly exploitable for privilege escalation, it is a prototype-access antipattern that can cause denial-of-service via crash.

??? note "Adversarial Verification"
    The vulnerability is confirmed real. EXPORT_FORMAT_ALIASES at line 3269 of dist/index.node.js is a plain object literal (not Object.create(null)), inheriting from Object.prototype. At importKey (line 3795) and exportKey (line 3805), the user-supplied format string is used as a direct property key: EXPORT_FORMAT_ALIASES[format] ?? format. For prototype property names that return non-string truthy values (e.g., 'constructor' returns the Object function, 'toString'/'valueOf' return their respective functions, '__proto__' returns Object.prototype), the ?? fallback does NOT apply because the inherited value is truthy. The non-string value is then passed directly to formatParse() at line 2795, which calls .split('-') on it, producing TypeError: split is not a function. This is a confirmed DoS crash path. There is no runtime input validation (only TypeScript types, erased at runtime), no hasOwnProperty guard, no null-prototype map, and the format parameter is explicitly typed as Format | string in the public API, making arbitrary strings a documented use case. The finding's stated file path (dist/src/index.d.ts) does not exist; the actual implementation is dist/index.node.js (4245 lines). Line numbers 3795 and 3805 match exactly in the JS source. Severity is low: no privilege escalation, no data exfiltration, crash only, and requires attacker control of the format argument (not a default-path injection).

**Detection pattern:** `FORMAT_ALIASES\[|schemeMap\[|formatMap\[`
**Anti-pattern:** `Object\.create\(null\)|hasOwnProperty|Object\.prototype\.hasOwnProperty\.call`
