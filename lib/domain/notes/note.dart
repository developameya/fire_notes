import 'package:dartz/dartz.dart';
import 'package:fire_notes/domain/auth/value_objects.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../core/failures.dart';
import 'todo_item.dart';
import 'value_objects.dart';
part 'note.freezed.dart';

@freezed
abstract class Note implements _$Note {
  const Note._();
  const factory Note(
      {required Uid uid,
      required NoteBody body,
      required LimitedLengthList<TodoItem> todos,
      required NoteColour color}) = _Note;

  //helper methods
  /// Creates an empty [Note] object.
  factory Note.empty() => Note(
        uid: Uid(),
        body: NoteBody(''),
        todos: LimitedLengthList(emptyList()),
        color: NoteColour(
          NoteColour.predefinedColors[0],
        ),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return body.getFailureOrUnit
        .andThen(todos.getFailureOrUnit)
        .andThen(
          todos
              //we get the todos from the list or crash the program if the list is invalid. The list won't be invalid at this point as it will already be created at this stage as empty list, which is still valid.
              .getOrCrash()
              //we get a list of todoItems with only the result of their [failureOption] static method
              .map((todoItem) => todoItem.failureOption)
              //Then we apply a filter where only the todoItems with a failure are kept and rest are discarded
              .filter((o) => o.isSome())
              //Here the 'getOrElse' means, if we cannot get any item at '0'th index, then the list is empty, which means the list is valid, so return 'none()' for the option.
              .getOrElse(0, (_) => none())
              //If at this point the 'getOrElse' binding returns 'none', then provide right value as 'unit' otherwise provide left value as 'valueFailure<dynamic>' from the filtered list.
              .fold(
                () => right(unit),
                (failure) => left(failure),
              ),
        )
        .fold((failure) => some(failure), (_) => none());
  }
}
