import 'package:fire_notes/domain/notes/i_note_repository.dart';
import 'package:fire_notes/domain/notes/note_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/notes/note.dart';

part 'note_list_actor_event.dart';
part 'note_list_actor_state.dart';
part 'note_list_actor_bloc.freezed.dart';

@injectable
class NoteListActorBloc extends Bloc<NoteListActorEvent, NoteListActorState> {
  final INoteRepository _noteRepo;
  NoteListActorBloc(this._noteRepo) : super(const _Initial()) {
    on<_Deleted>(_mapDeleted);
  }

  void _mapDeleted(_Deleted event, Emitter<NoteListActorState> emit) {
    emit(const NoteListActorState.actionInProgress());

    _noteRepo.delete(event.note).then(
          (response) => response.fold(
            (failure) => emit(NoteListActorState.actionFailure(failure)),
            (_) => emit(const NoteListActorState.actionSuccess()),
          ),
        );
  }
}
