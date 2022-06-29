import 'package:dartz/dartz.dart';
import 'package:fire_notes/domain/core/failures.dart';
import 'package:fire_notes/domain/notes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../auth/value_objects.dart';
part 'todo_item.freezed.dart';

@freezed
abstract class TodoItem implements _$TodoItem {
  const TodoItem._();
  const factory TodoItem(
      {required Uid uid,
      required TodoName name,
      required bool done}) = _TodoItem;

  //helper methods
  factory TodoItem.empty() =>
      TodoItem(uid: Uid(), name: TodoName(''), done: false);

  ///Returns [some] if all the value objects in this entity are not valid else return [none].
  Option<ValueFailure<dynamic>> get failureOption {
    return name.getFailureOrUnit.fold(
      (failure) => some(failure),
      (_) => none(),
    );
  }
}
