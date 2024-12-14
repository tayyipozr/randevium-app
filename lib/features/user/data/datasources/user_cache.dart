import 'dart:convert';

import 'package:randevium_app/constants/preferences_constants.dart';
import 'package:randevium_app/core/apis/base_cache.dart';
import 'package:randevium_app/core/errors/exceptions.dart';
import 'package:randevium_app/features/user/data/models/user/user_response_model.dart';

abstract class UserCache extends BaseCache {
  Future<UserResponseModel> getUser();
  Future<void> cacheUser(UserResponseModel userResponseModel);
}

class UserCacheImpl extends UserCache {
  UserCacheImpl();

  @override
  Future<void> cacheUser(UserResponseModel userResponseModel) {
    return sharedPreferences.setString(PreferencesConstants.user, jsonEncode(userResponseModel.toJson()));
  }

  @override
  Future<UserResponseModel> getUser() {
    final String? jsonString = sharedPreferences.getString(PreferencesConstants.user);
    if (jsonString == null) {
      throw CacheException();
    } else {
      return Future.value(UserResponseModel.fromJson(jsonDecode(jsonString)));
    }
  }
}