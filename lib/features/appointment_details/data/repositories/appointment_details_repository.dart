import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:randevium_app/core/errors/failure.dart';
import 'package:randevium_app/core/usecases/usecase.dart';
import 'package:randevium_app/features/appointment_details/data/datasources/appointment_details_api.dart';
import 'package:randevium_app/features/appointment_details/data/datasources/appointment_details_cache.dart';
import 'package:randevium_app/features/appointment_details/data/models/appointment_details_model.dart';
import 'package:randevium_app/features/appointment_details/domain/repositories/appointment_details_repository.dart';

class AppointmentDetailsRepositoryImpl implements AppointmentDetailsRepository {
  final AppointmentDetailsApi appointmentDetailsApi;
  final AppointmentDetailsCache appointmentDetailsCache;

  AppointmentDetailsRepositoryImpl({required this.appointmentDetailsApi, required this.appointmentDetailsCache});

  @override
  Future<Either<Failure, List<AppointmentDetailsModel>>> getAppointmentDetails(IdParams params) async {
    try {
      final appointments = await appointmentDetailsApi.getAppointmentDetails(params);
      return Right(appointments);
    } on DioException catch (e) {
      return Left(ServerFailure.withMessage(e.response));
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
