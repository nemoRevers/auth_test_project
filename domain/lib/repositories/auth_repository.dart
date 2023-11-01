import '../domain.dart';

abstract class AuthRepository {
  Future<UserModel> signIn(String login, String password);
  Future<void> signOut();
}
