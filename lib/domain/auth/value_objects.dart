// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

import '../core/failures.dart';
import '../core/value_object.dart';
import '../core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  ///The email address string or the failure string in case the validation fails.

  @override
  final Either<ValueFailure<String>, String> value;

  ///Accepts a string and checks whether the String is a valid Email.
  factory EmailAddress(String input) =>
      EmailAddress._(value: validateEmailAddress(input));

  const EmailAddress._({required this.value});
}

class Password extends ValueObject<String> {
  ///The email address string or the failure string in case the validation fails.
  @override
  final Either<ValueFailure<String>, String> value;

  ///Accepts a string and checks whether the String is a valid Password.
  factory Password(String input) => Password._(value: validatePassword(input));

  const Password._({required this.value});
}

class Uid extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  ///This factory method will create an unique ID value object with UUID automatically.
  factory Uid() => Uid._(right(const Uuid().v1()));

  ///This factory method requires an uid string to be passed to create an unique value object.
  factory Uid.fromUid(String uid) => Uid._(right(uid));

  const Uid._(this.value);
}
