# xml-encryption

**Files reviewed:** 5 | **Raw findings:** 16 | **Confirmed:** 7

## Confirmed Findings

| # | Vuln Class | Severity | Breachable | Location |
|---|-----------|----------|------------|----------|
| 1 | `xpath_injection` | **HIGH** | Yes | `decryptKeyInfo, lines 246 and 273` |
| 2 | `xml_injection_via_unescaped_template_interpolation` | **LOW** | — | `encryptKeyInfoWithScheme line 29 / keyinfo.tpl.xml.js line 10` |
| 3 | `padding_oracle_cbc_mode` | **LOW** | — | `decryptWithAlgorithm, lines 318-328` |
| 4 | `xml_injection` | **HIGH** | Yes | `encrypted-key.tpl.xml.js line 6 — template literal interpolation of `k` |
| 5 | `xpath_injection` | **HIGH** | Yes | `decryptKeyInfo, lines 246 and 273 (xmlenc.js)` |
| 6 | `xml_injection` | **LOW** | — | `encryptKeyInfoWithScheme, line 29 (xmlenc.js) + keyinfo.tpl.xml.js lin` |
| 7 | `null_dereference_dos` | **LOW** | — | `pemToCert (utils.js line 15)` |

### Finding 1: xpath_injection

**Severity:** HIGH | **Location:** `decryptKeyInfo, lines 246 and 273`

**Justification:** keyRetrievalMethodUri.substring(1) is derived from keyRetrievalMethod.getAttribute('URI') (attacker-controlled XML attribute) and concatenated directly into XPath strings on lines 246 and 273, allowing an attacker to break out of the single-quoted string and inject arbitrary XPath predicates or functions to alter which nodes are selected during decryption.

??? note "Adversarial Verification"
    Confirmed. In decryptKeyInfo() (xmlenc.js), line 245 reads keyRetrievalMethodUri from keyRetrievalMethod.getAttribute('URI') — a raw XML attribute value from attacker-supplied XML. Lines 246 and 273 splice keyRetrievalMethodUri.substring(1) directly into XPath string literals delimited by single quotes, with no escaping. substring(1) only strips the leading '#' character; it does not neutralize single quotes or other XPath metacharacters. An attacker supplying a URI like '#foo' or '1'='1' causes immediate escape from the string context and injection of arbitrary XPath predicates. The RetrievalMethod code path is taken whenever the inline EncryptedKey child is absent from KeyInfo (line 241) — no non-default option or configuration is required. No Zod/Joi/AJV or other schema validation is applied to the XML before parsing or before this code runs. The xpath library supports safe parameterized $var bindings but they are not used here. The decrypt() entry point (line 190) accepts raw XML from any caller — in SAML and similar flows the XML content is fully attacker-controlled with no authentication barrier. The finding mislabels the file as constants.js (the actual file is xmlenc.js) but line numbers 246 and 273 and all other details are accurate.

**Reachability:** gate=`no gate — default config` | breachable=True | adjusted_severity=high

**Detection pattern:** `xpath\.select\([^)]*\+[^)]*getAttribute`
**Anti-pattern:** `xpath\.select.*\$[a-zA-Z]`

### Finding 2: xml_injection_via_unescaped_template_interpolation

**Severity:** LOW | **Location:** `encryptKeyInfoWithScheme line 29 / keyinfo.tpl.xml.js line 10`

**Justification:** In xmlenc.js line 29, encryptionPublicCert is built by concatenating pemToCert(options.pem.toString()) with literal XML tags, then in keyinfo.tpl.xml.js line 10 it is interpolated as ${encryptionPublicCert} without calling escapehtml(), while every other field in that template is wrapped in escapehtml(); a PEM body containing < > & or an extra </X509Certificate> tag breaks the XML document structure.

??? note "Adversarial Verification"
    The code defect is confirmed exactly as described. In xmlenc.js line 29, encryptionPublicCert is built by concatenating literal XML tags with pemToCert(options.pem.toString()), and in keyinfo.tpl.xml.js line 10 it is interpolated as ${encryptionPublicCert} without escapehtml(), while every other field (keyEncryptionMethod, keyEncryptionDigest, encryptedKey) is wrapped in escapehtml(). The pemToCert regex in utils.js uses [^-]* which permits <, >, &, / and all XML special characters to pass through unfiltered. The assembled encryptionPublicCert string already contains literal XML tags and is embedded raw into the template — a crafted PEM body with XML special characters or extra tags would break document structure. However, practical exploitability is lower than the finding claims: options.pem is a configuration-level parameter documented by the README as fs.readFileSync(...) (a file path), not request input. A real X.509 certificate body is DER-encoded base64 (A-Za-z0-9+/=) which cannot contain XML special characters. Exploitation requires the calling application to expose options.pem to attacker-controlled data, which is application-architecture-dependent and not the default usage pattern. No schema validation (zod/joi/ajv) guards the input, and no sanitizer exists in the PEM-to-cert path. The defect is real and the inconsistency in escaping is a genuine code quality and defense-in-depth problem, but real-world exploitability is conditional on non-default misconfiguration. Severity downgraded from medium to low on this basis.

**Detection pattern:** `\$\{(?!escapehtml)[a-zA-Z_][a-zA-Z0-9_]*(?:Cert|Xml|Html|Content|Body|Data)\}`
**Anti-pattern:** `\$\{escapehtml\(`

### Finding 3: padding_oracle_cbc_mode

**Severity:** LOW | **Location:** `decryptWithAlgorithm, lines 318-328`

**Justification:** For CBC-mode algorithms (aes-128-cbc, aes-256-cbc, des-ede3-cbc) the manual padding removal on lines 321-327 returns/errors when the last byte value is outside [1, ivLength], creating a padding oracle that an attacker can exploit to decrypt arbitrary ciphertext by submitting chosen ciphertexts and observing the distinct error/success responses.

??? note "Adversarial Verification"
    The padding oracle is mechanically real but is gated behind a non-default, explicit opt-in that requires the server operator to have disabled the insecure-algorithm guard.
    
    Mechanism: decryptWithAlgorithm (xmlenc.js:308) is a synchronous function with signature (algorithm, symmetricKey, ivLength, content) — no callback parameter. Line 310 calls decipher.setAutoPadding(false), disabling Node's built-in PKCS7 removal. Lines 321-327 implement manual padding removal: it reads the last byte value and calls callback(new Error('padding length invalid')) when the byte is outside [1, ivLength]. Because callback is not in scope, this throws TypeError: callback is not a function synchronously. The outer try/catch in decrypt() (lines 197/228-229) catches the TypeError and forwards it as callback(error). Good padding produces callback(null, plaintext). The two outcomes are distinguishable, so a classical padding oracle exists in the code path.
    
    Critical gate: All three CBC-mode algorithms (aes-128-cbc, aes-256-cbc, des-ede3-cbc) are listed in insecureAlgorithms (lines 6-14). The check at lines 204-207 reads: if (options.disallowDecryptionWithInsecureAlgorithm !== false && insecureAlgorithms.indexOf(encryptionAlgorithm) >= 0) return callback(error). This means the guard is ACTIVE by default (option absent, undefined, or any truthy value all trigger it) and blocks the CBC path entirely. The vulnerable code is only reachable when a caller explicitly passes disallowDecryptionWithInsecureAlgorithm: false — a deliberate opt-in to use deprecated algorithms.
    
    Reachability correction: The finding claims 'any attacker who can submit ciphertext' can reach this, which overstates the case. The attacker cannot control this option; only the server operator can, by explicitly opting into insecure algorithms. In that (non-default, explicitly deprecated) configuration the oracle is fully exploitable with attacker-controlled CipherValue ciphertext in the XML input.
    
    Additional inaccuracies in the finding: (1) The file location is wrong — the vulnerable code is in lib/xmlenc.js, not lib/constants.js (which does not exist in this package). (2) The grep_pattern in detection_pattern does not match the actual code. (3) setAutoPadding(false) appears in the code but is the cause of the problem, not a mitigation — the anti_pattern check for setAutoPadding(true) would be a fix, not something present here.
    
    Verdict: is_real=true because the oracle code path exists and is reachable under a non-default but explicitly documented insecure configuration. Severity is downgraded from medium to low because exploitation requires the server operator to have opted into deprecated CBC algorithms via disallowDecryptionWithInsecureAlgorithm:false, which the library itself warns against.

**Detection pattern:** `charCodeAt.*length.*-.*1.*padding.*Error`
**Anti-pattern:** `crypto\.timingSafeEqual|setAutoPadding\(true\)`

### Finding 4: xml_injection

**Severity:** HIGH | **Location:** `encrypted-key.tpl.xml.js line 6 — template literal interpolation of `keyInfo``

**Justification:** The `keyInfo` variable is interpolated directly into the XML template on line 6 (`${keyInfo}`) without any escaping. `keyInfo` is itself rendered by `keyinfo.tpl.xml.js`, which embeds `${encryptionPublicCert}` raw on its line 10. `encryptionPublicCert` is built in xmlenc.js line 29 by string-concatenating raw XML around `pemToCert(options.pem.toString())`. If `options.pem` contains XML-significant characters in the cert body position (e.g., via a crafted PEM), they are inserted into the output document unescaped, enabling XML structure manipulation.

??? note "Adversarial Verification"
    The XML injection chain is confirmed end-to-end. In xmlenc.js line 29, `encryptionPublicCert` is built by string-concatenating raw XML tags around `utils.pemToCert(options.pem.toString())`. The `pemToCert` function (utils.js lines 13-20) extracts the cert body using the regex `/-----BEGIN CERTIFICATE-----([^-]*)-----END CERTIFICATE-----/g` — the capture group `[^-]*` admits all XML-significant characters (<, >, &, ", /) and only strips newlines. The resulting string is passed as `params.encryptionPublicCert` to `renderTemplate('keyinfo', params)`. In `keyinfo.tpl.xml.js` line 10, `${encryptionPublicCert}` is interpolated without any escaping — while all other interpolations in that file (lines 6, 7, 13) use `escapehtml()`, this one does not. A crafted PEM whose base64 body contains XML markup (e.g. `</X509Certificate></X509Data><evil/>...`) would be injected verbatim into the output XML. The rendered keyInfo string is then embedded raw into `encrypted-key.tpl.xml.js` line 6 (`${keyInfo}`), which is by design since it is a pre-rendered XML fragment; the true unescaped sink is `keyinfo.tpl.xml.js:10`. `options.pem` is a caller-supplied parameter with no schema validation (no zod/joi/ajv). No authentication is required — this is a library call. Any consumer that passes a crafted or attacker-influenced PEM to `encrypt()` is affected. The finding's location attribution (`encrypted-key.tpl.xml.js:6`) is slightly imprecise — the actual injection point is `keyinfo.tpl.xml.js:10` — but the root cause and exploit chain are accurate and confirmed.

**Reachability:** gate=`no gate — default config` | breachable=True | adjusted_severity=high

**Detection pattern:** `\$\{[a-zA-Z_][a-zA-Z0-9_]*\}`
**Anti-pattern:** `escapehtml\(|xmlEscape\(|encodeXML\(`

### Finding 5: xpath_injection

**Severity:** HIGH | **Location:** `decryptKeyInfo, lines 246 and 273 (xmlenc.js)`

**Justification:** keyRetrievalMethodUri is read from the XML attribute URI via getAttribute('URI') and concatenated into XPath queries at lines 246 and 273 without any sanitization or escaping, allowing an attacker to break out of the XPath string literal with a single-quote and inject arbitrary XPath subexpressions.

??? note "Adversarial Verification"
    Confirmed XPath injection in xml-encryption v4.0.0 (lib/xmlenc.js, not lib/index.js which is an empty re-export stub). The vulnerable code is in decryptKeyInfo(), lines 245-246 and 272-273.
    
    Exact vulnerable pattern:
      Line 245: keyRetrievalMethodUri = keyRetrievalMethod.getAttribute('URI');
      Line 246: xpath.select("//*[local-name(.)='EncryptedKey' and @Id='" + keyRetrievalMethodUri.substring(1) + "']/*[local-name(.)='EncryptionMethod']", doc)[0]
      Line 273: xpath.select("//*[local-name(.)='EncryptedKey' and @Id='" + keyRetrievalMethodUri.substring(1) + "']/*[local-name(.)='CipherData']/*[local-name(.)='CipherValue']", keyInfo)[0]
    
    Attack path confirmed live against the bundled xpath library: a RetrievalMethod URI of '#legit' or '1'='1' produces the injected query //*[local-name(.)='EncryptedKey' and @Id='legit' or '1'='1']/*[...], which matches ANY EncryptedKey in the document because 'or "1"="1"' is always true. Tested with the xpath package bundled in node_modules: 2 nodes matched instead of 0 for a non-existent Id.
    
    No sanitization found: grep for sanitize/escape/encodeURI/replace/schema/validate/zod/joi/ajv returned zero hits in both xmlenc.js and utils.js.
    
    Reachability: decrypt() (public export) calls decryptKeyInfo() on line 200 with no pre-validation. The RetrievalMethod branch (lines 243-247) is taken whenever no inline EncryptedKey is present under KeyInfo — a common XMLEnc/SAML pattern. decryptKeyInfo() is also exported directly. Only guard is options.key being present (the decryptor's own private key), which is always true for legitimate callers. No authentication or authorization context is required; any caller passing external XML reaches the sink.
    
    No non-default options required to trigger the path. No schema validation of the incoming XML is performed.
    
    Practical impact: injection allows an attacker to redirect which EncryptedKey node is selected for decryption, substituting attacker-chosen ciphertext. With 'or 1=1' the first EncryptedKey in document order wins, and the attacker controls document structure — enabling a decryption oracle against the server's RSA private key.
    
    Note on finding metadata: the finding cites 'xmlenc.js' in the location field but 'index.js' in the file path. lib/index.js is a 47-byte re-export stub (confirmed empty/pass-through). The actual vulnerable code is in lib/xmlenc.js at the stated lines.

**Reachability:** gate=`no gate — default config` | breachable=True | adjusted_severity=high

**Detection pattern:** `xpath\.select\([^)]*\+\s*[a-zA-Z_][a-zA-Z0-9_.]*`
**Anti-pattern:** `escapeXPath|xpath\.escape|String\(.*\)|normalize-space`

### Finding 6: xml_injection

**Severity:** LOW | **Location:** `encryptKeyInfoWithScheme, line 29 (xmlenc.js) + keyinfo.tpl.xml.js line 10`

**Justification:** The encryptionPublicCert value (built at line 29 as a raw XML snippet from options.pem) is inserted unescaped into the keyinfo template at the ${encryptionPublicCert} slot (template line 10), so a crafted PEM whose base64 body contains XML special characters can produce malformed or injected XML output.

??? note "Adversarial Verification"
    The finding is technically real but overstated in severity. Line 29 of xmlenc.js builds encryptionPublicCert as a raw XML snippet by concatenating '<X509Data><X509Certificate>' + pemToCert(options.pem) + '</X509Certificate></X509Data>' without any XML escaping on the cert body. This value is then inserted at template line 10 (${encryptionPublicCert}) without escapehtml(), while every other interpolated slot in the same template (keyEncryptionMethod, keyEncryptionDigest, encryptedKey) IS wrapped with escapehtml(). The pemToCert regex ([^-]*) allows any non-dash character in the body — it does not constrain content to valid base64. So a crafted PEM string whose body contains XML special characters (<, >, &) would pass through and inject raw XML into the output. No schema validation (zod/joi/ajv) constrains options.pem. The attack path is real. However, practical exploitability is limited: standard PEM base64 bodies use only A-Za-z0-9+/= (no XML-special chars), so a legitimate certificate loaded from a trusted source cannot trigger this. Exploitation requires passing a crafted, non-standard PEM string as options.pem. This is plausible only when the caller relays options.pem from untrusted external input (e.g., a client-supplied certificate in a federation/SAML service) without prior validation. The severity 'medium' claimed by the finding is slightly generous; 'low' is more accurate given that (1) the parameter is documented as a server-side configuration option, (2) exploitation requires malformed/non-certificate PEM input, and (3) the template design intentionally leaves this slot unescaped because it treats the value as a pre-assembled XML fragment. The correct fix is to escape the pemToCert output before wrapping it in XML tags, or use DOM APIs instead of string templating.

**Detection pattern:** `\$\{[a-zA-Z_][a-zA-Z0-9_]*\}|\+\s*[a-zA-Z_][a-zA-Z0-9_.]*\s*\+`
**Anti-pattern:** `escapehtml\(|escapeXml\(|xmlescape\(`

### Finding 7: null_dereference_dos

**Severity:** LOW | **Location:** `pemToCert (utils.js line 15)`

**Justification:** RegExp.prototype.exec() returns null when there is no match; the subsequent cert.length access on null throws TypeError: Cannot read properties of null. The enclosing try/catch in xmlenc.js encryptKeyInfoWithScheme (lines 19-38) catches it and delivers it to the callback, preventing a process crash, but it makes the encrypt operation fail on any malformed certificate.

??? note "Adversarial Verification"
    The null dereference is real and reachable. In utils.js pemToCert(), RegExp.exec() returns null when pem does not contain a valid PEM certificate header/footer. The code immediately accesses cert.length on line 15 without a null guard, which throws TypeError. The guard at encryptKeyInfo line 46 (`if (!options.pem)`) only filters falsy values — any non-empty, non-PEM string bypasses it and reaches pemToCert. However, the call site in encryptKeyInfoWithScheme (xmlenc.js lines 19-38) wraps the entire operation in a try/catch that delivers the TypeError to the callback as an error. The process does not crash. The net effect is that any caller passing a malformed certificate gets an error callback instead of a successful encryption — identical to a validation failure, not a process-level DoS. No schema validation (zod/joi/ajv) is present. The parameter is documented as user-supplied. The code defect (missing null check after exec()) is genuine and the reachability path described in the finding is accurate. Severity 'low' is appropriate: it is a code quality bug that causes operation failure for malformed input, not a process crash or security control bypass.

**Detection pattern:** `\.exec\([^)]+\)\s*;\s*\n[^}]*\.length`
**Anti-pattern:** `if\s*\(\w+\s*&&\s*\w+\.length|\w+\s*!==\s*null`
