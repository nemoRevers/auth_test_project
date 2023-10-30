abstract class AuthRepository {
  Future<void> signIn(String login, String password);
  Future<void> signOut();
}
