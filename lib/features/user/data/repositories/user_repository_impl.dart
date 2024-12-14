import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:randevium_app/core/errors/failure.dart';
import 'package:randevium_app/features/user/data/datasources/user_api.dart';
import 'package:randevium_app/features/user/data/datasources/user_cache.dart';
import 'package:randevium_app/features/user/data/models/user/user_response_model.dart';
import 'package:randevium_app/features/user/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApi userApi;
  final UserCache userCache;

  UserRepositoryImpl({required this.userApi, required this.userCache});

  @override
  Future<Either<Failure, UserResponseModel>> getMe() async {
    try {
      final user = await userApi.getMe();
      userCache.cacheUser(user);
      return Right(user);
    } on DioException catch (e) {
      return Left(ServerFailure.withMessage(e.response));
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
