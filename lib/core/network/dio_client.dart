import 'package:dio/dio.dart';
import 'package:realview_code_exercise/core/constants/constants.dart';
import 'interceptors/logging_interceptor.dart';

/// Configured Dio instance with timeouts and a logging interceptor.
final class DioClient {
  DioClient._();

  static Dio create() {
    final dio = Dio(
      BaseOptions(
        baseUrl: AppEndpoints.baseUrl,
        connectTimeout: AppDurations.connectTimeout,
        receiveTimeout: AppDurations.receiveTimeout,
        sendTimeout: AppDurations.sendTimeout,
        headers: const {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    dio.interceptors.add(LoggingInterceptor());

    return dio;
  }
}
