/// Domain-layer failures. Sealed class enables exhaustive pattern matching.
sealed class Failure {
  const Failure();
}

// =============================================================================
// NETWORK FAILURES
// =============================================================================

/// HTTP server errors (4xx / 5xx).
final class ServerFailure extends Failure {
  final int? statusCode;
  final String? apiMessage;

  const ServerFailure({this.statusCode, this.apiMessage});
}

/// Base class for connectivity-related failures.
sealed class NetworkFailure extends Failure {
  const NetworkFailure();
}

final class NoConnectionFailure extends NetworkFailure {
  const NoConnectionFailure();
}

final class ConnectionTimeoutFailure extends NetworkFailure {
  const ConnectionTimeoutFailure();
}

final class RequestCancelledFailure extends NetworkFailure {
  const RequestCancelledFailure();
}

/// Catch-all for unexpected errors.
final class UnknownFailure extends Failure {
  final Object? originalError;
  const UnknownFailure([this.originalError]);
}

// =============================================================================
// AUTHOR FAILURES
// =============================================================================

sealed class AuthorFailure extends Failure {
  const AuthorFailure();
}

final class AuthorSearchFailure extends AuthorFailure {
  const AuthorSearchFailure();
}

final class AuthorDetailsFailure extends AuthorFailure {
  const AuthorDetailsFailure();
}

final class AuthorWorksFailure extends AuthorFailure {
  const AuthorWorksFailure();
}
