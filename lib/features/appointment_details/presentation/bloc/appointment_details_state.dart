import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:randevium_app/features/appointment_details/data/models/appointment_details_model.dart';

@immutable
abstract class AppointmentDetailsState {
  const AppointmentDetailsState();
}

class AppointmentDetailsInitial extends AppointmentDetailsState {
  const AppointmentDetailsInitial();
}

class AppointmentDetailsLoading extends AppointmentDetailsState {
  const AppointmentDetailsLoading();
}

class AppointmentDetailsLoaded extends AppointmentDetailsState {
  final List<AppointmentDetailsModel> appointmenDetails;

  const AppointmentDetailsLoaded(this.appointmenDetails);
}

class AppointmentDetailsError extends AppointmentDetailsState {
  final String message;

  const AppointmentDetailsError(this.message);
}
