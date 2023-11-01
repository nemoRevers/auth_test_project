import 'package:json_annotation/json_annotation.dart';

part 'tokens_entity.g.dart';

@JsonSerializable()
class TokensEntity {
  final String accessToken;
  final String refreshToken;

  const TokensEntity({
    required this.accessToken,
    required this.refreshToken,
  });

  factory TokensEntity.fromJson(Map<String, dynamic> json) =>
      _$TokensEntityFromJson(json);
  Map<String, dynamic> toJson() => _$TokensEntityToJson(this);
}
