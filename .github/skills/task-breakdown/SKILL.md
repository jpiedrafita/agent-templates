---
name: task-breakdown
description: Break down an approved design into small, actionable tasks in specs/tasks.md (or feature-scoped). Produces TASK-xxx items with implementation, verification, status, and traceability.
argument-hint: "[root|<slug>] [scope]"
user-invocable: true
license: MIT
---

# task-breakdown

Purpose: Turn an approved design into a task list that is easy to implement and verify, prefers vertical slices, and makes dependencies and parallel work explicit.

## Inputs

- PROJECT.md (commands, repo conventions, quality gates)
- Requirements + design for the current scope:
  - Root: specs/requirements.md, specs/design.md
  - Feature: specs/features/<slug>/requirements.md, specs/features/<slug>/design.md

## Output

- A tasks file for the current scope:
  - Root: specs/tasks.md
  - Feature: specs/features/<slug>/tasks.md

## Rules

- Tasks MUST be implementable in small, reviewable diffs.
- One task = one clear objective.
- Prefer tasks that can be completed in one agent iteration.
- Prefer vertical slices by default: a thin end-to-end capability across the relevant layers.
- Use layer-based or infrastructure-first tasks only when a vertical slice is truly blocked without them.
- Make dependencies explicit only when they truly block.
- Mark tasks that can run in parallel.
- Do not invent repo commands. If PROJECT.md is unclear, ask.
- Every task MUST include:
  - `Status`
  - Implementation: lines (one per line)
  - Verification: lines (one per line)
  - Refs: pointing to REQ-xxx and/or Design: Section "..."
  - Deps and Estimate

## Task template (copy/paste)

```markdown
- [ ] **TASK-001: <title>**
Short description.

Status: Ready
Parallel: yes
Estimate: S
Deps: None

Implementation:
<one line>
<one line>

Verification:
<one line command or check>
<one line command or check>

Refs: REQ-001 | Design: Section "<name>"
```

## How to break down the design

1) Identify user-visible outcomes and deliverables from the design.
2) Create a setup / scaffolding task only if a vertical slice is blocked without it.
3) Split by vertical slices when possible (feature end-to-end), otherwise by the smallest blocking prerequisite.
4) Add explicit dependencies only when they truly block another task.
5) Mark `Parallel: yes` for tasks that can safely proceed without waiting on another task.
6) Ensure each task has a minimal, realistic `Verification:` section that the repo supports.
7) Prefer `Ready`, `Blocked`, and `Done` groupings or equivalent status fields over a flat unstructured list.

## Verification guidance

- Prefer repo-defined commands from PROJECT.md or existing scripts (Makefile/Taskfile/package scripts).
- Keep verification `Fast` by default (unit tests / targeted checks).
- Add `Full` verification only for pre-merge or final hardening tasks when the repo defines it.

## Optional: dependency summary

If there are many tasks (roughly > 8), add a short section at the end of the file:

## Dependency Summary
```markdown
- TASK-003 depends on TASK-001
- TASK-004 depends on TASK-002
- Parallelizable: TASK-005, TASK-006
```
