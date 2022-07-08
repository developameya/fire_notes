import 'package:fire_notes/presentation/notes/note_form/misc/buildcontextX.dart';
import 'package:fire_notes/presentation/core/widgets/rounded_flush_bar.dart';
import 'package:fire_notes/presentation/notes/note_form/misc/todoitem_presentation_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';

import '../../../../application/notes/form/note_form_bloc.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<NoteFormBloc, NoteFormState>(
      listenWhen: (pre, curr) =>
          pre.note.todos.isFull != curr.note.todos.isFull,
      listener: (context, state) {
        if (state.note.todos.isFull) {
          RoundedFlushBar.createRoundedActionBar(
            message: 'Create longer lists with Premium 🌟',
            duration: const Duration(seconds: 5),
            button: TextButton(
              child: const Text('ACTIVATE'),
              onPressed: () => debugPrint('Premium module not implemented.'),
            ),
          ).show(context);
        }
      },
      child: Consumer<FormTodos>(
        builder: (context, formTodos, _) => ListView.builder(
          shrinkWrap: true,
          itemCount: formTodos.value.size,
          itemBuilder: (context, index) => _TodoTile(index: index),
        ),
      ),
    );
  }
}

class _TodoTile extends HookWidget {
  final int index;
  const _TodoTile({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Here we are checking if an item exists at the given index oterwise when the index is out of bounds, return an empty premitive.
    final TodoItemPremitive currentTodoItemPremitive =
        context.getFormTodos.getOrElse(
      index,
      (_) => TodoItemPremitive.empty(),
    );
    return ListTile(
      leading: Checkbox(
          value: currentTodoItemPremitive.done,
          onChanged: (value) {
            context.setFormTodos = context.getFormTodos.map(
              (todoItemPremitive) =>
                  todoItemPremitive == currentTodoItemPremitive
                      ? todoItemPremitive.copyWith(done: value!)
                      : todoItemPremitive,
            );
            context.read<NoteFormBloc>().add(
                  NoteFormEvent.todosChanged(context.getFormTodos),
                );
          }),
    );
  }
}
