// ============================================================================
// attack_surface.sc — Attack surface discovery queries for WordPress plugins
// WordPress Plugin Security Research
//
// Discovers all externally reachable entry points and flags missing guards:
//   1. Unauthenticated AJAX endpoints (wp_ajax_nopriv_*)
//   2. REST endpoints registered with __return_true permission callback
//   3. Entry points without nonce verification
//   4. Entry points without capability checks
//   5. Dynamic class instantiation (new $var())
//   6. Variable variables ($$var)
//   7. extract() usage
//   8. eval / assert / create_function usage
//
// Usage:
//   joern --script tools/joern_queries/attack_surface.sc --params cpgPath=/path/to/cpg
// ============================================================================

import io.joern.dataflowengineoss.language._
import io.joern.dataflowengineoss.DefaultSemantics._
import io.shiftleft.codepropertygraph.generated._
import io.shiftleft.semanticcpg.language._

// ============================================================================
// 1. UNAUTHENTICATED AJAX ENTRY POINTS
//
// add_action('wp_ajax_nopriv_<hook>', <callback>) registers an AJAX handler
// accessible to unauthenticated users. These are the most dangerous entry
// points because no login is required.
// ============================================================================

@main def unauthenticatedAjaxEndpoints() = {
  // All add_action() calls whose first argument starts with 'wp_ajax_nopriv_'
  val noPrivHooks = cpg.call.name("add_action")
    .where(_.argument.order(1).code(".*wp_ajax_nopriv_.*"))
    .l

  println(s"[attack-surface] Unauthenticated AJAX endpoints (wp_ajax_nopriv_): ${noPrivHooks.size}")
  noPrivHooks.foreach { c =>
    val hookName = c.argument.order(1).code.headOption.getOrElse("?")
    val callback = c.argument.order(2).code.headOption.getOrElse("?")
    val loc = s"${c.location.filename}:${c.location.lineNumber.getOrElse("?")}"
    println(s"  $loc  hook=$hookName  callback=$callback")
  }

  // Also surface the callback function bodies so the analyst can inspect them
  println("\n[attack-surface] Resolving callback functions:")
  noPrivHooks.foreach { c =>
    val callbackName = c.argument.order(2).code.headOption.getOrElse("").replace("'", "").replace("\"", "")
    val callbackMethods = cpg.method.name(callbackName).l
    callbackMethods.foreach { m =>
      println(s"  ${m.location.filename}:${m.location.lineNumber.getOrElse("?")}  function ${m.name}()")
    }
  }
}

// ============================================================================
// 2. REST ENDPOINTS WITH __return_true PERMISSION CALLBACK
//
// register_rest_route() with 'permission_callback' => '__return_true' means
// ANY user (including unauthenticated) can call the endpoint. This is
// intentional for public data but dangerous if the handler modifies data.
// ============================================================================

@main def publicRestEndpoints() = {
  // Look for register_rest_route calls where permission_callback is '__return_true'
  val restRoutes = cpg.call.name("register_rest_route").l

  println(s"[attack-surface] Total register_rest_route() calls: ${restRoutes.size}")

  val publicRoutes = restRoutes
    .where(_.argument.code(".*__return_true.*"))
    .l

  println(s"[attack-surface] REST routes with __return_true (public): ${publicRoutes.size}")
  publicRoutes.foreach { c =>
    val namespace = c.argument.order(1).code.headOption.getOrElse("?")
    val route = c.argument.order(2).code.headOption.getOrElse("?")
    val loc = s"${c.location.filename}:${c.location.lineNumber.getOrElse("?")}"
    println(s"  $loc  namespace=$namespace  route=$route")
  }

  // Also flag routes with no permission_callback at all (defaults to WP_Error in WP 5.5+,
  // but older code may have forgotten it entirely)
  val routesWithoutPermCb = restRoutes
    .whereNot(_.argument.code(".*permission_callback.*"))
    .l

  println(s"\n[attack-surface] REST routes with NO permission_callback: ${routesWithoutPermCb.size}")
  routesWithoutPermCb.foreach { c =>
    val loc = s"${c.location.filename}:${c.location.lineNumber.getOrElse("?")}"
    println(s"  $loc  ${c.code.take(120)}")
  }
}

// ============================================================================
// 3. AJAX/REST HANDLERS WITHOUT NONCE VERIFICATION
//
// Any AJAX handler should call check_ajax_referer() or wp_verify_nonce().
// Handlers that skip nonce verification are vulnerable to CSRF.
// ============================================================================

