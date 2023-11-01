part of 'profile_bloc.dart';

class ProfileState extends Equatable {
  final String nickname;
  final String email;
  final bool isLoading;

  const ProfileState({
    this.nickname = '',
    this.email = '',
    this.isLoading = false,
  });

  @override
  List<Object?> get props => <Object?>[
        nickname,
        email,
        isLoading,
      ];

  ProfileState copyWith({
    String? nickname,
    String? email,
    bool? isLoading,
  }) {
    return ProfileState(
      nickname: nickname ?? this.nickname,
      email: email ?? this.email,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
