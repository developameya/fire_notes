import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import 'failures.dart';

///Checks the input against Email regex, return a [ValueFailure] in case the validation fails.
Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const regex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (RegExp(regex).hasMatch(input)) {
    return right(input);
  } else {
    return left(
        ValueFailure.auth(AuthValueFailure.invalidEmail(failedValue: input)));
  }
}

///Checks the input against Email regex, return a [ValueFailure] in case the validation fails.
Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(
        ValueFailure.auth(AuthValueFailure.shortPassword(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateStringLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.notes(
        NotesValueFailure.exceedingLength(
          failedValue: input,
          maxLength: maxLength,
        ),
      ),
    );
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(
      ValueFailure.notes(
        NotesValueFailure.empty(failedValue: input),
      ),
    );
  }
}

Either<ValueFailure<String>, String> validateSinglelineString(String input) {
  if (!input.contains('\n')) {
    return right(input);
  } else {
    return left(
      ValueFailure.notes(
        NotesValueFailure.multiline(failedValue: input),
      ),
    );
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateListLength<T>(
    KtList<T> input, int maxLength) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.notes(
        NotesValueFailure.listTooLong(failedValue: input, maxLength: maxLength),
      ),
    );
  }
}
