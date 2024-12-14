import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randevium_app/constants/navigation_route.dart';
import 'package:randevium_app/core/bloc/bottom_nav_bloc.dart';
import 'package:randevium_app/core/extensions/context_extensions.dart';
import 'package:randevium_app/features/appointment/presentation/bloc/appointment_bloc.dart';
import 'package:randevium_app/features/appointment_details/presentation/bloc/appointment_details_bloc.dart';
import 'package:randevium_app/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:randevium_app/features/auth/presentation/bloc/home/home_bloc.dart';
import 'package:randevium_app/features/user/presentation/bloc/user/user_bloc.dart';
import 'package:randevium_app/splash_page.dart';
import 'injection_container.dart' as injection;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          border: const OutlineInputBorder(),
          contentPadding: context.paddingLow,
          labelStyle: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      onGenerateRoute: injection.serviceLocator<NavigationRoute>().generateRoute,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (BuildContext context) => injection.serviceLocator<AuthBloc>(),
            lazy: false,
          ),
          BlocProvider<HomeBloc>(
            create: (BuildContext context) => injection.serviceLocator<HomeBloc>(),
            lazy: false,
          ),
          BlocProvider<UserBloc>(
            create: (BuildContext context) => injection.serviceLocator<UserBloc>(),
            lazy: false,
          ),
          BlocProvider<AppointmentBloc>(
            create: (BuildContext context) => injection.serviceLocator<AppointmentBloc>(),
            lazy: false,
          ),
          BlocProvider<AppointmentDetailsBloc>(
            create: (BuildContext context) => injection.serviceLocator<AppointmentDetailsBloc>(),
            lazy: false,
          ),BlocProvider<BottomNavBloc>(
            create: (BuildContext context) => injection.serviceLocator<BottomNavBloc>(),
            lazy: false,
          ),
        ],
        child: const SplashPage(),
      ),
    );
  }
}
