# Project Context

## Purpose

Provide a standard, production-ready framework for implementing features, writing clean tests, and enforcing architectural guidelines across this codebase.

## Coding Standards

### Clean Code Guidelines
- Write readable, modular code.
- Ensure proper separation of concerns (e.g. separate business logic, routers, validation schemas).
- Keep functions short, focused, and single-purpose.
- Prefer type safety: use explicit types and avoid dynamic overrides (`Any` or equivalent) where possible.
- Provide type hints for all public function inputs and return values.

### Formatting & Linting
- Follow language-standard linting and formatting guides (e.g., Ruff/Black for Python, ESLint/Prettier for JavaScript/React).
- All changes must pass linting checks before completion.

### Error Handling
- Use specific exceptions/errors rather than broad catch-all statements.
- Ensure correct and descriptive error messages.
- Clean up resources (close database sessions, file handles) under all execution paths (success or error).

## Testing Standards
- Cover both success and failure cases.
- Mock external network requests or databases where appropriate.
- Tests should run quickly and reliably.
- Maintain consistent naming for tests (e.g. `test_*.py` or `*.test.ts`).

## Security Guidelines
- Never hardcode secrets, credentials, API keys, or tokens.
- Use parameterized queries or standard ORM mechanisms to prevent injection attacks.
- Ensure input validation is close to the data boundary.
