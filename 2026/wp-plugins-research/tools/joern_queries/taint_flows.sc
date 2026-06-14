// ============================================================================
// taint_flows.sc — Advanced taint flow queries for WordPress plugin analysis
// WordPress Plugin Security Research
//
// Covers:
//   1. Cross-function taint tracking (interprocedural)
//   2. Flows through WordPress hooks (apply_filters / do_action)
//   3. Object property taint tracking ($obj->prop)
//   4. Return value propagation from tainted callee
//   5. Flows that bypass partial sanitization (wrong-context sanitizer)
//
// Usage:
//   joern --script tools/joern_queries/taint_flows.sc --params cpgPath=/path/to/cpg
// ============================================================================

import io.joern.dataflowengineoss.language._
import io.joern.dataflowengineoss.queryengine.EngineContext
import io.joern.dataflowengineoss.DefaultSemantics._
import io.shiftleft.codepropertygraph.generated._
import io.shiftleft.semanticcpg.language._

// ============================================================================
// 1. CROSS-FUNCTION TAINT TRACKING
//    Joern's interprocedural engine follows call edges automatically, but
//    these helpers make specific cross-function patterns explicit and
//    printable for report generation.
// ============================================================================

/**
 * Find all public/global functions that accept user input (through a parameter
 * that eventually gets assigned from a superglobal in a caller) and route it
 * to a SQL or output sink.
 *
 * This catches the classic WordPress pattern:
 *   function handle_request() {
 *     $val = sanitize_text_field($_GET['foo']);  // tainted (sanitize_text_field is NOT an SQL sanitizer)
 *     do_db_insert($val);
 *   }
 *   function do_db_insert($val) {
 *     $wpdb->query("INSERT INTO t VALUES ('$val')");  // SQLI
 *   }
 */
@main def crossFunctionSqlFlows() = {
  val sources = cpg.identifier.name("_GET|_POST|_REQUEST|_COOKIE").l

  val sqlSinks = cpg.call
    .name("query|get_var|get_row|get_col|get_results")
    .where(_.argument.order(0).code(".*wpdb.*"))
    .l

  println(s"[cross-fn sqli] Tracing ${sources.size} sources → ${sqlSinks.size} sinks (interprocedural)")
  val flows = sqlSinks.reachableByFlows(sources).l
  println(s"[cross-fn sqli] flows: ${flows.size}")
  flows.p
}

/**
 * Cross-function XSS: user input flows through helper functions before
 * being echoed by the caller or callee.
 */
@main def crossFunctionXssFlows() = {
  val sources = cpg.identifier.name("_GET|_POST|_REQUEST|_COOKIE|_SERVER|_FILES").l

  val outputSinks = cpg.call
    .name("echo|print|printf|vprintf|wp_die|wp_send_json|wp_send_json_success|wp_send_json_error")
    .l

  println(s"[cross-fn xss] Tracing ${sources.size} sources → ${outputSinks.size} sinks (interprocedural)")
  val flows = outputSinks.reachableByFlows(sources).l
  println(s"[cross-fn xss] flows: ${flows.size}")
  flows.p
}

// ============================================================================
// 2. FLOWS THROUGH WORDPRESS HOOKS (apply_filters / do_action)
//
// The WordPress hook system passes values through arbitrary callbacks at
// runtime. From a static analysis perspective, the value returned by
// apply_filters() is semantically equivalent to the value passed in — but
// any registered callback may modify or fail to sanitize it.
//
// Strategy: treat the RETURN VALUE of apply_filters() as a new taint source
// when its first argument (the hook name) is a known data-bearing hook, or
// when the second argument is already tainted.
// ============================================================================

/**
 * Find tainted values that are passed into apply_filters() and then the
 * return value of apply_filters() flows into a sink.
 *
 * This models the two-step risk:
 *   $val = apply_filters('my_hook', $_GET['x']);  // tainted input enters hook
 *   echo $val;                                     // returned (possibly modified) value echoed
 */
@main def hookTaintFlows() = {
  // Sources: superglobals
  val userSources = cpg.identifier.name("_GET|_POST|_REQUEST|_COOKIE").l

  // apply_filters call nodes where the DATA argument (order 1) is tainted
  val filterCalls = cpg.call.name("apply_filters").l

  // The return value of apply_filters() is itself a source of tainted data
  // when its input was tainted. Model this by treating apply_filters call
  // nodes as intermediate nodes in the flow.
  val filterReturnSources = filterCalls
    .where(_.argument.order(1).reachableBy(userSources))
    .l

  // All output/SQL sinks
  val sinks = cpg.call
    .name("echo|print|printf|query|get_var|get_row|get_results|wp_send_json|wp_send_json_success|wp_send_json_error")
    .l

  println(s"[hooks] apply_filters calls with tainted input: ${filterReturnSources.size}")

  // Flow from the original superglobal through apply_filters into a sink
  println("[hooks] Direct flows: superglobal → apply_filters argument → sink")
  val directFlows = sinks.reachableByFlows(userSources).l
    .filter(f => f.elements.exists(e => filterCalls.map(_.id).contains(e.id)))
  println(s"[hooks] flows passing through apply_filters: ${directFlows.size}")
  directFlows.p
}

