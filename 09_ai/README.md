# AI Automation & Agent Workflows

A collection of lightweight AI automation runners, prompt templates, helper scripts, and developer skills for development tasks.

Built around the idea of keeping developer agents **simple, reliable, and reusable**.

---

## 📂 Folder Structure

```text
09_ai/
├── agent-templates/             # Template guidelines for developer agents
│   ├── AGENTS.md                # Generic project context guidelines
│   └── FastAPI-AGENTS.md        # FastAPI-specific backend guidelines
│
├── skills/                      # Custom developer skills
│   ├── ui-design/               # CSS-first design system
│   ├── reactjs/                 # ReactJS frontend guidelines
│   ├── fastapi/                 # FastAPI backend principles
│   └── tailwindcss/             # Tailwind CSS styling standards
│
└── workflows/                   # Core agent workflows
    ├── agents/                  # Shell runners (matching all prompt templates)
    └── prompts/                 # Prompt instructions for agents
```

---

## 🛠️ Included Components

### 🏃 Runners (`workflows/agents/`)
- `issue-runner.sh`: Runs a batch loop of developer tasks using custom instructions.
- `code-review.sh`: Runs a code review agent on the active git branch diff.
- `test-writer.sh`: Runs the test writing agent to identify gaps and add test coverage.
- `bug-hunter.sh`: Runs the bug hunter agent to inspect code for logical issues.
- `refactor.sh`: Runs the refactoring agent to simplify and clean up code structures.
- `security-review.sh`: Runs the security audit agent to discover security flaws.
- `release.sh`: Runs the release prep agent to draft release notes and build summaries.

### 📝 Prompt Templates (`workflows/prompts/`)
- `issue-worker.md`: Workflow to fetch, implement, test, and commit issues.
- `code-review.md`: Non-intrusive diff analyzer that logs comments to `.agent-review.md`.
- `test-writer.md`: Scans codebase gaps, adds tests, and runs coverage.
- `bug-hunter.md`: Deep-dives into code logic looking for bugs/faults.
- `refactor.md`: Readability and structural cleanup that verifies with tests.
- `security-review.md`: Inspects code for common OWASP/vulnerability issues.
- `release.md`: Gathers commit histories and drafts changelogs/release notes.

### 🧠 Developer Skills (`skills/`)
- `ui-design/SKILL.md`: Conventions for your CSS-first styling layout.
- `reactjs/SKILL.md`: Functional components, custom hooks, and state principles for React.
- `fastapi/SKILL.md`: Clean architecture, routers, async session dependency injection, and Pydantic schemas.
- `tailwindcss/SKILL.md`: Flexbox/Grid, screen size modifiers, and dark-mode compliance standards.
