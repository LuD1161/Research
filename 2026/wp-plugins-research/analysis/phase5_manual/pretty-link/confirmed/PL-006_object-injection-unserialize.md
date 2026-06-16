# PL-006: Object Injection via unserialize() on Plugin Options

## Severity: Low (CVSS 3.1)
## Vulnerability Class: PHP Object Injection
## Unauthenticated: No (requires DB write access)

## Location

- **File**: `app/models/PrliOptions.php`
- **Line**: 378
- **Flow ID**: `pretty-link-obje-001`

## Description

The `PrliOptions::get_options()` method calls `unserialize()` without an `allowed_classes` restriction when the stored option value is a string.

```php
public static function get_options() {
    $prli_options = get_option('prli_options');

    if($prli_options) {
      if(is_string($prli_options))
        $prli_options = unserialize($prli_options);  // Line 378 - VULNERABLE

      if(is_object($prli_options) and is_a($prli_options,'PrliOptions')) {
        $prli_options->set_default_options();
        $prli_options->store(); // store will convert this back into an array
      }
      // ...
    }
}
```

## Technical Analysis

### Why the code path exists
Modern WordPress's `get_option()` calls `maybe_unserialize()` automatically. For this `is_string()` check to pass with a serialized payload, the value must be:
1. Double-serialized (serialized string containing a serialized object), or
2. Stored in a non-standard way that bypasses WordPress's auto-unserialization

### What an attacker needs
- Direct write access to the `wp_options` table to set `prli_options` to a crafted serialized string
- This requires either admin access, a separate SQL injection, or DB credentials

### Exploitation
If triggered, `unserialize()` with no `allowed_classes` restriction will instantiate any PHP class currently autoloaded. An attacker would need:
1. A suitable POP chain in loaded classes (WordPress core, Pretty Link, or other active plugins)
2. The crafted payload stored in the option

### Real-world severity
This is a legacy code pattern. The plugin now stores options as arrays (see `store()` method which uses `(array)$this`), making the string path a backward-compatibility fallback. The risk is near-zero without a separate write primitive.

## Impact

- PHP Object Injection leading to potential Remote Code Execution if a POP chain exists
- Requires chaining with a separate vulnerability that provides wp_options write access

## Remediation

```php
// Fix: Add allowed_classes restriction
if(is_string($prli_options))
    $prli_options = unserialize($prli_options, ['allowed_classes' => ['PrliOptions']]);
```

Or better, replace with `json_decode()` if the storage format allows.
