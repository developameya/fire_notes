import 'package:fire_notes/application/notes/list_actor/note_list_actor_bloc.dart';
import 'package:fire_notes/domain/notes/todo_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/notes/note.dart';
import 'package:kt_dart/collection.dart';

class NoteCard extends StatelessWidget {
  final Note note;
  const NoteCard({required this.note, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NoteListActorBloc>();
    return Card(
      color: note.color.getOrCrash(),
      child: InkWell(
        onTap: () {},
        onLongPress: () {
          _showDeletingDialog(context, bloc);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                note.body.getOrCrash(),
                style: Theme.of(context).textTheme.headline6,
              ),
              if (note.todos.length > 0) ...[
                Wrap(
                  spacing: 8,
                  children: [
                    ...note.todos
                        .getOrCrash()
                        .map((todo) => TodoDisplay(todo: todo))
                        .iter,
                  ],
                )
              ]
            ],
          ),
        ),
      ),
    );
  }

  void _showDeletingDialog(BuildContext context, NoteListActorBloc bloc) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Selected Note:'),
            content: Text(note.body.getOrCrash(),
                maxLines: 3, overflow: TextOverflow.ellipsis),
            actions: [
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'cancel'.toUpperCase(),
                ),
              ),
              TextButton(
                child: Text('delete'.toUpperCase()),
                onPressed: () => bloc.add(
                  NoteListActorEvent.deleted(note),
                ),
              ),
            ],
          );
        });
  }
}

class TodoDisplay extends StatelessWidget {
  final TodoItem todo;
  const TodoDisplay({required this.todo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          todo.done ? Icons.done : Icons.check_box_outline_blank,
          color: todo.done
              ? Theme.of(context).indicatorColor
              : Theme.of(context).disabledColor,
        ),
        Text(todo.name.getOrCrash()),
      ],
    );
  }
}