/**
 * do_action hook usage where a tainted value is passed as a hook argument.
 * This does not have a return value but signals that tainted data is broadcast
 * into the hook system where side-effects may occur.
 */
@main def doActionTaintBroadcast() = {
  val sources = cpg.identifier.name("_GET|_POST|_REQUEST|_COOKIE").l

  val doActionCalls = cpg.call.name("do_action").l

  // do_action calls where any argument beyond the hook name is tainted
  val taintedActions = doActionCalls
    .where(c => c.argument.order(2).reachableBy(sources) ||
                c.argument.order(3).reachableBy(sources))
    .l

  println(s"[do_action] Calls with tainted arguments: ${taintedActions.size}")
  taintedActions.foreach { c =>
    println(s"  ${c.location.filename}:${c.location.lineNumber.getOrElse("?")}  ${c.code}")
  }
}

// ============================================================================
// 3. OBJECT PROPERTY TAINT TRACKING
//
// When user input is stored in an object property ($this->data = $_GET['x'])
// and later accessed ($this->data used in a sink), standard identifier-level
// taint may miss the intermediate storage.
// ============================================================================

/**
 * Find assignments of user input to object properties ($this->prop = $_GET[...])
 * then track those properties into sinks.
 */
@main def objectPropertyTaintFlows() = {
  val sources = cpg.identifier.name("_GET|_POST|_REQUEST|_COOKIE").l

  // Assignments: $this->something = <tainted>
  val propAssignments = cpg.assignment
    .where(_.target.isFieldIdentifier)
    .where(_.source.reachableBy(sources))
    .l

  println(s"[obj-prop] Object property assignments from user input: ${propAssignments.size}")
  propAssignments.foreach { a =>
    println(s"  ${a.location.filename}:${a.location.lineNumber.getOrElse("?")}  ${a.code}")
  }

  // Now find sinks reachable from those field identifiers when read back
  val fieldReadSources = cpg.fieldAccess
    .where(_.reachableBy(sources))
    .l

  val sinks = cpg.call
    .name("echo|print|printf|query|get_var|get_row|get_results|wp_send_json|wp_send_json_success|unserialize")
    .l

  println(s"\n[obj-prop] Flows from tainted field accesses to sinks:")
  val flows = sinks.reachableByFlows(fieldReadSources).l
  println(s"[obj-prop] flows: ${flows.size}")
  flows.p
}

// ============================================================================
// 4. RETURN VALUE PROPAGATION
//
// A function that internally reads user input and returns it propagates
// taint through its return value. Callers that use the return value in a
// sink are vulnerable even if the original $_GET is not visible at the call site.
// ============================================================================

/**
 * Find functions whose return value is tainted (because they read from
 * superglobals internally) and whose callers pass the return value to a sink.
 */
@main def returnValuePropagationFlows() = {
  val sources = cpg.identifier.name("_GET|_POST|_REQUEST|_COOKIE").l

  // All sinks we care about
  val sinks = cpg.call
    .name("echo|print|printf|query|get_var|get_row|get_results|wp_send_json|wp_send_json_success|wp_send_json_error|unserialize|exec|system|shell_exec|passthru|include|require")
    .l

  // The interprocedural engine already handles return value propagation —
  // explicitly calling reachableByFlows with sources will traverse into
  // callees and back. Print flows that cross at least one function boundary.
  println(s"[retval] Full interprocedural flow (includes return value propagation):")
  val flows = sinks.reachableByFlows(sources).l
  val crossFnFlows = flows.filter { flow =>
    val methods = flow.elements.map(_.method).distinct
    methods.size > 1
  }
  println(s"[retval] Flows crossing function boundaries: ${crossFnFlows.size} / ${flows.size} total")
  crossFnFlows.p
}

// ============================================================================
// 5. FLOWS BYPASSING PARTIAL SANITIZATION (WRONG-CONTEXT SANITIZERS)
//
// A common false-negative pattern: a sanitizer is applied but it is the
// WRONG sanitizer for the target sink context. For example:
//   $val = sanitize_text_field($_GET['x']);  // safe for text storage, NOT for SQL
//   $wpdb->query("SELECT * WHERE col='$val'");  // still SQLI
//
// Strategy: define the set of SQL-safe sanitizers and identify flows where
// a non-SQL sanitizer was applied before a SQL sink.
// ============================================================================

