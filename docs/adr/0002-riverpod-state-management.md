# ADR-0002: Riverpod for State Management and Dependency Injection

## Status
Accepted

## Context
The application needs a state management solution and a way to wire dependencies (network client, repositories, use cases) across layers. The client explicitly requested Riverpod.

Alternatives considered:
- **BLoC + GetIt** — used in a reference project, well-known, but requires separate DI setup with `injectable` and `get_it`
- **Provider** — simpler but lacks compile-time safety and code generation
- **Riverpod** — client requirement

## Decision
Use **flutter_riverpod** with **riverpod_generator** (`@riverpod` annotations).

The generator replaces manual provider declarations entirely — annotated functions and classes produce `.g.dart` files via `build_runner`. This also replaces the need for a separate DI container (no GetIt/injectable).

Dependency chain resolved through `ref.watch()`:
```
AuthorSearchNotifier
  └─ authorRepositoryProvider
      └─ authorRemoteDatasourceProvider
          └─ authorApiClientProvider  (core/providers)
              └─ dioProvider          (core/providers)
```

Infrastructure providers (Dio, Retrofit API client) live in `core/providers/`.
Feature providers (repository provider, notifier) live in `features/{feature}/presentation/providers/`.

## Consequences
- Single mechanism for both state management and DI — no separate DI framework needed
- Compile-time safety via code generation
- `build_runner` must be run after adding/changing providers
- All widgets access state through `ref.watch()` / `ref.read()` — no `BuildContext` threading
