/// Duration constants used across the application.
abstract final class AppDurations {
  AppDurations._();

  static const Duration connectTimeout = Duration(seconds: 10);
  static const Duration receiveTimeout = Duration(seconds: 10);
  static const Duration sendTimeout = Duration(seconds: 10);

  /// Debounce delay for the search input field.
  static const Duration searchDebounce = Duration(milliseconds: 400);
}
