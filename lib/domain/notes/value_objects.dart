import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:fire_notes/domain/core/failures.dart';
import 'package:fire_notes/domain/core/value_transformers.dart';
import 'package:fire_notes/domain/core/value_validators.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:kt_dart/collection.dart';

import '../core/value_object.dart';

@immutable
class NoteBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const int maxLength = 1000;

  factory NoteBody(String input) {
    return NoteBody._(
      validateStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const NoteBody._(this.value);
}

@immutable
class TodoName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory TodoName(String input) {
    return TodoName._(
      validateStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSinglelineString),
    );
  }

  const TodoName._(this.value);
}

@immutable
class LimitedLengthList<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const int maxLength = 3;

  factory LimitedLengthList(KtList<T> input) =>
      LimitedLengthList._(validateListLength(input, maxLength));

  factory LimitedLengthList.from([Iterable<T> elements = const []]) =>
      LimitedLengthList(KtList.from(elements));

  const LimitedLengthList._(this.value);

  //helper methods

  /// Returns the length of the List if it is less than or equal to [maxLength], otherwise returns [0].
  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull => length == maxLength;
}

@immutable
class NoteColour extends ValueObject<Color> {
  static const List<Color> predefinedColors = [
    Color(0xfffafafa), // canvas
    Color(0xfffa8072), // salmon
    Color(0xfffedc56), // mustard
    Color(0xffd0f0c0), // tea
    Color(0xfffca3b7), // flamingo
    Color(0xff997950), // tortilla
    Color(0xfffffdd0), // cream
  ];
  @override
  final Either<ValueFailure<Color>, Color> value;

  factory NoteColour(Color input) {
    return NoteColour._(right(makeColourOpaque(input)));
  }

  const NoteColour._(this.value);
}
