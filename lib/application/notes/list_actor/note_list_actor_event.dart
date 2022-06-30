part of 'note_list_actor_bloc.dart';

@freezed
class NoteListActorEvent with _$NoteListActorEvent {
  const factory NoteListActorEvent.deleted(Note note) = _Deleted;
}
