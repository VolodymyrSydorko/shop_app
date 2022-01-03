import 'package:dio/dio.dart';

import 'endpoints.dart';

class ApiClient {
  late Dio dio;

  ApiClient() {
    dio = _init();
  }

  Dio _init() {
    final dio = Dio(
      BaseOptions(
        baseUrl: Endpoints.baseUrl,
        receiveTimeout: Endpoints.receiveTimeout,
        connectTimeout: Endpoints.connectTimeout,
      ),
    )..interceptors.add(ApiInterceptor());
    return dio;
  }
}

class ApiInterceptor extends Interceptor {}
