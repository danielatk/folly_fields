import 'package:folly_fields/util/abstract_validator.dart';
import 'package:folly_fields/util/mask_text_input_formatter.dart';
import 'package:email_validator/email_validator.dart' as ev;

///
///
///
class EmailValidator extends AbstractValidator<String> {
  ///
  ///
  ///
  @override
  String format(String value) => value;

  ///
  ///
  ///
  @override
  bool isValid(String value, {bool stripBeforeValidation = true}) =>
      ev.EmailValidator.validate(value);

  ///
  ///
  ///
  @override
  String strip(String value) => value;

  ///
  ///
  ///
  @override
  MaskTextInputFormatter get mask => null;
}
