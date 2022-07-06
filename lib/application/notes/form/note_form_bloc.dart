import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fire_notes/domain/notes/i_note_repository.dart';
import 'package:fire_notes/domain/notes/note_failure.dart';
import 'package:fire_notes/domain/notes/value_objects.dart';
import 'package:fire_notes/presentation/notes/note_form/misc/todoitem_presentation_classes.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../../domain/notes/note.dart';

part 'note_form_event.dart';
part 'note_form_state.dart';
part 'note_form_bloc.freezed.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final INoteRepository _noteRepo;

  NoteFormBloc(this._noteRepo) : super(NoteFormState.initial()) {
    on<_Intialised>(_onIntialised);
    on<_BodyChanged>(_onbodyChanged);
    on<_ColourChanged>(_onColourChanged);
    on<_TodosChanged>(_onTodosChanged);
    on<_Saved>(_onSaved);
  }

  void _onIntialised(_Intialised event, Emitter<NoteFormState> emit) {
    if (event.note != null) {
      emit(state.copyWith(note: event.note!, isEditing: true));
    } else {
      emit(state);
    }
  }

  void _onbodyChanged(_BodyChanged event, Emitter<NoteFormState> emit) {
    //Remember to reset any failures stored on the set.
    emit(
      state.copyWith(
        note: state.note.copyWith(
          body: NoteBody(event.bodystr),
        ),
        saveFailOrSuccessOption: none(),
      ),
    );
  }

  void _onColourChanged(_ColourChanged event, Emitter<NoteFormState> emit) {
    //We don't need to reset the failure options since colour does not emit any failures.
    emit(
      state.copyWith(
        note: state.note.copyWith(
          color: NoteColour(event.colour),
        ),
      ),
    );
  }

  void _onTodosChanged(_TodosChanged event, Emitter<NoteFormState> emit) {
    emit(
      state.copyWith(
        note: state.note.copyWith(
          todos: LimitedLengthList(
            event.todos.map(
              (primitive) => primitive.toDomain(),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onSaved(_Saved event, Emitter<NoteFormState> emit) async {
    Either<NoteFailure, Unit>? failureOrSuccess;
    emit(state.copyWith(isSaving: true, saveFailOrSuccessOption: none()));

    if (state.note.failureOption.isNone()) {
      state.isEditing
          ? failureOrSuccess = await _noteRepo.update(state.note)
          : failureOrSuccess = await _noteRepo.create(state.note);
    }

    emit(
      state.copyWith(
        isSaving: false,
        showErrorMessage: AutovalidateMode.always,
        saveFailOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
