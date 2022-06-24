import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:fire_notes/domain/core/errors.dart';
import 'package:flutter/material.dart';

import 'value_failures.dart';

@immutable
abstract class ValueObject<T> extends Equatable {
  const ValueObject();
  //Fields
  Either<ValueFailure<T>, T> get value;
  //helper methods
  bool isValid() => value.isRight();
  //id -> identity same as writing (v) => v. Indentity is a function were the value provided as a parameter return it unchaged.
  /// Throws [UnexpectedValueError] which contains [ValueFailure].
  T getOrCrash() => value.fold((f) => throw UnexpectedValueError(f), id);

  @override
  List<Object?> get props => [value];
}
