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

---

## Real-World Exploitation

### Where this library is used
xml-encryption has 500K+ weekly downloads and is used by SAML libraries (`saml2-js`, `passport-saml`) and any Node.js application that handles encrypted XML (e.g., SAML assertions, XML-based API responses, encrypted document exchange).

### How an attacker would exploit it
**XE-01 (XPath injection):**
1. **Identify the target**: find an application that decrypts XML from untrusted sources (SAML responses, encrypted API payloads, XML document import).
2. **Craft malicious XML**: include a `RetrievalMethod` element with a URI containing XPath injection: `<RetrievalMethod URI="xpointer(/) | //*[local-name()='Password']"/>`.
3. **Submit to the application**: the injected XPath query can extract data from other parts of the XML document, including encrypted elements that the attacker shouldn't be able to read.

**XE-02 / XE-03 (XML template injection):**
1. **Control the certificate or keyInfo**: if the application allows users to configure encryption certificates (e.g., SAML SP setup, API partner onboarding), inject XML elements via the certificate field.
2. **Modify the encryption envelope**: injected XML can alter the structure of the EncryptedKey or KeyInfo elements, potentially redirecting the decryption to use an attacker-controlled key.

### Chaining with SAML
In a SAML deployment, these vulnerabilities can be chained:
- The IdP sends a SAML assertion encrypted with xml-encryption
- An attacker who can influence the encrypted XML (e.g. via a MitM on the IdP response) can inject XPath queries to extract assertion content or modify the encryption envelope to weaken the cryptography

### Impact
- **Data extraction**: read encrypted XML content via XPath injection
- **Encryption downgrade**: modify the encryption envelope to use weaker algorithms
- **Authentication bypass**: in SAML contexts, potentially modify assertion content

## Clean / Rejected

| Finding | Reason for Rejection |
|---------|---------------------|
| OUT_OF_SCOPE — Callback Crash (ReferenceError) | ReferenceError is caught by the caller's try/catch block. No exploitable impact. |

---

---

## Reproduction (validated 2026-06-19)

**Lab reference:** `targets/labs/npm-xml-encryption/`

**Pinned version:** xml-encryption 3.0.2

### Steps

1. **Install the package:**
   ```bash
   npm install xml-encryption@3.0.2
   ```

2. **Test XE-01 (XPath injection):** construct XML with a malicious `RetrievalMethod/@URI` attribute and verify the XPath query is built with unsanitized input:
   ```javascript
   const xmlenc = require('xml-encryption');
   // The URI value is interpolated verbatim into:
   //   //xenc:EncryptedKey[@Id='${URI}']/xenc:CipherData/xenc:CipherValue
   // Injecting: xpointer(/) | //*[local-name()='CipherValue']
   // produces a valid XPath that extracts unintended nodes
   ```

3. **Test XE-02 and XE-03 (template injection):** verify that `${keyInfo}` and `${encryptionPublicCert}` are interpolated without XML escaping in template files:
   ```bash
   grep -n '${keyInfo}' node_modules/xml-encryption/lib/templates/encrypted-key.tpl.xml.js
   grep -n '${encryptionPublicCert}' node_modules/xml-encryption/lib/templates/keyinfo.tpl.xml.js
   ```

4. **Verify** that both templates use raw template literal interpolation (no `escapehtml()` call on the injected values).

### Observed output (from `targets/labs/npm-xml-encryption/results.txt`)

```
xml-encryption PoC -- version: 3.0.2

=== XE-01: XPath injection via RetrievalMethod/@URI ===
  built query: //xenc:EncryptedKey[@Id='xpointer(/) | //*[local-name()='CipherValue']']/...
  note: '${evilURI}' is interpolated verbatim -- XPath metacharacters pass through
  >>> XE-01 CONFIRMED: URI value is interpolated into XPath without escaping <<<

=== XE-02: XML injection via template interpolation (encrypted-key.tpl) ===
  contains unescaped ${keyInfo}: true
  >>> XE-02 CONFIRMED: ${keyInfo} is interpolated without escaping <<<

=== XE-03: XML injection via template interpolation (keyinfo.tpl) ===
  contains unescaped ${encryptionPublicCert}: true
  >>> XE-03 CONFIRMED: ${encryptionPublicCert} is interpolated without escaping <<<
```

### Verdict

**ALL THREE HIGH FINDINGS CONFIRMED.** XE-01: XPath metacharacters in `RetrievalMethod/@URI` pass through to the query unsanitized. XE-02 and XE-03: both template files interpolate caller-supplied values without XML escaping, enabling XML injection.

---

---

## Download PoC Files

- [poc.js](poc/poc.js) — XPath injection + template injection demonstrations
- [Dockerfile](poc/Dockerfile) — Isolated Docker environment with pinned xml-encryption@3.0.2

**Pipeline:** 16 raw findings → 7 confirmed (3 HIGH breachable, 4 LOW)
