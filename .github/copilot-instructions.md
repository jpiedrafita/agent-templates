# GitHub Copilot Instructions

## Initial Setup

**IMPORTANT**: When you first interact with this repository, please ask the user the following questions to customize these instructions:

1. **What is the name of this project?**
2. **What is the primary purpose or goal of this repository?**
3. **What technology stack is being used?** (e.g., programming languages, frameworks, databases)
4. **What are the key dependencies or libraries?**
5. **Are there any specific coding standards or conventions to follow?**
6. **What are the main architectural principles or patterns used?**
7. **What testing strategy is in place?**
8. **What is the code review process?**

After gathering this information, update this file with the specific details about the project to provide better context for future interactions.

---

## Workflow Overview

This repository follows a structured Kiro-like workflow with documents stored in the `specs/` directory:

1. **Requirements** (`specs/requirements.md`) → Define what needs to be built
2. **Design** (`specs/design.md`) → Create technical design documents
3. **Tasks** (`specs/tasks.md`) → Break down work into actionable items
4. **Implementation** → Execute tasks with quality checks

### Workflow Documents Location

All workflow documents are stored in the `specs/` directory:
- `specs/requirements.md` - Requirements and specifications
- `specs/design.md` - Technical design documents
- `specs/tasks.md` - Task breakdown and implementation plan

## Project Context

<!-- This section should be filled in after the initial setup questions -->
- **Project Name**: [To be filled]
- **Purpose**: [To be filled]
- **Technology Stack**: [To be filled]
- **Key Dependencies**: [To be filled]

## Coding Guidelines

<!-- This section should be filled in after the initial setup questions -->
- Follow existing code patterns in the repository
- Write clear, self-documenting code
- Include appropriate tests for new functionality
- Update documentation when making changes
- [Additional guidelines to be filled]

## Architecture Principles

<!-- This section should be filled in after the initial setup questions -->
- Maintain separation of concerns
- Follow SOLID principles
- Keep components modular and reusable
- Document architectural decisions
- [Additional principles to be filled]

## Custom Agents

This repository includes custom agents for specialized tasks in the Kiro workflow:

- **workflow-orchestrator**: Main agent that guides you through the complete workflow (requirements → design → tasks). Orchestrates the three-phase process, ensuring each phase is complete and approved before moving forward. Uses spec-authoring, design-authoring, and task-breakdown skills.
- **architect**: Reviews and validates technical designs in `specs/design.md` for architectural soundness. Can update designs and has web access for research.
- **reviewer**: Performs thorough code reviews focusing on quality, security, and best practices. Read-only access (no modifications).

Use `@workflow-orchestrator` when starting a new project or feature - it will guide you through requirements, design, and task breakdown.
Use `@architect` when you need architectural review and validation of existing designs.
Use `@reviewer` when you need code review feedback.

## Skills

The repository includes skills for common workflows:
- **spec-authoring**: Writing specifications and requirements documents
- **design-authoring**: Creating technical design documents  
- **task-breakdown**: Breaking work into manageable tasks
- **test-runner**: Running and managing tests
- **code-quality**: Maintaining code quality standards

## Testing Strategy

<!-- This section should be filled in after the initial setup questions -->
- Write unit tests for core logic
- Include integration tests for key workflows
- Maintain test coverage standards
- [Additional testing guidelines to be filled]

## Review Process

<!-- This section should be filled in after the initial setup questions -->
- All changes require review
- Check for code quality, security, and performance
- Validate tests are passing
- [Additional review guidelines to be filled]

## Additional Notes

<!-- Add any other project-specific instructions after initial setup -->
