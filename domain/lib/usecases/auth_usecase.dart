import 'usecase.dart';

typedef AuthPayload = ({String login, String password});

class AuthUseCase implements FutureUseCase<AuthPayload, void> {
  const AuthUseCase();

  @override
  Future<void> execute(AuthPayload params) {
    throw UnimplementedError();
  }
}
