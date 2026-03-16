# ADR-0001: Clean Architecture with Feature-Based Structure

## Status
Accepted

## Context
The assignment requires building a Book Author Search App in Flutter that runs on both mobile and web. The evaluation explicitly focuses on:
- Codebase organization
- Well-established design patterns
- Scalability and maintainability for future expansions

A scalable architecture was needed that separates concerns clearly and can accommodate new features without restructuring.

## Decision
Adopt **Clean Architecture** combined with **feature-based folder organization**.

Each feature contains three layers:
- `data/` — API clients, models, repository implementations
- `domain/` — entities, repository interfaces, use cases
- `presentation/` — UI pages, widgets, state providers

Shared infrastructure lives in `core/` (network, theme, error handling, logging, constants).

## Consequences
- Clear separation of concerns; business logic is independent of Flutter/Dio/Retrofit
- New features can be added by creating a new folder under `features/` without touching existing code
- Slightly more boilerplate per feature compared to a flat structure
- Domain layer is framework-agnostic and easily unit testable
