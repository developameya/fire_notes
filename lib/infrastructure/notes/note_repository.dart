import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:fire_notes/domain/notes/i_note_repository.dart';
import 'package:fire_notes/infrastructure/notes/data_transfer_objects.dart';
import 'package:fire_notes/domain/notes/note_failure.dart';
import 'package:fire_notes/domain/notes/note.dart';
import 'package:injectable/injectable.dart';
import '/infrastructure/core/firebase_helpers.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: INoteRepository)
class NoteRepository implements INoteRepository {
  final FirebaseFirestore _db;
  const NoteRepository(this._db);
  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchAll() async* {
    final userDoc = await _db.userDocument();
    yield* userDoc.noteCollection
        .orderBy('serverTimeStamp')
        .snapshots()
        .map((snapshot) => right<NoteFailure, KtList<Note>>(
              snapshot.docs
                  .map(
                    (notes) => NoteDTO.fromFirestore(notes).toDomain(),
                  )
                  .toImmutableList(),
            ))
        .onErrorReturnWith((error, stackTrace) {
      if (error is FirebaseException &&
          error.message!.contains('permission-denined')) {
        return left(
          const NoteFailure.insufficientPermissions(),
        );
      } else {
        return left(
          const NoteFailure.unexpected(),
        );
      }
    });
  }

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchIncomplete() async* {
    final userDoc = await _db.userDocument();
    yield* userDoc.noteCollection
        .orderBy('serverTimeStamp')
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map(
            (notes) => NoteDTO.fromFirestore(notes).toDomain(),
          ),
        )
        .map(
          (notes) => right<NoteFailure, KtList<Note>>(
            notes
                .where(
                  (note) => note.todos.getOrCrash().any(
                        (todoItem) => !todoItem.done,
                      ),
                )
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((error, stackTrace) {
      if (error is FirebaseException &&
          error.message!.contains('permission-denined')) {
        return left(
          const NoteFailure.insufficientPermissions(),
        );
      } else {
        return left(
          const NoteFailure.unexpected(),
        );
      }
    });
  }

  @override
  Future<Either<NoteFailure, Unit>> create(Note note) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<NoteFailure, Unit>> delete(Note note) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<NoteFailure, Unit>> update(Note note) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
