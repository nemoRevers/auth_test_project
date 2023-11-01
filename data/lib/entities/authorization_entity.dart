import 'package:json_annotation/json_annotation.dart';

import 'tokens_entity.dart';
import 'user_entity.dart';

part 'authorization_entity.g.dart';

@JsonSerializable(explicitToJson: true)
class AuthorizationEntity {
  final TokensEntity tokens;
  final UserEntity user;

  const AuthorizationEntity(this.tokens, this.user);

  factory AuthorizationEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthorizationEntityFromJson(json);
  Map<String, dynamic> toJson() => _$AuthorizationEntityToJson(this);
}
