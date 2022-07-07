import 'package:fire_notes/presentation/notes/note_form/misc/todoitem_presentation_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:fire_notes/presentation/notes/note_form/misc/buildcontextX.dart';
import '../../../../application/notes/form/note_form_bloc.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoteFormBloc, NoteFormState>(
      listenWhen: (pre, curr) => pre.isEditing != curr.isEditing,
      listener: (context, state) {
        //If we are editing a note instead of creating a new one, here we are populating the local presentation state of of todos with the todo from the infrascture.
        context.formTodos = state.note.todos.value.fold(
          (falilure) => listOf<TodoItemPremitive>(),
          (todoItemList) => todoItemList.map(
            (todoItem) => TodoItemPremitive.fromDomain(todoItem),
          ),
        );
      },
      buildWhen: (pre, curr) => pre.note.todos.isFull != curr.note.todos.isFull,
      builder: (context, state) {
        return ListTile(
          enabled: !state.note.todos.isFull,
          leading: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(Icons.add),
          ),
          title: const Text('Add a todo'),
          onTap: () {
            context.formTodos =
                context.formTodos.plusElement(TodoItemPremitive.empty());
            context.read<NoteFormBloc>().add(
                  NoteFormEvent.todosChanged(
                    context.formTodos,
                  ),
                );
          },
        );
      },
    );
  }
}
