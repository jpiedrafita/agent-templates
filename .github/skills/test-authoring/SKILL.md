---
name: test-authoring
description: Create or update tests aligned with TASK Verification and/or REQ acceptance criteria, following the repository’s existing test patterns.
argument-hint: "[root|<slug>] [TASK-xxx|REQ-xxx] [what to test]"
user-invocable: true
license: MIT
---

# test-authoring

Purpose: Write effective tests with minimal noise, aligned with the repo’s conventions and the current spec scope.

## Scope resolution
- Root: specs/requirements.md, specs/design.md, specs/tasks.md
- Feature: specs/features/<slug>/requirements.md, specs/features/<slug>/design.md, specs/features/<slug>/tasks.md
- Ask only for root/<slug> if unclear.

## Inputs
- PROJECT.md (how to run tests, repo conventions)
- Target TASK-xxx (preferred) or REQ-xxx
- Existing test layout and patterns in the repo (must follow)

## Rules
- Follow existing test patterns first (folders, naming, fixtures, mocks).
- Prefer small, focused tests per behavior.
- Tests must be deterministic (no network/time randomness unless explicitly handled).
- If you need new helpers/fixtures, keep them local and minimal.
- Do not introduce new test frameworks unless the repo already uses them.

## Process
1) Identify the behavior to test (from TASK Verification and/or REQ acceptance criteria).
2) Locate existing tests for similar components and mirror their style.
3) Choose test level:
   - Unit by default
   - Integration only if it’s required by the task/design
4) Write:
   - Happy path
   - One meaningful failure/edge case
5) Update/confirm Verification command(s) for the task.

## Fallback defaults (only if repo has no pattern)
- Python: pytest, tests/ layout, conftest.py for shared fixtures
- Go: *_test.go, table-driven tests, testdata/ for fixtures
- Node: use package.json test script (jest/vitest depending on repo)

## Output
- Files added/updated
- What behaviors are covered (2–5 bullets)
- How to run (one command), consistent with PROJECT.md
