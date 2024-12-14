import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:randevium_app/features/appointment_details/domain/entites/appointment_details.dart';
import 'package:randevium_app/features/employee/data/models/employee_model.dart';
import 'package:randevium_app/features/service/data/models/service_model.dart';

part 'appointment_details_model.freezed.dart';
part 'appointment_details_model.g.dart';

@freezed
abstract class AppointmentDetailsModel with _$AppointmentDetailsModel implements AppointmentDetails {
  const factory AppointmentDetailsModel(
    int? appointmentId,
    int? serviceId,
    int? employeeId,
    int? price,
    int? duration,
    ServiceModel? service,
    EmployeeModel? employee
    ) = _AppointmentDetailsModel;

  factory AppointmentDetailsModel.fromJson(Map<String, dynamic> json) => _$AppointmentDetailsModelFromJson(json);
}