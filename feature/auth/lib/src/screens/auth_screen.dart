import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:navigation/app_router/app_router.dart';

import '../bloc/auth_bloc.dart';
import 'auth_form.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (BuildContext _) => AuthBloc(appRouter: appLocator<AppRouter>()),
      child: const AuthForm(),
    );
  }
}
