import 'package:dio/dio.dart';
import 'package:loggy/loggy.dart';
import 'package:randevium_app/core/apis/interceptors.dart/auth_interceptor.dart';
import 'package:randevium_app/core/apis/interceptors.dart/dev_interceptor.dart';
import 'package:randevium_app/injection_container.dart' as injector;

class BaseApi {
  final dio = injector.serviceLocator.get<Dio>();
  final loggy = injector.serviceLocator.get<Loggy>();

  BaseApi() {
    dio.interceptors.clear();
    dio.interceptors.add(AuthenticationInterceptor());
    dio.interceptors.add(DevelopmentInterceptor());

    dio.options.headers.addAll({"Content-Type": "application/json"});

    dio.options.receiveTimeout = const Duration(seconds: 10);
    dio.options.sendTimeout = const Duration(seconds: 10);
    dio.options.connectTimeout = const Duration(seconds: 10);
    dio.options.followRedirects = false;
  }
}
