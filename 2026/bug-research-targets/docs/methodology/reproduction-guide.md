# Reproducing Findings — Setup & Exploitation Guide

This guide covers two scenarios: **npm/Node.js packages** and **WordPress plugins**. Each finding page has a "Reproduction (validated)" section with exact commands, but this page explains the general workflow from scratch.

---

## Part 1: Setting Up a Lab

### npm / Node.js packages

Every npm lab lives under `targets/labs/npm-<package>/`. The structure is:

```
npm-simple-get/
├── Dockerfile          # Node 22 image with the pinned package version
├── poc/
│   └── poc.js          # The PoC script
└── results.txt         # Output from last run
```

**Option A: Run directly (fastest)**

```bash
# 1. Create a scratch directory
mkdir /tmp/lab-decompress && cd /tmp/lab-decompress

# 2. Install the exact vulnerable version
npm init -y
npm install decompress@4.2.1

# 3. Write and run the PoC
node poc.js
```

**Option B: Run via Docker (isolated, reproducible)**

```bash
cd targets/labs/npm-decompress
docker build -t lab-decompress .
docker run --rm -it lab-decompress node poc/poc.js
```

Most npm PoCs are self-contained Node.js scripts that:

- Import the vulnerable package
- Set up a minimal server (if testing HTTP-level behavior like `method-override` or `request-ip`)
- Send crafted input and print the result

No WordPress, no databases, no compose stacks. Just Node.

### WordPress plugins

Every WP lab lives under `targets/labs/wp-<plugin>/`. The structure is:

```
wp-essential-addons/
├── docker-compose.yml   # MariaDB + WordPress + wp-cli
├── plugin/              # Pinned plugin source (extracted from zip)
│   └── essential-addons-for-elementor-lite/
├── poc.sh               # Automated PoC script
├── up.sh / down.sh      # Stack lifecycle helpers
├── tmp/                 # Scratch files (cookies, payloads)
└── results.txt          # Output from last run
```

**Setup steps:**

```bash
cd targets/labs/wp-essential-addons

# 1. Start the stack (MariaDB + WordPress + plugin mounted read-only)
sudo docker compose up -d

# 2. Wait for WordPress to be ready
until curl -sf http://127.0.0.1:8101/ > /dev/null 2>&1; do sleep 2; done

# 3. Install WordPress core + activate the plugin via wp-cli
sudo docker compose run --rm wpcli wp core install \
  --url=http://127.0.0.1:8101 --title=Lab \
  --admin_user=admin --admin_password=admin \
  --admin_email=test@test.com --allow-root

sudo docker compose run --rm wpcli wp plugin activate \
  essential-addons-for-elementor-lite --allow-root

# 4. Run the PoC
./poc.sh

# 5. Tear down when done
sudo docker compose down -v --remove-orphans
```

Each WP lab runs on a unique port (8091-8101) so multiple can run side-by-side.

---

## Part 2: Reproducing the Vulnerability

### npm packages — what to actually do

| Package | What the PoC does |
|---------|-------------------|
| **decompress** | Extracts a crafted `.tar` archive with symlink entries pointing outside the output directory. Check if `/tmp/output/link -> /etc` was created. |
| **simple-get** | Starts a fake "internal metadata" server on `127.0.0.1:4444`, then calls `simple-get()` with that URL. If it returns data, SSRF confirmed. Also tests redirect-based SSRF via a 302 redirector. |
| **private-ip** | Calls `privateIp('::ffff:7f00:1')` and checks if it returns `false` (should be `true`). If false, it means SSRF filters using this lib can be bypassed with hex-form IPv6. |
| **method-override** | Starts an Express server with a DELETE-only route, sends `POST /resource?_method=DELETE`. If the DELETE handler fires, method spoofing works. |
| **multiparty** | Sends a multipart upload with `filename="../../etc/passwd"` in Content-Disposition. Checks if the raw unsanitized filename reaches the application. |
| **request-ip** | Starts a server using `request-ip` middleware, sends a request with `X-Forwarded-For: 1.2.3.4`. If `req.clientIp` reports `1.2.3.4` instead of the real peer IP, spoofing confirmed. |
| **saml2-js** | Creates an SP and an IdP with `sso_logout_url: 'https://attacker.example/phish'`, generates a logout URL. If the URL points to attacker.example, open redirect confirmed. |
| **xml-encryption** | Inspects the template files for unescaped `${keyInfo}` interpolation, and constructs an XPath query showing that `RetrievalMethod/@URI` values are interpolated verbatim without escaping. |
| **node-rsa** | Generates increasingly long malformed PEM strings and times `importKey()`. Exponential growth = ReDoS. (Modern V8 mitigates this.) |
| **ssrf-req-filter** | Sends `http.get('http://127.0.0.1/')` through the filter. Confirms it blocks. Structural bypasses (Unix socket, DNS rebinding) are documented but not trivially reproducible in a lab. |

### WordPress plugins — what to actually do

