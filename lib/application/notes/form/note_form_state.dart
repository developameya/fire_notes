part of 'note_form_bloc.dart';

@freezed
class NoteFormState with _$NoteFormState {
  const factory NoteFormState({
    required Note note,
    required AutovalidateMode showErrorMessage,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<NoteFailure, Unit>> noteFailOrSuccessOption,
  }) = _NoteFormState;

  factory NoteFormState.initial() => NoteFormState(
        note: Note.empty(),
        showErrorMessage: AutovalidateMode.disabled,
        isEditing: false,
        isSaving: false,
        noteFailOrSuccessOption: none(),
      );
}
