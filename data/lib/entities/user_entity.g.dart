// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => UserEntity(
      id: json['id'] as int,
      email: json['email'] as String,
      nickname: json['nickname'] as String,
    );

Map<String, dynamic> _$UserEntityToJson(UserEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'email': instance.email,
    };
