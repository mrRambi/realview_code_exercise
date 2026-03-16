# ADR-0003: Dio + Retrofit for Networking

## Status
Accepted

## Context
The app communicates with the OpenLibrary REST API. A networking solution was needed that is:
- Testable (mockable interface)
- Consistent with Flutter production standards
- Easy to extend with interceptors (logging, auth if needed in the future)

## Decision
Use **Dio** as the HTTP client with **Retrofit** (`retrofit` + `retrofit_generator`) on top for type-safe API interface definitions.

- `DioClient` configured in `core/network/` with timeouts and a logging interceptor
- `AuthorApiClient` in `data/datasources/` is a `@RestApi`-annotated Retrofit interface — the generator produces the implementation
- `AuthorRemoteDatasource` wraps `AuthorApiClient`, providing an abstraction layer the repository depends on

Endpoints are centralized in `core/constants/app_endpoints.dart`.

## Consequences
- Retrofit generates boilerplate HTTP call implementations from annotated interfaces
- API contract is explicit and easy to read
- `build_runner` required to regenerate after endpoint changes
- Logging interceptor provides visibility during development without affecting production builds
