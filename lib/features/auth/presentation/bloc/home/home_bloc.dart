import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randevium_app/features/auth/presentation/bloc/home/home_state.dart';

class HomeBloc extends Cubit<HomeState> {
  HomeBloc() : super(const HomeInitial());
}
