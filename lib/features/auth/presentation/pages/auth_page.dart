import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randevium_app/constants/navigation_constants.dart';
import 'package:randevium_app/core/utils/base_ui_mixin.dart';
import 'package:randevium_app/features/auth/data/models/login/login_model.dart';
import 'package:randevium_app/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:randevium_app/features/auth/presentation/bloc/auth/auth_state.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> with BaseUiMixin {
  GlobalKey<FormState>? _formKey;
  String? _phoneNumber;
  String? _password;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, LoginState>(
        builder: (context, state) {
          if (state is LoginInitial || state is LoginError) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Login'),
                    TextFormField(
                      decoration: const InputDecoration(hintText: 'Phone number'),
                      onSaved: (newValue) {
                        _phoneNumber = newValue;
                      },
                      validator: (value) {
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Password',
                      ),
                      onSaved: (newValue) {
                        _password = newValue;
                      },
                      validator: (value) {
                        return null;
                      },
                      obscureText: true,
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          if (_formKey!.currentState!.validate()) {
                            _formKey!.currentState!.save();
                            LoginModel loginModel = LoginModel(_phoneNumber!, _password!);
                            await BlocProvider.of<AuthBloc>(context).login(loginModel);
                          }
                        },
                        child: const Text('Login'))
                  ],
                ),
              ),
            );
          } else if (state is LoginLoading) {
            return const CircularProgressIndicator();
          } else if (state is LoginLoaded) {
            return const CircularProgressIndicator();
          } else {
            return buildError();
          }
        },
        listener: (context, state) {
          if (state is LoginError) {
            buildShowSnackBar(context, state.message);
          } else if (state is LoginLoaded) {
            Navigator.pushReplacementNamed(context, NavigationConstants.splash);
          }
        },
      ),
    );
  }
}
