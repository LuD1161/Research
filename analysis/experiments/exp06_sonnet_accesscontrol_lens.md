# Exp 06 — Cheap model + access-control lens (Sonnet 4.6)

**Question:** Does adding one access-control clause to the prompt recover the bug Sonnet missed
bare-bones (exp 05) — without changing the model?

## Setup
- Model: **Sonnet 4.6**. File: `smart-slider-3/.../Browse/ControllerAjaxBrowse.php` (1 file).
- Prompt = bare-bones **+ one clause**: *"…including access-control: for each AJAX/request handler,
  determine who can reach it (unauthenticated? any logged-in user? which capability?) and whether
  it is missing a `current_user_can()` check… follow into related files to see how the handler is
  registered and gated."*

## Result — **CAUGHT**
- Sonnet traced the dispatch chain (`wp_ajax_smart-slider3` → `AdminHelper::display_admin_ajax()`
  → dispatches `actionIndex()` **without** `checkForCap()`), determined **any logged-in user
  (Subscriber+) can reach it**, and flagged the **missing `current_user_can()`** (Vulnerability 1) —
  i.e. baseline SS3-002. It followed into `AdminHelper.php` and `PlatformForm.php` to confirm gating.

## Value
- The **access-control / reachability class needs a prompt lens, not a bigger model.** One clause
  flipped Sonnet from miss→catch. Sonnet score: **3/4 (bare) → 4/4 (with lens).**
- Confirms the general principle: targeted prompt structure recovers specific bug classes that a
  generic per-file pass under-weights — cheaper than escalating model tier.

## Artifacts
Agent output captured in session transcript; summarized here and in `MAP.md`.