| Plugin | What the PoC does |
|--------|-------------------|
| **Essential Addons** | `curl -X POST .../admin-ajax.php -d 'action=eael_get_token'` with no cookies. If it returns a valid 10-char nonce, the nonce vending bypass is confirmed. |
| **Forminator** | Gets a nonce via `action=forminator_get_nonce`, then uploads a `.gif` containing `<?php phpinfo(); ?>` via `forminator_multiple_file_upload`. File lands on disk but Apache's `.htaccess` prevents PHP execution. |
| **NextGEN Gallery** | Creates a ZIP with `../../../../var/www/html/shell.php` entry, uploads via the gallery upload endpoint. On the PclZip code path, the file is written to the webroot. `curl /shell.php` confirms RCE. |
| **WP Go Maps** | `curl -X POST .../admin-ajax.php -d 'action=wpgmza_rest_api_request&route=/datatables&phpClass=WPGMZA\\AdminMapDataTable'` with no auth. Returns admin-only map/marker data. |
| **Shortcodes Ultimate** | Enable "Unsafe Features", create a post with `[su_button onclick="alert(1)"]`, visit it anonymously. The `onClick` attribute contains the raw JS. |
| **Kirki** | POST to `kirki_post_apis_nopriv` with a valid Editor-Preview-Token. The nopriv handler accepts the request (returns `null`/200 instead of `Not authorized`). |

---

## Part 3: Finding Where These Packages Are Used in the Wild

This is the harder question. You've confirmed a library is vulnerable, now you need to know: **who uses it, and can I reach the vulnerable code path from the outside?**

### Step 1: Find who depends on the package

```bash
# Check npm download stats and dependents
npm info decompress
npm info decompress dependents

# Search GitHub for package usage
# Go to github.com/search and search:
#   "require('decompress')" OR "from 'decompress'" language:JavaScript
#   "require('simple-get')" OR "from 'simple-get'" language:JavaScript
```

For WordPress plugins, check the WordPress.org plugin directory for active install counts (shown on each finding page).

### Step 2: Check if the vulnerable function is reachable

The key question: **does user-controlled input reach the vulnerable function?**

**For npm packages, trace the data flow:**

```
User input (HTTP request, file upload, API parameter)
  → Application code
    → Library function call (e.g., decompress(userFile, outputDir))
      → Vulnerable code path
```

Look for:

- **decompress**: Is the app extracting user-uploaded archives? Search for `decompress(` in the codebase.
- **simple-get**: Is the app fetching user-supplied URLs? Search for `simpleGet(userUrl)` or `get(req.body.url)`.
- **private-ip**: Is the app using this for SSRF protection? Search for `privateIp(` in request validation middleware.
- **method-override**: Is the app using this middleware before auth checks? Check the Express middleware order.
- **request-ip**: Is `req.clientIp` used for access control or rate limiting? Search for `getClientIp` or `clientIp`.

### Step 3: Map the entry points

For a web application, the vulnerable code is only exploitable if there's an HTTP endpoint that triggers it.

```bash
# Find Express/Koa/Fastify route definitions
grep -rn "app\.\(get\|post\|put\|delete\|use\)" src/ --include="*.js" --include="*.ts"

# Find the specific import of the vulnerable package
grep -rn "require('decompress')\|from 'decompress'" src/

# Trace from the import to the route handler
# If decompress is called in uploadHandler() and uploadHandler is mounted on POST /upload,
# then POST /upload is your entry point.
```

For WordPress plugins, the entry points are predictable:

| Entry Point | How to find it |
|-------------|---------------|
| AJAX handlers | `grep -rn 'wp_ajax_nopriv_' .` (unauthenticated) or `wp_ajax_` (authenticated) |
| REST API routes | `grep -rn 'register_rest_route' .` |
| Shortcodes | `grep -rn 'add_shortcode' .` |
| Admin pages | `grep -rn 'add_menu_page\|add_submenu_page' .` |
| File uploads | `grep -rn 'wp_handle_upload\|move_uploaded_file' .` |
| Unserialize calls | `grep -rn 'unserialize(' .` (object injection) |

### Step 4: When you can't find endpoints directly

Sometimes you're auditing a library, not an application. In that case:

1. **Document the vulnerable API surface.** Which exported functions are dangerous? What input triggers the bug? This is what our finding pages do.

2. **Search for real-world callers.** Use GitHub code search, npm dependents, or Snyk/Socket.dev advisories to find applications that call the vulnerable function with user input.

3. **Check transitive dependencies.** A package like `simple-get` is used by `got`, `electron`, and other popular libraries. The vulnerable code path might be 2-3 layers deep:
   ```
   Your app → got → simple-get → vulnerable redirect handler
   ```
   Use `npm ls simple-get` in a target project to see if it's in the dependency tree.

4. **Look at the package's own test suite.** Tests often show exactly how the API is called, which tells you what inputs reach the vulnerable code. If a test passes user-controlled data to the vulnerable function, real applications likely do too.

---

## Quick Reference: Lab Ports

| Port | Lab |
|------|-----|
| 8091 | wp-nextgen-gallery |
| 8092 | wp-forminator |
| 8094 | wp-wp-google-maps |
| 8095 | wp-kirki |
| 8096 | wp-shortcodes-ultimate |
| 8101 | wp-essential-addons |

npm labs use ephemeral ports (4444, 5555-5557) defined in each PoC script.
