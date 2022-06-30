import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fire_notes/domain/auth/value_objects.dart';
import 'package:fire_notes/domain/notes/todo_item.dart';
import 'package:fire_notes/domain/notes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import '../../domain/notes/note.dart';
part 'data_transfer_objects.freezed.dart';
part 'data_transfer_objects.g.dart';

@freezed
abstract class NoteDTO implements _$NoteDTO {
  const NoteDTO._();
  const factory NoteDTO({
    // ignore: invalid_annotation_target
    @JsonKey(ignore: true) String? uid,
    required String body,
    required List<TodoItemDTO> todos,
    required int color,
    required dynamic serverTimeStamp,
  }) = _NoteDTO;

  //helper methods
  factory NoteDTO.fromDomain(Note note) => NoteDTO(
        uid: note.uid.getOrCrash(),
        body: note.body.getOrCrash(),
        todos: note.todos
            .getOrCrash()
            .asList()
            .map(
              (todoItem) => TodoItemDTO.fromDomain(todoItem),
            )
            .toList(),
        color: note.color.getOrCrash().value,
        //TODO: This line might throw an exception at runtime.
        serverTimeStamp: FieldValue.serverTimestamp(),
      );

  Note toDomain() {
    return Note(
      uid: Uid.fromUid(uid!),
      body: NoteBody(body),
      todos: LimitedLengthList(
        todos
            .map(
              (todoItemDto) => todoItemDto.toDomain(),
            )
            .toImmutableList(),
      ),
      color: NoteColour(Color(color)),
    );
  }

  factory NoteDTO.fromJson(Map<String, dynamic> json) =>
      _$NoteDTOFromJson(json);

  factory NoteDTO.fromFirestore(DocumentSnapshot snapshot) =>
      NoteDTO.fromJson(snapshot.data() as Map<String, dynamic>)
          .copyWith(uid: snapshot.id);
}

@freezed
abstract class TodoItemDTO implements _$TodoItemDTO {
  const TodoItemDTO._();

  const factory TodoItemDTO({
    required String uid,
    required String name,
    required bool done,
  }) = _TodoItemTDO;

  //helper methods
  factory TodoItemDTO.fromDomain(TodoItem item) => TodoItemDTO(
        uid: item.uid.getOrCrash(),
        name: item.name.getOrCrash(),
        done: item.done,
      );

  TodoItem toDomain() {
    return TodoItem(
      uid: Uid.fromUid(uid),
      name: TodoName(name),
      done: done,
    );
  }

  factory TodoItemDTO.fromJson(Map<String, dynamic> json) =>
      _$TodoItemDTOFromJson(json);
}
