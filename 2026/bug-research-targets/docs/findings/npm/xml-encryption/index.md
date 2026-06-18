# xml-encryption — Security Review Findings

**Package:** [xml-encryption](https://www.npmjs.com/package/xml-encryption) | **Files reviewed:** 5

## Summary

| ID | Vulnerability Class | Severity | Breachable | Location |
|----|---------------------|----------|------------|----------|
| XE-01 | XPath Injection | HIGH | Yes | `decryptKeyInfo`, lines 246, 273 |
| XE-02 | XML Injection via Template Interpolation (encrypted-key) | HIGH | Yes | `encrypted-key.tpl.xml.js`, line 6 |
| XE-03 | XML Injection via Template Interpolation (keyinfo) | HIGH | Yes | `keyinfo.tpl.xml.js`, line 10 |
| XE-04 | Null Dereference DoS | LOW | No | `utils.js` `pemToCert`, line 15 |
| XE-05 | Padding Oracle (CBC mode) | LOW | No | `decryptWithAlgorithm`, lines 308-331 |
| XE-06 | Implicit Global Variable Race Condition | LOW | No | `encryptKeyInfoWithScheme`, lines 25, 27, 34 |
| XE-07 | Unvalidated Algorithm URI | LOW | No | Template literal, line 7 |

---

## XE-01: XPath Injection in decryptKeyInfo

- **Vulnerability class:** XPath Injection
- **Raw severity:** HIGH
- **Adjusted severity (after reachability):** HIGH
- **Location:** `decryptKeyInfo`, lines 246, 273

### Reachability Analysis

The `RetrievalMethod/@URI` attribute value is interpolated directly into an XPath query without escaping. Any caller of `decrypt()` or `decryptKeyInfo()` with attacker-supplied XML can inject arbitrary XPath expressions, potentially extracting data from other parts of the XML document or causing application logic errors.

### Gate Status

**No gate** — exploitable whenever the library processes attacker-influenced XML.

**Breach:** True

---

## XE-02: XML Injection via Template Interpolation (encrypted-key template)

- **Vulnerability class:** XML Injection
- **Raw severity:** HIGH
- **Adjusted severity (after reachability):** HIGH
- **Location:** `encrypted-key.tpl.xml.js`, line 6

### Reachability Analysis

Template literal interpolation of `keyInfo` is performed without escaping. If the `keyInfo` value contains attacker-controlled content, arbitrary XML elements can be injected into the encrypted key structure, potentially altering the encryption envelope or injecting malicious elements.

### Gate Status

**No gate** — exploitable when keyInfo contains attacker-influenced data.

**Breach:** True

---

## XE-03: XML Injection via Template Interpolation (keyinfo template)

- **Vulnerability class:** XML Injection
- **Raw severity:** HIGH
- **Adjusted severity (after reachability):** HIGH
- **Location:** `keyinfo.tpl.xml.js`, line 10

### Reachability Analysis

Unescaped `${encryptionPublicCert}` in the template allows injection of arbitrary XML when the certificate value contains special characters or attacker-controlled content. This can modify the structure of the KeyInfo element.

### Gate Status

**No gate** — exploitable when certificate data is attacker-influenced.

**Breach:** True

---

## XE-04: Null Dereference DoS

- **Vulnerability class:** Denial of Service (Null Dereference)
- **Raw severity:** LOW
- **Adjusted severity (after reachability):** LOW
- **Location:** `utils.js` `pemToCert` function, line 15

### Reachability Analysis

`cert[1]` is accessed without a null check when passing a non-PEM string to `pemToCert`. This causes a TypeError crash. Not breachable in default usage where PEM-formatted certificates are passed.

### Gate Status

Requires non-PEM input to `pemToCert`, which is not expected in normal usage.

**Breach:** False

---

## XE-05: Padding Oracle (CBC mode)

- **Vulnerability class:** Cryptographic Side Channel (Padding Oracle)
- **Raw severity:** LOW
- **Adjusted severity (after reachability):** LOW
- **Location:** `decryptWithAlgorithm`, lines 308-331

### Reachability Analysis

Timing and error differences between valid and invalid padding in CBC mode decryption could leak information about plaintext bytes. Exploitation requires a network-observable error oracle, making this a theoretical concern in most deployments.

### Gate Status

Requires network-observable error oracle. Not breachable in typical deployments.

**Breach:** False

---

## XE-06: Implicit Global Variable Race Condition

- **Vulnerability class:** Race Condition / Variable Leakage
- **Raw severity:** LOW
- **Adjusted severity (after reachability):** LOW
- **Location:** `encryptKeyInfoWithScheme`, lines 25, 27, 34

### Reachability Analysis

Undeclared variables (`base64EncodedEncryptedKey`, `params`, `result`) leak to the global scope. Concurrent invocations of `encryptKeyInfoWithScheme` can corrupt each other's state. Requires concurrent calls to the same function, which is uncommon in typical single-threaded Node.js usage but possible with async callbacks.

### Gate Status

Requires concurrent invocations. Low practical impact in single-threaded environments.

**Breach:** False

---

## XE-07: Unvalidated Algorithm URI

- **Vulnerability class:** Input Validation
- **Raw severity:** LOW
- **Adjusted severity (after reachability):** LOW
- **Location:** Template literal, line 7

### Reachability Analysis

The `DigestMethod Algorithm` attribute from caller configuration is interpolated into the template without validation. A caller passing an unexpected algorithm URI could produce malformed XML, but exploitation requires the attacker to control the configuration object.

### Gate Status

Requires attacker control of the configuration object, which is typically not exposed.

**Breach:** False

---

## Clean / Rejected

| Finding | Reason for Rejection |
|---------|---------------------|
| OUT_OF_SCOPE — Callback Crash (ReferenceError) | ReferenceError is caught by the caller's try/catch block. No exploitable impact. |

---

**Pipeline:** 16 raw findings → 7 confirmed (3 HIGH breachable, 4 LOW)
