# 09_ai: AI Automation & Agent Workflows

Dedicated directory for AI automation runners, prompt templates, autonomous developer workflows, and LLM orchestration.

All workspace coding rules and framework guidelines are maintained at the root customization folder [.agents/](file:///home/angelo/projects/software-engineering/.agents/).

---

## 📂 Folder Structure

```text
09_ai/
└── workflows/                   # Core agent workflows & automation runners
    ├── agents/                  # Executable shell runners (.sh)
    └── prompts/                 # Prompt engineering instructions (.md)
```

---

## 🛠️ Included Components

### 🏃 Automation Runners (`workflows/agents/`)
- `issue-runner.sh`: Executes batch task loops using issue worker prompt templates.
- `code-review.sh`: Runs automated code review agent against active git branch diffs.
- `test-writer.sh`: Identifies test coverage gaps and generates unit/integration tests.
- `bug-hunter.sh`: Scans codebase logic for edge cases, null pointer crashes, and race conditions.
- `refactor.sh`: Simplifies code complexity, enforces clean architecture, and verifies with tests.
- `security-review.sh`: Audits codebase for OWASP Top 10 vulnerabilities, unverified inputs, and secret leaks.
- `release.sh`: Gathers commit histories, generates changelogs, and drafts release notes.

### 📝 Prompt Engineering Templates (`workflows/prompts/`)
- `issue-worker.md`: Step-by-step instructions for fetching, implementing, testing, and committing issues.
- `code-review.md`: Non-intrusive diff analyzer that logs structured feedback.
- `test-writer.md`: Codebase test coverage scanner and test generator.
- `bug-hunter.md`: Deep logic inspection prompt for fault detection.
- `refactor.md`: Readability and structural cleanup instructions.
- `security-review.md`: Security vulnerability scanner prompt.
- `release.md`: Automated release note and changelog drafting prompt.
- `system-design-docs-prompt.md`: Software architecture document generation prompt.

---

## 🔗 Integration with IDE Skills (`.agents/`)

All prompt templates in `workflows/prompts/` dynamically reference workspace standards from `.agents/`:
- **Workspace Rules**: [.agents/AGENTS.md](file:///home/angelo/projects/software-engineering/.agents/AGENTS.md)
- **FastAPI Skill**: [.agents/skills/fastapi/SKILL.md](file:///home/angelo/projects/software-engineering/.agents/skills/fastapi/SKILL.md)
- **Laravel Skill**: [.agents/skills/laravel/SKILL.md](file:///home/angelo/projects/software-engineering/.agents/skills/laravel/SKILL.md)
- **React Skill**: [.agents/skills/react/SKILL.md](file:///home/angelo/projects/software-engineering/.agents/skills/react/SKILL.md)
- **Vue Skill**: [.agents/skills/vue/SKILL.md](file:///home/angelo/projects/software-engineering/.agents/skills/vue/SKILL.md)
- **Frontend Core Skill**: [.agents/skills/frontend-core/SKILL.md](file:///home/angelo/projects/software-engineering/.agents/skills/frontend-core/SKILL.md)
- **Engineering Standards**: [.agents/skills/engineering-standards/SKILL.md](file:///home/angelo/projects/software-engineering/.agents/skills/engineering-standards/SKILL.md)
