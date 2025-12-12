class CeresLogger {
  static void log(String message) {
    print('[CERES] $message');
  }

  static void error(String message, [Object? error, StackTrace? stackTrace]) {
    print('[CERES ERROR] $message');
    if (error != null) {
      print('Error: $error');
    }
    if (stackTrace != null) {
      print('Stack trace: $stackTrace');
    }
  }

  static void info(String message) {
    print('[CERES INFO] $message');
  }

  static void warning(String message) {
    print('[CERES WARNING] $message');
  }
}