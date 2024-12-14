import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randevium_app/core/errors/failure.dart';
import 'package:randevium_app/core/usecases/usecase.dart';
import 'package:randevium_app/features/auth/data/models/login/login_model.dart';
import 'package:randevium_app/features/auth/domain/usecases/login_case.dart';
import 'package:randevium_app/features/auth/presentation/bloc/auth/auth_state.dart';

class AuthBloc extends Cubit<LoginState> {
  final LoginCase _loginCase;

  AuthBloc(this._loginCase) : super(const LoginInitial());


  Future<void> login(LoginModel loginModel) async {
    emit(const LoginLoading());
    final response = await _loginCase(LoginParams(loginModel));
    response.fold((failure) {
      emit(LoginError(failure is ServerFailure ? failure.detailedMessage ?? '' : "An error occured"));
    }, (login) {
      emit(LoginLoaded(login));
    });
  }
}
