# node-rsa — Security Review Findings

**Package:** [node-rsa](https://www.npmjs.com/package/node-rsa) (v2.0.0) | **Files reviewed:** 5

## Summary

| ID | Vulnerability Class | Severity | Breachable | Location |
|----|---------------------|----------|------------|----------|
| NR-01 | ReDoS in PEM Format Autodetection | HIGH | Yes | `opensshFormat.autoImport` (lines 2145, 2151), `pkcs1Format.autoImport` (lines 2642, 2648), `pkcs8Format.autoImport` (lines 2757, 2763) |
| NR-02 | Bleichenbacher PKCS#1 v1.5 Oracle | LOW | No | `Pkcs1Scheme.encUnPad` / `JsEngine.decrypt` / `NodeNativeEngine.decrypt` |
| NR-03 | Weak Default Hash (SHA-1) | LOW | No | `PssScheme` DEFAULT_HASH3=`'sha1'`, `OaepScheme` DEFAULT_HASH=`'sha1'` |
| NR-04 | Unsafe JSON.parse on Decrypted Bytes | LOW | No | `$getDecryptedData`, lines 3883-3887 |
| NR-05 | Error Swallowing in encrypt/decrypt | LOW | No | `$$encryptKey` (lines 3858-3860), `$$decryptKey` (lines 3867-3869) |
| NR-06 | Format String Prototype Lookup | LOW | No | `importKey` (line 3795), `exportKey` (line 3805) |
| NR-07 | Weak Algorithm Accepted Without Error | LOW | No | `applyOptions`, lines 3331-3335 |

**Note:** Findings NR-02 through NR-04 each had 3 duplicate discoveries across multiple review rounds; they are consolidated above as single entries. 5 findings were downgraded from MEDIUM/HIGH to LOW during reachability analysis.

---

## NR-01: ReDoS in PEM Format Autodetection

- **Vulnerability class:** Regular Expression Denial of Service (ReDoS)
- **Raw severity:** HIGH
- **Adjusted severity (after reachability):** HIGH
- **Location:** `opensshFormat.autoImport` (lines 2145, 2151), `pkcs1Format.autoImport` (lines 2642, 2648), `pkcs8Format.autoImport` (lines 2757, 2763)

### Reachability Analysis

Regex patterns used for PEM format autodetection exhibit catastrophic backtracking potential on crafted input when calling `importKey()` without an explicit format specification. Any caller passing untrusted key material to `importKey()` in the default (auto-detect) mode is affected. One reachability check noted that V8's backtracking budget mitigates this on Node 16+, but a second adversarial check found it breachable. Conflicting verdicts — kept at HIGH as a conservative measure.

### Gate Status

**No gate** — exploitable in default configuration when key material is attacker-controlled.

**Breach:** True

---

## NR-02: Bleichenbacher PKCS#1 v1.5 Oracle

- **Vulnerability class:** Cryptographic Side Channel (Bleichenbacher Attack)
- **Raw severity:** MEDIUM
- **Adjusted severity (after reachability):** LOW
- **Location:** `Pkcs1Scheme.encUnPad` / `JsEngine.decrypt` / `NodeNativeEngine.decrypt`

### Reachability Analysis

Padding oracle behavior when using `encryptionScheme:'pkcs1'`. The default encryption scheme is `pkcs1_oaep`, which is not vulnerable. Exploitation requires the caller to explicitly select the non-default PKCS#1 v1.5 scheme.

### Gate Status

**Non-default option required** — caller must set `encryptionScheme:'pkcs1'` (default is `pkcs1_oaep`).

**Breach:** False

---

## NR-03: Weak Default Hash (SHA-1)

- **Vulnerability class:** Weak Cryptographic Primitive
- **Raw severity:** MEDIUM
- **Adjusted severity (after reachability):** LOW
- **Location:** `PssScheme` DEFAULT_HASH3=`'sha1'`, `OaepScheme` DEFAULT_HASH=`'sha1'`

### Reachability Analysis

Default PSS signing and OAEP encryption use SHA-1 as the hash function. While SHA-1 is considered weak for collision resistance, exploitation requires a specific attack context (e.g., chosen-prefix collision). The hash algorithm is configurable by the caller.

### Gate Status

**Configurable by caller** — not breachable without a specific attack context that exploits SHA-1 weakness.

**Breach:** False

---

## NR-04: Unsafe JSON.parse on Decrypted Bytes

- **Vulnerability class:** Unsafe Deserialization
- **Raw severity:** MEDIUM
- **Adjusted severity (after reachability):** LOW
- **Location:** `$getDecryptedData`, lines 3883-3887

### Reachability Analysis

`JSON.parse` is called on attacker-influenced decrypted bytes when using `decrypt(ciphertext, 'json')`. Exploitation requires the attacker to control the ciphertext AND the caller to use the `'json'` encoding option. In Node.js, `JSON.parse` does not execute code, so the risk is limited to unexpected data shapes, not code execution.

### Gate Status

**Multiple gates** — requires attacker-controlled ciphertext AND caller use of `'json'` encoding.

**Breach:** False

---

## NR-05: Error Swallowing in encrypt/decrypt

- **Vulnerability class:** Information Exposure / Error Handling
- **Raw severity:** LOW
- **Adjusted severity (after reachability):** LOW
- **Location:** `$$encryptKey` (lines 3858-3860), `$$decryptKey` (lines 3867-3869)

### Reachability Analysis

Exceptions from the underlying crypto engine are swallowed and replaced with a generic error message. This obscures the root cause of failures and could mask timing differences that would otherwise be observable, though the security impact is marginal.

### Gate Status

Not reachability-tested (LOW severity).

---

## NR-06: Format String Prototype Lookup

- **Vulnerability class:** Prototype Property Access
- **Raw severity:** LOW
- **Adjusted severity (after reachability):** LOW
- **Location:** `importKey` (line 3795), `exportKey` (line 3805)

### Reachability Analysis

A user-controlled format string can resolve prototype properties (`__proto__`, `constructor`) on the `EXPORT_FORMAT_ALIASES` lookup table, causing a TypeError crash. This is a denial-of-service vector but not exploitable for code execution.

### Gate Status

Requires attacker control of the format parameter passed to `importKey` or `exportKey`.

---

## NR-07: Weak Algorithm Accepted Without Error

- **Vulnerability class:** Insufficient Input Validation
- **Raw severity:** MEDIUM
- **Adjusted severity (after reachability):** LOW
- **Location:** `applyOptions`, lines 3331-3335

### Reachability Analysis

MD4 and MD5 hash algorithms emit a `console.warn` but do not throw an error. A caller could unknowingly use a weak algorithm. Requires the caller to explicitly pass a weak algorithm name.

### Gate Status

**Non-default option required** — caller must explicitly specify MD4 or MD5.

**Breach:** False

---

## Clean / Rejected

No findings were fully rejected. All 20 raw findings were either confirmed (11) or consolidated as duplicates across multiple discovery rounds.

---

**Pipeline:** 20 raw findings → 11 confirmed (1 HIGH breachable, 10 downgraded to LOW)
