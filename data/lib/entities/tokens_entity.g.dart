// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokens_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokensEntity _$TokensEntityFromJson(Map<String, dynamic> json) => TokensEntity(
      accessToken: json['access_token'] as String?,
      refreshToken: json['refresh_token'] as String?,
    );

Map<String, dynamic> _$TokensEntityToJson(TokensEntity instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
