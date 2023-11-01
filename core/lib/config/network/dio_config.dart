import 'dart:async';

import '../../core.dart';
import 'interceptors/dio_log_interceptor.dart';
import 'interceptors/error_interceptor.dart';

part 'interceptors/request_interceptor.dart';
part 'interceptors/response_interceptor.dart';

class DioConfig {
  final AppConfig appConfig;

  final Dio _dio = Dio();

  Dio get dio => _dio;

  DioConfig({required this.appConfig}) {
    _dio
      ..options.baseUrl = appConfig.baseUrl
      ..interceptors.addAll(<Interceptor>[
        RequestInterceptor(_dio, headers),
        ErrorInterceptor(_dio),
        ResponseInterceptor(_dio),
        dioLoggerInterceptor,
      ])
      ..options.headers.addAll(headers);
  }

  Map<String, String> headers = <String, String>{};

  void setToken(String token) {
    headers['Authorization'] = 'Bearer $token';
  }
}
