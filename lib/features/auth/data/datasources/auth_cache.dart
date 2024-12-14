import 'package:randevium_app/constants/preferences_constants.dart';
import 'package:randevium_app/core/apis/base_cache.dart';
import 'package:randevium_app/core/errors/exceptions.dart';
import 'package:randevium_app/features/auth/data/models/login/login_response_model.dart';

abstract class AuthCache extends BaseCache {
  Future<String> getLoginResponse();
  Future<void> cacheLoginResponse(LoginResponseModel loginResponseModel);
}

class AuthCacheImpl extends AuthCache {
  AuthCacheImpl();

  @override
  Future<void> cacheLoginResponse(LoginResponseModel loginResponseModel) {
    return sharedPreferences.setString(PreferencesConstants.token, loginResponseModel.token);
  }

  @override
  Future<String> getLoginResponse() {
    final String? jsonString = sharedPreferences.getString(PreferencesConstants.token);
    if (jsonString == null) {
      throw CacheException();
    } else {
      return Future.value(jsonString);
    }
  }
}
