---
name: discovery-authoring
description: Run a structured discovery and alignment pass before requirements by interrogating scope, decisions, exclusions, dependencies, and rollout expectations.
argument-hint: "[root|<slug>] [initiative]"
user-invocable: true
license: MIT
---

# discovery-authoring

Purpose: run a short but rigorous discovery pass before requirements so the specs workflow starts from confirmed decisions instead of hidden assumptions.

## Inputs

- `PROJECT.md` for project context, constraints, commands, and conventions
- Existing instruction files, if present:
  - `CLAUDE.md`
  - `AGENTS.md`
  - `.github/copilot-instructions.md`
- Existing docs or specs related to the initiative, if present
- Supporting product/context docs such as `README.md` and relevant `docs/`

## Objectives

- Confirm the problem, goal, and likely scope
- Surface exclusions, rollout constraints, and external dependencies
- Identify decisions that materially affect requirements or design
- Capture assumptions as confirmed or unconfirmed
- Produce a discovery summary ready for `requirements.md`

## Rules

- Bias strongly toward asking instead of assuming.
- Prefer using structured, selectable questions when the decision can be expressed as options.
- Ask even when a plausible assumption exists if the decision could materially affect scope, architecture, verification, compatibility, or rollout.
- Prefer one decision at a time or tightly grouped decisions with shared impact; avoid dumping a long questionnaire at once.
- Keep the discovery pass short and decision-oriented; do not turn it into a long PRD.
- Do not write `design.md` or `tasks.md` in this phase.

## Process

1. Resolve whether the work is `root` or feature-scoped.
2. Read the available context and summarize the initiative in 2-5 bullets.
3. Identify open decisions in categories such as:
   - actor and user outcome
   - in-scope vs out-of-scope
   - compatibility / migration
   - permissions / ownership
   - rollout / release strategy
   - dependencies / external systems
   - verification expectations
4. Ask questions one decision at a time when needed.
5. Prefer structured questions for competing options or policy choices.
6. Record:
   - confirmed assumptions
   - unconfirmed assumptions
   - open decisions
   - likely blockers
7. Stop when the request is sufficiently aligned to draft requirements or when the remaining decisions are clearly labeled blockers.
8. Hand off to `spec-authoring` by making the discovery output concise, explicit, and easy to carry forward without repeating the same questions.

## Output

- Discovery summary
- Scope candidate (`root` or `specs/features/<slug>/`)
- Confirmed assumptions
- Unconfirmed assumptions
- Open decisions / blockers
- Recommendation on whether the workflow is ready to move into `requirements.md`
