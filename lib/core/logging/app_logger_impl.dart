import 'package:flutter/foundation.dart';
import 'package:realview_code_exercise/core/logging/app_logger.dart';

/// Debug-only logger implementation using [debugPrint].
/// In production (kReleaseMode) all output is suppressed.
final class AppLoggerImpl implements AppLogger {
  const AppLoggerImpl();

  @override
  void debug(String message) => _log('DEBUG', message);

  @override
  void info(String message) => _log('INFO', message);

  @override
  void warning(String message) => _log('WARN', message);

  @override
  void error(String message, {Object? error, StackTrace? stackTrace}) {
    _log('ERROR', message);
    if (error != null) _log('ERROR', 'Cause: $error');
    if (stackTrace != null) _log('ERROR', stackTrace.toString());
  }

  void _log(String level, String message) {
    if (kDebugMode) debugPrint('[$level] $message');
  }
}
