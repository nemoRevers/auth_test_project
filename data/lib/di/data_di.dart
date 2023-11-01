import 'package:core/config/network/dio_config.dart';
import 'package:core/di/app_di.dart';
import 'package:domain/domain.dart';
import 'package:domain/usecases/export_usecases.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../data.dart';
import '../errors/error_handler.dart';
import '../mapper/mapper_factory.dart';
import '../providers/api_provider.dart';
import '../providers_impl/api_provider_impl.dart';

final DataDI dataDI = DataDI();

class DataDI {
  void initDependencies() {
    _initPackages();
    _initMappers();
    _initProviders();
    _initRepositories();
    _initUseCases();
  }

  void _initPackages() {
    appLocator.registerLazySingleton<FlutterSecureStorage>(
      FlutterSecureStorage.new,
    );
  }

  void _initMappers() {
    appLocator.registerLazySingleton<MapperFactory>(MapperFactory.new);
  }

  void _initProviders() {
    appLocator.registerLazySingleton<ErrorHandler>(
      ErrorHandler.new,
    );

    appLocator.registerLazySingleton<LocalDataProvider>(
      () => SecureLocalDataProviderImpl(appLocator<FlutterSecureStorage>()),
    );

    appLocator.registerLazySingleton<ApiProvider>(
      () => ApiProviderImpl(
        appLocator<DioConfig>().dio,
        appLocator<ErrorHandler>(),
      ),
    );
  }

  void _initRepositories() {
    appLocator.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(
        appLocator<ApiProvider>(),
        appLocator<LocalDataProvider>(),
        appLocator<MapperFactory>(),
      ),
    );

    appLocator.registerLazySingleton<ProfileRepository>(
      () => ProfileRepositoryImpl(
        appLocator<LocalDataProvider>(),
        appLocator<MapperFactory>(),
      ),
    );
  }

  void _initUseCases() {
    appLocator.registerLazySingleton<SignInUseCase>(
      () => SignInUseCase(appLocator<AuthRepository>()),
    );

    appLocator.registerLazySingleton<GetProfileDataUseCase>(
      () => GetProfileDataUseCase(appLocator<ProfileRepository>()),
    );

    appLocator.registerLazySingleton(
      () => SignOutUseCase(appLocator<ProfileRepository>()),
    );
  }
}
