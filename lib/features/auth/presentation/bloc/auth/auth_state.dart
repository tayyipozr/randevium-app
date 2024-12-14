import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:randevium_app/features/auth/data/models/login/login_response_model.dart';

@immutable
abstract class LoginState {
  const LoginState();
}

class LoginInitial extends LoginState {
  const LoginInitial();
}

class LoginLoading extends LoginState {
  const LoginLoading();
}

class LoginLoaded extends LoginState {
  final LoginResponseModel login;

  const LoginLoaded(this.login);
}

class LoginError extends LoginState {
  final String message;

  const LoginError(this.message);
}
