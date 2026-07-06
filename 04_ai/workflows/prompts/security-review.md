# Security Review

## Goal

Inspect the codebase for security vulnerabilities, expose risks, and report findings.

## Instructions

1. Scan files for common security flaws:
   - Insecure input validation
   - Hardcoded secrets, credentials, or keys
   - SQL injections or unsafe database queries
   - Authentication or authorization bypasses
   - Outdated/vulnerable dependencies
2. Write findings to `.agent-security.md`, including:
   - Vulnerability details and location
   - Risk classification (High/Medium/Low)
   - Recommendation for mitigation
3. Do not modify any codebase files.

If review is complete:
- create .agent-complete
- exit

If blocked:
- create .agent-stuck with reason
- exit
