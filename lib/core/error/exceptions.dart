/// Data-layer exceptions. Network errors are handled via DioException separately.
sealed class AppException implements Exception {
  final String message;
  const AppException(this.message);

  @override
  String toString() => 'AppException: $message';
}

// =============================================================================
// AUTHOR EXCEPTIONS
// =============================================================================

sealed class AuthorException extends AppException {
  const AuthorException(super.message);
}

final class AuthorSearchException extends AuthorException {
  const AuthorSearchException() : super('Failed to search authors.');
}

final class AuthorDetailsException extends AuthorException {
  const AuthorDetailsException() : super('Failed to fetch author details.');
}

final class AuthorWorksException extends AuthorException {
  const AuthorWorksException() : super('Failed to fetch author works.');
}
