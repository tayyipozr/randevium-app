import 'package:dartz/dartz.dart';
import 'package:randevium_app/core/errors/failure.dart';
import 'package:randevium_app/core/usecases/usecase.dart';
import 'package:randevium_app/features/appointment/data/models/appointment_model.dart';
import 'package:randevium_app/features/appointment/domain/repositories/appointment_repository.dart';

class GetAppointmentsCase implements UseCase<List<AppointmentModel>, NoParams> {
  AppointmentRepository appointmentRepository;

  GetAppointmentsCase({required this.appointmentRepository});

  @override
  Future<Either<Failure, List<AppointmentModel>>> call(NoParams noParams) async {
    return await appointmentRepository.getAll();
  }

}