import 'package:core/core.dart';
import 'package:navigation/navigation.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AppRouter _appRouter;
  AuthBloc({required AppRouter appRouter})
      : _appRouter = appRouter,
        super(AuthState.initial()) {
    on<LoginEvent>((LoginEvent event, Emitter<AuthState> emit) {
      _appRouter.replace(const ProfileRoute());
    });
  }
}
