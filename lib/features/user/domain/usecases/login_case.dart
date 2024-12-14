import 'package:dartz/dartz.dart';
import 'package:randevium_app/core/errors/failure.dart';
import 'package:randevium_app/core/usecases/usecase.dart';
import 'package:randevium_app/features/user/data/models/user/user_response_model.dart';
import 'package:randevium_app/features/user/domain/repositories/user_repository.dart';

class GetMeCase implements UseCase<UserResponseModel, NoParams> {
  UserRepository userRepository;

  GetMeCase({required this.userRepository});

  @override
  Future<Either<Failure, UserResponseModel>> call(NoParams params) async {
    return await userRepository.getMe();
  }

}