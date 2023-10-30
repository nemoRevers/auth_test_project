// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorization_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorizationEntity _$AuthorizationEntityFromJson(Map<String, dynamic> json) =>
    AuthorizationEntity(
      TokensEntity.fromJson(json['tokens'] as Map<String, dynamic>),
      UserEntity.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthorizationEntityToJson(
        AuthorizationEntity instance) =>
    <String, dynamic>{
      'tokens': instance.tokens.toJson(),
      'user': instance.user.toJson(),
    };
