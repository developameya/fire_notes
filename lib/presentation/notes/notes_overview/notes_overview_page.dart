import 'package:fire_notes/application/auth/auth_bloc.dart';
import 'package:fire_notes/application/notes/list_actor/note_list_actor_bloc.dart';
import 'package:fire_notes/application/notes/list_watcher/note_list_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';

class NotesOverviewPage extends StatelessWidget {
  const NotesOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NoteListWatcherBloc>(
          create: (context) => getIt<NoteListWatcherBloc>(),
        ),
        BlocProvider<NoteListActorBloc>(
          create: (context) => getIt<NoteListActorBloc>(),
        ),
      ],
      child: const _BuildScaffold(),
    );
  }
}

class _BuildScaffold extends StatelessWidget {
  const _BuildScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<NoteListActorBloc, NoteListActorState>(
      listener: (context, state) => state.maybeMap(
        actionFailure: (state) => state.failure.map(
            insufficientPermissions: (_) => 'Inssuficient permissons.',
            unableToUpdate: (_) => 'Impossible error',
            unexpected: (_) =>
                'Unexpected error ouccured while deleting, please contact support'),
        orElse: () {
          return null;
        },
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Notes Overview'),
          leading: IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () =>
                context.read<AuthBloc>().add(AuthEvent.signedOut()),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.indeterminate_check_box),
              onPressed: () {},
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
