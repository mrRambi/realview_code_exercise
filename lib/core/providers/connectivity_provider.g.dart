// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connectivity_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Streams the current network connectivity status.
/// Returns `true` when the device has an active network connection.

@ProviderFor(connectivityStatus)
final connectivityStatusProvider = ConnectivityStatusProvider._();

/// Streams the current network connectivity status.
/// Returns `true` when the device has an active network connection.

final class ConnectivityStatusProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, Stream<bool>>
    with $FutureModifier<bool>, $StreamProvider<bool> {
  /// Streams the current network connectivity status.
  /// Returns `true` when the device has an active network connection.
  ConnectivityStatusProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'connectivityStatusProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$connectivityStatusHash();

  @$internal
  @override
  $StreamProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<bool> create(Ref ref) {
    return connectivityStatus(ref);
  }
}

String _$connectivityStatusHash() =>
    r'301e5e833c40d8ae9cea936a42c5358f6f54941d';
