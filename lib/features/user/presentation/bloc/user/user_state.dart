import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:randevium_app/features/user/data/models/user/user_response_model.dart';

@immutable
abstract class UserState {
  const UserState();
}

class UserInitial extends UserState {
  const UserInitial();
}

class UserLoading extends UserState {
  const UserLoading();
}

class UserLoaded extends UserState {
  final UserResponseModel user;

  const UserLoaded(this.user);
}

class UserError extends UserState {
  final String message;

  const UserError(this.message);
}

