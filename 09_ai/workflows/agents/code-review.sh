#!/usr/bin/env bash

set -euo pipefail

#-------------------------
# Config
#-------------------------

MAIN_BRANCH="${MAIN_BRANCH:-main}"
BRANCH="${BRANCH:-agent-run-$(date +%Y%m%d-%H%M%S)}"

PROMPT_FILE="${PROMPT_FILE:-04_ai/workflows/prompts/code-review.md}"

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
    echo "Working directory is dirty."
    exit 1
fi

#-------------------------
# Setup
#-------------------------

git checkout "$MAIN_BRANCH"
git pull origin "$MAIN_BRANCH"

git checkout -b "$BRANCH"

echo "Branch: $BRANCH"
echo "Prompt: $PROMPT_FILE"

#-------------------------
# Agent
#-------------------------

claude -p --dangerously-skip-permissions "$(cat "$PROMPT_FILE")"

if [ -f "$STUCK_FILE" ]; then
    echo "Agent stuck:"
    cat "$STUCK_FILE"
    exit 1
fi

if [ -f "$SUCCESS_FILE" ]; then
    echo "Agent complete."
else
    echo "Agent finished without completion signal."
fi

#-------------------------
# Summary
#-------------------------

echo
echo "Done."
echo "Branch:"
echo "$BRANCH"

echo
echo "Changes:"
git diff --stat "$MAIN_BRANCH..$BRANCH"

echo
echo "Review:"
echo "git diff $MAIN_BRANCH..$BRANCH"
