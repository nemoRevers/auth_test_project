part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();
}

class InitProfile extends ProfileEvent {
  const InitProfile();

  @override
  List<Object?> get props => <Object?>[];
}

class SignOut extends ProfileEvent {
  const SignOut();

  @override
  List<Object> get props => <Object>[];
}
