import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:domain/usecases/export_usecases.dart';
import 'package:navigation/navigation.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AppRouter _appRouter;
  final SignInUseCase _authUseCase;
  AuthBloc({
    required AppRouter appRouter,
    required SignInUseCase authUseCase,
  })  : _appRouter = appRouter,
        _authUseCase = authUseCase,
        super(const AuthState()) {
    on<LoginEvent>(_login);
    on<HideDialog>(_hideDialog);
  }
  Future<void> _login(LoginEvent event, Emitter<AuthState> emit) async {
    if (!_isFieldsValid(event, emit)) {
      return;
    }
    emit(state.copyWith(isLoading: true));
    try {
      await _authUseCase.execute((
        login: event.login,
        password: event.password,
      ));
      await _appRouter.replace(const ProfileRoute());
    } on AppException catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          errorDialogDescription: e.message,
          showErrorDialog: true,
        ),
      );
    }
  }

  void _hideDialog(HideDialog event, Emitter<AuthState> emit) {
    emit(state.copyWith(showErrorDialog: false));
    _appRouter.pop();
  }

  bool _isFieldsValid(LoginEvent event, Emitter<AuthState> emit) {
    final bool isLoginValid = event.login.isValidEmail();
    emit(const AuthState());
    if (!isLoginValid) {
      emit(state.copyWith(loginErrorMessage: LocaleKeys.emailIsNotCorrect));
    }
    if (event.password.isEmpty) {
      emit(state.copyWith(
        passwordErrorMessage: LocaleKeys.passwordIsNotCorrect,
      ));
    }
    return isLoginValid && event.password.isNotEmpty;
  }
}
