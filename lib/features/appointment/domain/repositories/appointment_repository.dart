import 'package:dartz/dartz.dart';
import 'package:randevium_app/core/errors/failure.dart';
import 'package:randevium_app/features/appointment/data/models/appointment_model.dart';

abstract class AppointmentRepository {
  Future<Either<Failure, List<AppointmentModel>>> getAll();
}
