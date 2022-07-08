// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_transfer_objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoteDTO _$$_NoteDTOFromJson(Map<String, dynamic> json) => _$_NoteDTO(
      body: json['body'] as String,
      todos: (json['todos'] as List<dynamic>)
          .map((e) => TodoItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      color: json['color'] as int,
      serverTimeStamp: json['serverTimeStamp'],
    );

Map<String, dynamic> _$$_NoteDTOToJson(_$_NoteDTO instance) =>
    <String, dynamic>{
      'body': instance.body,
      'todos': instance.todos.map((e) => e.toJson()).toList(),
      'color': instance.color,
      'serverTimeStamp': instance.serverTimeStamp,
    };

_$_TodoItemTDO _$$_TodoItemTDOFromJson(Map<String, dynamic> json) =>
    _$_TodoItemTDO(
      uid: json['uid'] as String,
      name: json['name'] as String,
      done: json['done'] as bool,
    );

Map<String, dynamic> _$$_TodoItemTDOToJson(_$_TodoItemTDO instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'done': instance.done,
    };
