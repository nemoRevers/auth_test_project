import '../domain.dart';
import 'usecase.dart';

class SignOutUseCase implements UseCase<NoParams, void> {
  final ProfileRepository _profileRepository;

  const SignOutUseCase(ProfileRepository profileRepository)
      : _profileRepository = profileRepository;

  @override
  Future<void> execute(NoParams params) {
    return _profileRepository.signOut();
  }
}
