part of 'note_list_watcher_bloc.dart';

@freezed
class NoteListWatcherState with _$NoteListWatcherState {
  const factory NoteListWatcherState.initial() = _Initial;
  const factory NoteListWatcherState.loading() = _Loading;
  const factory NoteListWatcherState.success(KtList<Note> notes) = _Success;
  const factory NoteListWatcherState.failure(NoteFailure failure) = _failure;
}
