import '../domain.dart';
import 'usecase.dart';

typedef AuthPayload = ({String login, String password});

class SignInUseCase implements FutureUseCase<AuthPayload, void> {
  final AuthRepository _authRepository;

  const SignInUseCase(AuthRepository authRepository)
      : _authRepository = authRepository;

  @override
  Future<UserModel> execute(AuthPayload params) {
    return _authRepository.signIn(params.login, params.password);
  }
}
