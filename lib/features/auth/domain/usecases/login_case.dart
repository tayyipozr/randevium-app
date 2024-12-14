import 'package:dartz/dartz.dart';
import 'package:randevium_app/core/errors/failure.dart';
import 'package:randevium_app/core/usecases/usecase.dart';
import 'package:randevium_app/features/auth/data/models/login/login_response_model.dart';
import 'package:randevium_app/features/auth/domain/repositories/auth_repository.dart';

class LoginCase implements UseCase<LoginResponseModel, LoginParams> {
  AuthRepository authRepository;

  LoginCase({required this.authRepository});

  @override
  Future<Either<Failure, LoginResponseModel>> call(LoginParams params) async {
    return await authRepository.login(params);
  }

}