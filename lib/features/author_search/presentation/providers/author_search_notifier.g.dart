// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_search_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Manages the author search state as [AsyncValue<List<Author>>].
/// Initial state is an empty list (idle — no search performed yet).

@ProviderFor(AuthorSearchNotifier)
final authorSearchProvider = AuthorSearchNotifierProvider._();

/// Manages the author search state as [AsyncValue<List<Author>>].
/// Initial state is an empty list (idle — no search performed yet).
final class AuthorSearchNotifierProvider
    extends $NotifierProvider<AuthorSearchNotifier, AsyncValue<List<Author>>> {
  /// Manages the author search state as [AsyncValue<List<Author>>].
  /// Initial state is an empty list (idle — no search performed yet).
  AuthorSearchNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authorSearchProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authorSearchNotifierHash();

  @$internal
  @override
  AuthorSearchNotifier create() => AuthorSearchNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<Author>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<Author>>>(value),
    );
  }
}

String _$authorSearchNotifierHash() =>
    r'032d2a6de6fbf3848757a58a6640674e38e4a225';

/// Manages the author search state as [AsyncValue<List<Author>>].
/// Initial state is an empty list (idle — no search performed yet).

abstract class _$AuthorSearchNotifier
    extends $Notifier<AsyncValue<List<Author>>> {
  AsyncValue<List<Author>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<Author>>, AsyncValue<List<Author>>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Author>>, AsyncValue<List<Author>>>,
              AsyncValue<List<Author>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
