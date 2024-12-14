import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randevium_app/core/errors/failure.dart';
import 'package:randevium_app/core/usecases/usecase.dart';
import 'package:randevium_app/features/appointment/domain/usecases/get_appointments_case.dart';
import 'package:randevium_app/features/appointment/presentation/bloc/appointment_state.dart';

class AppointmentBloc extends Cubit<AppointmentState> {
  final GetAppointmentsCase _getAppointmentsCase;

  AppointmentBloc(this._getAppointmentsCase) : super(const AppointmentInitial());


  Future<void> getAppointments() async {
    emit(const AppointmentLoading());
    final response = await _getAppointmentsCase(const NoParams());
    response.fold((failure) {
      emit(AppointmentError(failure is ServerFailure ? failure.detailedMessage ?? '' : "An error occured"));
    }, (appointments) {
      emit(AppointmentLoaded(appointments));
    });
  }
}
