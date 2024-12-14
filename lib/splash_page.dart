import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:randevium_app/constants/navigation_constants.dart';
import 'package:randevium_app/features/user/presentation/bloc/user/user_bloc.dart';
import 'package:randevium_app/features/user/presentation/bloc/user/user_state.dart';
import 'package:randevium_app/injection_container.dart' as injector;

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<UserBloc, UserState>(
        bloc: injector.serviceLocator<UserBloc>()..getMe(),
        listener: (context, state) {
          if (state is UserLoaded) {
            Navigator.pushReplacementNamed(context, NavigationConstants.home);
          } else if (state is UserError) {
            _buildShowSnackBar(context, state.message);
            Navigator.pushReplacementNamed(context, NavigationConstants.auth);
          }
        },
        child: Center(
          child: Lottie.asset(
            'assets/lottie/a.json',
            fit: BoxFit.fill,
            controller: _controller,
            onLoaded: (composition) {
              _controller
                ..duration = composition.duration
                ..forward()
                ..repeat();
            },
          ),
        ),
      ),
    );
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> _buildShowSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }
}
