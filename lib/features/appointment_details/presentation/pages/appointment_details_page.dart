import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randevium_app/features/appointment_details/data/models/appointment_details_model.dart';
import 'package:randevium_app/features/appointment_details/presentation/bloc/appointment_details_bloc.dart';
import 'package:randevium_app/features/appointment_details/presentation/bloc/appointment_details_state.dart';

class AppointmentDetails extends StatelessWidget {
  final int? appointmentId;
  const AppointmentDetails(this.appointmentId, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BlocProvider.of<AppointmentDetailsBloc>(context)..getAppointmentDetails(appointmentId!),
      child: Scaffold(
        body: BlocConsumer<AppointmentDetailsBloc, AppointmentDetailsState>(
          builder: (context, state) {
            if (state is AppointmentDetailsLoaded) {
              return Column(
                children: [
                  Expanded(child: GridView.builder( gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                  ), 
                  itemCount: state.appointmenDetails.length,
                  itemBuilder: (context, index) {
                    AppointmentDetailsModel? appointmentDetails = state.appointmenDetails.elementAt(index);
                    return Card(
                      child: Column(
                        children: [
                          Text(appointmentDetails.service!.name!),
                          Text(appointmentDetails.service!.description!),
                          Text(appointmentDetails.service!.cost.toString()),
                          Text(appointmentDetails.employee!.description!),
                          Text(appointmentDetails.price.toString()),
                          Text(appointmentDetails.duration.toString())
                        ],
                      ),
                    );
                  },),)
                ],
              );
            }
            return const Placeholder();
          }, listener: (BuildContext context, AppointmentDetailsState state) {  },
        ),
      ),
    );
  }
}