import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randevium_app/features/appointment/presentation/pages/create_appointment_page.dart';
import 'package:randevium_app/features/home/presentation/pages/home_page.dart';

class BottomNavBloc extends Cubit<int> {

  BottomNavBloc() : super(0);


  void changeTab(int index) async {
    emit(index);
  }

  final List<Widget> pages = [
    const HomeBody(),
    const CreateAppointmentPage(),
  ];
}
