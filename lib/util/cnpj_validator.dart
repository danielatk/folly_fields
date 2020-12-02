import 'package:cpf_cnpj_validator/cnpj_validator.dart';
import 'package:folly_fields/util/abstract_validator.dart';
import 'package:folly_fields/util/mask_text_input_formatter.dart';

///
///
///
class CnpjValidator extends AbstractValidator<String> {
  ///
  ///
  ///
  @override
  String format(String value) => CNPJValidator.format(value);

  ///
  ///
  ///
  @override
  bool isValid(String value, {bool stripBeforeValidation = true}) =>
      CNPJValidator.isValid(value, stripBeforeValidation);

  ///
  ///
  ///
  @override
  MaskTextInputFormatter get mask => MaskTextInputFormatter(
        mask: '##.###.###/####-##',
      );
}
