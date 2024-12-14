import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randevium_app/core/errors/failure.dart';
import 'package:randevium_app/core/usecases/usecase.dart';
import 'package:randevium_app/features/appointment_details/domain/usecases/get_appointment_details_case.dart';
import 'package:randevium_app/features/appointment_details/presentation/bloc/appointment_details_state.dart';

class AppointmentDetailsBloc extends Cubit<AppointmentDetailsState> {
  final GetAppointmentDetailssCase _getAppointmentDetailssCase;

  AppointmentDetailsBloc(this._getAppointmentDetailssCase) : super(const AppointmentDetailsInitial());


  Future<void> getAppointmentDetails(int id) async {
    emit(const AppointmentDetailsLoading());
    final response = await _getAppointmentDetailssCase(IdParams(id));
    response.fold((failure) {
      emit(AppointmentDetailsError(failure is ServerFailure ? failure.detailedMessage ?? '' : "An error occured"));
    }, (appointments) {
      emit(AppointmentDetailsLoaded(appointments));
    });
  }
}
