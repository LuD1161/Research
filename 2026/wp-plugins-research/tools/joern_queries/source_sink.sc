// ============================================================================
// source_sink.sc — Joern CPG queries for source-to-sink taint flow detection
// WordPress Plugin Security Research
//
// Usage:
//   joern --script tools/joern_queries/source_sink.sc --params cpgPath=/path/to/cpg
//
// Each @main function is independently runnable. Results are printed as
// human-readable flow paths showing the chain from source to sink.
// ============================================================================

import io.joern.dataflowengineoss.language._
import io.joern.dataflowengineoss.queryengine.EngineContext
import io.joern.dataflowengineoss.DefaultSemantics._
import io.shiftleft.codepropertygraph.generated._
import io.shiftleft.semanticcpg.language._

// ----------------------------------------------------------------------------
// SQL INJECTION
// Sources: $_GET, $_POST, $_REQUEST, $_COOKIE
// Sinks:   $wpdb->query / get_var / get_row / get_results / get_col
// ----------------------------------------------------------------------------
@main def sqlInjectionFlows() = {
  // Superglobal identifiers used as taint sources
  val sources = cpg.identifier.name("_GET|_POST|_REQUEST|_COOKIE").l

  // $wpdb method calls that execute or return SQL query results.
  // We anchor on the object (argument 0 matching ".*wpdb.*") so that
  // arbitrary functions named "query" elsewhere are not matched.
  val sinks = cpg.call
    .name("query|get_var|get_row|get_row|get_col|get_results")
    .where(_.argument.order(0).code(".*wpdb.*"))
    .l

  println(s"[sqli] sources=${sources.size}  sinks=${sinks.size}")
  val flows = sinks.reachableByFlows(sources).l
  println(s"[sqli] flows found: ${flows.size}")
  flows.p
}

// ----------------------------------------------------------------------------
// CROSS-SITE SCRIPTING (XSS)
// Sources: superglobals + WordPress input helpers that remain tainted
// Sinks:   echo, print, printf, wp_die, wp_send_json*
//
// Note: esc_html / esc_attr / esc_url / wp_kses* are sanitizers —
// flows passing through them are filtered in taint_flows.sc.
// Here we report ALL flows so the analyst can verify sanitizer presence.
// ----------------------------------------------------------------------------
@main def xssFlows() = {
  val sources = cpg.identifier
    .name("_GET|_POST|_REQUEST|_COOKIE|_SERVER|_FILES")
    .l ++
    cpg.call
      .name("get_query_var|wp_unslash|rest_get_parameters|stripslashes_deep")
      .l ++
    cpg.call
      .name("get_param|get_params|get_json_params|get_body|get_body_params|get_url_params|get_query_params|get_file_params|get_header|get_headers")
      .l

  val sinks = cpg.call
    .name("echo|print|printf|vprintf|wp_die|wp_send_json|wp_send_json_success|wp_send_json_error")
    .l

  println(s"[xss] sources=${sources.size}  sinks=${sinks.size}")
  val flows = sinks.reachableByFlows(sources).l
  println(s"[xss] flows found: ${flows.size}")
  flows.p
}

// ----------------------------------------------------------------------------
// COMMAND INJECTION
// Sources: superglobals
// Sinks:   exec, system, passthru, shell_exec, popen, proc_open, pcntl_exec
//          and the backtick operator (represented as a call node in the CPG)
// ----------------------------------------------------------------------------
@main def commandInjectionFlows() = {
  val sources = cpg.identifier
    .name("_GET|_POST|_REQUEST|_COOKIE|_SERVER|_FILES|_ENV")
    .l

  val sinks = cpg.call
    .name("exec|system|passthru|shell_exec|popen|proc_open|pcntl_exec")
    .l

  println(s"[cmdi] sources=${sources.size}  sinks=${sinks.size}")
  val flows = sinks.reachableByFlows(sources).l
  println(s"[cmdi] flows found: ${flows.size}")
  flows.p
}

