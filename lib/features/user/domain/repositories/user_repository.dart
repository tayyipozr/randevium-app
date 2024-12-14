import 'package:dartz/dartz.dart';
import 'package:randevium_app/core/errors/failure.dart';
import 'package:randevium_app/features/user/data/models/user/user_response_model.dart';

abstract class UserRepository {
  Future<Either<Failure, UserResponseModel>> getMe();
}
