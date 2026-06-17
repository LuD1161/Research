# Security Research

Independent security research by [Aseem Shrey](https://twitter.com/aseemshrey).

## WP Plugin Security Research (2026)

Large-scale automated security review of the top WordPress plugins using a self-improving pipeline of LLM agents (Sonnet 4.6) with static pre-filtering.

### Key Results (in progress)

- **28 plugins reviewed** (of 103 total)
- **53 confirmed findings** across reviewed plugins
- **~30% downgraded** by the reachability verify lens (false-positive access-control findings)
- **14 learned grep patterns** auto-extracted from agent discoveries
- **2 real MEDIUM findings** in woo-order-export-lite (CSRF on export endpoints)

### Pipeline

```
lens_router.py (static regex + cross-file promotion)
  → LLM Discover (Sonnet agents + detection_pattern output)
  → Adversarial Verify (refute-by-default)
  → Reachability Verify (trace gating mechanisms)
  → Pattern Extraction (grow grep library)
```

- [Pipeline Architecture](pipeline/architecture.md)
- [Agent Instructions](pipeline/agent-instructions.md) — runbook for autonomous agents
- [Cost & Progress](pipeline/progress.md) — wave status and spending
- [Lens Router](methodology/lens-router.md) — static file classification
- [Reachability Verify](methodology/reachability.md) — gating mechanism analysis
- [Pattern Library](methodology/patterns.md) — self-improving detection patterns

### Findings

- [Ultimate Member](findings/ultimate-member.md)
- [Advanced Google reCAPTCHA](findings/advanced-google-recaptcha.md)
- [Smart Slider 3](findings/smart-slider-3.md)
- [WooCommerce CVE-2021-32790](findings/cve-2021-32790.md)

### Experiments

- [Experiment Map](experiments/map.md)
- Exp [01](experiments/exp01.md) [02](experiments/exp02.md) [03](experiments/exp03.md) [04](experiments/exp04.md) [05](experiments/exp05.md) [06](experiments/exp06.md) [07](experiments/exp07.md) — iterative pipeline development

---

## 2025 Research

### Sanchaar Saathi App Analysis

Security and privacy analysis of the Indian government's Sanchaar Saathi Android app (v1.5.0). Key findings: 15-minute background sync, MediaDRM device ID, SQLCipher local storage, HTTPS-only enforcement.

[Full report →](https://github.com/LuD1161/Research/tree/main/2025/sanchaar-saathi)

---

*All research is conducted ethically for defensive security purposes only.*

**Contact:** [@aseemshrey](https://twitter.com/aseemshrey) · [GitHub Issues](https://github.com/LuD1161/Research/issues)
