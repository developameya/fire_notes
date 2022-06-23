import 'package:dartz/dartz.dart';

import 'value_failures.dart';

///Checks the input against Email regex, return a [ValueFailure] in case the validation fails.
Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const regex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (RegExp(regex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

///Checks the input against Email regex, return a [ValueFailure] in case the validation fails.
Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}
