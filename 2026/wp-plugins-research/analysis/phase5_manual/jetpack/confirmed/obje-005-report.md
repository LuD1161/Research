# OBJE-005: PHP Object Injection via `unserialize()` in Jetpack JSON API

## Status: NOT EXPLOITABLE (Code Quality Issue Only)

## Summary

The `unserialize()` call at `sal/class.json-api-links.php:418` (and a second instance at `class.json-api.php:484`) does not use the `allowed_classes` restriction parameter. However, after full data-flow analysis, the serialized data is **entirely internally generated** from hardcoded PHP endpoint class properties and is never user-controllable. This is a defense-in-depth / code quality concern, not an exploitable vulnerability.

## Affected Version

- Jetpack 15.9 (latest at time of analysis)

## Vulnerable Code

### Primary Location: `sal/class.json-api-links.php:418`

```php
foreach ( $this->api->endpoints as $key => $endpoint_objects ) {
    // The key contains a serialized path, min_version and max_version.
    list( $path, $min_version, $max_version ) = unserialize( $key );
    // ...
}
```

### Secondary Location: `class.json-api.php:484`

```php
foreach ( $this->endpoints as $endpoint_path_versions => $endpoints_by_method ) {
    $endpoint_path_versions = unserialize( $endpoint_path_versions );
    // ...
}
```

### Serialization Origin: `class.json-api.php:191-196`

```php
public function add( WPCOM_JSON_API_Endpoint $endpoint ) {
    $path_versions = serialize(
        array(
            $endpoint->path,
            $endpoint->min_version,
            $endpoint->max_version,
        )
    );
    $this->endpoints[ $path_versions ] = array();
    $this->endpoints[ $path_versions ][ $endpoint->method ] = $endpoint;
}
```

## Data Flow Analysis

### Step 1: Where is the serialized data created?

The `WPCOM_JSON_API::add()` method at `class.json-api.php:188-202` creates the serialized string by calling `serialize()` on an array of three values:
- `$endpoint->path` -- the REST API path (e.g., `/sites/%s/posts`)
- `$endpoint->min_version` -- minimum API version string (default: `'0'`)
- `$endpoint->max_version` -- maximum API version string (default: `WPCOM_JSON_API__CURRENT_VERSION`)

### Step 2: Where do these values come from?

The `$endpoint` is a `WPCOM_JSON_API_Endpoint` object. Looking at the base class (`class.json-api-endpoints.php:23`):
- `$path` is a string property set during construction
- `$min_version` defaults to `'0'`
- `$max_version` defaults to `WPCOM_JSON_API__CURRENT_VERSION`

These values are set from the hardcoded arrays passed to endpoint constructors in files like:
- `json-endpoints/class.wpcom-json-api-get-taxonomy-endpoint.php`
- `json-endpoints/class.wpcom-json-api-update-taxonomy-endpoint.php`
- And dozens of other endpoint definition files

### Step 3: Is the data user-controllable?

**No.** The data flow is entirely internal:

1. Endpoint PHP files define paths/versions as hardcoded arrays
2. `WPCOM_JSON_API_Endpoint.__construct()` sets properties from these arrays
3. `WPCOM_JSON_API::add()` serializes these properties into array keys
4. `get_endpoint_path_versions()` unserializes these same keys

There is **no point** in this flow where:
- User input is injected into the serialized string
- The endpoints array is stored in or retrieved from the database
- The endpoints array is cached in an externally-accessible location (like transients or object cache with user-taintable data)
- A filter or action hook allows modification of the serialized keys

### Step 4: Second-order injection risk?

**None.** The `$this->api->endpoints` array is populated purely from PHP file includes during request bootstrap. It is:
- Not stored in `wp_options` or any database table
- Not stored in transients
- Not fetched from an external source
- Not modifiable via any WordPress filter or action

## Exploitability Assessment

| Factor | Assessment |
|--------|-----------|
| User-controllable input | No -- data is hardcoded in PHP |
| Database-stored data | No -- populated at runtime from PHP includes |
| External data source | No |
| Filter/hook injection | No -- no filters on the endpoints array keys |
| Second-order injection | Not possible -- no persistent storage involved |
| Authentication bypass | N/A -- vulnerability is not exploitable |

## Why the Code is Still Suboptimal

Even though this is not exploitable, using `unserialize()` without `allowed_classes: false` is a CWE-502 code quality violation:

1. **Defense in depth**: If a future code change introduces a path for user data to reach the endpoints array (e.g., database caching of registered endpoints), the unserialize call would become exploitable.
2. **Static analysis**: Tools correctly flag this as a potential issue, and the Jetpack developers themselves acknowledge it in TODO comments:
   > `@todo Determine if anything depends on this being serialized rather than e.g. JSON.`
3. **Best practice**: PHP's own documentation recommends using `json_encode()`/`json_decode()` instead of `serialize()`/`unserialize()` for data that does not contain objects.

## CVSS 3.1 Score

**Revised: 0.0 (None)** -- CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:N

The initial score of 6.3 was based on the assumption that the serialized data might be user-controllable. After tracing the full data flow, there is no attack vector.

If considering this purely as a code quality / defense-in-depth issue:
- **Informational / Best Practice** -- no CVSS score applicable

## CWE Classification

- **CWE-502**: Deserialization of Untrusted Data (code pattern present, but data is not untrusted)
- More accurately: **Code Quality / Defense-in-Depth Concern** -- the CWE pattern exists but the precondition (untrusted data) is not met

## CVE Check

No known CVE exists for this specific `unserialize()` usage in Jetpack's JSON API endpoint registration. This is expected given the data is not user-controllable.

## Remediation Recommendation

Despite not being exploitable, the fix is trivial and would improve defense-in-depth:

### Option 1: Add `allowed_classes: false` (minimal change)

```php
// sal/class.json-api-links.php:418
list( $path, $min_version, $max_version ) = unserialize( $key, array( 'allowed_classes' => false ) );

// class.json-api.php:484
$endpoint_path_versions = unserialize( $endpoint_path_versions, array( 'allowed_classes' => false ) );
```

### Option 2: Replace with JSON (recommended by Jetpack's own TODOs)

```php
// class.json-api.php:191 (serialization)
$path_versions = wp_json_encode( array( $endpoint->path, $endpoint->min_version, $endpoint->max_version ) );

// sal/class.json-api-links.php:418 (deserialization)
list( $path, $min_version, $max_version ) = json_decode( $key, true );

// class.json-api.php:484 (deserialization)
$endpoint_path_versions = json_decode( $endpoint_path_versions, true );
```

## Proof of Concept

**Not applicable** -- the vulnerability is not exploitable. No PoC can be constructed because:
1. The serialized data is generated from hardcoded PHP properties
2. There is no injection point to deliver a malicious serialized payload
3. The `endpoints` array is never populated from external/user/database sources

## Conclusion

This finding should be **downgraded from Confirmed to Informational**. While the `unserialize()` call without `allowed_classes` restriction does represent a code smell and a defense-in-depth concern, it is not exploitable in its current form. The Jetpack team is already aware of this technical debt (as evidenced by the TODO comments in both files) and should migrate to JSON encoding when feasible.

**Final Severity: Informational (Not Exploitable)**
