import 'package:core/core.dart';

import '../constants/api_constants.dart';
import '../entities/authorize_entity.dart';
import '../errors/error_handler.dart';
import '../providers/api_provider.dart';

class ApiProviderImpl implements ApiProvider {
  final Dio _dio;
  final ErrorHandler _errorHandler;

  const ApiProviderImpl(Dio dio, ErrorHandler errorHandler)
      : _dio = dio,
        _errorHandler = errorHandler;

  @override
  Future<Response<Map<String, dynamic>>> signUp(
    AuthorizeEntity userEntity,
  ) async {
    final Map<String, dynamic> body = userEntity.toJson();
    try {
      return await _dio.post<Map<String, dynamic>>(
        '${appLocator<AppConfig>().baseUrl}${ApiConstants.authorization}',
        data: body,
      );
    } on DioException catch (e) {
      return _errorHandler.handleError(e);
    }
  }
}
