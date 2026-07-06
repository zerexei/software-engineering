# Backend Engineering & AI Assistant Second Brain

This repository is my long-term **backend engineering and AI-assisted workflow second brain**. It is a structured repository for tracking real-world patterns, systems, engineering decisions, and automated agent workflows.

---

## 🧠 Core Philosophy

Engineering knowledge is organized by how systems are actually built, analyzed, and automated:

- **Data Structures & Algorithms (DSA)**: Algorithmic thinking, pattern extraction, and clean coding.
- **System Design**: Architectural decisions, deep-dives, scaling strategies, and trade-offs.
- **Interview & Execution Prep**: Trackers and conceptual checklists for performance under pressure.
- **AI-Assisted Workflows**: Custom rules, script runners, and structured prompts that drive developer agents.

---

## 🧱 Repository Structure

```text
/
├── 01_dsa/                          # Data Structures and Algorithms
│   ├── templates/                   # Reusable problem templates
│   ├── patterns/                    # sliding-window, TwoPointer, etc. (active)
│   └── archive/                     # Decrypted LeetCode exercises
│
├── 02_system-design/                # System Design Core
│   ├── templates/                   # Architecture templates
│   ├── designs/                     # Completed system designs (e.g. Chat System)
│   └── reference/                   # Technical deep-dives
│
├── 03_prep/                         # Interview & Execution Prep
│   ├── dsa-interview-prep.md        # Trackers & problem lists
│   └── system-design-interview-prep.md
│
└── 04_ai/                           # AI Automation & Agent Workflow
    ├── agent-templates/             # Configuration templates for developer agents
    │   ├── AGENTS.md                # Generic project guidelines
    │   └── FastAPI-AGENTS.md        # FastAPI-specific context rules
    │
    ├── skills/                      # Custom developer skills
    │   ├── ui-design/               # CSS-first design system
    │   ├── reactjs/                 # ReactJS frontend guidelines
    │   ├── fastapi/                 # FastAPI backend principles
    │   └── tailwindcss/             # Tailwind CSS styling standards
    │
    ├── workflows/                   # Core agent workflows
    │   ├── agents/                  # Shell runners matching all prompts
    │   └── prompts/                 # Prompt instructions for agents
    │
    └── README.md                    # AI folder entry point & documentation
```

---

## ⚡ How I Use This System

### DSA Work
- Solve problems and rewrite clean solutions.
- Extract generic patterns into `01_dsa/patterns/`.
- Archive solved exercises in `01_dsa/archive/`.

### System Design Work
- Design systems using templates in `02_system-design/templates/`.
- Store end-to-end architectures in `02_system-design/designs/`.
- Document key technologies or deep technical analysis under `02_system-design/reference/`.

### AI Agent Workflows
- Separate prompt behavior from execution scripts under `04_ai/workflows/`.
- Maintain modular development skills and agent rule templates under `04_ai/skills/` and `04_ai/agent-templates/`.
