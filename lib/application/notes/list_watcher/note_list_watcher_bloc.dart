import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:fire_notes/domain/notes/i_note_repository.dart';
import 'package:fire_notes/domain/notes/note_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/notes/note.dart';

part 'note_list_watcher_event.dart';
part 'note_list_watcher_state.dart';
part 'note_list_watcher_bloc.freezed.dart';

@injectable
class NoteListWatcherBloc
    extends Bloc<NoteListWatcherEvent, NoteListWatcherState> {
  final INoteRepository _noteRepo;
  late StreamSubscription<Either<NoteFailure, KtList<Note>>>?
      _notesSubscription;

  NoteListWatcherBloc(this._noteRepo) : super(const _Initial()) {
    on<_WatchAllStarted>(_mapWatchAllStarted);
    on<_WatchIncompletedStarted>(_mapWatchIncompletedStarted);
    on<_NotesRecieved>(_mapNotesRecieved);

    add(const NoteListWatcherEvent.watchAllStarted());
  }

  void _mapWatchAllStarted(
      _WatchAllStarted event, Emitter<NoteListWatcherState> emit) {
    _notesSubscription?.cancel();

    emit(const NoteListWatcherState.loading());

    _notesSubscription = _noteRepo.watchAll().listen(
      (notesOrFailure) {
        add(
          NoteListWatcherEvent.notesRecieved(notesOrFailure),
        );
      },
    );
  }

  void _mapWatchIncompletedStarted(
      _WatchIncompletedStarted event, Emitter<NoteListWatcherState> emit) {
    _notesSubscription?.cancel();

    emit(const NoteListWatcherState.loading());

    _notesSubscription = _noteRepo.watchIncomplete().listen(
      (faliureOrNotes) {
        add(
          NoteListWatcherEvent.notesRecieved(faliureOrNotes),
        );
      },
    );
  }

  void _mapNotesRecieved(
      _NotesRecieved event, Emitter<NoteListWatcherState> emit) {
    event.failureOrNotes.fold(
      (failure) => emit(NoteListWatcherState.failure(failure)),
      (notes) => emit(NoteListWatcherState.success(notes)),
    );
  }

  @override
  Future<void> close() {
    _notesSubscription?.cancel();
    return super.close();
  }
}
