import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:randevium_app/features/user/domain/entites/user/user_response.dart';

part 'user_response_model.freezed.dart';
part 'user_response_model.g.dart';

@freezed
abstract class UserResponseModel with _$UserResponseModel implements UserResponse {
  const factory UserResponseModel(
    int id,
    String firstName,
    String lastName,
    String email,
    bool status,
  ) = _UserResponseModel;

  factory UserResponseModel.fromJson(Map<String, dynamic> json) => _$UserResponseModelFromJson(json);
}
