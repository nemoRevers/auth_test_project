import 'package:json_annotation/json_annotation.dart';

part 'user_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UserEntity {
  final int id;
  final String nickname;
  final String email;

  const UserEntity({
    required this.id,
    required this.email,
    required this.nickname,
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}
