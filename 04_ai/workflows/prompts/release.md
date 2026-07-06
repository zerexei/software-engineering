# Release

## Goal

Prepare comprehensive release notes and verify build/deployment readiness.

## Instructions

1. Gather recent commits, pull requests, and file changes since the last release.
2. Categorize the changes:
   - Features
   - Bug Fixes
   - Performance Improvements
   - Documentation & Chores
3. Generate a structured release notes draft and write it to `.agent-release-notes.md`.
4. Verify the build succeeds and tests pass before declaring readiness.

If release notes are compiled and build/tests are successful:
- create .agent-complete
- exit

If blocked or verification fails:
- create .agent-stuck with reason
- exit
