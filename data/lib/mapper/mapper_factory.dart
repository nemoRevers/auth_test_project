import 'authorize_mapper.dart';
import 'user_mapper.dart';

class MapperFactory {
  AuthorizeMapper get authorizeMapper => const AuthorizeMapper();
  UserMapper get userMapper => const UserMapper();
}
