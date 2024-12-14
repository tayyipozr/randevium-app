import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:loggy/loggy.dart';
import 'package:randevium_app/constants/navigation_route.dart';
import 'package:randevium_app/core/apis/base_api.dart';
import 'package:randevium_app/core/apis/base_cache.dart';
import 'package:randevium_app/core/bloc/bottom_nav_bloc.dart';
import 'package:randevium_app/features/appointment/data/datasources/appointment_api.dart';
import 'package:randevium_app/features/appointment/data/datasources/appointment_cache.dart';
import 'package:randevium_app/features/appointment/data/repositories/appointment_repository_impl.dart';
import 'package:randevium_app/features/appointment/domain/repositories/appointment_repository.dart';
import 'package:randevium_app/features/appointment/domain/usecases/get_appointments_case.dart';
import 'package:randevium_app/features/appointment/presentation/bloc/appointment_bloc.dart';
import 'package:randevium_app/features/appointment_details/data/datasources/appointment_details_api.dart';
import 'package:randevium_app/features/appointment_details/data/datasources/appointment_details_cache.dart';
import 'package:randevium_app/features/appointment_details/data/repositories/appointment_details_repository.dart';
import 'package:randevium_app/features/appointment_details/domain/repositories/appointment_details_repository.dart';
import 'package:randevium_app/features/appointment_details/domain/usecases/get_appointment_details_case.dart';
import 'package:randevium_app/features/appointment_details/presentation/bloc/appointment_details_bloc.dart';
import 'package:randevium_app/features/auth/data/datasources/auth_api.dart';
import 'package:randevium_app/features/auth/data/datasources/auth_cache.dart';
import 'package:randevium_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:randevium_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:randevium_app/features/auth/domain/usecases/login_case.dart';
import 'package:randevium_app/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:randevium_app/features/auth/presentation/bloc/home/home_bloc.dart';
import 'package:randevium_app/features/user/data/datasources/user_api.dart';
import 'package:randevium_app/features/user/data/datasources/user_cache.dart';
import 'package:randevium_app/features/user/data/repositories/user_repository_impl.dart';
import 'package:randevium_app/features/user/domain/repositories/user_repository.dart';
import 'package:randevium_app/features/user/domain/usecases/login_case.dart';
import 'package:randevium_app/features/user/presentation/bloc/user/user_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {
  Loggy.initLoggy(
    logPrinter: (kReleaseMode) ? const PrettyPrinter() : const PrettyPrinter(showColors: true),
    logOptions: (kReleaseMode) ? const LogOptions(LogLevel.error) : const LogOptions(LogLevel.all),
  );

  serviceLocator.registerLazySingleton(() => Loggy('RandeviumLogger'));

  // Features
  serviceLocator.registerFactory(() => AuthBloc(serviceLocator()));
  serviceLocator.registerFactory(() => UserBloc(serviceLocator()));
  serviceLocator.registerFactory(() => AppointmentBloc(serviceLocator()));
  serviceLocator.registerFactory(() => AppointmentDetailsBloc(serviceLocator()));

  serviceLocator.registerFactory(() => HomeBloc());
  serviceLocator.registerFactory(() => BottomNavBloc());
  // UseCases
  serviceLocator.registerLazySingleton(() => LoginCase(authRepository: serviceLocator()));
  serviceLocator.registerLazySingleton(() => GetMeCase(userRepository: serviceLocator()));
  serviceLocator.registerLazySingleton(() => GetAppointmentsCase(appointmentRepository: serviceLocator()));
  serviceLocator.registerLazySingleton(() => GetAppointmentDetailssCase(appointmentDetailsRepository: serviceLocator()));
  // Repositories
  serviceLocator.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(authApi: serviceLocator(), authCache: serviceLocator()));
  serviceLocator.registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(userApi: serviceLocator(), userCache: serviceLocator()));
  serviceLocator.registerLazySingleton<AppointmentRepository>(
      () => AppointmentRepositoryImpl(appointmentApi: serviceLocator(), appointmentCache: serviceLocator()));
  serviceLocator.registerLazySingleton<AppointmentDetailsRepository>(
      () => AppointmentDetailsRepositoryImpl(appointmentDetailsApi: serviceLocator(), appointmentDetailsCache: serviceLocator()));
  // DataSources
  // Api
  serviceLocator.registerLazySingleton(() => Dio());
  serviceLocator.registerLazySingleton(() => BaseApi());
  serviceLocator.registerLazySingleton<AuthApi>(() => AuthApiImpl());
  serviceLocator.registerLazySingleton<UserApi>(() => UserApiImpl());
  serviceLocator.registerLazySingleton<AppointmentApi>(() => AppointmentApiImpl());
  serviceLocator.registerLazySingleton<AppointmentDetailsApi>(() => AppointmentDetailsApiImpl());
  // Cache
  serviceLocator.registerLazySingleton(() => BaseCache());
  serviceLocator.registerLazySingleton<AuthCache>(() => AuthCacheImpl());
  serviceLocator.registerLazySingleton<UserCache>(() => UserCacheImpl());
  serviceLocator.registerLazySingleton<AppointmentCache>(() => AppointmentCacheImpl());
  serviceLocator.registerLazySingleton<AppointmentDetailsCache>(() => AppointmentDetailsCacheImpl());
  // Core

  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator.registerLazySingleton(() => sharedPreferences);

  serviceLocator.registerFactory(() => NavigationRoute());

  // serviceLocator.registerLazySingleton(() => Endpoints());
}
