import 'package:fire_notes/presentation/core/widgets/centered_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/notes/list_watcher/note_list_watcher_bloc.dart';
import '../../../domain/notes/note.dart';

class NotesoverviewBody extends StatelessWidget {
  const NotesoverviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteListWatcherBloc, NoteListWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loading: (_) => const CenteredMessage(
              child: CircularProgressIndicator.adaptive()),
          success: (state) {
            return ListView.builder(
              itemCount: state.notes.size,
              itemBuilder: (context, index) {
                final Note note = state.notes[index];
                if (note.failureOption.isSome()) {
                  return Container(color: Colors.red, height: 100, width: 100);
                } else {
                  return Container(
                      color: Colors.green, height: 100, width: 100);
                }
              },
            );
          },
          failure: (_) => const CenteredMessage(child: Icon(Icons.error)),
        );
      },
    );
  }
}
