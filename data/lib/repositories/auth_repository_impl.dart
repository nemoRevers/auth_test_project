import 'dart:convert';

import 'package:core/core.dart';
import 'package:domain/domain.dart';

import '../constants/storage_constants.dart';
import '../data.dart';
import '../entities/authorization_entity.dart';
import '../entities/authorize_entity.dart';
import '../mapper/mapper_factory.dart';
import '../providers/api_provider.dart';

class AuthRepositoryImpl implements AuthRepository {
  final ApiProvider _apiProvider;
  final LocalDataProvider _localDataProvider;
  final MapperFactory _mapperFactory;

  AuthRepositoryImpl(
    ApiProvider apiProvider,
    LocalDataProvider localDataProvider,
    MapperFactory mapperFactory,
  )   : _apiProvider = apiProvider,
        _localDataProvider = localDataProvider,
        _mapperFactory = mapperFactory;

  @override
  Future<UserModel> signIn(
    String login,
    String password,
  ) async {
    try {
      final AuthorizeEntity authorizeEntity = AuthorizeEntity(
        email: login,
        password: password,
      );
      final Response<Map<String, dynamic>> response =
          await _apiProvider.signUp(authorizeEntity);
      if (response.data == null) {
        throw AppException.empty();
      }
      final AuthorizationEntity authorizationEntity =
          AuthorizationEntity.fromJson(response.data!);
      await _localDataProvider.write(
        key: StorageConstants.refreshToken,
        value: authorizationEntity.tokens.refreshToken,
      );
      await _localDataProvider.write(
        key: StorageConstants.userInfo,
        value: jsonEncode(authorizationEntity.user.toJson()),
      );
      return _mapperFactory.userMapper.fromEntity(authorizationEntity.user);
    } on AppException catch (_) {
      rethrow;
    } catch (_) {
      throw AppException.unknown();
    }
  }

  @override
  Future<void> signOut() {
    try {
      return _localDataProvider.delete(StorageConstants.refreshToken);
    } catch (_) {
      throw AppException.unknown();
    }
  }
}
