# GitHub Copilot Instructions

## Source of truth

- Repository context lives in `PROJECT.md`.
- If `PROJECT.md` contains placeholders like `[...]`, STOP and ask the user to complete them (or run the onboarding prompt).

## Specs-driven workflow

Follow this order and do not skip steps:

1) Requirements: `specs/requirements.md`
2) Design: `specs/design.md`
3) Tasks: `specs/tasks.md`
4) Implementation (out of scope here)

**Gates**:

- Do not produce or modify `specs/design.md` until requirements are approved.
- Do not produce or modify `specs/tasks.md` until design is approved.
- Every task MUST reference `REQ-xxx` or a Design section.

## Working rules

- Do not invent project details. Ask when unsure.
- Keep changes minimal and aligned with the specs (no scope creep).
- Prefer small, reviewable diffs.
- Run/verify tests or checks when available, and report results.

## Custom agents

- `@blueprint`: orchestrates requirements → design → tasks, and enforces gates.
- `@architect`: reviews and improves `specs/design.md` (architecture decisions, trade-offs).
- `@reviewer`: code review (quality, security, best practices).
- `@test-runner`: runs tests and reports results.

## Skills (WIP)

Only use if present under `.github/skills/`:

- spec-authoring
- design-authoring
- task-breakdown
- test-runner
- code-quality
- repo-bootstrap
