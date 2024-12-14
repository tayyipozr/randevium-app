import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:randevium_app/core/errors/failure.dart';
import 'package:randevium_app/core/usecases/usecase.dart';
import 'package:randevium_app/features/auth/data/datasources/auth_api.dart';
import 'package:randevium_app/features/auth/data/datasources/auth_cache.dart';
import 'package:randevium_app/features/auth/data/models/login/login_response_model.dart';
import 'package:randevium_app/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApi authApi;
  final AuthCache authCache;

  AuthRepositoryImpl({required this.authApi, required this.authCache});

  @override
  Future<Either<Failure, LoginResponseModel>> login(LoginParams params) async {
    try {
      final login = await authApi.login(params);
      authCache.cacheLoginResponse(login);
      return Right(login);
    } on DioException catch (e) {
      return Left(ServerFailure.withMessage(e.response));
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
