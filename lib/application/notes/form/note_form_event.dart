part of 'note_form_bloc.dart';

@freezed
class NoteFormEvent with _$NoteFormEvent {
  const factory NoteFormEvent.intialised(Note? note) = _Intialised;
  const factory NoteFormEvent.bodyChanged(String bodystr) = _BodyChanged;
  const factory NoteFormEvent.colourChanged(Color colour) = _ColourChanged;
  const factory NoteFormEvent.todosChanged(KtList<TodoItemPremitive> todos) =
      _TodosChanged;
  const factory NoteFormEvent.saved() = _Saved;
}
