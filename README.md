# agent-templates
Copilot instructions, custom agents/skills, and a specs workflow (requirements → design → tasks).

## Overview

This is a template repository that provides a structured workflow for software development projects using GitHub Copilot custom agents.

## Structure

- **`.github/copilot-instructions.md`**: Instructions for GitHub Copilot to understand your project
- **`.github/agents/`**: Custom agents for specialized tasks
- **`.github/skills/`**: Reusable skills for common workflows
- **`specs/`**: Workflow documents for the development process

## Getting Started

When you first use GitHub Copilot in this repository, it will ask you questions about your project to customize the instructions file.

## Workflow

1. **Requirements** (`specs/requirements.md`) → Define what needs to be built
2. **Design** (`specs/design.md`) → Create technical design documents
3. **Tasks** (`specs/tasks.md`) → Break down work into actionable items
4. **Implementation** → Execute tasks with quality checks

## Custom Agents

- `@design-planner` - Creates detailed technical design documents (has web access for research)
- `@architect` - Reviews and validates technical designs (can update designs, has web access)
- `@reviewer` - Performs thorough code reviews (read-only access)
