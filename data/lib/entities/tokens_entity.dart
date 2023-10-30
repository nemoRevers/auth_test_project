import 'package:json_annotation/json_annotation.dart';

part 'tokens_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class TokensEntity {
  final String? accessToken;
  final String? refreshToken;

  const TokensEntity({
    this.accessToken,
    this.refreshToken,
  });

  factory TokensEntity.fromJson(Map<String, dynamic> json) =>
      _$TokensEntityFromJson(json);
  Map<String, dynamic> toJson() => _$TokensEntityToJson(this);
}
