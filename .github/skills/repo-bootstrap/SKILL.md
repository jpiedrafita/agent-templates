---
name: repo-bootstrap
description: Bootstrap repository context by completing PROJECT.md and aligning .github/copilot-instructions.md. Use this when starting a new project/feature or when repository context is missing/unclear.
argument-hint: "[project goal] [stack] [constraints]"
user-invokable: true
license: MIT
---

# repo-bootstrap

Purpose: bootstrap repository context for agents by completing `PROJECT.md` and aligning `.github/copilot-instructions.md`.

## Steps

1. Read `PROJECT.md` and identify placeholders like `[...]`.
2. Ask only the minimum questions needed to replace placeholders.
3. Update `PROJECT.md` with the answers.
4. Rewrite `.github/copilot-instructions.md` to:
   - reference `PROJECT.md` as source of truth
   - enforce the specs workflow gates (`specs/requirements.md` → `specs/design.md` → `specs/tasks.md`)
5. Stop if any required information is missing and ask.

## Output

- Updated `PROJECT.md`
- Updated `.github/copilot-instructions.md`