import 'package:json_annotation/json_annotation.dart';

part 'authorize_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AuthorizeEntity {
  final String email;
  final String password;

  const AuthorizeEntity({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$AuthorizeEntityToJson(this);
}
