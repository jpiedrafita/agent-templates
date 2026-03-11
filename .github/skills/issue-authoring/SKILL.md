---
name: issue-authoring
description: Create clear, deduplicated GitHub issues from TASKs or review findings with consistent structure and traceability.
argument-hint: "[title] [context] [refs]"
user-invocable: true
license: MIT
---

# issue-authoring

Purpose: Create high-quality GitHub issues that are actionable, non-duplicated, and traceable to specs/tasks.

## Inputs

- Source context (one or more):
  - `specs/tasks.md` or `specs/features/<slug>/tasks.md`
  - `specs/requirements.md` / `specs/design.md`
  - PR review findings (from @reviewer/@architect)
  - Failing test output (from @test-runner)

## Rules

- Do not create an issue by default. First propose: title + 2–4 bullet summary.
- Create an issue only when explicitly requested or approved by the user.
- One issue = one problem/change. Split if needed.
- Prefer linking to `TASK-xxx` / `REQ-xxx` / Design sections.
- Before creating, check for duplicates (search existing issues by keywords).

## Issue template

Title:
- Prefix with one of: `feat:`, `fix:`, `chore:`, `docs:`, `refactor:`, `test:`

Body:

Context
- What is happening / why this matters (1–3 bullets)

Proposal
- What should change (1–5 bullets)

Acceptance / Verification
- How we know it is done (tests/commands/manual check)

Refs
- TASK-xxx / REQ-xxx / Design: Section "..."
- PR: <link> (optional)

Labels (suggested)
- Pick 1–3 max: `bug`, `enhancement`, `tech-debt`, `architecture`, `tests`, `docs`, `security`

## Process

1. Identify issue type and write a concise title.
2. Summarize context + proposal.
3. Add acceptance/verification steps.
4. Add refs and suggested labels.
5. Search for duplicates; if found, propose commenting instead.
6. If user approves, create the issue (and optionally add a comment to the PR/issue with refs).

## Output

- Draft issue title + body + suggested labels
- If approved: created issue reference (or comment added)
