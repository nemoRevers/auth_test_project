import 'package:core/core.dart';

import '../entities/authorize_entity.dart';

abstract class ApiProvider {
  Future<Response<Map<String, dynamic>>> signUp(AuthorizeEntity userEntity);
}
