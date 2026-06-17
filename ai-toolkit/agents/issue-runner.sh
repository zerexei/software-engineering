#!/usr/bin/env bash

set -euo pipefail

#-------------------------
# Config
#-------------------------
ITERATIONS="${1:-10}"

MAIN_BRANCH="${MAIN_BRANCH:-main}"
BRANCH="${BRANCH:-overnight-batch-$(date +%Y%m%d-%H%M%S)}"

SUCCESS_FILE=".agent-complete"
STUCK_FILE=".agent-stuck"

#-------------------------
# Helpers
#-------------------------
cleanup() {
    rm -f "$SUCCESS_FILE" "$STUCK_FILE"
}

trap cleanup EXIT

#-------------------------
# Validate
#-------------------------
if ! command -v claude >/dev/null 2>&1; then
    echo "claude command not found."
    exit 1
fi

if [ -n "$(git status --porcelain)" ]; then
    echo "Working directory is dirty. Commit or stash changes first."
    exit 1
fi

#-------------------------
# Setup
#-------------------------
git checkout "$MAIN_BRANCH"
git pull origin "$MAIN_BRANCH"

git checkout -b "$BRANCH"

echo "Branch: $BRANCH"
echo "Iterations: $ITERATIONS"

#-------------------------
# Agent Loop
#-------------------------
for ((i=1; i<=ITERATIONS; i++)); do

    echo
    echo "=== Iteration $i/$ITERATIONS ==="

    claude -p --dangerously-skip-permissions "$(cat <<EOF
Work on exactly ONE issue.

1. Use github-issues skill to fetch open issues.
2. Check existing Tasks and skip issues already completed or in_progress.
3. Pick the most appropriate remaining issue.
4. Create a Task and mark it in_progress.
5. Implement the fix or feature.
6. Add tests if needed.
7. Run formatting.
8. Run the full test suite.

If tests fail:
- attempt fixes
- after 3 failed attempts mark the Task stuck
- create ${STUCK_FILE} with issue number and reason

If no issues remain:
- create ${SUCCESS_FILE}
- exit

Commit changes:
ISSUE #<number>: <short description>

Mark the Task completed.
EOF
)"

    if [ -f "$STUCK_FILE" ]; then
        echo "Agent stuck:"
        cat "$STUCK_FILE"
        exit 1
    fi

    if [ -f "$SUCCESS_FILE" ]; then
        echo "All tasks completed."
        break
    fi

done

#-------------------------
# Push
#-------------------------
git push -u origin "$BRANCH"

echo
echo "Finished."
echo "Review:"
echo "git log $MAIN_BRANCH..$BRANCH"
