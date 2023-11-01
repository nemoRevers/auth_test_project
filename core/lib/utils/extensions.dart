import 'package:email_validator/email_validator.dart';

extension EmailValidatorExtension on String {
  bool isValidEmail() => EmailValidator.validate(this);
}
