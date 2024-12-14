import 'package:dartz/dartz.dart';
import 'package:randevium_app/core/errors/failure.dart';
import 'package:randevium_app/core/usecases/usecase.dart';
import 'package:randevium_app/features/appointment_details/data/models/appointment_details_model.dart';

abstract class AppointmentDetailsRepository {
  Future<Either<Failure, List<AppointmentDetailsModel>>> getAppointmentDetails(IdParams params);
}
