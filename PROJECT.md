# Project Charter

---

## Goal

[What is the purpose of this project? What problem does it solve? Be concise and specific.]

---

## Stack

- Language: [...]
- Tooling: [...]
- Testing: [...]

---

## Constraints

- [List any constraints such as time, resources, technical limitations, etc.]

---

## Repo conventions

### Git workflow

- Default branch: `main`
- Work in feature branches:
  - `feat/<short_slug>` for new features
  - `fix/<short_slug>` for bug fixes
  - `chore/<short_slug>` for maintenance/docs/tooling
- Keep branches small and short-lived.

### Commits

- Use Conventional Commits (minimal):
  - `feat(TASK-xxx): ...`, `fix(TASK-xxx): ...`, `chore(TASK-xxx): ...`, `docs(TASK-xxx): ...`, `refactor(TASK-xxx): ...`, `test(TASK-xxx): ...`
- Prefer one logical change per commit.
- Squash before merging.

### PRs / Reviews

- Prefer PRs to `main` (even in personal projects).
- PR description must reference the relevant spec doc:
  - `specs/requirements.md` / `specs/design.md` / `specs/tasks.md` (and `TASK-xxx` if applicable)
- “Definition of done” for a PR:
  - tests pass
  - lint/format pass (if present)
  - docs updated if behavior changed

### Testing / Quality gates

- Run tests locally before merging.
- Add/update tests when changing behavior.
- Keep changes aligned with `PROJECT.md` + `specs/` docs (no scope creep).

### Naming / Style

- Prefer clear names over cleverness.
- Keep code modular; avoid god files.
- No secrets in repo (use env vars / local config ignored by git).

---

## How to run

- [Instructions for setting up and running the project locally, including any necessary environment variables, dependencies, and commands]
