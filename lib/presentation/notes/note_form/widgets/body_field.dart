import 'package:fire_notes/application/notes/form/note_form_bloc.dart';
import 'package:fire_notes/domain/notes/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BodyField extends HookWidget {
  const BodyField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingControlller = useTextEditingController();
    return BlocConsumer<NoteFormBloc, NoteFormState>(
      listenWhen: (pre, curr) => pre.isEditing != curr.isEditing,
      listener: (context, state) {
        textEditingControlller.text = state.note.body.getOrCrash();
      },
      buildWhen: (pre, curr) => pre.note.body != curr.note.body,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: textEditingControlller,
            maxLength: NoteBody.maxLength,
            maxLines: null,
            minLines: 5,
            decoration: const InputDecoration(
              label: Text('Note'),
            ),
            onChanged: (bodystr) => context.read<NoteFormBloc>().add(
                  NoteFormEvent.bodyChanged(bodystr),
                ),
            validator: (_) =>
                context.read<NoteFormBloc>().state.note.body.value.fold(
                      (f) => f.maybeMap(
                        notes: (value) => value.failure.maybeMap(
                          empty: (_) => 'cannot be empty',
                          exceedingLength: (v) =>
                              'Exceeding length, Max: ${v.maxLength}',
                          orElse: () => null,
                        ),
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
          ),
        );
      },
    );
  }
}
