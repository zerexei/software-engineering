# Skill: .agent/backend/fastapi/router-development/rbac-permissions.md

## 📌 Core Philosophy & Constraints
- **Role-Based Access Control (RBAC)**: Assign permissions to roles, and roles to users (`User -> Roles -> Permissions`).
- **Granular Permission Scopes**: Use colon-separated resource permission scopes (`invoices:create`, `users:delete`).
- **Tenant Scope Guard**: Always evaluate RBAC policies within the context of the active user's `tenant_id`.

## ⚡ Production Boilerplate / Standard Pattern

```python
from typing import Annotated
from fastapi import Depends, HTTPException, status
from app.users.models import User
from app.auth.dependencies import get_current_user

RBAC_MATRIX: dict[str, set[str]] = {
    "admin": {"users:create", "users:read", "users:update", "users:delete", "billing:manage"},
    "manager": {"users:read", "users:update", "invoices:create"},
    "member": {"users:read"},
}

def has_permission(user_role: str, required_permission: str) -> bool:
    role_permissions = RBAC_MATRIX.get(user_role, set())
    return required_permission in role_permissions

class PermissionChecker:
    def __init__(self, required_permission: str):
        self.required_permission = required_permission

    def __call__(self, current_user: Annotated[User, Depends(get_current_user)]) -> User:
        if not has_permission(current_user.role, self.required_permission):
            raise HTTPException(
                status_code=status.HTTP_403_FORBIDDEN,
                detail=f"Permission '{self.required_permission}' required."
            )
        return current_user
```

## 🚫 Forbidden Anti-Patterns
- ❌ **Hardcoded Role Strings in Business Logic**: Checking `if user.role == 'manager'` instead of `has_permission(user.role, 'invoices:create')`.
- ❌ **Global Cross-Tenant Permissions**: Granting admin rights across all tenants instead of restricting role scope to a single `tenant_id`.
- ❌ **Unverified Role Escalation**: Allowing API clients to update their own role property via profile edit endpoints.

## 🔍 Verification & Testing
- **RBAC Matrix Test**: Unit test matrix inputs asserting `'member'` role raises 403 Forbidden on `'billing:manage'` endpoint in Pytest.
