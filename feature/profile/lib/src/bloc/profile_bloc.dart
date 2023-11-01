import 'package:bloc/bloc.dart';
import 'package:domain/models/user_model.dart';
import 'package:domain/usecases/export_usecases.dart';
import 'package:domain/usecases/usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:navigation/navigation.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfileDataUseCase _getProfileDataUseCase;
  final SignOutUseCase _signOutUseCase;
  final AppRouter _appRouter;

  ProfileBloc({
    required GetProfileDataUseCase getProfileDataUseCase,
    required SignOutUseCase signOutUseCase,
    required AppRouter appRouter,
  })  : _getProfileDataUseCase = getProfileDataUseCase,
        _signOutUseCase = signOutUseCase,
        _appRouter = appRouter,
        super(const ProfileState()) {
    on<InitProfile>(_initProfile);
    on<SignOut>(_signOut);
    add(const InitProfile());
  }

  Future<void> _initProfile(
    InitProfile event,
    Emitter<ProfileState> emit,
  ) async {
    final UserModel profileData =
        await _getProfileDataUseCase.execute(const NoParams());
    emit(ProfileState(
      nickname: profileData.nickname,
      email: profileData.email,
    ));
  }

  Future<void> _signOut(
    SignOut event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    await _signOutUseCase.execute(const NoParams());
    await _appRouter.replace(const AuthRoute());
  }
}
