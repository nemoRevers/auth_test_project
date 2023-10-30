part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();
}

class SignOut extends ProfileEvent {
  const SignOut();

  @override
  List<Object> get props => <Object>[];
}
