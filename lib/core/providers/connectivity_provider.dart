import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'connectivity_provider.g.dart';

/// Streams the current network connectivity status.
/// Returns `true` when the device has an active network connection.
@Riverpod(keepAlive: true)
Stream<bool> connectivityStatus(Ref ref) {
  final connectivity = Connectivity();

  return connectivity.onConnectivityChanged.map(
    (results) => results.any((r) => r != ConnectivityResult.none),
  );
}
