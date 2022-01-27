import 'package:email_validator/email_validator.dart';
import 'package:formz/formz.dart';

enum EmailValidationError { invalid }

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('volodymyrsydorko@gmail.com');
  const Email.dirty([String value = '']) : super.dirty(value);

  @override
  EmailValidationError? validator(String value) {
    return EmailValidator.validate(value) ? null : EmailValidationError.invalid;
  }
}
