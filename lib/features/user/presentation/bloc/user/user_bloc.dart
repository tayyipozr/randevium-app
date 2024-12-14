import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randevium_app/core/errors/failure.dart';
import 'package:randevium_app/core/usecases/usecase.dart';
import 'package:randevium_app/features/user/data/models/user/user_response_model.dart';
import 'package:randevium_app/features/user/domain/usecases/login_case.dart';
import 'package:randevium_app/features/user/presentation/bloc/user/user_state.dart';

class UserBloc extends Cubit<UserState> {
  final GetMeCase _getMeCase;
  UserResponseModel? userResponseModel;

  UserBloc(this._getMeCase) : super(const UserInitial());

  Future<void> getMe() async {
    emit(const UserInitial());
    if (userResponseModel != null) {
      emit(UserLoaded(userResponseModel!));
    }
    final response = await _getMeCase(const NoParams());
    response.fold((failure) {
      emit(UserError(failure is ServerFailure ? failure.detailedMessage ?? '' : "An error occured"));
    }, (user) {
      userResponseModel = user;
      emit(UserLoaded(user));
    });
  }
}