// ----------------------------------------------------------------------------
// FILE INCLUSION (LFI / RFI)
// Sources: superglobals
// Sinks:   include, include_once, require, require_once
//          + file_get_contents / fopen with tainted path
// ----------------------------------------------------------------------------
@main def fileInclusionFlows() = {
  val sources = cpg.identifier
    .name("_GET|_POST|_REQUEST|_COOKIE|_SERVER")
    .l

  // Joern models include/require as call nodes in PHP CPGs
  val sinks = cpg.call
    .name("include|include_once|require|require_once|file_get_contents|fopen|readfile|file")
    .l

  println(s"[lfi] sources=${sources.size}  sinks=${sinks.size}")
  val flows = sinks.reachableByFlows(sources).l
  println(s"[lfi] flows found: ${flows.size}")
  flows.p
}

// ----------------------------------------------------------------------------
// DESERIALIZATION / PHP OBJECT INJECTION
// Sources: superglobals + database reads (second-order)
// Sinks:   unserialize, maybe_unserialize
// ----------------------------------------------------------------------------
@main def deserializationFlows() = {
  val directSources = cpg.identifier
    .name("_GET|_POST|_REQUEST|_COOKIE")
    .l

  // Second-order: values previously stored in DB are also tainted
  val dbSources = cpg.call
    .name("get_option|get_user_meta|get_post_meta|get_term_meta|get_transient|get_site_transient|get_comment_meta")
    .l

  val sources = directSources ++ dbSources

  val sinks = cpg.call
    .name("unserialize|maybe_unserialize")
    .l

  println(s"[deser] sources=${sources.size}  sinks=${sinks.size}")
  val flows = sinks.reachableByFlows(sources).l
  println(s"[deser] flows found: ${flows.size}")
  flows.p
}

// ----------------------------------------------------------------------------
// SERVER-SIDE REQUEST FORGERY (SSRF)
// Sources: superglobals
// Sinks:   wp_remote_get/post/request, wp_safe_remote_*, curl_exec
//
// Note: wp_safe_remote_* validates the host allowlist, but URL bypass
// techniques (open redirects, DNS rebinding) still make it worth flagging.
// ----------------------------------------------------------------------------
@main def ssrfFlows() = {
  val sources = cpg.identifier
    .name("_GET|_POST|_REQUEST|_COOKIE|_SERVER")
    .l

  val sinks = cpg.call
    .name("wp_remote_get|wp_remote_post|wp_remote_request|wp_safe_remote_get|wp_safe_remote_post|wp_safe_remote_request|curl_exec|curl_multi_exec")
    .l

  println(s"[ssrf] sources=${sources.size}  sinks=${sinks.size}")
  val flows = sinks.reachableByFlows(sources).l
  println(s"[ssrf] flows found: ${flows.size}")
  flows.p
}

// ----------------------------------------------------------------------------
// OPEN REDIRECT
// Sources: superglobals (specifically URL-like params)
// Sinks:   wp_redirect, wp_safe_redirect, header()
// ----------------------------------------------------------------------------
@main def openRedirectFlows() = {
  val sources = cpg.identifier
    .name("_GET|_POST|_REQUEST|_SERVER")
    .l

  val sinks = cpg.call
    .name("wp_redirect|wp_safe_redirect|header")
    .l

  println(s"[redirect] sources=${sources.size}  sinks=${sinks.size}")
  val flows = sinks.reachableByFlows(sources).l
  println(s"[redirect] flows found: ${flows.size}")
  flows.p
}

// ----------------------------------------------------------------------------
// CONVENIENCE: run all queries and emit a combined summary
// ----------------------------------------------------------------------------
@main def allFlows() = {
  println("=== SQL Injection ===")
  sqlInjectionFlows()

  println("\n=== XSS ===")
  xssFlows()

  println("\n=== Command Injection ===")
  commandInjectionFlows()

  println("\n=== File Inclusion ===")
  fileInclusionFlows()

  println("\n=== Deserialization ===")
  deserializationFlows()

  println("\n=== SSRF ===")
  ssrfFlows()

  println("\n=== Open Redirect ===")
  openRedirectFlows()
}
