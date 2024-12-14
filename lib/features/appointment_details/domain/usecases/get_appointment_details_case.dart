import 'package:dartz/dartz.dart';
import 'package:randevium_app/core/errors/failure.dart';
import 'package:randevium_app/core/usecases/usecase.dart';
import 'package:randevium_app/features/appointment_details/data/models/appointment_details_model.dart';
import 'package:randevium_app/features/appointment_details/domain/repositories/appointment_details_repository.dart';

class GetAppointmentDetailssCase implements UseCase<List<AppointmentDetailsModel>, IdParams> {
  AppointmentDetailsRepository appointmentDetailsRepository;

  GetAppointmentDetailssCase({required this.appointmentDetailsRepository});

  @override
  Future<Either<Failure, List<AppointmentDetailsModel>>> call(IdParams params) async {
    return await appointmentDetailsRepository.getAppointmentDetails(params);
  }

}