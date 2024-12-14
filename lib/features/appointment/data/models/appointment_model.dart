import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:randevium_app/features/appointment/domain/entities/appointment.dart';
import 'package:randevium_app/features/company/data/models/company_model.dart';

part 'appointment_model.freezed.dart';
part 'appointment_model.g.dart';

@freezed
abstract class AppointmentModel with _$AppointmentModel implements Appointment {
  const factory AppointmentModel(
    int? id,
    DateTime? createdTime,
    DateTime? updatedTime,
    DateTime? appointmentDateTime,
    int? appointmentStatus,
    int? companyId,
    CompanyModel? company
    ) = _AppointmentModel;

  factory AppointmentModel.fromJson(Map<String, dynamic> json) => _$AppointmentModelFromJson(json);
}