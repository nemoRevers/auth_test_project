import 'package:core/core.dart';
import 'package:core/localization/app_localization.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppRouter router = appLocator<AppRouter>();

    return EasyLocalization(
      supportedLocales: AppLocalization.supportedLocales,
      path: AppLocalization.langsFolderPath,
      fallbackLocale: AppLocalization.fallbackLocale,
      child: Builder(
        builder: (BuildContext context) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routeInformationParser: router.defaultRouteParser(),
            routeInformationProvider: router.routeInfoProvider(),
            routerDelegate: router.delegate(),
            theme: lightTheme,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            localizationsDelegates: context.localizationDelegates,
          );
        },
      ),
    );
  }
}
