---
name: spec-authoring
description: Create or iterate requirements docs with REQ IDs following specs/requirements.md (root or specs/features/<slug>/ scope).
argument-hint: "[root|<slug>] [short goal]"
user-invocable: true
---

# spec-authoring

## Purpose
Write or refine `requirements.md` so it is clear, testable, scoped, and decision-aware, using REQ IDs and the repository template.

## Inputs
- `PROJECT.md` (preferred source of truth for project context and constraints)
- Target requirements file for the resolved scope:
  - `specs/requirements.md`, or
  - `specs/features/<slug>/requirements.md`
- Existing agent/repo instruction files, if present:
  - `CLAUDE.md`
  - `AGENTS.md`
  - `.github/copilot-instructions.md`
  - `.cursor/rules/*` or `.cursorrules`
  - `.windsurfrules`
- If present: discovery notes, existing `design.md`, or `tasks.md` for the same scope (read-only context; do not advance phases)
- Supporting product/context docs, if present:
  - `README.md`
  - relevant `docs/` pages

## Rules
- Use `PROJECT.md` for business context, scope, and constraints.
- Use agent/repo instruction files for writing conventions and workflow rules, not as a source of product requirements.
- Treat existing `design.md` and `tasks.md` as read-only context only; do not backfill requirements from implementation guesses unless the user confirms them.
- If a discovery summary exists, treat it as the source of current open decisions and assumptions instead of restarting discovery.
- Bias toward asking rather than assuming when a decision materially affects scope, acceptance criteria, compatibility, rollout, or verification and is not already captured in discovery.
- Keep requirements focused on outcomes and constraints, not implementation mechanics.

## Steps
1. Resolve scope:
   - If `<slug>` provided: use `specs/features/<slug>/requirements.md`
   - Else: use `specs/requirements.md`
2. Read the target requirements file and keep its template structure.
3. Fill or iterate:
   - Introduction (what and why, not how)
   - Scope (`In Scope`, `Out of Scope`)
   - Open decisions and assumptions carried forward from discovery, plus any newly uncovered blockers
   - Glossary (only domain terms; consistent naming)
   - Requirements list using REQ IDs: `REQ-001`, `REQ-002`, ...
4. For each requirement:
   - Keep it single-purpose.
   - Make it testable and unambiguous.
   - Avoid implementation details.
   - Add acceptance criteria that make verification clearer.
5. Capture supporting sections that reduce ambiguity:
   - confirmed assumptions
   - unconfirmed assumptions
   - dependencies / integrations
   - rollout or compatibility constraints when relevant
6. Detect missing info and ask the minimum blocking questions that remain after using discovery output.
7. Stop and request explicit approval when the requirements are coherent and complete.

## Output
- Updated requirements file for the resolved scope
- 3-5 bullets summarizing what changed
- Blocking questions (only if required to proceed)
