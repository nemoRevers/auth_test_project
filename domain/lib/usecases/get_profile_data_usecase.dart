import '../domain.dart';
import 'usecase.dart';

class GetProfileDataUseCase implements FutureUseCase<NoParams, UserModel> {
  final ProfileRepository _profileRepository;

  const GetProfileDataUseCase(ProfileRepository profileRepository)
      : _profileRepository = profileRepository;

  @override
  Future<UserModel> execute(NoParams input) {
    return _profileRepository.getProfile();
  }
}
