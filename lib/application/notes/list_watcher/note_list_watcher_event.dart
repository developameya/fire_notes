part of 'note_list_watcher_bloc.dart';

@freezed
class NoteListWatcherEvent with _$NoteListWatcherEvent {
  const factory NoteListWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory NoteListWatcherEvent.watchIncompletedStarted() =
      _WatchIncompletedStarted;
  const factory NoteListWatcherEvent.notesRecieved(
      Either<NoteFailure, KtList<Note>> failureOrNotes) = _NotesRecieved;
}
