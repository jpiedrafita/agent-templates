# Implementation Plan

## Overview

This document breaks down the implementation into manageable, actionable tasks based on `specs/design.md`. Prefer vertical slices that produce end-to-end value quickly, then add prerequisites only where truly required.

---

## Ready

- [ ] **TASK-001 — [Task title]**

[1 sentence: what this task delivers and why.]

Status: Ready
Parallel: [yes/no]
Estimate: [S/M/L]
Deps: [None | TASK-00X]

Implementation:
[One implementation line per line, no bullets. Keep it concrete but not verbose.]
[Example: Create/modify files: `path/to/file`, `path/to/dir/`]
[Example: Implement function/class: `module.symbol`]
[Example: Update config/CI: `.github/workflows/...`]

Verification:
[how you know it works — tests, command, manual check]
[optional second verification line]

Refs: [REQ-00X] | [Design: Section "Section name"]

---

## Blocked

- [ ] **TASK-00X — [Task title]**

[Short description.]

Status: Blocked
Parallel: no
Estimate: [S/M/L]
Deps: [TASK-00X]

Blocked by:
[Decision, dependency, or prerequisite]

Implementation:
[One line per line]

Verification:
[One line per line]

Refs: [REQ-00X] | [Design: Section "Section name"]

---

## Done

- [x] **TASK-00Y — [Completed task title]**

[Short description.]

Status: Done
Parallel: [yes/no]
Estimate: [S/M/L]
Deps: [None | TASK-00X]

Implementation:
[One line per line]

Verification:
[One line per line]

Refs: [REQ-00X] | [Design: Section "Section name"]

---

## Dependency Summary (optional)

- TASK-003 depends on TASK-001
- TASK-004 depends on TASK-002
- Parallelizable: TASK-005, TASK-006

---

## Notes for Agents

- Keep tasks completable in one focused implementation pass whenever possible.
- Prefer vertical slices that cross the necessary layers and produce visible progress.
- Use horizontal tasks only for true prerequisites.
- One implementation item per line (no nested bullets).
- Prefer referencing REQ-xxx for traceability; use design section refs if no REQ IDs exist.
- Each task must have verification that is realistic for the repo.
- Keep `Status`, `Deps`, and `Parallel` accurate.
- Remove placeholders and this section when finalizing.
