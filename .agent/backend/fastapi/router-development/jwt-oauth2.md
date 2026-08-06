# Skill: .agent/backend/fastapi/router-development/jwt-oauth2.md

## 📌 Core Philosophy & Constraints
- **Stateless Bearer Tokens**: Enforce short-lived JWT access tokens (15-60 min) with PyJWT and HS256/RS256 algorithms.
- **Strict Claims Verification**: Assert `iss` (issuer), `aud` (audience), and `exp` (expiration) on token decoding.
- **OAuth2 Specification**: Adhere strictly to FastAPI `OAuth2PasswordBearer` and `OAuth2PasswordRequestForm` standards.

## ⚡ Production Boilerplate / Standard Pattern

```python
from datetime import datetime, timedelta, timezone
import jwt
from pydantic import BaseModel

SECRET_KEY = "your-strong-production-key"
ALGORITHM = "HS256"

class TokenPayload(BaseModel):
    sub: str
    exp: datetime
    iss: str = "saas-auth-service"

def create_access_token(data: dict, expires_delta: timedelta = timedelta(minutes=30)) -> str:
    to_encode = data.copy()
    expire = datetime.now(timezone.utc) + expires_delta
    to_encode.update({"exp": expire, "iss": "saas-auth-service"})
    return jwt.encode(to_encode, SECRET_KEY, algorithm=ALGORITHM)

def decode_access_token(token: str) -> dict:
    return jwt.decode(
        token,
        SECRET_KEY,
        algorithms=[ALGORITHM],
        options={"require": ["exp", "iss", "sub"]}
    )
```

## 🚫 Forbidden Anti-Patterns
- ❌ **Infinite Expiration Tokens**: Issuing JWT tokens without an `exp` expiration claim.
- ❌ **Sensitive Data in Payload**: Storing passwords or unencrypted PII inside JWT payload claims.
- ❌ **Insecure Hardcoded Secret**: Using generic signing keys like `'secret'` or `'123456'`.

## 🔍 Verification & Testing
- **Token Expiry Test**: Mint token, decode signature, and verify `PyJWTError` on expired token timestamp in Pytest.
