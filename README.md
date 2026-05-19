# agent-templates

Copilot instructions, custom agents/skills, and a specs workflow (discovery -> requirements -> design -> tasks).

## Overview

This repository provides a structured, gated workflow for specs-driven development using GitHub Copilot custom agents + reusable skills.

## Structure

- `.github/copilot-instructions.md` — Copilot repository rules (source of truth: `PROJECT.md`)
- `.github/agents/` — Custom agents
- `.github/skills/` — Reusable skills
- `.github/prompts/` — Prompt files (onboarding, common workflows)
- `specs/` — Workflow documents (requirements/design/tasks)

## Install into an existing repo

Recommended: run the installer from your project root. It copies docs/agents/skills without cloning (no `.git`).

```sh
curl -fsSL https://raw.githubusercontent.com/jpiedrafita/agent-templates/main/scripts/install.sh | bash -s -- --repo jpiedrafita/agent-templates --ref main
```

Options:

- `--force` overwrite existing files (default is `do not overwrite`)
- `--no-lessons` skip `LESSONS_LEARNED.md`

Example (force):

```sh
curl -fsSL https://raw.githubusercontent.com/jpiedrafita/agent-templates/main/scripts/install.sh | bash -s -- --repo jpiedrafita/agent-templates --ref main --force
```

After install:

- open Copilot Chat and run `.github/prompts/onboard.prompt.md`
- commit the changes

## Getting Started (Onboarding)

1. Run: `.github/prompts/onboard.prompt.md` (Copilot Chat / VS Code)
2. Outcome:
   - `PROJECT.md` filled (source of truth)
   - `.github/copilot-instructions.md` aligned + workflow gates
3. Start from discovery or requirements using `@blueprint`.

If `PROJECT.md` still contains `[...]`, stop and complete it.

## Workflow

1) Discovery -> 2) Requirements -> 3) Design -> 4) Tasks -> 5) Implementation

### 1) Greenfield project (root scope)

- `@blueprint` start discovery or requirements (root). Goal: `<one sentence>`
- Approve `specs/requirements.md`
- `@blueprint` proceed to design (root)
- Optional: `@architect` review design (root)
- Approve `specs/design.md`
- `@blueprint` proceed to tasks (root)
- Approve `specs/tasks.md`

### 2) New feature on an existing project (feature scope)

Pick a slug, e.g. `user-auth`.

- `@blueprint` start discovery or requirements (`user-auth`). Goal: `<one sentence>`
  - writes `specs/features/user-auth/requirements.md`
- Approve requirements
- `@blueprint` proceed to design (`user-auth`)
  - writes `specs/features/user-auth/design.md`
- Optional: `@architect` review design (`user-auth`)
- Approve design
- `@blueprint` proceed to tasks (`user-auth`)
  - writes `specs/features/user-auth/tasks.md`

### 3) Implement tasks

- `@implementer` plan `TASK-001` (`root|user-auth`)
- `@implementer` act `TASK-001` (`root|user-auth`)

Testing:

- `@test-runner` fast (during dev)
- `@test-runner` full (pre-merge)
- `@test-runner` review verification for `TASK-001`

### 4) Review before merge

- `@reviewer` review active PR

## Custom Agents

- `@blueprint` — Orchestrator for onboarding + discovery -> requirements -> design -> tasks (phase gates)
- `@architect` — Reviews and improves design decisions in `specs/design.md`
- `@implementer` — Implements `TASK-xxx` from `specs/tasks.md` (plan/act modes)
- `@reviewer` — Code review (correctness, security, maintainability, tests)
- `@test-runner` — Runs tests (fast/full), validates verification, and diagnoses failures

## Skills

- `discovery-authoring` — Run structured discovery before requirements for ambiguous or substantial changes
- `repo-bootstrap` — Complete `PROJECT.md` and align repo instruction files
- `spec-authoring` — Write requirements (`specs/requirements.md`)
- `design-authoring` — Write design (`specs/design.md`)
- `task-breakdown` — Produce tasks (`specs/tasks.md`) with vertical slices, verification, deps, and traceability
- `test-authoring` — Write tests aligned with TASK Verification / REQ criteria
- `test-runner` — Run tests in fast/full modes and report results
- `issue-authoring` — Draft/create well-defined GitHub issues from tasks/findings
- `code-quality` — Minimal quality checklist + repo-aligned checks
- `python-dev` — Python overlay conventions (layout, logging, pytest strategy)

## Recommended Flow

For substantial or ambiguous work:

1. `@blueprint` runs discovery first to surface decisions, exclusions, rollout constraints, and assumptions.
2. `@blueprint` or `spec-authoring` turns that into approved requirements.
3. `@architect` optionally reviews the design before approval.
4. `task-breakdown` produces vertical slices with explicit dependencies and realistic verification.
5. `@implementer` works one `TASK-xxx` at a time.
6. `@test-runner` validates the `Verification:` lines and runs fast/full checks.
7. `@reviewer` does the final quality pass before merge.
