---
agent: blueprint
description: Project onboarding (fill PROJECT.md and align copilot instructions)
---

You are onboarding this repository.

Goals:
1) Replace placeholders in `PROJECT.md` by asking the user only what is missing.
2) Rewrite `.github/copilot-instructions.md` to be short and to reference:
   - `PROJECT.md` as the source of truth
   - the specs workflow: `specs/requirements.md` → `specs/design.md` → `specs/tasks.md`
   - a hard rule: if `PROJECT.md` contains placeholders, stop and ask.

Process:
- Read `PROJECT.md` and `.github/copilot-instructions.md`.
- Find placeholders like `[...]` and ask concise questions to replace them.
- Apply edits to `PROJECT.md`.
- Then rewrite `.github/copilot-instructions.md` to avoid duplication and keep only repo-wide rules.

Rules:
- Do not invent data. If unsure, ask.
- Keep changes minimal.
- Do not proceed to specs until `PROJECT.md` is complete.

Output:
- Apply edits directly to files.
- Summarize changes in 3–5 bullets.