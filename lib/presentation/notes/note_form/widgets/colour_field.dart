import 'package:fire_notes/domain/notes/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/notes/form/note_form_bloc.dart';

class ColourField extends StatelessWidget {
  const ColourField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFormBloc, NoteFormState>(
      buildWhen: (pre, curr) => pre.note.color != curr.note.color,
      builder: (context, state) {
        final bloc = context.read<NoteFormBloc>();
        return SizedBox(
          height: 80,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            scrollDirection: Axis.horizontal,
            //Always bounce when the list reaches the end of the list.
            physics: const BouncingScrollPhysics(),
            itemCount: NoteColour.predefinedColors.length,
            itemBuilder: (context, index) {
              final itemColour = NoteColour.predefinedColors[index];
              return GestureDetector(
                onTap: () => bloc.add(
                  NoteFormEvent.colourChanged(itemColour),
                ),
                child: Material(
                  elevation: 4,
                  color: itemColour,
                  shape: CircleBorder(
                    side: state.note.color.value.fold(
                      (failure) => BorderSide.none,
                      (colour) => itemColour == colour
                          ? const BorderSide(width: 1.5)
                          : BorderSide.none,
                    ),
                  ),
                  child: const SizedBox(height: 50, width: 50),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 10),
          ),
        );
      },
    );
  }
}
