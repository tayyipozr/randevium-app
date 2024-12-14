import 'package:randevium_app/injection_container.dart' as injector;
import 'package:shared_preferences/shared_preferences.dart';

class BaseCache {
  final sharedPreferences = injector.serviceLocator.get<SharedPreferences>();

  BaseCache();
}
