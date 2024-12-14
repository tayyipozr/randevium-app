import 'package:dartz/dartz.dart';
import 'package:randevium_app/core/errors/failure.dart';
import 'package:randevium_app/core/usecases/usecase.dart';
import 'package:randevium_app/features/auth/data/models/login/login_response_model.dart';

abstract class AuthRepository {
  Future<Either<Failure, LoginResponseModel>> login(LoginParams params);
}
