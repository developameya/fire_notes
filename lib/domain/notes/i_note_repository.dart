import 'package:dartz/dartz.dart';

import 'note.dart';
import 'note_failure.dart';

abstract class INoteRepository {
  //watch notes
  Stream<Either<NoteFailure, Note>> watchAll();
  //watch incomplete notes
  Stream<Either<NoteFailure, Note>> watchIncomplete();
  //CUD
  Future<Either<NoteFailure, Unit>> create();
  Future<Either<NoteFailure, Unit>> update();
  Future<Either<NoteFailure, Unit>> delete();
}