@main def handlersWithoutNonce() = {
  // Collect all callback function names registered via wp_ajax_* (both priv and nopriv)
  val ajaxCallbacks = cpg.call.name("add_action")
    .where(_.argument.order(1).code(".*wp_ajax_.*"))
    .flatMap(c => c.argument.order(2).code.headOption)
    .map(_.replace("'", "").replace("\"", ""))
    .toSet

  val nonceFunctions = Set("wp_verify_nonce", "check_ajax_referer", "check_admin_referer")

  println(s"[attack-surface] AJAX callbacks registered: ${ajaxCallbacks.size}")

  val callbacksWithoutNonce = ajaxCallbacks.filter { cbName =>
    val methodOpt = cpg.method.name(cbName).l.headOption
    methodOpt match {
      case None => true  // cannot find method — flag as unknown
      case Some(m) =>
        val callsNonce = m.call.name(nonceFunctions.mkString("|")).nonEmpty
        !callsNonce
    }
  }

  println(s"[attack-surface] AJAX callbacks WITHOUT nonce check: ${callbacksWithoutNonce.size}")
  callbacksWithoutNonce.foreach { name =>
    val loc = cpg.method.name(name).location.headOption
      .map(l => s"${l.filename}:${l.lineNumber.getOrElse("?")}").getOrElse("not found")
    println(s"  $name  ($loc)")
  }
}

// ============================================================================
// 4. HANDLERS WITHOUT CAPABILITY CHECKS
//
// Admin-only AJAX handlers (wp_ajax_, not wp_ajax_nopriv_) should verify
// the user has the appropriate capability via current_user_can().
// Missing capability checks allow privilege escalation.
// ============================================================================

@main def handlersWithoutCapabilityCheck() = {
  // Authenticated AJAX callbacks only (wp_ajax_ without nopriv)
  val authAjaxCallbacks = cpg.call.name("add_action")
    .where(c =>
      c.argument.order(1).code(".*wp_ajax_.*").nonEmpty &&
      c.argument.order(1).whereNot(_.code(".*wp_ajax_nopriv_.*")).nonEmpty
    )
    .flatMap(c => c.argument.order(2).code.headOption)
    .map(_.replace("'", "").replace("\"", ""))
    .toSet

  val capFunctions = Set("current_user_can", "is_super_admin")

  println(s"[attack-surface] Authenticated AJAX callbacks: ${authAjaxCallbacks.size}")

  val callbacksWithoutCap = authAjaxCallbacks.filter { cbName =>
    val methodOpt = cpg.method.name(cbName).l.headOption
    methodOpt match {
      case None => true
      case Some(m) =>
        val checksCap = m.call.name(capFunctions.mkString("|")).nonEmpty
        !checksCap
    }
  }

  println(s"[attack-surface] Authenticated callbacks WITHOUT capability check: ${callbacksWithoutCap.size}")
  callbacksWithoutCap.foreach { name =>
    val loc = cpg.method.name(name).location.headOption
      .map(l => s"${l.filename}:${l.lineNumber.getOrElse("?")}").getOrElse("not found")
    println(s"  $name  ($loc)")
  }
}

// ============================================================================
// 5. DYNAMIC CLASS INSTANTIATION  (new $var())
//
// If $var is user-controlled, an attacker can instantiate any class in scope,
// potentially triggering dangerous constructors or enabling gadget chains.
// ============================================================================

@main def dynamicClassInstantiation() = {
  // In Joern's PHP CPG, `new $var()` is a Call node with name "<operator>.alloc"
  // and the class name as a non-literal argument, OR modeled as a specific
  // dynamic instantiation pattern. We look for alloc nodes whose class
  // argument is an identifier (not a string literal).
  val dynamicAllocs = cpg.call
    .name("<operator>.alloc|<operator>.instanceOf")
    .where(_.argument.order(1).isIdentifier)
    .l

  println(s"[attack-surface] Dynamic class instantiation (new \$var()): ${dynamicAllocs.size}")
  dynamicAllocs.foreach { c =>
    val className = c.argument.order(1).code.headOption.getOrElse("?")
    val loc = s"${c.location.filename}:${c.location.lineNumber.getOrElse("?")}"
    println(s"  $loc  new $className()")
  }

  // Narrow to cases where the class variable is reachable from user input
  val sources = cpg.identifier.name("_GET|_POST|_REQUEST|_COOKIE").l
  val userControlledAllocs = dynamicAllocs
    .where(_.argument.order(1).reachableBy(sources))
    .l

  println(s"\n[attack-surface] Dynamic class instantiation with user-controlled class name: ${userControlledAllocs.size}")
  userControlledAllocs.foreach { c =>
    val loc = s"${c.location.filename}:${c.location.lineNumber.getOrElse("?")}"
    println(s"  *** HIGH RISK ***  $loc  ${c.code}")
  }
}

// ============================================================================
// 6. VARIABLE VARIABLES  ($$var)
//
// `$$key = $value` creates a variable whose name is the value of $key.
// If $key is user-controlled, this can overwrite arbitrary local variables.
// ============================================================================

