import 'package:fire_notes/domain/auth/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../../../../domain/notes/todo_item.dart';
import '../../../../domain/notes/value_objects.dart';

part 'todoitem_presentation_classes.freezed.dart';

//This is storing the state for the number of Todo locally in the presentation layer.
class FormTodos extends ValueNotifier<KtList<TodoItemPremitive>> {
  FormTodos() : super(emptyList<TodoItemPremitive>());
}

@freezed
abstract class TodoItemPremitive implements _$TodoItemPremitive {
  const TodoItemPremitive._();
  const factory TodoItemPremitive({
    required Uid uid,
    required String name,
    required bool done,
  }) = _TodoItemPremitive;

  //helper methods
  factory TodoItemPremitive.fromDomain(TodoItem item) => TodoItemPremitive(
        uid: item.uid,
        name: item.name.getOrCrash(),
        done: item.done,
      );
  TodoItem toDomain() {
    return TodoItem(
      uid: uid,
      name: TodoName(name),
      done: done,
    );
  }

  factory TodoItemPremitive.empty() => TodoItemPremitive(
        uid: Uid(),
        name: '',
        done: false,
      );
}
