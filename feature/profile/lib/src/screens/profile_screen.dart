import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:navigation/app_router/app_router.dart';

import '../bloc/profile_bloc.dart';
import 'profile_form.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (BuildContext _) => ProfileBloc(
        appRouter: appLocator<AppRouter>(),
      ),
      child: const ProfileForm(),
    );
  }
}