@main def variableVariables() = {
  // Variable variables appear as identifiers whose name matches the pattern
  // of a dereference operator applied to another identifier. In Joern PHP CPGs
  // they may also appear as <operator>.variableVariables nodes.
  val varVarOps = cpg.call
    .name("<operator>.variableVariables|<operator>.indirectFieldAccess")
    .l

  // Fallback: identifiers with code matching $$identifier pattern
  val varVarIdentifiers = cpg.identifier
    .code("\\$\\$.*")
    .l

  val all = (varVarOps.map(_.location) ++ varVarIdentifiers.map(_.location)).distinct

  println(s"[attack-surface] Variable variable usages (\$\$var): ${all.size}")
  all.foreach { loc =>
    println(s"  ${loc.filename}:${loc.lineNumber.getOrElse("?")}")
  }

  // Flag those where the inner variable is user-controlled
  val sources = cpg.identifier.name("_GET|_POST|_REQUEST|_COOKIE").l
  val userControlledVarVars = varVarOps
    .where(_.argument.reachableBy(sources))
    .l

  println(s"\n[attack-surface] Variable variables with user-controlled name: ${userControlledVarVars.size}")
  userControlledVarVars.foreach { c =>
    val loc = s"${c.location.filename}:${c.location.lineNumber.getOrElse("?")}"
    println(s"  *** HIGH RISK ***  $loc  ${c.code}")
  }
}

// ============================================================================
// 7. extract() USAGE
//
// extract() imports array keys as local variable names. If the array
// contains user input, an attacker can overwrite any local variable,
// including $wpdb, nonce values, or capability check results.
// ============================================================================

@main def extractUsage() = {
  val extractCalls = cpg.call.name("extract").l

  println(s"[attack-surface] extract() calls: ${extractCalls.size}")
  extractCalls.foreach { c =>
    val loc = s"${c.location.filename}:${c.location.lineNumber.getOrElse("?")}"
    println(s"  $loc  ${c.code}")
  }

  // Flag cases where the argument to extract() is user-influenced
  val sources = cpg.identifier.name("_GET|_POST|_REQUEST|_COOKIE").l
  val dangerousExtract = extractCalls
    .where(_.argument.reachableBy(sources))
    .l

  println(s"\n[attack-surface] extract() with user-controlled array: ${dangerousExtract.size}")
  dangerousExtract.foreach { c =>
    val loc = s"${c.location.filename}:${c.location.lineNumber.getOrElse("?")}"
    println(s"  *** CRITICAL ***  $loc  ${c.code}")
  }
}

// ============================================================================
// 8. DANGEROUS FUNCTION USAGE: eval / assert / create_function
//
// These functions execute strings as PHP code. Any path from user input
// to these functions is a critical Remote Code Execution vulnerability.
// ============================================================================

@main def dangerousEvalUsage() = {
  val evalFunctions = cpg.call
    .name("eval|assert|create_function")
    .l

  println(s"[attack-surface] eval/assert/create_function calls: ${evalFunctions.size}")
  evalFunctions.foreach { c =>
    val loc = s"${c.location.filename}:${c.location.lineNumber.getOrElse("?")}"
    println(s"  $loc  ${c.name}()")
  }

  // All eval/assert/create_function calls are suspicious regardless of taint;
  // additionally flag those reachable from user input
  val sources = cpg.identifier.name("_GET|_POST|_REQUEST|_COOKIE").l
  val taintedEvals = evalFunctions
    .where(_.argument.reachableBy(sources))
    .l

  println(s"\n[attack-surface] eval/assert/create_function with user-controlled argument: ${taintedEvals.size}")
  taintedEvals.foreach { c =>
    val loc = s"${c.location.filename}:${c.location.lineNumber.getOrElse("?")}"
    println(s"  *** CRITICAL RCE ***  $loc  ${c.code}")
  }
}

// ============================================================================
// COMPREHENSIVE SUMMARY REPORT
// ============================================================================

@main def attackSurfaceSummary() = {
  println("=" * 70)
  println("ATTACK SURFACE DISCOVERY REPORT")
  println("=" * 70)

  println("\n--- 1. Unauthenticated AJAX Endpoints ---")
  unauthenticatedAjaxEndpoints()

  println("\n--- 2. Public REST Endpoints (__return_true) ---")
  publicRestEndpoints()

  println("\n--- 3. AJAX Handlers Without Nonce ---")
  handlersWithoutNonce()

  println("\n--- 4. Authenticated Handlers Without Capability Check ---")
  handlersWithoutCapabilityCheck()

  println("\n--- 5. Dynamic Class Instantiation ---")
  dynamicClassInstantiation()

  println("\n--- 6. Variable Variables ---")
  variableVariables()

  println("\n--- 7. extract() Usage ---")
  extractUsage()

  println("\n--- 8. eval / assert / create_function ---")
  dangerousEvalUsage()

  println("\n" + "=" * 70)
  println("END OF ATTACK SURFACE REPORT")
  println("=" * 70)
}
