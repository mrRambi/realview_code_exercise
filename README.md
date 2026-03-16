# Book Author Search — REALVIEW Technical Assignment

Flutter application for searching book authors via the [OpenLibrary API](https://openlibrary.org/developers/api). Supports author search with pagination, author detail view, and works listing.

## Requirements

- [FVM](https://fvm.app) — Flutter version manager
- Flutter **3.41.4** (managed by FVM)
- Dart **3.11.1** (bundled with Flutter)

## Setup

### 1. Install FVM

```bash
dart pub global activate fvm
```

### 2. Install the pinned Flutter version

```bash
fvm install
```

### 3. Install dependencies

```bash
fvm flutter pub get
```

## Running the app

```bash
fvm flutter run
```

To target a specific device:

```bash
fvm flutter run -d <device_id>    # e.g. -d iPhone -d emulator-5554
fvm flutter devices               # list available devices
```

## Code generation

The project uses `build_runner` for Riverpod, Freezed, Retrofit, and JSON serialization code generation. Run this after pulling changes or modifying annotated files:

```bash
fvm flutter pub run build_runner build --delete-conflicting-outputs
```

For watch mode during development:

```bash
fvm flutter pub run build_runner watch --delete-conflicting-outputs
```

## Running tests

```bash
fvm flutter test
```

## IDE setup

### VS Code

Add to `.vscode/settings.json`:

```json
{
  "dart.flutterSdkPath": ".fvm/flutter_sdk"
}
```

### Android Studio / IntelliJ

Go to **Preferences → Languages & Frameworks → Flutter** and set the Flutter SDK path to:

```
<project_root>/.fvm/flutter_sdk
```

## Architecture

The project follows **Clean Architecture** with a feature-based directory structure:

```
lib/
├── core/               # Shared constants, theme, widgets, error types, logging
└── features/
    └── author_search/
        ├── data/       # API client (Retrofit), models, repository implementation
        ├── domain/     # Entities, repository interface, use cases, failures
        └── presentation/ # Riverpod providers, pages, widgets
```

Key architectural decisions are documented in [docs/adr/](docs/adr/).

## Key dependencies

| Package | Purpose |
|---------|---------|
| `flutter_riverpod` + `riverpod_annotation` | State management |
| `dio` + `retrofit` | Networking |
| `freezed` | Immutable models & union types |
| `fpdart` | Functional error handling (`Either`) |
| `cached_network_image` | Image caching |
| `build_runner` | Code generation |
