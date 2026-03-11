---
name: python-dev
description: Python development conventions (layout, packaging, logging, errors, and pytest strategy) used when the project is Python or when no repo pattern exists.
argument-hint: "[what to do] [layout|impl|tests|packaging]"
user-invocable: true
license: MIT
---

# python-dev

Purpose: Provide pragmatic Python defaults that speed up development without fighting the repository’s existing conventions.

## When to apply
- Apply these rules only if the repository is primarily Python (pyproject.toml / requirements.txt) OR if no existing patterns are present.
- If the repo already has conventions, follow them.

## Project layout (default)
Preferred (src layout):
- src/<package_name>/
- tests/

If the repo is small and already flat, do not force a migration.

## Packaging (default)
- Prefer pyproject.toml (PEP 621) as the single source of truth.
- Dependencies belong in pyproject.toml (or requirements.txt if the repo already uses it).
- Do not invent build tooling; follow what the repo already uses.

## Implementation conventions (default)
- Keep modules small and focused (avoid “god files”).
- Prefer dataclasses for simple data containers.
- Prefer explicit types on public functions; keep typing pragmatic (no mypy by default).
- Handle errors at the boundary (CLI/API handler), not deep inside helpers.
- Avoid prints; use logging.

## Logging (default)
- Use a module-level logger: logger = logging.getLogger(__name__)
- Log at the right level:
  - debug: internal state
  - info: high-level flow
  - warning/error: failures and degraded behavior
- Never log secrets.

## Config / environment (default)
- Use environment variables for secrets.
- Keep configuration explicit and validated at startup (fail fast).
- If the repo uses .env, ensure it is gitignored and document required vars.

## Testing layout (default)
- tests/unit/
- tests/integration/

### Naming
Preferred:
- normal pytest naming in each folder (e.g., test_service.py).

## Markers (recommended)
- unit: fast, deterministic, no network, no real services
- integration: may touch external services

Use:
- @pytest.mark.unit
- @pytest.mark.integration

(Configure markers in pyproject.toml / pytest.ini when present.)

## Execution modes (best practice)
Fast (default during dev):
- pytest tests/unit

Full (pre-merge / explicit):
- RUN_INTEGRATION=1 pytest tests/unit tests/integration

Integration tests MUST be skipped unless RUN_INTEGRATION=1 is set.

## Unit test strategy (default)
- Mock all external boundaries (network/fs/time/env/subprocess/external APIs).
- Prefer testing pure logic + edge cases.
- Keep unit tests fast.

## Integration test strategy (default)
- Allowed to touch real services only in controlled envs (dev/stage) and only with RUN_INTEGRATION=1.
- Tests must be idempotent and clean up created resources.
- Prefer local simulators when possible.

### AWS guidance
- Unit tests: prefer moto for boto3.
- Integration tests: moto/localstack, or real AWS in dedicated dev/stage (never prod).

## Fixtures
- Prefer pytest fixtures over setup/teardown.
- Use tests/conftest.py for shared fixtures.
- Keep fixtures small and composable.

## Output
- Proposed Python layout/conventions to follow (only if needed)
- How to run fast/full tests
- Required env vars (if any)
