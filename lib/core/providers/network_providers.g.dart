// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provides a configured [Dio] singleton for the entire app.

@ProviderFor(dio)
final dioProvider = DioProvider._();

/// Provides a configured [Dio] singleton for the entire app.

final class DioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  /// Provides a configured [Dio] singleton for the entire app.
  DioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return dio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$dioHash() => r'6ce29c414410d27133e0cbe3fbe09d5ff949991b';

/// Provides the Retrofit [AuthorApiClient] backed by the shared [Dio] instance.

@ProviderFor(authorApiClient)
final authorApiClientProvider = AuthorApiClientProvider._();

/// Provides the Retrofit [AuthorApiClient] backed by the shared [Dio] instance.

final class AuthorApiClientProvider
    extends
        $FunctionalProvider<AuthorApiClient, AuthorApiClient, AuthorApiClient>
    with $Provider<AuthorApiClient> {
  /// Provides the Retrofit [AuthorApiClient] backed by the shared [Dio] instance.
  AuthorApiClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authorApiClientProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authorApiClientHash();

  @$internal
  @override
  $ProviderElement<AuthorApiClient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AuthorApiClient create(Ref ref) {
    return authorApiClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthorApiClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthorApiClient>(value),
    );
  }
}

String _$authorApiClientHash() => r'98cc213d1dbe6436fd0a39ea9db4d8b21fd6d4e6';
