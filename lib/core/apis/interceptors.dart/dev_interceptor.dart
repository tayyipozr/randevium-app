import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:loggy/loggy.dart';
import 'package:randevium_app/injection_container.dart' as injector;

class DevelopmentInterceptor extends Interceptor {
  final Loggy _loggy = injector.serviceLocator.get<Loggy>();

  DevelopmentInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (!kReleaseMode) {
      _loggy.debug("[${options.method}]: ${options.uri}");
      _loggy.debug(options.headers);
      _loggy.debug(options.data);
    }

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (!kReleaseMode) {
      _loggy.debug(response.statusCode);
      _loggy.debug(response.data);
    }

    super.onResponse(response, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    if (!kReleaseMode) {
      _loggy.debug(err.stackTrace);

      _loggy.debug(err.response?.statusCode);
      _loggy.debug(err.response?.data);
    }

    return handler.next(err);
  }
}
