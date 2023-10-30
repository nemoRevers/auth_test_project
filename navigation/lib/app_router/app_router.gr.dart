// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const AuthScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          AuthRoute.name,
          path: '/',
        ),
        RouteConfig(
          ProfileRoute.name,
          path: '/profile-screen',
        ),
      ];
}

/// generated route for
/// [AuthScreen]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute()
      : super(
          AuthRoute.name,
          path: '/',
        );

  static const String name = 'AuthRoute';
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '/profile-screen',
        );

  static const String name = 'ProfileRoute';
}
