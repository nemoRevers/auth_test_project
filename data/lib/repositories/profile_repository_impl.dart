import 'dart:convert';

import 'package:domain/domain.dart';

import '../constants/storage_constants.dart';
import '../entities/entities.dart';
import '../mapper/mapper_factory.dart';
import '../providers/local_data_provider.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final LocalDataProvider _localDataProvider;
  final MapperFactory _mapperFactory;

  const ProfileRepositoryImpl(
    LocalDataProvider localDataProvider,
    MapperFactory mapperFactory,
  )   : _localDataProvider = localDataProvider,
        _mapperFactory = mapperFactory;

  @override
  Future<UserModel> getProfile() async {
    final String? userInfo =
        await _localDataProvider.read(StorageConstants.userInfo);
    if (userInfo == null) {
      throw AppException.empty();
    }
    final UserEntity userEntity = UserEntity.fromJson(jsonDecode(userInfo));
    return _mapperFactory.userMapper.fromEntity(userEntity);
  }

  @override
  Future<void> signOut() {
    return _localDataProvider.delete(StorageConstants.userInfo);
  }
}
