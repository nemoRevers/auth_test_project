import 'package:domain/models/authorize_model.dart';

import '../entities/authorize_entity.dart';
import 'base_mapper.dart';

class AuthorizeMapper implements Mapper<AuthorizeEntity, AuthorizeModel> {
  const AuthorizeMapper();

  @override
  AuthorizeModel fromEntity(AuthorizeEntity entity) {
    return AuthorizeModel(
      login: entity.email,
      password: entity.password,
    );
  }

  @override
  AuthorizeEntity toEntity(AuthorizeModel item) {
    return AuthorizeEntity(
      email: item.login,
      password: item.password,
    );
  }
}
