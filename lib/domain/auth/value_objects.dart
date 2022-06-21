// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../core/value_object.dart';
import '../core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  ///The email address string or the failure string in case the validation fails.

  // ignore: annotate_overrides
  final Either<ValueFailure<String>, String> value;

  ///Accepts a string and checks whether the String is a valid Email.
  factory EmailAddress(String input) =>
      EmailAddress._(value: validateEmailAddress(input));

  const EmailAddress._({required this.value});
}

class Password extends ValueObject<String> {
  ///The email address string or the failure string in case the validation fails.
  // ignore: annotate_overrides
  final Either<ValueFailure<String>, String> value;

  ///Accepts a string and checks whether the String is a valid Password.
  factory Password(String input) => Password._(value: validatePassword(input));

  const Password._({required this.value});
}
