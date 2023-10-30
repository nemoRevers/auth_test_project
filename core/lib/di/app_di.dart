import 'package:data/di/data_di.dart';
import 'package:get_it/get_it.dart';
import 'package:navigation/di/navigation_di.dart';

import '../config/app_config.dart';
import '../config/network/dio_config.dart';

final AppDI appDI = AppDI();
final GetIt appLocator = GetIt.instance;

const String unauthScope = 'unauthScope';
const String authScope = 'authScope';

class AppDI {
  static void initDependencies(Flavor flavor) {
    appLocator.registerSingleton<AppConfig>(
      AppConfig.fromFlavor(flavor),
    );
    appLocator.registerLazySingleton<DioConfig>(
      () => DioConfig(appConfig: appLocator<AppConfig>()),
    );

    dataDI.initDependencies();
    NavigationDI.initDependencies();
  }
}
