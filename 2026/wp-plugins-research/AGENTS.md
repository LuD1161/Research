# Agent Configuration

## Model Hierarchy

- **Orchestrator**: Opus 4.6 (`claude-opus-4-6`) — owns the main conversation, coordinates phases, makes architectural decisions, performs manual security review (Phase 6+)
- **Sub-tasks**: Sonnet 4.6 (`claude-sonnet-4-6`) — executes each discrete sub-task (file creation, script writing, tool building, scanning, report generation)

## Rules

- Every sub-agent spawned via the Agent tool MUST use `model: "sonnet"` (Sonnet 4.6)
- The orchestrator (Opus 4.6) does NOT delegate manual security review — that requires expert-level reasoning
- Sub-agents should be self-contained: each gets a clear task description, relevant file paths, and expected output format
- Sub-agents must not spawn further sub-agents
- Independent sub-tasks should be dispatched in parallel where possible
