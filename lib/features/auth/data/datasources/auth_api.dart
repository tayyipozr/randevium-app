import 'package:randevium_app/constants/endpoints.dart';
import 'package:randevium_app/core/apis/base_api.dart';
import 'package:randevium_app/core/usecases/usecase.dart';
import 'package:randevium_app/features/auth/data/models/login/login_response_model.dart';

abstract class AuthApi extends BaseApi {
  Future<LoginResponseModel> login(LoginParams params);
}

class AuthApiImpl extends AuthApi {
  AuthApiImpl();

  @override
  Future<LoginResponseModel> login(LoginParams params) async {
    try {
      final response = await dio.post(Endpoints.login, data: params.login.toJson());
        LoginResponseModel responseModel = LoginResponseModel.fromJson(response.data);
        return responseModel;
    } catch (e) {
      rethrow;
    }
  }
}
