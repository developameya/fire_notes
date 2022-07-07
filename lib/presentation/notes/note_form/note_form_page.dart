import 'package:fire_notes/presentation/core/widgets/centered_message.dart';
import 'package:fire_notes/presentation/core/widgets/rounded_flush_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../application/notes/form/note_form_bloc.dart';
import '../../../domain/notes/note.dart';
import '../../../injection.dart';
import 'widgets/body_field.dart';
import 'widgets/colour_field.dart';

class NoteFormPage extends StatelessWidget {
  final Note note;
  const NoteFormPage({required this.note, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('fromNoteForm: $note');
    return BlocProvider(
      create: (context) => getIt<NoteFormBloc>()
        ..add(
          NoteFormEvent.intialised(note),
        ),
      child: const _BuildBody(),
    );
  }
}

class _BuildBody extends StatelessWidget {
  const _BuildBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoteFormBloc, NoteFormState>(
      listenWhen: (pre, curr) =>
          pre.saveFailOrSuccessOption != curr.saveFailOrSuccessOption,
      listener: (context, state) {
        state.saveFailOrSuccessOption.fold(
          () => null,
          (either) => either.fold(
            (failure) => RoundedFlushBar.createRoundedErrorBar(
              message: failure.map(
                insufficientPermissions: (_) => 'Insufficient Permissions.',
                unableToUpdate: (_) => 'Cannot update.',
                unexpected: (_) => 'Unexpected error occured.',
              ),
            ).show(context),
            //If there are no error, go back to previous page.
            (r) => GoRouter.of(context).pop(),
          ),
        );
      },
      buildWhen: (pre, curr) => pre.isSaving != curr.isSaving,
      builder: (context, state) {
        return Stack(
          children: [
            const _BuildScaffold(),
            _BuildOverlay(isSaving: state.isSaving),
          ],
        );
      },
    );
  }
}

class _BuildScaffold extends StatelessWidget {
  const _BuildScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NoteFormBloc>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => GoRouter.of(context).pop(),
          icon: const Icon(Icons.close),
        ),
        actions: [
          IconButton(
            onPressed: () => bloc.add(
              const NoteFormEvent.saved(),
            ),
            icon: const Icon(Icons.done),
          ),
        ],
        title: BlocBuilder<NoteFormBloc, NoteFormState>(
          buildWhen: (pre, cur) => pre.isEditing != cur.isEditing,
          builder: (context, state) =>
              Text(state.isEditing ? 'Edit Note' : 'Create Note'),
        ),
      ),
      body: BlocBuilder<NoteFormBloc, NoteFormState>(
        buildWhen: (pre, curr) => pre.showErrorMessage != curr.showErrorMessage,
        builder: (context, state) {
          return Form(
            autovalidateMode: state.showErrorMessage,
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  BodyField(),
                  ColourField(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _BuildOverlay extends StatelessWidget {
  final bool isSaving;
  const _BuildOverlay({required this.isSaving, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 150,
      ),
      color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
      child: Visibility(
        visible: isSaving,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CenteredMessage(
              child: CircularProgressIndicator(),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Saving...',
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyLarge!
                  .copyWith(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
