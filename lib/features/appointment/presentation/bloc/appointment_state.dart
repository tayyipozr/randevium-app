import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:randevium_app/features/appointment/data/models/appointment_model.dart';

@immutable
abstract class AppointmentState {
  const AppointmentState();
}

class AppointmentInitial extends AppointmentState {
  const AppointmentInitial();
}

class AppointmentLoading extends AppointmentState {
  const AppointmentLoading();
}

class AppointmentLoaded extends AppointmentState {
  final List<AppointmentModel> appointments;

  const AppointmentLoaded(this.appointments);
}

class AppointmentError extends AppointmentState {
  final String message;

  const AppointmentError(this.message);
}
