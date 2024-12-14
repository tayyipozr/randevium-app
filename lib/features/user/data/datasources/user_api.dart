import 'package:randevium_app/constants/endpoints.dart';
import 'package:randevium_app/core/apis/base_api.dart';
import 'package:randevium_app/features/user/data/models/user/user_response_model.dart';

abstract class UserApi extends BaseApi {
  Future<UserResponseModel> getMe();
}

class UserApiImpl extends UserApi {
  UserApiImpl();

  @override
  Future<UserResponseModel> getMe() async {
    try {
      final response = await dio.get(Endpoints.getMe);
        UserResponseModel responseModel = UserResponseModel.fromJson(response.data);
        return responseModel;
    } catch (e) {
      rethrow;
    }
  }
}
