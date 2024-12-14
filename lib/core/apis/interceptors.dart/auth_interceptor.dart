import 'package:dio/dio.dart';
import 'package:loggy/loggy.dart';
import 'package:randevium_app/constants/preferences_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:randevium_app/injection_container.dart' as injector;

class AuthenticationInterceptor extends Interceptor {
  final Loggy _loggy = injector.serviceLocator.get<Loggy>();
  final SharedPreferences _sharedPreferences = injector.serviceLocator.get<SharedPreferences>();

  AuthenticationInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (!(options.path.contains('Login') || options.path.contains('Register'))) {
      String? token = _sharedPreferences.getString(PreferencesConstants.token);

      _loggy.debug('Authorization token is ${token ?? '-'}');

      if (token != null) {
        options.headers.putIfAbsent('Authorization', () => 'Bearer $token');
      }
    }

    super.onRequest(options, handler);
  }
}
