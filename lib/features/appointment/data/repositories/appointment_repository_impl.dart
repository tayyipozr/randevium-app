import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:randevium_app/core/errors/failure.dart';
import 'package:randevium_app/features/appointment/data/datasources/appointment_api.dart';
import 'package:randevium_app/features/appointment/data/datasources/appointment_cache.dart';
import 'package:randevium_app/features/appointment/data/models/appointment_model.dart';
import 'package:randevium_app/features/appointment/domain/repositories/appointment_repository.dart';

class AppointmentRepositoryImpl implements AppointmentRepository {
  final AppointmentApi appointmentApi;
  final AppointmentCache appointmentCache;

  AppointmentRepositoryImpl({required this.appointmentApi, required this.appointmentCache});

  @override
  Future<Either<Failure, List<AppointmentModel>>> getAll() async {
    try {
      final appointments = await appointmentApi.getAll();
      return Right(appointments);
    } on DioException catch (e) {
      return Left(ServerFailure.withMessage(e.response));
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
