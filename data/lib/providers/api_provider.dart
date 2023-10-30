import 'package:core/core.dart';

import '../entities/user_entity.dart';

abstract class ApiProvider {
  Future<Response<Map<String, dynamic>>> signUp(UserEntity userEntity);
}
