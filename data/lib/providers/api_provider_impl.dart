import 'package:core/core.dart';

import '../constants/api_constants.dart';
import '../entities/entities.dart';

class ApiProvider {
  final Dio _dio;

  const ApiProvider(Dio dio) : _dio = dio;

  Future<Response<Map<String, dynamic>>> signUp(UserEntity userEntity) {
    final Map<String, dynamic> body = userEntity.toJson();
    return _dio.post(
      '${appLocator<AppConfig>().baseUrl}${ApiConstants.authorization}',
      data: body,
    );
  }
}
