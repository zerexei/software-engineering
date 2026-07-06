#!/usr/bin/env bash

set -euo pipefail

#-------------------------
# Config
#-------------------------
ITERATIONS="${1:-10}"

MAIN_BRANCH="${MAIN_BRANCH:-main}"
BRANCH="${BRANCH:-overnight-batch-$(date +%Y%m%d-%H%M%S)}"

PROMPT_FILE="04_ai/workflows/prompts/issue-worker.md"

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

if [ ! -f "$PROMPT_FILE" ]; then
    echo "Prompt file missing: $PROMPT_FILE"
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
echo "Prompt: $PROMPT_FILE"

#-------------------------
# Agent Loop
#-------------------------
for ((i=1; i<=ITERATIONS; i++)); do

    echo
    echo "=== Iteration $i/$ITERATIONS ==="

    claude -p --dangerously-skip-permissions "$(cat "$PROMPT_FILE")"

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
