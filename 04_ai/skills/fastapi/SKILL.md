---
name: fastapi-dev
description: "Guidelines and architecture patterns for FastAPI backend development, focusing on dependency injection, type safety, and clean routers."
---

# FastAPI Backend Guide

Follow this guide to build robust, framework-agnostic, and performant APIs.

## Routing and Layer Separation
- **Routers**: Keep router code thin. Only validate request bodies/parameters and serialize responses. Delegate all business logic to service functions.
- **Services**: Write business logic in services that are database and framework-agnostic.
- **Models**: Use SQLAlchemy 2.0 async mapping for ORM models.
- **Schemas**: Always use Pydantic v2 schemas for request validation and response serialization. Never return raw database models directly.

## Async Operations
- Use async router endpoints (`async def`).
- Perform database interactions asynchronously using SQLAlchemy's `AsyncSession`.
- Avoid mixing synchronous and asynchronous blocking calls (e.g. use non-blocking HTTP clients like `httpx` instead of `requests`).

## Dependency Injection
- Inject the database session and authentication details using FastAPI's dependency injection system (`Depends`).
- Example:
```python
from fastapi import APIRouter, Depends
from sqlalchemy.ext.asyncio import AsyncSession
from src.database import get_db

router = APIRouter()

@router.get("/items/{item_id}", response_model=ItemResponse)
async def read_item(item_id: int, db: AsyncSession = Depends(get_db)):
    return await ItemService.get_item(db, item_id)
```
