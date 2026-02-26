# Requirements Document

## Table of Contents
- [Introduction](#introduction)
- [Scope](#scope)
  - [In Scope](#in-scope)
  - [Out of Scope](#out-of-scope)
- [Glossary](#glossary)
- [Functional Requirements](#functional-requirements)
- [Non-Functional Requirements](#non-functional-requirements)
- [Assumptions & Constraints](#assumptions--constraints)
- [Dependencies & Integrations](#dependencies--integrations)
- [Data & Privacy](#data--privacy)
- [Notes for Agents](#notes-for-agents)
- [Definition of Done](#definition-of-done)

---

## Introduction

[Brief description of what the project does and its main purpose. Focus on the problem being solved and the overall goal.]

---

## Scope

### In Scope
- [What the system will include]
- [Key workflows and capabilities]
- [Supported platforms/environments]

### Out of Scope
- [What the system will not include]
- [Explicit exclusions to prevent scope creep]

---

## Glossary

> Use consistent naming across all docs (requirements/design/tasks). Prefer `Term_Case` for glossary terms.

- **[Term_1]**: [Definition and context]
- **[Term_2]**: [Definition and context]
- **[Term_3]**: [Definition and context]

---

## Functional Requirements

> Use IDs so `design.md` and `tasks.md` can reference them (e.g., `REQ-001`).

### REQ-001 — [Short title]

**Priority**: [Must | Should | Could | Won’t]  
**Status**: [Draft | Approved]  

**User Story**: As a [type of user], I want [goal/objective], so that [benefit/value].

#### Acceptance Criteria

- THE [System/Component] SHALL [specific action or behavior]
- WHEN [condition], THE [System/Component] SHALL [response or action]
- WHERE [condition exists], THE [System/Component] SHALL [handling behavior]

#### Notes / Edge Cases

- [Optional: clarify constraints, error cases, validations, and expected messages]
- [Avoid implementation details; keep tech choices for `design.md`]

---

## Non-Functional Requirements

> Keep these measurable when possible. Avoid implementation details (tech choices go to `design.md`).

| ID | Category | Requirement | Metric / Target | Priority |
|---|---|---|---|---|
| NFR-001 | Performance | [Requirement] | [p95 latency <= X ms] | [Must/Should/Could] |
| NFR-002 | Availability | [Requirement] | [>= 99.9% uptime] | [Must/Should/Could] |
| NFR-003 | Security | [Requirement] | [e.g., MFA required, encryption at rest/in transit] | [Must/Should/Could] |
| NFR-004 | Observability | [Requirement] | [structured logs + traces + key metrics] | [Must/Should/Could] |
| NFR-005 | Privacy/Compliance | [Requirement] | [retention <= X days, GDPR rights] | [Must/Should/Could] |

---

## Assumptions & Constraints

- **Assumptions**
  - [Assumption 1]
  - [Assumption 2]

- **Constraints**
  - [Constraint 1: e.g., must be serverless / must run in AWS]
  - [Constraint 2: e.g., no recurring monthly cost / deploy on-demand]
  - [Constraint 3: e.g., supported browsers / runtime limits]

---

## Dependencies & Integrations

| Name | Type | Purpose | Owner | Status |
|---|---|---|---|---|
| [Dependency_1] | [API/Service/Library] | [Why needed] | [Team/Vendor] | [TBD/Confirmed] |
| [Dependency_2] | [API/Service/Library] | [Why needed] | [Team/Vendor] | [TBD/Confirmed] |

---

## Data & Privacy

> Optional, skip if not applicable

### Data Inventory

| Data | Source | Stored? | Retention | Sensitivity | Notes |
|---|---|---:|---|---|---|
| [Data_1] | [User/System/3rd party] | [Yes/No] | [X days] | [PII/Non-PII] | [...] |
| [Data_2] | [...] | [Yes/No] | [...] | [...] | [...] |

### Privacy Requirements

- THE system SHALL [minimize data collected to what is necessary]
- THE system SHALL [support data export and deletion where applicable]
- THE system SHALL [define retention and deletion policies]
- WHERE PII is stored, THE system SHALL [protect it with appropriate access controls]

---

## Notes for Agents

**When filling this template:**

- Keep user stories focused on a single capability
- Use **MUST/SHOULD/COULD/WON’T** for prioritization
- Use **THE / WHEN / WHERE** format for acceptance criteria (RFC 2119 style)
- Make acceptance criteria **specific and testable**
- Include happy path + error handling
- Reference glossary terms consistently (use `Term_Case`)
- Avoid implementation details (tech choices belong to `design.md`)
- Remove placeholder/example content and replace with real requirements

---

## Definition of Done

- [ ] Introduction explains the problem and goal clearly
- [ ] Scope includes explicit In/Out lists
- [ ] Glossary contains all key domain terms used in requirements
- [ ] All functional requirements have IDs, priority, status, and acceptance criteria
- [ ] NFRs exist and are measurable where possible
- [ ] Assumptions & constraints are explicit
- [ ] Dependencies/integrations are listed (even if TBD)
- [ ] Data & privacy considerations are captured at a minimum level
- [ ] No examples/placeholders remain