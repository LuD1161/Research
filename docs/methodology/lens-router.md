# Lens Router

`tools/lens_router.py` — Static file classifier that tags PHP files with security lenses and assigns review tiers.

## Signals

Seven regex-based security signal categories:

| Signal | What it matches |
|--------|----------------|
| `access_control` | Capability checks, nonce verification, auth hooks |
| `sqli` | `$wpdb->query`, `$wpdb->prepare`, raw SQL |
| `xss` | `echo`, `print`, `esc_html`, output functions |
| `fileio` | `file_get_contents`, `fopen`, `include`, `require` |
| `deserialize` | `unserialize`, `maybe_unserialize` |
| `ssrf` | `wp_remote_get`, `curl_exec`, `file_get_contents` with URL |
| `auth_token` | `wp_generate_password`, `wp_hash`, token generation |

## Tier Classification

- **Tier 0**: No security signals. Skipped entirely.
- **Tier 1**: Has some signals (a sink OR a source) but not the dangerous combination.
- **Tier 2**: Has a **handler** (AJAX/REST/admin-post) AND (source OR sink). The files most likely to contain exploitable vulnerabilities.

```python
if has_handler or (has_source and has_sink):
    tier = 2
elif has_source or has_sink or tags:
    tier = 1
else:
    tier = 0
```

## Cross-File Promotion

Addresses the blind spot where source is in one file and sink in another.

Three promotion rules for tier-1 files:

1. **included_by_t2**: File is `include`/`require`'d by a tier-2 file
2. **proximity_sink**: File has a danger sink and shares a directory with a tier-2 file
3. **namespace_sink**: File has a danger sink and shares a PHP namespace with a tier-2 file

This increases average tier-2 files per plugin from 5 to 8, catching cross-file vulnerability flows.

## Usage

```bash
python3 tools/lens_router.py plugins/src/<slug> \
  --briefs analysis/pipeline/<slug>/briefs \
  --manifest analysis/pipeline/<slug>/manifest.json \
  --explain  # dry run: show classification without writing
```
