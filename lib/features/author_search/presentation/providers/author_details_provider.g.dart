// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Fetches full [AuthorDetails] for the given [key].
/// Automatically cached and disposed by Riverpod when no longer watched.

@ProviderFor(authorDetails)
final authorDetailsProvider = AuthorDetailsFamily._();

/// Fetches full [AuthorDetails] for the given [key].
/// Automatically cached and disposed by Riverpod when no longer watched.

final class AuthorDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<AuthorDetails>,
          AuthorDetails,
          FutureOr<AuthorDetails>
        >
    with $FutureModifier<AuthorDetails>, $FutureProvider<AuthorDetails> {
  /// Fetches full [AuthorDetails] for the given [key].
  /// Automatically cached and disposed by Riverpod when no longer watched.
  AuthorDetailsProvider._({
    required AuthorDetailsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'authorDetailsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$authorDetailsHash();

  @override
  String toString() {
    return r'authorDetailsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<AuthorDetails> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AuthorDetails> create(Ref ref) {
    final argument = this.argument as String;
    return authorDetails(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is AuthorDetailsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$authorDetailsHash() => r'3adc105068118902ada99dbad9904b5e7392545b';

/// Fetches full [AuthorDetails] for the given [key].
/// Automatically cached and disposed by Riverpod when no longer watched.

final class AuthorDetailsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<AuthorDetails>, String> {
  AuthorDetailsFamily._()
    : super(
        retry: null,
        name: r'authorDetailsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Fetches full [AuthorDetails] for the given [key].
  /// Automatically cached and disposed by Riverpod when no longer watched.

  AuthorDetailsProvider call(String key) =>
      AuthorDetailsProvider._(argument: key, from: this);

  @override
  String toString() => r'authorDetailsProvider';
}
