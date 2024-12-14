import 'package:randevium_app/features/employee/domain/entites/employee.dart';
import 'package:randevium_app/features/service/domain/entities/service.dart';

class AppointmentDetails {
    final int? appointmentId;
    final int? serviceId;
    final int? employeeId;
    final int? price;
    final int? duration;
    final Service? service;
    final Employee? employee;

    AppointmentDetails({
        required this.appointmentId,
        required this.serviceId,
        required this.employeeId,
        required this.price,
        required this.duration,
        required this.service,
        required this.employee,
    });

}