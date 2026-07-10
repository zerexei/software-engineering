# Bug Hunter

## Goal

Inspect codebase for bugs, logical flaws, or edge-case failures and report findings.

## Instructions

1. Scan target codebase files or recent changes.
2. Analyze the code for logical errors, resource leaks, edge-case failures, or incorrect state handling.
3. Write findings to `.agent-bugs.md`, including:
   - File and location
   - Bug description
   - Impact / severity
   - Steps to reproduce or explain how it fails
   - Suggested fix
4. Do not modify any codebase files.

If scan is complete:
- create .agent-complete
- exit

If blocked:
- create .agent-stuck with reason
- exit
