import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:randevium_app/features/auth/domain/entities/login/login_response.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
abstract class LoginResponseModel with _$LoginResponseModel implements LoginResponse {
  const factory LoginResponseModel(
    String token,
    DateTime expiration
    ) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) => _$LoginResponseModelFromJson(json);
}