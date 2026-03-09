---
name: repo-bootstrap
description: Bootstrap repository context by completing PROJECT.md and aligning .github/copilot-instructions.md. Use when starting a new project/feature or when repository context is missing/unclear.
argument-hint: "[project goal] [stack] [constraints]"
user-invokable: true
license: MIT
---

# repo-bootstrap

Purpose: Bootstrap repository context for agents by completing `PROJECT.md` and aligning `.github/copilot-instructions.md`.

## Inputs

- `PROJECT.md`
- `.github/copilot-instructions.md`

## Steps

1. Read `PROJECT.md`.
2. If `PROJECT.md` has placeholders like `[...]`:
   - Ask only the minimum questions needed to replace placeholders.
   - STOP after asking questions (do not edit files yet).
3. If `PROJECT.md` has no placeholders:
   - Do not ask onboarding questions.
4. Update `PROJECT.md` with the user-provided answers (replace placeholders only).
5. Read `.github/copilot-instructions.md` and update it to:
   - reference `PROJECT.md` as the source of truth
   - enforce workflow gates: `specs/requirements.md` → `specs/design.md` → `specs/tasks.md`
   - instruct Copilot to STOP and ask if `PROJECT.md` still contains placeholders
6. Keep changes minimal. Do not modify `specs/*` as part of onboarding.

## Rules

- Do not invent project details. If missing, ask.
- Prefer editing existing text over adding new sections.
- If a file is already compliant, do not touch it.

## Output

- Updated `PROJECT.md` (only if placeholders were filled)
- Updated `.github/copilot-instructions.md` (only if alignment/gates were missing)

## Final response

- Summarize changes in 3–5 bullets.
- If blocked, list only the missing answers required to proceed.