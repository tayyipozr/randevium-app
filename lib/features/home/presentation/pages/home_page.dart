import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:randevium_app/constants/navigation_constants.dart';
import 'package:randevium_app/core/bloc/bottom_nav_bloc.dart';
import 'package:randevium_app/core/extensions/context_extensions.dart';
import 'package:randevium_app/features/appointment/presentation/bloc/appointment_bloc.dart';
import 'package:randevium_app/features/appointment/presentation/bloc/appointment_state.dart';
import 'package:randevium_app/features/user/presentation/bloc/user/user_bloc.dart';
import 'package:randevium_app/features/user/presentation/bloc/user/user_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBloc, int>(
      builder: (context, index) {
      return Scaffold(
        appBar: AppBar(
          title: BlocBuilder<UserBloc, UserState>(
            bloc: BlocProvider.of<UserBloc>(context)..getMe(),
            builder: (context, state) {
              if (state is UserLoaded) {
                return Text(("${state.user.firstName} ${state.user.lastName}"));
              }
              return const Text("Unauthorized");
            },
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: context.read<BottomNavBloc>().changeTab,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.schedule), label: "My Appointments"),
              BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Create Appointment")
            ]),
        body: context.read<BottomNavBloc>().pages.elementAt(index),
      );
    });
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppointmentBloc, AppointmentState>(
      bloc: BlocProvider.of<AppointmentBloc>(context)..getAppointments(),
      builder: (context, state) {
        return GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,
          ),
          children: [
            if (state is AppointmentLoaded)
              ...state.appointments.map(
                (t) => InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, NavigationConstants.appointmentDetails, arguments: t.id),
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: context.paddingLow / 2,
                      child: Column(
                        children: [
                          const Placeholder(
                            fallbackHeight: 100,
                            fallbackWidth: 100,
                          ),
                          Text(t.company!.name!),
                          Text(t.company!.description!),
                          Wrap(alignment: WrapAlignment.center, children: [
                            const Icon(Icons.schedule),
                            Text(DateFormat.MEd().add_jm().format(t.appointmentDateTime!))
                          ])
                        ],
                      ),
                    ),
                  ),
                ),
              )
            else
              const SizedBox.shrink()
          ],
        );
      },
    );
  }
}
