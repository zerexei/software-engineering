# Skill: .agent/backend/laravel/router-development/rbac-permissions.md

## 📌 Core Philosophy & Constraints
- **Laravel Authorization Policies**: Use Laravel `Gate` and `Policy` classes for role/permission authorization checks.
- **Spatie Permissions Standard**: Use `spatie/laravel-permission` or explicit `User::hasPermissionTo()` contracts.
- **Tenant Scope Guard**: Always verify `$user->tenant_id === $model->tenant_id` before evaluating permission roles.

## ⚡ Production Boilerplate / Standard Pattern

```php
<?php

declare(strict_types=1);

namespace App\Policies;

use App\Models\Order;
use App\Models\User;

final class OrderPolicy
{
    public function view(User $user, Order $order): bool
    {
        return $user->tenant_id === $order->tenant_id
            && ($user->hasPermissionTo('orders:read') || $user->id === $order->user_id);
    }

    public function create(User $user): bool
    {
        return $user->hasPermissionTo('orders:create');
    }
}
```

## 🚫 Forbidden Anti-Patterns
- ❌ **Hardcoded Role Checks in Controllers**: Checking `if ($user->role === 'admin')` directly inside controllers instead of `$user->can('create', Order::class)`.
- ❌ **Omitting Tenant ID Ownership Verification**: Checking permissions without enforcing tenant isolation logic.
- ❌ **Unprotected Mutation Actions**: Invoking Action classes without running policy authorization checks first.

## 🔍 Verification & Testing
- **Pest Policy Test**: Test `OrderPolicy` in Pest asserting unauthorized user gets HTTP 403 Forbidden on `getJson('/api/v1/orders/123')`.
