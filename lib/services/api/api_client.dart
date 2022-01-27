import 'package:dio/dio.dart';
import 'package:shop_app/blocs/authentication/authentication_bloc.dart';
import 'package:shop_app/providers/auth.dart';
import 'package:shop_app/services/services.dart';

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

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters['auth'] =
        getIt.get<AuthenticationBloc>().state.userProfile.token;
    return super.onRequest(options, handler);
  }
}
