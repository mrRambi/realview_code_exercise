// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_search_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Manages author search state with pagination and in-memory caching.

@ProviderFor(AuthorSearchNotifier)
final authorSearchProvider = AuthorSearchNotifierProvider._();

/// Manages author search state with pagination and in-memory caching.
final class AuthorSearchNotifierProvider
    extends
        $NotifierProvider<AuthorSearchNotifier, AsyncValue<AuthorSearchState>> {
  /// Manages author search state with pagination and in-memory caching.
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
  Override overrideWithValue(AsyncValue<AuthorSearchState> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<AuthorSearchState>>(
        value,
      ),
    );
  }
}

String _$authorSearchNotifierHash() =>
    r'8c60bab3b28d445e903289fb08f0408714ff3a39';

/// Manages author search state with pagination and in-memory caching.

abstract class _$AuthorSearchNotifier
    extends $Notifier<AsyncValue<AuthorSearchState>> {
  AsyncValue<AuthorSearchState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<AuthorSearchState>,
              AsyncValue<AuthorSearchState>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<AuthorSearchState>,
                AsyncValue<AuthorSearchState>
              >,
              AsyncValue<AuthorSearchState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
