/// Abstract logger interface. Swap implementations without touching call sites.
abstract interface class AppLogger {
  void debug(String message);
  void info(String message);
  void warning(String message);
  void error(String message, {Object? error, StackTrace? stackTrace});
}
