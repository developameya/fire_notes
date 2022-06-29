// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_transfer_objects.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteDTO _$NoteDTOFromJson(Map<String, dynamic> json) {
  return _NoteDTO.fromJson(json);
}

/// @nodoc
mixin _$NoteDTO {
// ignore: invalid_annotation_target
  @JsonKey(ignore: true)
  String? get uid => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  List<TodoItemDTO> get todos => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  dynamic get serverTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteDTOCopyWith<NoteDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteDTOCopyWith<$Res> {
  factory $NoteDTOCopyWith(NoteDTO value, $Res Function(NoteDTO) then) =
      _$NoteDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? uid,
      String body,
      List<TodoItemDTO> todos,
      int color,
      dynamic serverTimeStamp});
}

/// @nodoc
class _$NoteDTOCopyWithImpl<$Res> implements $NoteDTOCopyWith<$Res> {
  _$NoteDTOCopyWithImpl(this._value, this._then);

  final NoteDTO _value;
  // ignore: unused_field
  final $Res Function(NoteDTO) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? body = freezed,
    Object? todos = freezed,
    Object? color = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoItemDTO>,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_NoteDTOCopyWith<$Res> implements $NoteDTOCopyWith<$Res> {
  factory _$$_NoteDTOCopyWith(
          _$_NoteDTO value, $Res Function(_$_NoteDTO) then) =
      __$$_NoteDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? uid,
      String body,
      List<TodoItemDTO> todos,
      int color,
      dynamic serverTimeStamp});
}

/// @nodoc
class __$$_NoteDTOCopyWithImpl<$Res> extends _$NoteDTOCopyWithImpl<$Res>
    implements _$$_NoteDTOCopyWith<$Res> {
  __$$_NoteDTOCopyWithImpl(_$_NoteDTO _value, $Res Function(_$_NoteDTO) _then)
      : super(_value, (v) => _then(v as _$_NoteDTO));

  @override
  _$_NoteDTO get _value => super._value as _$_NoteDTO;

  @override
  $Res call({
    Object? uid = freezed,
    Object? body = freezed,
    Object? todos = freezed,
    Object? color = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_$_NoteDTO(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      todos: todos == freezed
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoItemDTO>,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoteDTO extends _NoteDTO {
  const _$_NoteDTO(
      {@JsonKey(ignore: true) this.uid,
      required this.body,
      required final List<TodoItemDTO> todos,
      required this.color,
      required this.serverTimeStamp})
      : _todos = todos,
        super._();

  factory _$_NoteDTO.fromJson(Map<String, dynamic> json) =>
      _$$_NoteDTOFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(ignore: true)
  final String? uid;
  @override
  final String body;
  final List<TodoItemDTO> _todos;
  @override
  List<TodoItemDTO> get todos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  final int color;
  @override
  final dynamic serverTimeStamp;

  @override
  String toString() {
    return 'NoteDTO(uid: $uid, body: $body, todos: $todos, color: $color, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteDTO &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.serverTimeStamp, serverTimeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(_todos),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(serverTimeStamp));

  @JsonKey(ignore: true)
  @override
  _$$_NoteDTOCopyWith<_$_NoteDTO> get copyWith =>
      __$$_NoteDTOCopyWithImpl<_$_NoteDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoteDTOToJson(this);
  }
}

abstract class _NoteDTO extends NoteDTO {
  const factory _NoteDTO(
      {@JsonKey(ignore: true) final String? uid,
      required final String body,
      required final List<TodoItemDTO> todos,
      required final int color,
      required final dynamic serverTimeStamp}) = _$_NoteDTO;
  const _NoteDTO._() : super._();

  factory _NoteDTO.fromJson(Map<String, dynamic> json) = _$_NoteDTO.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(ignore: true)
  String? get uid => throw _privateConstructorUsedError;
  @override
  String get body => throw _privateConstructorUsedError;
  @override
  List<TodoItemDTO> get todos => throw _privateConstructorUsedError;
  @override
  int get color => throw _privateConstructorUsedError;
  @override
  dynamic get serverTimeStamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NoteDTOCopyWith<_$_NoteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

TodoItemDTO _$TodoItemDTOFromJson(Map<String, dynamic> json) {
  return _TodoItemTDO.fromJson(json);
}

/// @nodoc
mixin _$TodoItemDTO {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoItemDTOCopyWith<TodoItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoItemDTOCopyWith<$Res> {
  factory $TodoItemDTOCopyWith(
          TodoItemDTO value, $Res Function(TodoItemDTO) then) =
      _$TodoItemDTOCopyWithImpl<$Res>;
  $Res call({String uid, String name, bool done});
}

/// @nodoc
class _$TodoItemDTOCopyWithImpl<$Res> implements $TodoItemDTOCopyWith<$Res> {
  _$TodoItemDTOCopyWithImpl(this._value, this._then);

  final TodoItemDTO _value;
  // ignore: unused_field
  final $Res Function(TodoItemDTO) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? done = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_TodoItemTDOCopyWith<$Res>
    implements $TodoItemDTOCopyWith<$Res> {
  factory _$$_TodoItemTDOCopyWith(
          _$_TodoItemTDO value, $Res Function(_$_TodoItemTDO) then) =
      __$$_TodoItemTDOCopyWithImpl<$Res>;
  @override
  $Res call({String uid, String name, bool done});
}

/// @nodoc
class __$$_TodoItemTDOCopyWithImpl<$Res> extends _$TodoItemDTOCopyWithImpl<$Res>
    implements _$$_TodoItemTDOCopyWith<$Res> {
  __$$_TodoItemTDOCopyWithImpl(
      _$_TodoItemTDO _value, $Res Function(_$_TodoItemTDO) _then)
      : super(_value, (v) => _then(v as _$_TodoItemTDO));

  @override
  _$_TodoItemTDO get _value => super._value as _$_TodoItemTDO;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? done = freezed,
  }) {
    return _then(_$_TodoItemTDO(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoItemTDO extends _TodoItemTDO {
  const _$_TodoItemTDO(
      {required this.uid, required this.name, required this.done})
      : super._();

  factory _$_TodoItemTDO.fromJson(Map<String, dynamic> json) =>
      _$$_TodoItemTDOFromJson(json);

  @override
  final String uid;
  @override
  final String name;
  @override
  final bool done;

  @override
  String toString() {
    return 'TodoItemDTO(uid: $uid, name: $name, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoItemTDO &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.done, done));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(done));

  @JsonKey(ignore: true)
  @override
  _$$_TodoItemTDOCopyWith<_$_TodoItemTDO> get copyWith =>
      __$$_TodoItemTDOCopyWithImpl<_$_TodoItemTDO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoItemTDOToJson(this);
  }
}

abstract class _TodoItemTDO extends TodoItemDTO {
  const factory _TodoItemTDO(
      {required final String uid,
      required final String name,
      required final bool done}) = _$_TodoItemTDO;
  const _TodoItemTDO._() : super._();

  factory _TodoItemTDO.fromJson(Map<String, dynamic> json) =
      _$_TodoItemTDO.fromJson;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  bool get done => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TodoItemTDOCopyWith<_$_TodoItemTDO> get copyWith =>
      throw _privateConstructorUsedError;
}
