# Backend Engineering OS & Second Brain

Welcome to the **Backend Engineering OS**, a structured knowledge base and long-term second brain for tracking production-ready patterns, architectural concepts, deployment blueprints, and developer agent workflows.

---

## 🧭 System Architecture & Directory Index

This repository is organized logically into primary engineering domains. Each domain contains nested folders and indices configured with standard YAML frontmatter for searchability.

```text
/
├── 01_core-backend/                 # Fundamentals: Networking, APIs, Auth, Security
├── 02_frameworks/                   # Application Frameworks: FastAPI, Laravel
├── 03_data-layer/                   # Databases, Caching, Schema Design, Migrations
├── 04_system-design/                # Architecture Patterns, Caching, Scaling, Designs
├── 05_infrastructure/               # Linux, Cloud Services (AWS), Docker, CI/CD
├── 06_observability/                # Telemetry, Monitoring, Logs, LGTM Stack
├── 07_frontend/                     # Vue, React, Frontend-to-Backend Integration
├── 08_engineering-practices/        # Git Workflows, Testing, Design Patterns
├── 09_ai/                           # Developer Agent templates, workflows, & skills
└── 10_prep/                         # DSA Practice & Interview Preparation Trackers
```

---

## 🗂️ OS Core Domains

### 🌐 [01. Core Backend Concepts](file:///home/angelo/projects/software-engineering/01_core-backend/README.md)
* [HTTP & Networking](file:///home/angelo/projects/software-engineering/01_core-backend/networking/README.md) — DNS, TCP/IP, WebSockets, HTTP/2 & HTTP/3.
* [REST APIs & API Design](file:///home/angelo/projects/software-engineering/01_core-backend/api-design/README.md) — RESTful standards, GraphQL, gRPC, and Webhooks.
* [Authentication & Security](file:///home/angelo/projects/software-engineering/01_core-backend/auth-security/README.md) — JWTs, OAuth2, Session auth, HTTPS, and OWASP security guidelines.
* [Performance & Concurrency](file:///home/angelo/projects/software-engineering/01_core-backend/performance/README.md) — Threading, async models, rate limiting, and optimization.

### ⚡ [02. Frameworks](file:///home/angelo/projects/software-engineering/02_frameworks/README.md)
* [FastAPI](file:///home/angelo/projects/software-engineering/02_frameworks/fastapi/README.md) — Python async patterns, dependency injection, and middleware.
* [Laravel](file:///home/angelo/projects/software-engineering/02_frameworks/laravel/README.md) — Service Container, Eloquent ORM, and background queues.

### 🗄️ [03. Data Layer](file:///home/angelo/projects/software-engineering/03_data-layer/README.md)
* [PostgreSQL](file:///home/angelo/projects/software-engineering/03_data-layer/postgresql/README.md) — Query tuning, indexing strategies, and database ACID properties.
* [Redis](file:///home/angelo/projects/software-engineering/03_data-layer/redis/README.md) — Caching structures, pub/sub mechanics, and memory configurations.
* [Database Design & Migrations](file:///home/angelo/projects/software-engineering/03_data-layer/db-design/README.md) — Normalization, sharding, replication, and migration patterns.

### 📐 [04. System Design](file:///home/angelo/projects/software-engineering/04_system-design/README.md)
* [Architecture Patterns & Templates](file:///home/angelo/projects/software-engineering/04_system-design/templates/README.md) — Microservices, Event-Driven, monolithic, and system templates.
* [Case Studies / Designs](file:///home/angelo/projects/software-engineering/04_system-design/designs/README.md) — Production design blueprints (e.g. Chat System, Feed).

### 🐳 [05. Infrastructure](file:///home/angelo/projects/software-engineering/05_infrastructure/README.md)
* [Linux Administration](file:///home/angelo/projects/software-engineering/05_infrastructure/linux/README.md) — Commands, processes, system internals, and scripting.
* [AWS Cloud Services](file:///home/angelo/projects/software-engineering/05_infrastructure/aws/README.md) — EC2, S3, RDS, VPCs, and IAM.
* [Docker & Containers](file:///home/angelo/projects/software-engineering/05_infrastructure/docker/README.md) — Image optimization, Compose files, and multi-stage builds.
* [CI/CD & Deployment](file:///home/angelo/projects/software-engineering/05_infrastructure/cicd-deployment/README.md) — Build automation, test runs, and zero-downtime rollouts.

### 📊 [06. Observability](file:///home/angelo/projects/software-engineering/06_observability/README.md)
* [LGTM Stack](file:///home/angelo/projects/software-engineering/06_observability/lgtm-stack/README.md) — Loki (Logs), Grafana (UI), Tempo (Tracing), and Prometheus (Metrics).
* [Monitoring Patterns](file:///home/angelo/projects/software-engineering/06_observability/patterns/README.md) — Alert rules, golden signals, and aggregation strategies.

### 🖥️ [07. Frontend Support](file:///home/angelo/projects/software-engineering/07_frontend/README.md)
* [React.js](file:///home/angelo/projects/software-engineering/07_frontend/react/README.md) & [Vue.js](file:///home/angelo/projects/software-engineering/07_frontend/vue/README.md) — SPA frameworks for full-stack integration.
* [Frontend Integration](file:///home/angelo/projects/software-engineering/07_frontend/integration/README.md) — CORS, Cookies, and state synchronization.

### 🛠️ [08. Engineering Practices](file:///home/angelo/projects/software-engineering/08_engineering-practices/README.md)
* [Git & Version Control](file:///home/angelo/projects/software-engineering/08_engineering-practices/git/README.md) — Rebase strategies, hooks, and clean git history.
* [Testing Methodologies](file:///home/angelo/projects/software-engineering/08_engineering-practices/testing/README.md) — TDD, integration, unit, and mock paradigms.
* [Software Design Patterns](file:///home/angelo/projects/software-engineering/08_engineering-practices/design-patterns/README.md) — Gang of Four patterns and SOLID principles.

---

## 🤖 Companion Tooling & Execution

### 🧠 [09. AI & Agent Workflows](file:///home/angelo/projects/software-engineering/09_ai/README.md)
Contains guidelines, developer-agent context rules, skills, and runner prompts that guide AI pair programming.

### 📝 [10. Prep & Interview Prep](file:///home/angelo/projects/software-engineering/10_prep/README.md)
* [DSA Patterns & Practice](file:///home/angelo/projects/software-engineering/10_prep/dsa/README.md) — Sliding window, two-pointer, dynamic programming, etc.
* [Interview Trackers](file:///home/angelo/projects/software-engineering/10_prep/trackers/README.md) — Preparation checklists and goal sheets.

---

## ⚡ Long-Term Maintenance Strategy

Every folder contains a local `README.md` styled with YAML Frontmatter for future search-indexing applications:

1. **Keep it Local**: Put details in the sub-folder `README.md` first. Only spin off files (e.g. `postgresql/indexing.md`) if it grows past 300 lines.
2. **Standard Headings**: Keep headings consistent (`## ⚡ Quick Reference`, `## 🧠 Core Concepts`, `## 🛠️ Snippets & Recipes`, `## 🔗 Curated Resources`).
3. **Relative Links**: Link relative paths (e.g. `[FastAPI Async](../fastapi/README.md#async)`) for optimal Markdown engine and local IDE navigation.
