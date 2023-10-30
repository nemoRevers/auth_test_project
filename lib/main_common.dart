import 'package:core/core.dart';
import 'package:core/localization/app_localization.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

Future<void> mainCommon(Flavor flavor) async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  _setupDI(flavor);

  runApp(const App());
}

void _setupDI(Flavor flavor) {
  appLocator.pushNewScope(
    scopeName: unauthScope,
    init: (_) {
      AppDI.initDependencies(flavor);
    },
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: AppLocalization.supportedLocales,
      path: AppLocalization.langsFolderPath,
      fallbackLocale: AppLocalization.fallbackLocale,
      child: const LocalizedApp(),
    );
  }
}

class LocalizedApp extends StatelessWidget {
  const LocalizedApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppRouter router = appLocator<AppRouter>();

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
  }
}
