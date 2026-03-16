// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Wires [AuthorRemoteDatasourceImpl] → [AuthorRepositoryImpl] and exposes
/// the result as [AuthorRepository] (domain interface).

@ProviderFor(authorRepository)
final authorRepositoryProvider = AuthorRepositoryProvider._();

/// Wires [AuthorRemoteDatasourceImpl] → [AuthorRepositoryImpl] and exposes
/// the result as [AuthorRepository] (domain interface).

final class AuthorRepositoryProvider
    extends
        $FunctionalProvider<
          AuthorRepository,
          AuthorRepository,
          AuthorRepository
        >
    with $Provider<AuthorRepository> {
  /// Wires [AuthorRemoteDatasourceImpl] → [AuthorRepositoryImpl] and exposes
  /// the result as [AuthorRepository] (domain interface).
  AuthorRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authorRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authorRepositoryHash();

  @$internal
  @override
  $ProviderElement<AuthorRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AuthorRepository create(Ref ref) {
    return authorRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthorRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthorRepository>(value),
    );
  }
}

String _$authorRepositoryHash() => r'b20a59e6832ab6977a9f16f60ffd6dad9253e230';
