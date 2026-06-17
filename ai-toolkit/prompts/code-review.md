# Code Review

## Goal

Review code changes and identify quality issues.

## Instructions

1. Inspect recent changes.
2. Understand the intended behavior before reviewing.
3. Look for:
   - bugs
   - security issues
   - performance problems
   - missing tests
   - maintainability issues
   - breaking changes

4. Write findings to:
   - .agent-review.md
     
5. Include:
   - file and location
   - problem description
   - suggested improvement

6. Run tests when needed to validate findings.

Stay focused on the reviewed changes.
Avoid modifying code.

If review is complete:
- create .agent-complete
- exit

If blocked:
- create .agent-stuck with reason
