# agent-templates

Copilot instructions, custom agents/skills, and a specs workflow (requirements → design → tasks).

## Overview

This is a template repository that provides a structured workflow for software development projects using GitHub Copilot custom agents.

## Structure

- **`.github/copilot-instructions.md`**: Instructions for GitHub Copilot to understand your project
- **`.github/agents/`**: Custom agents for specialized tasks
- **`.github/skills/`**: Reusable skills for common workflows
- **`.github/prompts/`**: Prompt files (onboarding, common workflows)
- **`specs/`**: Workflow documents for the development process

## Getting Started (Onboarding)

1. Run the onboarding prompt: `.github/prompts/onboard.prompt.md` from Copilot Chat / VS Code.
2. This will fill `PROJECT.md` and align `.github/copilot-instructions.md` to the project.
3. Then start the workflow from `specs/requirements.md` using `@blueprint` custom agent.

## Workflow

1. **Requirements** (`specs/requirements.md`) → Define what needs to be built
2. **Design** (`specs/design.md`) → Create technical design documents
3. **Tasks** (`specs/tasks.md`) → Break down work into actionable items
4. **Implementation** → Execute tasks with quality checks

## Custom Agents

- `@blueprint` - **Main orchestrator** for onboarding + workflow (requirements → design → tasks). Enforces phase gates.
- `@architect` - Reviews and improves technical design decisions in `specs/design.md`.
- `@reviewer` - Performs code reviews (quality, security, best practices).
- `@test-runner` - Runs tests and reports results.
