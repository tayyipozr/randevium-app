import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randevium_app/constants/navigation_constants.dart';
import 'package:randevium_app/core/bloc/bottom_nav_bloc.dart';
import 'package:randevium_app/enums/bloc_enums.dart';
import 'package:randevium_app/features/appointment/presentation/bloc/appointment_bloc.dart';
import 'package:randevium_app/features/appointment_details/presentation/bloc/appointment_details_bloc.dart';
import 'package:randevium_app/features/appointment_details/presentation/pages/appointment_details_page.dart';
import 'package:randevium_app/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:randevium_app/features/auth/presentation/bloc/home/home_bloc.dart';
import 'package:randevium_app/features/auth/presentation/pages/auth_page.dart';
import 'package:randevium_app/features/home/presentation/pages/home_page.dart';
import 'package:randevium_app/features/user/presentation/bloc/user/user_bloc.dart';
import 'package:randevium_app/injection_container.dart' as injector;
import 'package:randevium_app/splash_page.dart';

class NavigationRoute {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavigationConstants.splash:
        return _navigate(const SplashPage(), BlocEnum.userBloc);
      case NavigationConstants.auth:
        return _navigate(const AuthPage(), BlocEnum.authBloc);
      case NavigationConstants.home:
        return _navigate(const HomePage(), BlocEnum.homeBloc);
      case NavigationConstants.appointmentDetails:
        return _navigate(AppointmentDetails(settings.arguments as int?), BlocEnum.appointmenDetailsBloc);
    }
    return MaterialPageRoute(builder: (context) => const Scaffold(body: Center(child: Text("Not Found"))));
  }

  MaterialPageRoute _navigate(Widget widget, BlocEnum blocEnum) {
    return MaterialPageRoute(builder: (context) {
      switch (blocEnum) {
        case BlocEnum.authBloc:
          return BlocProvider.value(value: injector.serviceLocator<AuthBloc>(), child: widget);
        case BlocEnum.homeBloc:
          return MultiBlocProvider(
            providers: [
              BlocProvider<HomeBloc>(
                create: (BuildContext context) => injector.serviceLocator<HomeBloc>(),
                lazy: false,
              ),
              BlocProvider<UserBloc>(
                create: (BuildContext context) => injector.serviceLocator<UserBloc>(),
                lazy: false,
              ),
              BlocProvider<AppointmentBloc>(
                create: (BuildContext context) => injector.serviceLocator<AppointmentBloc>(),
                lazy: false,
              ),  BlocProvider<BottomNavBloc>(
                create: (BuildContext context) => injector.serviceLocator<BottomNavBloc>(),
                lazy: false,
              ),
            ],
            child: widget,
          );
        case BlocEnum.userBloc:
          return BlocProvider.value(value: injector.serviceLocator<UserBloc>(), child: widget);
        case BlocEnum.appointmenDetailsBloc:
          return BlocProvider.value(value: injector.serviceLocator<AppointmentDetailsBloc>(), child: widget);
        default:
          return widget;
      }
    });
  }
}
