import 'package:randevium_app/features/company/domain/entities/company.dart';

class Appointment {
  final int? id;
  final DateTime? createdTime;
  final DateTime? updatedTime;
  final DateTime? appointmentDateTime;
  final int? appointmentStatus;
  final int? companyId;
  final Company? company;

  Appointment({
    required this.id,
    required this.createdTime,
    required this.updatedTime,
    required this.appointmentDateTime,
    required this.appointmentStatus,
    required this.companyId,
    required this.company
  });
}