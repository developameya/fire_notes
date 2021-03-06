import 'package:fire_notes/presentation/notes/note_form/misc/todoitem_presentation_classes.dart';
import 'package:flutter/widgets.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

extension FormTodoX on BuildContext {
  KtList<TodoItemPremitive> get getFormTodos =>
      Provider.of<FormTodos>(this, listen: false).value;
  set setFormTodos(KtList<TodoItemPremitive> value) =>
      Provider.of<FormTodos>(this, listen: false).value = value;
}
