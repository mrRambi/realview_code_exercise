# ADR-0004: Freezed for Data Models and Domain Entities

## Status
Accepted (revised)

## Context
The app needs immutable data classes for:
- API response models (`data/models/`)
- Domain entities (`domain/entities/`)

Options considered:
- **Equatable** — manual `props` list, no `copyWith`, no pattern matching
- **Freezed** — code generation, immutability, `copyWith`, union types

UI state (loading / loaded / error) was initially considered as a Freezed use case too.
This was revised — see decision below.

## Decision
Use **Freezed** exclusively for **data models and domain entities**.

- `data/models/` — Freezed + `json_serializable` for JSON deserialization
- `domain/entities/` — Freezed for immutable, `copyWith`-capable value objects

**Freezed is NOT used for UI state.**
Riverpod's `AsyncNotifier` with `AsyncValue<T>` already provides the full state lifecycle
(loading / data / error) with built-in pattern matching via `.when()` / `.whenData()` / `.whenOrNull()`.
Adding a separate Freezed state class on top would be redundant boilerplate.

State in the presentation layer is expressed as:
```dart
// In the notifier — no separate state class needed
AsyncValue<List<Author>>

// In the UI — pattern matching via Riverpod
ref.watch(authorSearchNotifierProvider).when(
  data: (authors) => AuthorList(authors),
  loading: () => const LoadingView(),
  error: (e, _) => ErrorView(message: e.toString()),
);
```

## Consequences
- Freezed scope is limited to data/domain layers — clear boundary
- No redundant state classes to maintain
- UI pattern matching handled entirely by Riverpod's `AsyncValue`
- `build_runner` required after model/entity changes
