# Skill: .agent/backend/fastapi/SKILL.md

# FastAPI Backend Framework Skill Registry

This document serves as the master decision matrix and index for AI agents building maintainable, scalable, type-safe enterprise APIs using FastAPI.

---

## 🛠️ Tech Stack & Version Manifest

- **Language / Runtime**: Python >=3.12
- **Core Framework**: `fastapi[standard]>=0.136.0`
- **ORM / Database Engine**: `sqlalchemy[asyncio]>=2.0.51`
- **Database Migrations**: `alembic>=1.18.5`
- **Database Driver**: `asyncpg>=0.31.0` (PostgreSQL >=18.x)
- **Data Validation & Settings**: `pydantic>=2.x`, `pydantic-settings>=2.x`
- **Package Manager**: `uv>=0.11.26`
- **Testing & HTTP Client**: `pytest>=9.1.1`, `pytest-asyncio>=1.x`, `httpx>=0.28.1`
- **Linting & Type Checking**: `ruff>=0.15.20`, `ty>=0.0.59`

---

## 🔗 Sub-Skill Deep Dive References

- 📂 **Project Structure & Layout**: [project-structure.md](./architecture/project-structure.md)
- 🏗️ **Async & Pydantic v2**: [async-pydantic-v2.md](./architecture/async-pydantic-v2.md)
- 💉 **Dependency Injection**: [dependency-injection.md](./architecture/dependency-injection.md)
- 🏭 **Application Factory**: [application-factory.md](./architecture/application-factory.md)
- 🌐 **REST Endpoints v1**: [rest-endpoints-v1.md](./router-development/rest-endpoints-v1.md)
- 🔐 **Authorization Policies**: [authorization.md](./router-development/authorization.md)
- 🔑 **OAuth2 Authentication**: [authentication.md](./router-development/authentication.md)
- 🚦 **Rate Limiting**: [rate-limiting.md](./router-development/rate-limiting.md)
- 🔒 **Security Middleware**: [security.md](./router-development/security.md)
- 🆔 **Correlation Middleware**: [middleware.md](./router-development/middleware.md)
- 🚨 **Error Handling**: [error-handling.md](./router-development/error-handling.md)
- 📄 **Request & Responses**: [request-response.md](./router-development/request-response.md)
- 📑 **Pagination & Sorting**: [pagination-filter-sort.md](./router-development/pagination-filter-sort.md)
- 🔌 **Async WebSockets**: [async-websockets.md](./async-events-jobs/async-websockets.md)
- ⚡ **Background Tasks**: [background-tasks.md](./async-events-jobs/background-tasks.md)
- 📦 **Celery Redis Workers**: [celery-redis-workers.md](./async-events-jobs/celery-redis-workers.md)
- 🧪 **Pytest AsyncIO**: [pytest-asyncio.md](./testing-and-tooling/pytest-asyncio.md)
- 🎭 **Mock Dependencies**: [mock-dependencies.md](./testing-and-tooling/mock-dependencies.md)
- 🧹 **Ruff & Formatting**: [ruff-and-formatting.md](./testing-and-tooling/ruff-and-formatting.md)

---

## 🏛️ Architecture & Decision Matrix

| Layer / Responsibility | Standard Pattern | Key Architectural Rule |
| :--- | :--- | :--- |
| **HTTP Boundary** | Thin `APIRouter` handlers | Validate request inputs, delegate to Service layer, return Pydantic schemas. |
| **Business Logic** | Framework-Agnostic Services | Encapsulate business logic in `service.py`. Keep independent from HTTP dependencies. |
| **Persistence Representation** | SQLAlchemy 2.0 ORM | Use `Mapped[]` and `mapped_column()` declarative models in `models.py`. |
| **Data Validation** | Pydantic V2 Schemas | Enforce input/output schemas with `model_config = ConfigDict(...)`. |
| **Database Sessions** | Async Engine & `AsyncSession` | Inject database sessions via `typing.Annotated[AsyncSession, Depends(get_db)]`. |
| **Configuration** | `pydantic-settings` `BaseSettings` | Load explicit environment settings from `.env` in `config.py`. |
| **Error Handling** | RFC 7807 Problem Details | Convert custom domain exceptions in `shared/exceptions.py` to HTTP error payloads. |

---

## 🤖 Agent Execution Directives

1. **Domain Isolation**: Maintain domain boundaries (`auth/`, `users/`, `shared/`). Never leak business logic into route handlers.
2. **Strict Typing**: Enforce explicit return types on public functions, target Python 3.12+, and avoid `Any` or `type: ignore`.
3. **Async First**: Use async route handlers (`async def`) and non-blocking I/O (`AsyncSession`, `httpx.AsyncClient`).
4. **Automated Testing**: Write Pytest tests mirroring source structure in `tests/` for all features covering success and error branches.

---

## 🚫 Forbidden Anti-Patterns

- ❌ **Fat Controllers**: Writing database queries or business logic directly inside HTTP router handlers.
- ❌ **Synchronous DB Drivers**: Using synchronous `Session` or blocking database drivers inside FastAPI handlers.
- ❌ **Unvalidated Model Exposure**: Returning SQLAlchemy ORM models directly in API responses without Pydantic schemas.
- ❌ **Hardcoded Credentials**: Hardcoding secrets or committing `.env` credentials to git repositories.
- ❌ **Monolithic Dumping Grounds**: Creating monolithic `utils.py` files instead of domain services or shared exceptions.
