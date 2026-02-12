---
name: Spec Authoring
description: Writing clear, comprehensive specifications and requirements documents following the specs/requirements.md format
category: documentation
difficulty: intermediate
tags:
  - requirements
  - documentation
  - planning
  - user-stories
---

# Spec Authoring Skill

## Overview

This skill focuses on writing clear, comprehensive specifications and requirements documents. The output follows the format defined in `specs/requirements.md`.

## Document Format

Requirements documents consist of three main sections:

### 1. Introduction
Brief description of what the project does and its main purpose. Focus on the problem being solved and the overall goal.

**Example**:
```markdown
A task management application that helps remote teams coordinate their work asynchronously...
```

### 2. Glossary
Define key terms using **Term_Case** format for consistency:

**Example**:
```markdown
**Task_Board**: The main interface showing all tasks organized by status columns
**Time_Entry**: A record of time spent working on a specific task
```

### 3. Requirements (User Stories)
Each requirement follows this format:

```markdown
### Requirement N

**User Story**: As a [type of user], I want [goal/objective], so that [benefit/value].

**Acceptance Criteria**

- THE [System/Component] SHALL [specific action or behavior]
- WHEN [condition], THE [System/Component] SHALL [response or action]
- WHERE [condition exists], THE [System/Component] SHALL [handling behavior]
```

## Key Capabilities

- Gathering and documenting requirements through user stories
- Writing acceptance criteria using THE/WHEN/WHERE format (RFC 2119 style)
- Creating clear glossaries with domain-specific terminology
- Defining what needs to be built without specifying how

## Best Practices

- **User-centric**: Frame requirements as user stories with clear value proposition
- **Precise language**: Use THE/WHEN/WHERE format for testable acceptance criteria
- **Complete glossary**: Define all domain-specific terms upfront
- **Focused scope**: Each requirement should address a single capability
- **Measurable**: Acceptance criteria must be objective and verifiable
- **Edge cases**: Include error handling and boundary conditions in criteria

## Working with the Template

1. **Read the template**: Review `specs/requirements.md` for structure and examples
2. **Replace examples**: Remove the task management example, keep the structure
3. **Fill Introduction**: Describe your project's purpose in 2-3 sentences
4. **Build Glossary**: List key terms as you identify them (use Term_Case)
5. **Write User Stories**: Start with highest priority requirements
6. **Define Criteria**: Use SHALL statements, include happy path and errors
7. **Iterate**: Review with stakeholders and refine

## Example Requirement

```markdown
### Requirement 1

**User Story**: As a team lead managing a distributed team, I want to create and assign tasks to team members, so that everyone knows their responsibilities and deadlines.

**Acceptance Criteria**

- THE Task_Board SHALL display all tasks organized in columns (To Do, In Progress, Done)
- WHEN a task is created, THE system SHALL require a title, description, and assignee
- THE Task_Board SHALL support drag-and-drop to change task status
- THE system SHALL send email notifications to assignees when tasks are assigned
- WHERE a task lacks required fields, THE system SHALL prevent creation and display validation errors
```

## Related Skills

- **Design Authoring**: Converts requirements into technical designs
- **Task Breakdown**: Creates implementation tasks from design

## Tips for Agents

- Reference glossary terms consistently throughout the document (use Term_Case)
- Number requirements sequentially using headings (### Requirement 1, ### Requirement 2, etc.)
- Keep user stories concise but complete (one sentence each for As/I want/So that)
- Ensure every acceptance criterion is independently verifiable
- Link to this template when user asks about requirements format
