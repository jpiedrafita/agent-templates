---
name: Task Breakdown
description: Breaking down designs into manageable, actionable implementation tasks following specs/tasks.md format
category: planning
difficulty: intermediate
tags:
  - planning
  - project-management
  - estimation
  - implementation
---

# Task Breakdown Skill

## Overview

This skill focuses on breaking down technical designs from `specs/design.md` into manageable, actionable implementation tasks. The output follows the checkbox format defined in `specs/tasks.md`.

## Document Format

Tasks are organized as checkbox items for easy progress tracking:

### Task Structure

```markdown
- [ ] **N. Task Title**

Brief description of what needs to be done.

Implementation details (plain text, one per line):
Detail 1
Detail 2
Detail 3

**Acceptance Criteria**:
- THE [System/Component] SHALL [specific behavior]
- WHEN [condition], THE [System/Component] SHALL [action]
- WHERE [condition], THE [System/Component] SHALL [handling]

**Estimate**: X days | **Dependencies**: Task N | **Status**: Not Started

Requirements: X.X, Y.Y
```

### Supporting Sections

- **Task Dependencies Diagram**: ASCII art showing task relationships
- **Milestones**: Grouped tasks with target dates
- **Total Estimates**: Summary of development time

## Key Capabilities

- Decomposing design into implementable tasks (1-3 days each)
- Estimating effort and complexity
- Identifying dependencies between tasks
- Creating clear acceptance criteria using THE/WHEN/WHERE format
- Organizing tasks into logical phases and milestones

## Best Practices

- **Right-sized tasks**: Keep each task completable in 1-3 days
- **Single responsibility**: One clear objective per task
- **Traceable**: Link each task to design sections and requirements
- **Testable criteria**: Use THE/WHEN/WHERE format for verification
- **Clear dependencies**: Explicitly state what must be done first
- **Realistic estimates**: Include time for testing and documentation
- **Logical ordering**: Group related tasks and sequence by dependencies

## Working with the Template

1. **Read design**: Understand `specs/design.md` thoroughly
2. **Review template**: Study `specs/tasks.md` structure and examples
3. **Identify phases**: Group work logically (setup, core features, deployment)
4. **Break down work**: Create 1-3 day tasks for each design component
5. **Define criteria**: Use THE/WHEN/WHERE format matching requirements style
6. **Estimate effort**: Be realistic, include testing and documentation
7. **Map dependencies**: Create dependency diagram showing relationships
8. **Set milestones**: Group tasks with target dates
9. **Iterate**: Refine estimates and dependencies with team

## Example Task

```markdown
- [ ] **4. Implement Task CRUD API endpoints**

Create RESTful API endpoints for task management including create, read, update, delete, and list operations.

POST /api/v1/tasks - Create new task
GET /api/v1/tasks - List tasks with pagination and filtering
GET /api/v1/tasks/:id - Get single task details
PUT /api/v1/tasks/:id - Update task
DELETE /api/v1/tasks/:id - Delete task
Add request validation using express-validator
Implement authorization checks (user can only modify assigned tasks)

**Acceptance Criteria**:
- THE create endpoint SHALL validate required fields (title, assignee_id)
- THE list endpoint SHALL support pagination with default 25 items per page
- THE list endpoint SHALL support filtering by status and assignee
- THE update endpoint SHALL prevent unauthorized modifications
- WHEN task created, THE system SHALL return 201 with created task object
- WHEN invalid data provided, THE system SHALL return 400 with error details

**Estimate**: 3 days | **Dependencies**: Task 3 | **Status**: Not Started

Requirements: Design Section "API Design"
```

## Checkbox Usage

- `- [ ]` : Task not started
- `- [x]` : Task completed
- GitHub renders these as interactive checkboxes

## Related Skills

- **Spec Authoring**: Provides requirements that tasks must satisfy
- **Design Authoring**: Provides technical design that tasks implement

## Tips for Agents

- Start each task with checkbox `- [ ]` and task number in bold
- Keep implementation details in plain text (no bullet points)
- Put Estimate, Dependencies, Status on one line with pipes
- **Always put Requirements reference at the end** (last line before separator)
- Use THE/WHEN/WHERE format for acceptance criteria
- Create dependencies diagram showing task relationships
- Remove example tasks and replace with actual implementation plan
- Update checkbox to `- [x]` when task is completed
