import 'package:domain/domain.dart';

import '../entities/entities.dart';
import 'base_mapper.dart';

class UserMapper implements Mapper<UserEntity, UserModel> {
  const UserMapper();

  @override
  UserModel fromEntity(UserEntity entity) {
    return UserModel(
      id: entity.id,
      email: entity.email,
      nickname: entity.nickname,
    );
  }

  @override
  UserEntity toEntity(UserModel item) {
    return UserEntity(
      id: item.id,
      email: item.email,
      nickname: item.nickname,
    );
  }
}
