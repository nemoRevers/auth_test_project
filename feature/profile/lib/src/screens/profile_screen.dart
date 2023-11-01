import 'package:core/core.dart';
import 'package:domain/usecases/export_usecases.dart';
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
        getProfileDataUseCase: appLocator<GetProfileDataUseCase>(),
        signOutUseCase: appLocator<SignOutUseCase>(),
      ),
      child: const ProfileForm(),
    );
  }
}
