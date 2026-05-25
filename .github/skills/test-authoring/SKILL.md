---
name: test-authoring
description: Create or update tests aligned with TASK Verification and/or REQ acceptance criteria, following the repository's existing test patterns.
argument-hint: "[root|<slug>] [TASK-xxx|REQ-xxx] [what to test]"
user-invocable: true
license: MIT
---

# test-authoring

Purpose: Write effective tests with minimal noise, aligned with the repo's conventions, the current spec scope, and a TDD-friendly implementation flow when useful.

## Scope resolution
- Root: specs/requirements.md, specs/design.md, specs/tasks.md
- Feature: specs/features/<slug>/requirements.md, specs/features/<slug>/design.md, specs/features/<slug>/tasks.md
- Ask only for root/<slug> if unclear.

## Inputs
- PROJECT.md (how to run tests, repo conventions)
- Target TASK-xxx (preferred) or REQ-xxx
- Existing test layout and patterns in the repo (must follow)
- Relevant language conventions (for example `python-dev` when the repo is Python)

## Rules
- Follow existing test patterns first (folders, naming, fixtures, mocks).
- Prefer small, focused tests per behavior.
- Tests must be deterministic (no network/time randomness unless explicitly handled).
- If you need new helpers/fixtures, keep them local and minimal.
- Do not introduce new test frameworks unless the repo already uses them.
- For logic-heavy tasks, prefer starting from a failing test when practical.
- Behavior changes should add or update tests unless there is a clear, documented reason not to.
- Use the repo's existing framework first; use pytest only for Python repos that already use pytest or have no established test pattern.

## Process
1) Identify the behavior to test (from TASK Verification and/or REQ acceptance criteria).
2) Locate existing tests for similar components and mirror their style.
3) Choose test level:
   - Unit by default
   - Integration only if it's required by the task/design
4) Decide whether the task is a good fit for red -> green -> refactor.
5) Write:
   - Happy path
   - One meaningful failure/edge case
   - A first failing test case when practical
6) Update/confirm Verification command(s) for the task.
7) Prefer the smallest relevant command that validates the behavior.

## Fallback defaults (only if repo has no pattern)
- Python: pytest, tests/ layout, conftest.py for shared fixtures
- Go: *_test.go, table-driven tests, testdata/ for fixtures
- Node: use package.json test script (jest/vitest depending on repo)

## Output
- Files added/updated
- What behaviors are covered (2-5 bullets)
- Failure/edge case covered
- Whether the test plan is TDD-friendly and what the first failing test should be
- Smallest relevant command to run, consistent with PROJECT.md
