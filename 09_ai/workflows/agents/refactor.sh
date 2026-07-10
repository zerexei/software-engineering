#!/usr/bin/env bash
set -euo pipefail

# Config
PROMPT_FILE="${PROMPT_FILE:-09_ai/workflows/prompts/refactor.md}"
SUCCESS_FILE=".agent-complete"
STUCK_FILE=".agent-stuck"

cleanup() {
    rm -f "$SUCCESS_FILE" "$STUCK_FILE"
}
trap cleanup EXIT

# Validate
if ! command -v claude >/dev/null 2>&1; then
    echo "claude command not found."
    exit 1
fi

if [ ! -f "$PROMPT_FILE" ]; then
    echo "Prompt file missing: $PROMPT_FILE"
    exit 1
fi

echo "Executing Refactor Agent..."
echo "Prompt: $PROMPT_FILE"

# Run Agent
claude -p --dangerously-skip-permissions "$(cat "$PROMPT_FILE")"

# Evaluate outcomes
if [ -f "$STUCK_FILE" ]; then
    echo "Agent execution stuck:"
    cat "$STUCK_FILE"
    exit 1
fi

if [ -f "$SUCCESS_FILE" ]; then
    echo "Agent completed refactoring successfully."
else
    echo "Agent finished without completion signal."
fi
