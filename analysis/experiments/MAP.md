# Experiment Map — Harness Engineering for WordPress Plugin Security Review

Goal of this series: test whether **harness engineering** (file granularity, prompt,
verification, model choice) — not raw model power — drives whether an LLM review catches
real vulnerabilities. All work done in git worktree `woo-security-review`; `main` untouched.

Date: 2026-06-16. Reviewer model tiers: Opus 4.8 (`claude-opus-4-8`), Sonnet 4.6 (`claude-sonnet-4-6`).

## Master table

| # | Experiment | Target | Config (model · granularity · prompt · verify) | Files | Result | Value / lesson |
|---|---|---|---|---|---|---|
| 1 | Exhaustive discovery, hardened latest | WooCommerce 10.8.1 | Opus 4.8 · 18/batch · rich discovery · adversarial verify | 1,763 | 1 raised → **0 confirmed** (coupon XSS refuted) | A hardened, heavily-audited target yields ~nothing; **0-confirmed is credible**, and the verify pass is the precision engine. |
| 2 | CVE rediscovery (blind), 18-file | WooCommerce 5.5.0 (CVE-2021-32790) | Opus 4.8 · 18/batch · rich + sanitizer hint · verify | 126 | **0 raised → MISS** | Even Opus 4.8 with a hint **misses a real CVE** when the vulnerable file shares a 18-file batch. Context dilution. |
| 3 | Less-hardened plugin discovery | smart-slider-3 | Opus 4.8 · 18/batch · rich discovery · verify | 742 | 9 raised → **3 confirmed** (1 reproduced baseline + **2 novel**), 6 refuted | Discovery harness **finds real + novel bugs** where they exist; verify refutes 6/9 incl. 2 admin-gated bugs the baseline had "confirmed" → **severity judgment isn't stable across harnesses**. |
| 4 | Batch-dilution control, 1-file | WooCommerce 5.5.0 (CVE-2021-32790) | Opus 4.8 · **1/batch** · same prompt · verify | 23 (16 rate-limited) | webhook file alone → **CVE CAUGHT + verified** | **Decisive:** same model/file/prompt, only batch size changed → miss→catch. **Granularity dominates.** |
| 5 | Cheap model, bare-bones, per-file | 4 known-vuln files | **Sonnet 4.6** · 1/batch · **one-line prompt** · no verify | 4 | **3/4 caught** (incl. the CVE Opus missed); missed access-control bug; noisier | A cheap model + per-file + "evaluate this for security issues" **beats Opus@18-files**. High recall, lower precision (needs verify). |
| 6 | Cheap model + access-control lens | smart-slider-3 `ControllerAjaxBrowse.php` | Sonnet 4.6 · 1 file · **prompt + access-control lens** · no verify | 1 | **CAUGHT** the missing-capability bug | The cross-file access-control class needs a **prompt lens**, not a bigger model → Sonnet 3/4 → **4/4**. |
| 7 | End-to-end value + **validation-first** | ultimate-member 2.12.0 | Sonnet 4.6 · 1/batch · lenses · adversarial verify · **+ live curl** | 93 | 45 raw → 35 conf → **13 distinct → 0 default-exploitable MED+** (3 real LOW) | **Live validation is the real precision engine.** Discovery+verify both inherited a false premise ("low-priv user can get the gating nonce/config"); every MED+ rested on it. One curl per finding falsified it. Reasoning-confirmed ≠ exploitable. |

## Headline conclusions

1. **Harness > model on the margin.** Proven twice: (exp 2 vs 4) batch size flipped Opus from miss→catch; (exp 5) Sonnet-per-file caught the CVE that Opus-at-18-files missed.
2. **Spend compute on verification, not bigger discovery models.** Cheap model = recall; adversarial verify = precision. Best harness pairs them.
3. **Granularity is the dominant lever** for camouflaged bugs (the CVE *looked* sanitized; only undivided attention caught it).
4. **Access-control / reachability bugs need a prompt lens** (who can reach each handler) — a per-file view alone under-weights them.
5. **Severity judgment is harness-dependent** — the strict verifier discounts admin-gated bugs the original triage baseline accepted.
6. **Validation-first beats reasoning-first for precision (exp 7).** Adversarial verify still inherits *shared* false assumptions across all agents; a live curl is the only thing that breaks them. Default-config reachability (can the attacker get the nonce? is the gating option populated?) must be a *measured* fact, not inferred. UM 2.12.0 (recent, hardened) → 0 default-exploitable MED+, mirroring exp 1.

## Operational notes
- Server-side rate limiting (HTTP 429, "not your usage limit") repeatedly capped concurrency. Reliable runs need small batches + low concurrency (waves of 5–6) + retry/backoff.
- Token cost: exp 1 ≈ 9.8M; exp 2+3 ≈ 3.2M; exp 4 ≈ 0.24M (partial); exp 5+6 ≈ 0.12M. **Cheapest experiments produced the highest-value catches.**

## Index
- Experiments: `exp01`–`exp06` in this folder.
- Methodology fixes: `methodology_fixes.md`.
- Confirmed/known vulnerability reports: `reports/findings/`.
- Raw result JSON: `analysis/woo_review_result.json`, `analysis/ab_review_result.json`, task outputs.
