# Skill: .agent/backend/laravel/router-development/sanctum-tokens.md

## 📌 Core Philosophy & Constraints
- **Laravel Sanctum Authentication**: Use Sanctum API bearer tokens for mobile/API clients and stateful domain cookies for SPAs.
- **Token Abilities & Scopes**: Assign explicit abilities (`['orders:create', 'orders:read']`) to personal access tokens.
- **Token Expiration & Pruning**: Configure token expiration in `config/sanctum.php` and prune expired tokens via scheduler.

## ⚡ Production Boilerplate / Standard Pattern

```php
<?php

declare(strict_types=1);

namespace App\Actions\Auth;

use App\Models\User;
use Illuminate\Support\Facades\Hash;
use ValidationException;

final class IssueSanctumTokenAction
{
    public function execute(string $email, string $password, string $deviceName): string
    {
        $user = User::where('email', $email)->first();

        if (! $user || ! Hash::check($password, $user->password)) {
            throw ValidationException::withMessages([
                'email' => ['The provided credentials are invalid.'],
            ]);
        }

        return $user->createToken(
            name: $deviceName,
            abilities: ['*'],
            expiresAt: now()->addHours(2)
        )->plainTextToken;
    }
}
```

## 🚫 Forbidden Anti-Patterns
- ❌ **Unexpiring Personal Access Tokens**: Creating Sanctum tokens without setting `expiresAt` or configuring `expiration` in Sanctum config.
- ❌ **Wildcard Abilities for All Tokens**: Defaulting all token creations to `['*']` without evaluating strict API scoping.
- ❌ **Plaintext Token Storage**: Returning token strings without storing only their SHA-256 hashes in `personal_access_tokens` table.

## 🔍 Verification & Testing
- **Pest Sanctum Test**: Test `postJson('/api/v1/login')` in Pest asserting `token` key is returned and bearer token authenticates `/api/v1/user`.
