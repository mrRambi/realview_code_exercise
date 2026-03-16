# ADR-0004: Freezed for Data Models and State Classes

## Status
Accepted

## Context
The app needs immutable data classes for:
- API response models (`data/models/`)
- Domain entities (`domain/entities/`)
- UI state representations (search results, loading, error states)

Options considered:
- **Equatable** — manual `props` list, no copyWith, no pattern matching
- **Freezed** — code generation, immutability, `copyWith`, `when`/`map` pattern matching, union types for sealed states

## Decision
Use **Freezed** (`freezed_annotation` runtime + `freezed` dev dependency) for all data models and state classes.

For API models, Freezed is combined with `json_serializable` (`@JsonSerializable`) to handle JSON deserialization.

State classes use Freezed union types, e.g.:
```dart
@freezed
sealed class AuthorSearchState with _$AuthorSearchState {
  const factory AuthorSearchState.initial() = _Initial;
  const factory AuthorSearchState.loading() = _Loading;
  const factory AuthorSearchState.loaded(List<Author> authors) = _Loaded;
  const factory AuthorSearchState.error(Failure failure) = _Error;
}
```

## Consequences
- Immutability enforced at compile time
- `copyWith` generated automatically — no manual boilerplate
- Exhaustive pattern matching via `.when()` / `.map()` in UI
- `build_runner` must be run after model changes
- Slightly more setup per class compared to plain Equatable
