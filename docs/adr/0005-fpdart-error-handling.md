# ADR-0005: fpdart Either for Error Handling

## Status
Accepted

## Context
Error handling needs to be explicit and type-safe across layers. Two common approaches in Flutter:

- **Exceptions** — thrown and caught, invisible in function signatures, easy to miss
- **Either<Failure, T>** — functional approach, error is part of the return type, forces the caller to handle both cases

## Decision
Use **fpdart** `Either<Failure, T>` as the return type for repository methods and use cases.

- `data/` layer catches exceptions (from Dio or app-specific) and maps them to `Failure` subtypes
- `domain/` layer defines the `Failure` sealed class hierarchy
- `presentation/` layer (Riverpod notifier) folds the Either to produce UI state

Failure hierarchy (sealed classes in `core/error/failures.dart`):
```
Failure
├── ServerFailure
├── NetworkFailure
│   ├── NoConnectionFailure
│   ├── ConnectionTimeoutFailure
│   └── RequestCancelledFailure
├── AuthorFailure
│   ├── AuthorSearchFailure
│   └── AuthorDetailsFailure
└── UnknownFailure
```

## Consequences
- Errors are visible in function signatures — callers cannot ignore them
- Exhaustive pattern matching on `Failure` sealed class ensures all error cases are handled
- Slightly more verbose than try/catch but significantly safer
- `fpdart` adds a functional programming dependency to the project
