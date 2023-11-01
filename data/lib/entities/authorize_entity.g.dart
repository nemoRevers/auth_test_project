// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorize_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorizeEntity _$AuthorizeEntityFromJson(Map<String, dynamic> json) =>
    AuthorizeEntity(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$AuthorizeEntityToJson(AuthorizeEntity instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
