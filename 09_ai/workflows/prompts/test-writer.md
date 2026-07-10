# Test Writer

## Goal

Identify missing tests, add coverage, and run tests.

## Instructions

1. Inspect code changes and locate corresponding source files.
2. Identify missing tests or gaps in coverage for success and failure paths.
3. Add appropriate tests to the test suite, adhering to project coding and testing standards.
4. Run the full test suite.

If tests fail:
- attempt to fix the tests or code
- after 3 failed attempts, create .agent-stuck with reason and exit

If all tests pass and coverage is sufficient:
- create .agent-complete
- exit

If blocked:
- create .agent-stuck with reason
- exit
