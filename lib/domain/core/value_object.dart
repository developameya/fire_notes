import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'value_failures.dart';

@immutable
abstract class ValueObject<T> extends Equatable {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  @override
  List<Object?> get props => [value];
}
