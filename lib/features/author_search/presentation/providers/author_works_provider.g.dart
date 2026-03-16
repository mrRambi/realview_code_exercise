// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_works_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Fetches the list of [AuthorWork]s for the given author [key].
/// Automatically cached and disposed by Riverpod when no longer watched.

@ProviderFor(authorWorks)
final authorWorksProvider = AuthorWorksFamily._();

/// Fetches the list of [AuthorWork]s for the given author [key].
/// Automatically cached and disposed by Riverpod when no longer watched.

final class AuthorWorksProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<AuthorWork>>,
          List<AuthorWork>,
          FutureOr<List<AuthorWork>>
        >
    with $FutureModifier<List<AuthorWork>>, $FutureProvider<List<AuthorWork>> {
  /// Fetches the list of [AuthorWork]s for the given author [key].
  /// Automatically cached and disposed by Riverpod when no longer watched.
  AuthorWorksProvider._({
    required AuthorWorksFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'authorWorksProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$authorWorksHash();

  @override
  String toString() {
    return r'authorWorksProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<AuthorWork>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<AuthorWork>> create(Ref ref) {
    final argument = this.argument as String;
    return authorWorks(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is AuthorWorksProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$authorWorksHash() => r'aa6a543de7697b3ae491e404d763ec5ee6ee46aa';

/// Fetches the list of [AuthorWork]s for the given author [key].
/// Automatically cached and disposed by Riverpod when no longer watched.

final class AuthorWorksFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<AuthorWork>>, String> {
  AuthorWorksFamily._()
    : super(
        retry: null,
        name: r'authorWorksProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Fetches the list of [AuthorWork]s for the given author [key].
  /// Automatically cached and disposed by Riverpod when no longer watched.

  AuthorWorksProvider call(String key) =>
      AuthorWorksProvider._(argument: key, from: this);

  @override
  String toString() => r'authorWorksProvider';
}
