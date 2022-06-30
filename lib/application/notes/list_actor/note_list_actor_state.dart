part of 'note_list_actor_bloc.dart';

@freezed
class NoteListActorState with _$NoteListActorState {
  const factory NoteListActorState.initial() = _Initial;
  const factory NoteListActorState.actionInProgress() = _ActionInProgress;
  const factory NoteListActorState.actionFailure(NoteFailure failure) =
      _ActionFailure;
  const factory NoteListActorState.actionSuccess() = _ActionSuccess;
}
