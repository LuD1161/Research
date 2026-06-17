# Reachability Verify Lens

The third verification stage in the pipeline. Catches the recurring blind spot where the adversarial verifier confirms access-control findings without checking whether the gating mechanism is actually obtainable by an attacker.

## The Problem

The adversarial verify stage asks: "Is this finding real?" But it doesn't ask: "Can an attacker actually reach and exploit this?" Many confirmed findings are gated behind:

- **WordPress nonces** only rendered on admin pages (subscriber can't obtain them)
- **Random secrets** stored in the database (35-char `wp_generate_password`)
- **Capability checks** like `manage_options` (admin-only)

Without reachability analysis, these get rated HIGH or MEDIUM when they're effectively LOW or INFORMATIONAL.

## How It Works

1. **Filter**: Only runs on confirmed findings matching access-control vuln classes (`broken_access_control`, `auth`, `privilege_escalation`, `idor`) or severity >= MEDIUM
2. **Trace**: Agent reads the vulnerable file and traces the complete exploitation prerequisite chain
3. **Determine**: Sets `gate_breachable` (default: false when uncertain) based on whether an unauthenticated/low-privilege attacker can obtain the gate value
4. **Downgrade**: Findings where the gate is unbreachable get severity lowered; original preserved as `severity_pre_reach`

## Agent Prompt (Key Questions)

1. What gate protects the vulnerable code path?
2. WHERE is the gate value generated? (admin page = admin-only, random = unguessable)
3. Can an unauthenticated attacker obtain or guess it? Search the ENTIRE plugin for exposure points.
4. If it requires admin/elevated privileges → `gate_breachable: false`, downgrade severity.

## Validation Results

Tested on advanced-google-recaptcha (3 BAC findings):

| Finding | Original | Gate | Breachable | Adjusted |
|---------|----------|------|------------|----------|
| handle_unblock (HIGH) | HIGH | 35-char random secret | **false** | LOW |
| install_template (MED) | MED | wp_nonce admin-only | **false** | LOW |
| install_template (MED) | MED | wp_nonce admin-only | **false** | LOW |

## Impact on Pipeline

Across 28 reviewed plugins: **~30% of confirmed findings get downgraded** by the reachability lens. Without it, the pipeline would over-report MED/HIGH findings that require admin credentials to exploit.
