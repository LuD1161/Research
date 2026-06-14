.PHONY: setup download extract verify analyze report clean

setup:
	bash tools/install.sh
	. .venv/bin/activate && bash tools/verify_tools.sh

download:
	bash scripts/download_plugins.sh

extract:
	bash scripts/extract_plugins.sh

verify:
	bash tools/verify_downloads.sh
	. .venv/bin/activate && bash tools/verify_tools.sh

analyze: analyze-surface analyze-sources analyze-taint analyze-semgrep

analyze-surface:
	bash scripts/enumerate_surface.sh

analyze-sources:
	. .venv/bin/activate && python3 tools/source_sink_mapper.py --input plugins/src/ --output analysis/phase2_sources_sinks/

analyze-taint:
	. .venv/bin/activate && python3 tools/taint_tracer.py --input plugins/src/ --sources-sinks tools/wp_sources_sinks.yaml --output analysis/phase3_taint_flows/

analyze-semgrep:
	. .venv/bin/activate && semgrep --config tools/wp_audit_rules/ plugins/src/ --json --output analysis/phase4_semgrep/results.json --exclude='*/vendor/*' --exclude='*/node_modules/*' --exclude='*/tests/*' --exclude='*/test/*' --timeout 300
	. .venv/bin/activate && semgrep --config "p/php-security-audit" plugins/src/ --json --output analysis/phase4_semgrep/builtin_results.json --exclude='*/vendor/*' --exclude='*/node_modules/*' --exclude='*/tests/*' --timeout 300

report:
	bash scripts/generate_reports.sh

clean:
	rm -rf plugins/zips/* plugins/src/* analysis/phase*/*
