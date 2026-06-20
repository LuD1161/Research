# SSRF Test Matrix Results

Total payloads: 23

## Verdict Summary

| Verdict | Count |
|---------|-------|
| SSRF_CONFIRMED | 8 |
| SSRF_LIKELY | 3 |
| BLOCKED | 12 |
| HARNESS_ERROR | 0 |

## Results by Technique

### redirect

| ID | Config | Status | Oracle | Timing | Verdict |
|----|--------|--------|--------|--------|---------|
| redirect-302-oracle-image | baseline | 200 | true | 4ms | **SSRF_CONFIRMED** |
| redirect-307-oracle-image | baseline | 200 | true | 3ms | **SSRF_CONFIRMED** |
| redirect-308-oracle-image | baseline | 200 | true | 3ms | **SSRF_CONFIRMED** |
| redirect-302-oracle-metadata | baseline | 400 | true | 4ms | **SSRF_CONFIRMED** |
| redirect-localhost | baseline | 500 | false | 5ms | **BLOCKED** |
| redirect-aws-metadata | baseline | 504 | false | 7004ms | **SSRF_LIKELY** |

### redirect-chain

| ID | Config | Status | Oracle | Timing | Verdict |
|----|--------|--------|--------|--------|---------|
| redirect-chain-2hop | baseline | 200 | true | 3ms | **SSRF_CONFIRMED** |
| redirect-chain-5hop | baseline | 200 | true | 3ms | **SSRF_CONFIRMED** |
| redirect-chain-20hop | baseline | 500 | false | 14ms | **BLOCKED** |

### direct

| ID | Config | Status | Oracle | Timing | Verdict |
|----|--------|--------|--------|--------|---------|
| direct-oracle-blocked-baseline | baseline | 400 | false | 2ms | **BLOCKED** |
| direct-oracle-wildcard | wildcard | 200 | true | 3ms | **SSRF_CONFIRMED** |

### userinfo

| ID | Config | Status | Oracle | Timing | Verdict |
|----|--------|--------|--------|--------|---------|
| userinfo-confusion | baseline | 400 | false | 1ms | **BLOCKED** |

### backslash

| ID | Config | Status | Oracle | Timing | Verdict |
|----|--------|--------|--------|--------|---------|
| backslash-confusion | baseline | 404 | false | 6ms | **BLOCKED** |

### protocol

| ID | Config | Status | Oracle | Timing | Verdict |
|----|--------|--------|--------|--------|---------|
| protocol-file | baseline | 400 | false | 1ms | **BLOCKED** |
| protocol-data | baseline | 400 | false | 2ms | **BLOCKED** |

### fragment

| ID | Config | Status | Oracle | Timing | Verdict |
|----|--------|--------|--------|--------|---------|
| fragment-trick | baseline | 400 | false | 2ms | **BLOCKED** |

### nullbyte

| ID | Config | Status | Oracle | Timing | Verdict |
|----|--------|--------|--------|--------|---------|
| nullbyte-injection | baseline | 400 | false | 1ms | **BLOCKED** |

### normalization

| ID | Config | Status | Oracle | Timing | Verdict |
|----|--------|--------|--------|--------|---------|
| double-encode-traversal | baseline | 404 | false | 4ms | **BLOCKED** |

### ipv6

| ID | Config | Status | Oracle | Timing | Verdict |
|----|--------|--------|--------|--------|---------|
| ipv6-mapped-v4 | wildcard | 200 | true | 3ms | **SSRF_CONFIRMED** |

### ip-encoding

| ID | Config | Status | Oracle | Timing | Verdict |
|----|--------|--------|--------|--------|---------|
| decimal-ip | wildcard | 504 | false | 7002ms | **SSRF_LIKELY** |
| hex-ip | wildcard | 504 | false | 7003ms | **SSRF_LIKELY** |

### wildcard-escape

| ID | Config | Status | Oracle | Timing | Verdict |
|----|--------|--------|--------|--------|---------|
| subdomain-wildcard-escape | subdomain | 400 | false | 2ms | **BLOCKED** |

### dns-rebind

| ID | Config | Status | Oracle | Timing | Verdict |
|----|--------|--------|--------|--------|---------|
| dns-rebind-oracle | rebind | 500 | false | 7ms | **BLOCKED** |

## Confirmed Findings

### redirect-302-oracle-image

- **Technique:** redirect
- **Config:** baseline
- **Guard bypassed:** remotePatterns
- **HTTP status:** 200
- **Timing:** 4ms
- **Oracle log entries:** 1
  - GET /image.png from 10.99.0.6 at 2026-06-19T14:13:42.262Z

### redirect-307-oracle-image

- **Technique:** redirect
- **Config:** baseline
- **Guard bypassed:** remotePatterns
- **HTTP status:** 200
- **Timing:** 3ms
- **Oracle log entries:** 1
  - GET /image.png from 10.99.0.6 at 2026-06-19T14:13:42.268Z

### redirect-308-oracle-image

- **Technique:** redirect
- **Config:** baseline
- **Guard bypassed:** remotePatterns
- **HTTP status:** 200
- **Timing:** 3ms
- **Oracle log entries:** 1
  - GET /image.png from 10.99.0.6 at 2026-06-19T14:13:42.276Z

### redirect-302-oracle-metadata

- **Technique:** redirect
- **Config:** baseline
- **Guard bypassed:** remotePatterns
- **HTTP status:** 400
- **Timing:** 4ms
- **Oracle log entries:** 1
  - GET /metadata from 10.99.0.6 at 2026-06-19T14:13:42.282Z

### redirect-chain-2hop

- **Technique:** redirect-chain
- **Config:** baseline
- **Guard bypassed:** remotePatterns
- **HTTP status:** 200
- **Timing:** 3ms
- **Oracle log entries:** 1
  - GET /image.png from 10.99.0.6 at 2026-06-19T14:13:42.291Z

### redirect-chain-5hop

- **Technique:** redirect-chain
- **Config:** baseline
- **Guard bypassed:** remotePatterns
- **HTTP status:** 200
- **Timing:** 3ms
- **Oracle log entries:** 1
  - GET /image.png from 10.99.0.6 at 2026-06-19T14:13:42.400Z

### direct-oracle-wildcard

- **Technique:** direct
- **Config:** wildcard
- **Guard bypassed:** none
- **HTTP status:** 200
- **Timing:** 3ms
- **Oracle log entries:** 1
  - GET /image.png from 10.99.0.3 at 2026-06-19T14:14:11.959Z

### ipv6-mapped-v4

- **Technique:** ipv6
- **Config:** wildcard
- **Guard bypassed:** remotePatterns
- **HTTP status:** 200
- **Timing:** 3ms
- **Oracle log entries:** 1
  - GET /image.png from 10.99.0.3 at 2026-06-19T14:14:11.965Z