/**
 * SQL flows where a text/HTML sanitizer (not a SQL sanitizer) is the last
 * sanitizer applied before the sink. These are high-confidence SQLI findings
 * because the developer incorrectly believed they sanitized for SQL.
 */
@main def wrongContextSanitizerFlows() = {
  val sources = cpg.identifier.name("_GET|_POST|_REQUEST|_COOKIE").l

  // SQL-SAFE sanitizers: $wpdb->prepare, absint, intval, (int) casts
  // These are modeled as call nodes with these names
  val sqlSafeSanitizers = cpg.call
    .name("prepare|absint|intval")
    .l

  // Non-SQL sanitizers that developers often misuse before SQL sinks
  val nonSqlSanitizers = cpg.call
    .name("sanitize_text_field|sanitize_email|sanitize_title|sanitize_file_name|wp_unslash|esc_html|esc_attr|strip_tags|htmlspecialchars|stripslashes")
    .l

  val sqlSinks = cpg.call
    .name("query|get_var|get_row|get_col|get_results")
    .where(_.argument.order(0).code(".*wpdb.*"))
    .l

  println(s"[wrong-sanitizer] All flows from user input to SQL sinks:")
  val allFlows = sqlSinks.reachableByFlows(sources).l
  println(s"[wrong-sanitizer] Total SQL flows: ${allFlows.size}")

  // Filter: flows that pass through a non-SQL sanitizer but NOT through a SQL-safe sanitizer
  val suspiciousFlows = allFlows.filter { flow =>
    val nodeIds = flow.elements.map(_.id).toSet
    val passesNonSql = nonSqlSanitizers.exists(s => nodeIds.contains(s.id))
    val passesSqlSafe = sqlSafeSanitizers.exists(s => nodeIds.contains(s.id))
    passesNonSql && !passesSqlSafe
  }

  println(s"[wrong-sanitizer] Flows with wrong-context sanitizer (high-confidence SQLI): ${suspiciousFlows.size}")
  suspiciousFlows.foreach(_.p)
}

/**
 * XSS flows where an SQL sanitizer (prepare/absint/intval) is applied
 * but the value still flows to an HTML output sink without HTML escaping.
 * The developer sanitized for SQL but forgot to escape for HTML context.
 */
@main def sqlSanitizerBeforeXssSink() = {
  val sources = cpg.identifier.name("_GET|_POST|_REQUEST|_COOKIE").l

  val sqlSanitizers = cpg.call.name("prepare|absint|intval").l

  val htmlEscapeSanitizers = cpg.call
    .name("esc_html|esc_attr|esc_url|wp_kses|wp_kses_post|wp_kses_data|htmlspecialchars|htmlentities")
    .l

  val outputSinks = cpg.call
    .name("echo|print|printf|vprintf|wp_die|wp_send_json|wp_send_json_success|wp_send_json_error")
    .l

  val allXssFlows = outputSinks.reachableByFlows(sources).l

  val suspiciousFlows = allXssFlows.filter { flow =>
    val nodeIds = flow.elements.map(_.id).toSet
    val passesSqlSanitizer = sqlSanitizers.exists(s => nodeIds.contains(s.id))
    val passesHtmlEscape = htmlEscapeSanitizers.exists(s => nodeIds.contains(s.id))
    passesSqlSanitizer && !passesHtmlEscape
  }

  println(s"[xss-after-sql-sanitizer] Flows sanitized for SQL but not HTML (XSS risk): ${suspiciousFlows.size}")
  suspiciousFlows.foreach(_.p)
}

// ============================================================================
// CONVENIENCE: run all advanced taint queries
// ============================================================================
@main def allAdvancedFlows() = {
  println("=== Cross-Function SQL Flows ===")
  crossFunctionSqlFlows()

  println("\n=== Cross-Function XSS Flows ===")
  crossFunctionXssFlows()

  println("\n=== Hook Taint Flows (apply_filters) ===")
  hookTaintFlows()

  println("\n=== do_action Taint Broadcast ===")
  doActionTaintBroadcast()

  println("\n=== Object Property Taint Flows ===")
  objectPropertyTaintFlows()

  println("\n=== Return Value Propagation Flows ===")
  returnValuePropagationFlows()

  println("\n=== Wrong-Context Sanitizer SQL Flows ===")
  wrongContextSanitizerFlows()

  println("\n=== SQL Sanitizer Before XSS Sink ===")
  sqlSanitizerBeforeXssSink()
}
