import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:profile/profile.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: AuthScreen, initial: true),
    AutoRoute(page: ProfileScreen),
  ],
)
class AppRouter extends _$AppRouter {}
