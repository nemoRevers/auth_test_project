// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokens_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokensEntity _$TokensEntityFromJson(Map<String, dynamic> json) => TokensEntity(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$TokensEntityToJson(TokensEntity instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
