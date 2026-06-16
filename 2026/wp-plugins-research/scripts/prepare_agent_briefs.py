#!/usr/bin/env python3
"""
prepare_agent_briefs.py

Merges all analysis data for each plugin into a single agent briefing JSON.

Output: analysis/agent_briefs/{slug}_brief.json for each plugin

Priority score = taint_critical*10 + taint_high*5 + semgrep_error*3 + taint_total + semgrep_warning
"""

import json
import os
import sys
from pathlib import Path

# ---------------------------------------------------------------------------
# Paths
# ---------------------------------------------------------------------------

REPO_ROOT = Path(__file__).resolve().parent.parent

PHASE1_DIR = REPO_ROOT / "analysis" / "phase1_surface"
PHASE2_DIR = REPO_ROOT / "analysis" / "phase2_sources_sinks"
PHASE3_DIR = REPO_ROOT / "analysis" / "phase3_taint_flows"
PHASE4_FILE = REPO_ROOT / "analysis" / "phase4_semgrep" / "results.json"
EXTRACTION_MANIFEST = REPO_ROOT / "plugins" / "extraction_manifest.json"
OUTPUT_DIR = REPO_ROOT / "analysis" / "agent_briefs"

ATTACK_SURFACE_TRUNCATE = 3000


# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

def load_json(path: Path):
    """Load a JSON file, returning None on error."""
    try:
        with open(path, "r", encoding="utf-8") as f:
            return json.load(f)
    except (FileNotFoundError, json.JSONDecodeError) as exc:
        print(f"  [WARN] Could not load {path}: {exc}", file=sys.stderr)
        return None


def read_text(path: Path, max_chars: int = 0) -> str:
    """Read a text file, optionally truncating."""
    try:
        text = path.read_text(encoding="utf-8", errors="replace")
        if max_chars and len(text) > max_chars:
            text = text[:max_chars]
        return text
    except FileNotFoundError:
        return ""


def collect_slugs() -> list[str]:
    """Derive the canonical plugin slug list from phase3 taint-flow files."""
    slugs = []
    for p in sorted(PHASE3_DIR.glob("*_taint_flows.json")):
        if p.stem == "all_flows":
            continue
        slug = p.stem.replace("_taint_flows", "")
        slugs.append(slug)
    return slugs


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main():
    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

    # --- Load shared data ---------------------------------------------------
    extraction_manifest: dict = load_json(EXTRACTION_MANIFEST) or {}

    semgrep_raw = load_json(PHASE4_FILE) or {}
    all_semgrep_results: list[dict] = semgrep_raw.get("results", [])

    # Index semgrep results by slug for fast lookup
    semgrep_by_slug: dict[str, list[dict]] = {}
    for item in all_semgrep_results:
        path_str: str = item.get("path", "")
        # path format: plugins/src/{slug}/...
        parts = path_str.split("/")
        if len(parts) >= 3 and parts[0] == "plugins" and parts[1] == "src":
            slug = parts[2]
            semgrep_by_slug.setdefault(slug, []).append(item)

    # --- Collect slugs ------------------------------------------------------
    slugs = collect_slugs()
    if not slugs:
        print("ERROR: No taint-flow files found in", PHASE3_DIR, file=sys.stderr)
        sys.exit(1)

    print(f"Processing {len(slugs)} plugins …\n")

    priority_table: list[tuple[int, str]] = []

    for slug in slugs:
        # --- Phase 1: attack surface markdown -------------------------------
        surface_path = PHASE1_DIR / f"{slug}_surface.md"
        attack_surface_summary = read_text(surface_path, max_chars=ATTACK_SURFACE_TRUNCATE)

        # --- Phase 2: source-sink summary -----------------------------------
        phase2_path = PHASE2_DIR / f"{slug}.json"
        phase2_data = load_json(phase2_path) or {}
        source_sink_summary: dict = phase2_data.get("summary", {})

        # --- Phase 3: taint flows -------------------------------------------
        phase3_path = PHASE3_DIR / f"{slug}_taint_flows.json"
        phase3_data = load_json(phase3_path) or {}
        taint_flows: list[dict] = phase3_data.get("flows", [])

        # Taint stats
        severity_counts: dict = phase3_data.get("by_severity", {})
        taint_critical = severity_counts.get("critical", 0)
        taint_high = severity_counts.get("high", 0)
        taint_total = len(taint_flows)

        # If by_severity is missing, compute from flows
        if not severity_counts and taint_flows:
            for flow in taint_flows:
                sev = flow.get("severity", "").lower()
                if sev == "critical":
                    taint_critical += 1
                elif sev == "high":
                    taint_high += 1

        # --- Phase 4: semgrep findings for this plugin ----------------------
        semgrep_findings: list[dict] = semgrep_by_slug.get(slug, [])

        semgrep_error = sum(
            1 for r in semgrep_findings
            if r.get("extra", {}).get("severity", "").upper() == "ERROR"
        )
        semgrep_warning = sum(
            1 for r in semgrep_findings
            if r.get("extra", {}).get("severity", "").upper() == "WARNING"
        )

        # --- Metadata -------------------------------------------------------
        plugin_meta = extraction_manifest.get(slug, {})
        metadata = {
            "php_files": plugin_meta.get("php_files", 0),
            "total_lines": plugin_meta.get("total_lines", 0),
        }

        # --- Priority score -------------------------------------------------
        priority_score = (
            taint_critical * 10
            + taint_high * 5
            + semgrep_error * 3
            + taint_total
            + semgrep_warning
        )

        # --- Stats ----------------------------------------------------------
        stats = {
            "taint_critical": taint_critical,
            "taint_high": taint_high,
            "taint_total": taint_total,
            "semgrep_error": semgrep_error,
            "semgrep_warning": semgrep_warning,
        }

        # --- Assemble brief -------------------------------------------------
        brief = {
            "plugin_slug": slug,
            "priority_score": priority_score,
            "metadata": metadata,
            "attack_surface_summary": attack_surface_summary,
            "source_sink_summary": source_sink_summary,
            "taint_flows": taint_flows,
            "semgrep_findings": semgrep_findings,
            "stats": stats,
        }

        out_path = OUTPUT_DIR / f"{slug}_brief.json"
        with open(out_path, "w", encoding="utf-8") as f:
            json.dump(brief, f, indent=2)

        priority_table.append((priority_score, slug))
        print(f"  [{priority_score:>6}]  {slug}")

    # --- Top-20 summary -----------------------------------------------------
    priority_table.sort(key=lambda x: x[0], reverse=True)
    top20 = priority_table[:20]

    print("\n" + "=" * 60)
    print("TOP 20 PLUGINS BY PRIORITY SCORE")
    print("=" * 60)
    print(f"{'Rank':<6} {'Score':>8}   {'Plugin Slug'}")
    print("-" * 60)
    for rank, (score, slug) in enumerate(top20, start=1):
        print(f"{rank:<6} {score:>8}   {slug}")

    print(f"\nBriefings written to: {OUTPUT_DIR}")
    print(f"Total plugins processed: {len(slugs)}")


if __name__ == "__main__":
    main()
