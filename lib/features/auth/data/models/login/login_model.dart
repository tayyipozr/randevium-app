import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:randevium_app/features/auth/domain/entities/login/login.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
abstract class LoginModel with _$LoginModel implements Login {
  const factory LoginModel(
    String phoneNumber,
    String password
    ) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);
}