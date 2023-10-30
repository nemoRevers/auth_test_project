import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:navigation/navigation.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final AppRouter _appRouter;

  ProfileBloc({
    required AppRouter appRouter,
  })  : _appRouter = appRouter,
        super(ProfileInitial()) {
    on<SignOut>((SignOut event, Emitter<ProfileState> emit) {
      _appRouter.replace(const AuthRoute());
    });
  }
}
