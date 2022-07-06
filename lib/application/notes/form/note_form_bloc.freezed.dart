// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note? note) intialised,
    required TResult Function(String bodystr) bodyChanged,
    required TResult Function(Color colour) colourChanged,
    required TResult Function(KtList<TodoItemPremitive> todos) todosChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note? note)? intialised,
    TResult Function(String bodystr)? bodyChanged,
    TResult Function(Color colour)? colourChanged,
    TResult Function(KtList<TodoItemPremitive> todos)? todosChanged,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note? note)? intialised,
    TResult Function(String bodystr)? bodyChanged,
    TResult Function(Color colour)? colourChanged,
    TResult Function(KtList<TodoItemPremitive> todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intialised value) intialised,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColourChanged value) colourChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Intialised value)? intialised,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColourChanged value)? colourChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intialised value)? intialised,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColourChanged value)? colourChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormEventCopyWith<$Res> {
  factory $NoteFormEventCopyWith(
          NoteFormEvent value, $Res Function(NoteFormEvent) then) =
      _$NoteFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteFormEventCopyWithImpl<$Res>
    implements $NoteFormEventCopyWith<$Res> {
  _$NoteFormEventCopyWithImpl(this._value, this._then);

  final NoteFormEvent _value;
  // ignore: unused_field
  final $Res Function(NoteFormEvent) _then;
}

/// @nodoc
abstract class _$$_IntialisedCopyWith<$Res> {
  factory _$$_IntialisedCopyWith(
          _$_Intialised value, $Res Function(_$_Intialised) then) =
      __$$_IntialisedCopyWithImpl<$Res>;
  $Res call({Note? note});

  $NoteCopyWith<$Res>? get note;
}

/// @nodoc
class __$$_IntialisedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$$_IntialisedCopyWith<$Res> {
  __$$_IntialisedCopyWithImpl(
      _$_Intialised _value, $Res Function(_$_Intialised) _then)
      : super(_value, (v) => _then(v as _$_Intialised));

  @override
  _$_Intialised get _value => super._value as _$_Intialised;

  @override
  $Res call({
    Object? note = freezed,
  }) {
    return _then(_$_Intialised(
      note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note?,
    ));
  }

  @override
  $NoteCopyWith<$Res>? get note {
    if (_value.note == null) {
      return null;
    }

    return $NoteCopyWith<$Res>(_value.note!, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc

class _$_Intialised implements _Intialised {
  const _$_Intialised(this.note);

  @override
  final Note? note;

  @override
  String toString() {
    return 'NoteFormEvent.intialised(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Intialised &&
            const DeepCollectionEquality().equals(other.note, note));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(note));

  @JsonKey(ignore: true)
  @override
  _$$_IntialisedCopyWith<_$_Intialised> get copyWith =>
      __$$_IntialisedCopyWithImpl<_$_Intialised>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note? note) intialised,
    required TResult Function(String bodystr) bodyChanged,
    required TResult Function(Color colour) colourChanged,
    required TResult Function(KtList<TodoItemPremitive> todos) todosChanged,
    required TResult Function() saved,
  }) {
    return intialised(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note? note)? intialised,
    TResult Function(String bodystr)? bodyChanged,
    TResult Function(Color colour)? colourChanged,
    TResult Function(KtList<TodoItemPremitive> todos)? todosChanged,
    TResult Function()? saved,
  }) {
    return intialised?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note? note)? intialised,
    TResult Function(String bodystr)? bodyChanged,
    TResult Function(Color colour)? colourChanged,
    TResult Function(KtList<TodoItemPremitive> todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (intialised != null) {
      return intialised(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intialised value) intialised,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColourChanged value) colourChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return intialised(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Intialised value)? intialised,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColourChanged value)? colourChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return intialised?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intialised value)? intialised,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColourChanged value)? colourChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (intialised != null) {
      return intialised(this);
    }
    return orElse();
  }
}

abstract class _Intialised implements NoteFormEvent {
  const factory _Intialised(final Note? note) = _$_Intialised;

  Note? get note => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_IntialisedCopyWith<_$_Intialised> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BodyChangedCopyWith<$Res> {
  factory _$$_BodyChangedCopyWith(
          _$_BodyChanged value, $Res Function(_$_BodyChanged) then) =
      __$$_BodyChangedCopyWithImpl<$Res>;
  $Res call({String bodystr});
}

/// @nodoc
class __$$_BodyChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$$_BodyChangedCopyWith<$Res> {
  __$$_BodyChangedCopyWithImpl(
      _$_BodyChanged _value, $Res Function(_$_BodyChanged) _then)
      : super(_value, (v) => _then(v as _$_BodyChanged));

  @override
  _$_BodyChanged get _value => super._value as _$_BodyChanged;

  @override
  $Res call({
    Object? bodystr = freezed,
  }) {
    return _then(_$_BodyChanged(
      bodystr == freezed
          ? _value.bodystr
          : bodystr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BodyChanged implements _BodyChanged {
  const _$_BodyChanged(this.bodystr);

  @override
  final String bodystr;

  @override
  String toString() {
    return 'NoteFormEvent.bodyChanged(bodystr: $bodystr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BodyChanged &&
            const DeepCollectionEquality().equals(other.bodystr, bodystr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bodystr));

  @JsonKey(ignore: true)
  @override
  _$$_BodyChangedCopyWith<_$_BodyChanged> get copyWith =>
      __$$_BodyChangedCopyWithImpl<_$_BodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note? note) intialised,
    required TResult Function(String bodystr) bodyChanged,
    required TResult Function(Color colour) colourChanged,
    required TResult Function(KtList<TodoItemPremitive> todos) todosChanged,
    required TResult Function() saved,
  }) {
    return bodyChanged(bodystr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note? note)? intialised,
    TResult Function(String bodystr)? bodyChanged,
    TResult Function(Color colour)? colourChanged,
    TResult Function(KtList<TodoItemPremitive> todos)? todosChanged,
    TResult Function()? saved,
  }) {
    return bodyChanged?.call(bodystr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note? note)? intialised,
    TResult Function(String bodystr)? bodyChanged,
    TResult Function(Color colour)? colourChanged,
    TResult Function(KtList<TodoItemPremitive> todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(bodystr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intialised value) intialised,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColourChanged value) colourChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Intialised value)? intialised,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColourChanged value)? colourChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return bodyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intialised value)? intialised,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColourChanged value)? colourChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(this);
    }
    return orElse();
  }
}

abstract class _BodyChanged implements NoteFormEvent {
  const factory _BodyChanged(final String bodystr) = _$_BodyChanged;

  String get bodystr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_BodyChangedCopyWith<_$_BodyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ColourChangedCopyWith<$Res> {
  factory _$$_ColourChangedCopyWith(
          _$_ColourChanged value, $Res Function(_$_ColourChanged) then) =
      __$$_ColourChangedCopyWithImpl<$Res>;
  $Res call({Color colour});
}

/// @nodoc
class __$$_ColourChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$$_ColourChangedCopyWith<$Res> {
  __$$_ColourChangedCopyWithImpl(
      _$_ColourChanged _value, $Res Function(_$_ColourChanged) _then)
      : super(_value, (v) => _then(v as _$_ColourChanged));

  @override
  _$_ColourChanged get _value => super._value as _$_ColourChanged;

  @override
  $Res call({
    Object? colour = freezed,
  }) {
    return _then(_$_ColourChanged(
      colour == freezed
          ? _value.colour
          : colour // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_ColourChanged implements _ColourChanged {
  const _$_ColourChanged(this.colour);

  @override
  final Color colour;

  @override
  String toString() {
    return 'NoteFormEvent.colourChanged(colour: $colour)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ColourChanged &&
            const DeepCollectionEquality().equals(other.colour, colour));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(colour));

  @JsonKey(ignore: true)
  @override
  _$$_ColourChangedCopyWith<_$_ColourChanged> get copyWith =>
      __$$_ColourChangedCopyWithImpl<_$_ColourChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note? note) intialised,
    required TResult Function(String bodystr) bodyChanged,
    required TResult Function(Color colour) colourChanged,
    required TResult Function(KtList<TodoItemPremitive> todos) todosChanged,
    required TResult Function() saved,
  }) {
    return colourChanged(colour);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note? note)? intialised,
    TResult Function(String bodystr)? bodyChanged,
    TResult Function(Color colour)? colourChanged,
    TResult Function(KtList<TodoItemPremitive> todos)? todosChanged,
    TResult Function()? saved,
  }) {
    return colourChanged?.call(colour);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note? note)? intialised,
    TResult Function(String bodystr)? bodyChanged,
    TResult Function(Color colour)? colourChanged,
    TResult Function(KtList<TodoItemPremitive> todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (colourChanged != null) {
      return colourChanged(colour);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intialised value) intialised,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColourChanged value) colourChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return colourChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Intialised value)? intialised,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColourChanged value)? colourChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return colourChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intialised value)? intialised,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColourChanged value)? colourChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (colourChanged != null) {
      return colourChanged(this);
    }
    return orElse();
  }
}

abstract class _ColourChanged implements NoteFormEvent {
  const factory _ColourChanged(final Color colour) = _$_ColourChanged;

  Color get colour => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ColourChangedCopyWith<_$_ColourChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TodosChangedCopyWith<$Res> {
  factory _$$_TodosChangedCopyWith(
          _$_TodosChanged value, $Res Function(_$_TodosChanged) then) =
      __$$_TodosChangedCopyWithImpl<$Res>;
  $Res call({KtList<TodoItemPremitive> todos});
}

/// @nodoc
class __$$_TodosChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$$_TodosChangedCopyWith<$Res> {
  __$$_TodosChangedCopyWithImpl(
      _$_TodosChanged _value, $Res Function(_$_TodosChanged) _then)
      : super(_value, (v) => _then(v as _$_TodosChanged));

  @override
  _$_TodosChanged get _value => super._value as _$_TodosChanged;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_$_TodosChanged(
      todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as KtList<TodoItemPremitive>,
    ));
  }
}

/// @nodoc

class _$_TodosChanged implements _TodosChanged {
  const _$_TodosChanged(this.todos);

  @override
  final KtList<TodoItemPremitive> todos;

  @override
  String toString() {
    return 'NoteFormEvent.todosChanged(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodosChanged &&
            const DeepCollectionEquality().equals(other.todos, todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todos));

  @JsonKey(ignore: true)
  @override
  _$$_TodosChangedCopyWith<_$_TodosChanged> get copyWith =>
      __$$_TodosChangedCopyWithImpl<_$_TodosChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note? note) intialised,
    required TResult Function(String bodystr) bodyChanged,
    required TResult Function(Color colour) colourChanged,
    required TResult Function(KtList<TodoItemPremitive> todos) todosChanged,
    required TResult Function() saved,
  }) {
    return todosChanged(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note? note)? intialised,
    TResult Function(String bodystr)? bodyChanged,
    TResult Function(Color colour)? colourChanged,
    TResult Function(KtList<TodoItemPremitive> todos)? todosChanged,
    TResult Function()? saved,
  }) {
    return todosChanged?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note? note)? intialised,
    TResult Function(String bodystr)? bodyChanged,
    TResult Function(Color colour)? colourChanged,
    TResult Function(KtList<TodoItemPremitive> todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (todosChanged != null) {
      return todosChanged(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intialised value) intialised,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColourChanged value) colourChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return todosChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Intialised value)? intialised,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColourChanged value)? colourChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return todosChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intialised value)? intialised,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColourChanged value)? colourChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (todosChanged != null) {
      return todosChanged(this);
    }
    return orElse();
  }
}

abstract class _TodosChanged implements NoteFormEvent {
  const factory _TodosChanged(final KtList<TodoItemPremitive> todos) =
      _$_TodosChanged;

  KtList<TodoItemPremitive> get todos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_TodosChangedCopyWith<_$_TodosChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, (v) => _then(v as _$_Saved));

  @override
  _$_Saved get _value => super._value as _$_Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'NoteFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note? note) intialised,
    required TResult Function(String bodystr) bodyChanged,
    required TResult Function(Color colour) colourChanged,
    required TResult Function(KtList<TodoItemPremitive> todos) todosChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note? note)? intialised,
    TResult Function(String bodystr)? bodyChanged,
    TResult Function(Color colour)? colourChanged,
    TResult Function(KtList<TodoItemPremitive> todos)? todosChanged,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note? note)? intialised,
    TResult Function(String bodystr)? bodyChanged,
    TResult Function(Color colour)? colourChanged,
    TResult Function(KtList<TodoItemPremitive> todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intialised value) intialised,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColourChanged value) colourChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Intialised value)? intialised,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColourChanged value)? colourChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intialised value)? intialised,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColourChanged value)? colourChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements NoteFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$NoteFormState {
  Note get note => throw _privateConstructorUsedError;
  AutovalidateMode get showErrorMessage => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<NoteFailure, Unit>> get saveFailOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteFormStateCopyWith<NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormStateCopyWith<$Res> {
  factory $NoteFormStateCopyWith(
          NoteFormState value, $Res Function(NoteFormState) then) =
      _$NoteFormStateCopyWithImpl<$Res>;
  $Res call(
      {Note note,
      AutovalidateMode showErrorMessage,
      bool isEditing,
      bool isSaving,
      Option<Either<NoteFailure, Unit>> saveFailOrSuccessOption});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class _$NoteFormStateCopyWithImpl<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  _$NoteFormStateCopyWithImpl(this._value, this._then);

  final NoteFormState _value;
  // ignore: unused_field
  final $Res Function(NoteFormState) _then;

  @override
  $Res call({
    Object? note = freezed,
    Object? showErrorMessage = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailOrSuccessOption: saveFailOrSuccessOption == freezed
          ? _value.saveFailOrSuccessOption
          : saveFailOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NoteFailure, Unit>>,
    ));
  }

  @override
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc
abstract class _$$_NoteFormStateCopyWith<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  factory _$$_NoteFormStateCopyWith(
          _$_NoteFormState value, $Res Function(_$_NoteFormState) then) =
      __$$_NoteFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Note note,
      AutovalidateMode showErrorMessage,
      bool isEditing,
      bool isSaving,
      Option<Either<NoteFailure, Unit>> saveFailOrSuccessOption});

  @override
  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$_NoteFormStateCopyWithImpl<$Res>
    extends _$NoteFormStateCopyWithImpl<$Res>
    implements _$$_NoteFormStateCopyWith<$Res> {
  __$$_NoteFormStateCopyWithImpl(
      _$_NoteFormState _value, $Res Function(_$_NoteFormState) _then)
      : super(_value, (v) => _then(v as _$_NoteFormState));

  @override
  _$_NoteFormState get _value => super._value as _$_NoteFormState;

  @override
  $Res call({
    Object? note = freezed,
    Object? showErrorMessage = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailOrSuccessOption = freezed,
  }) {
    return _then(_$_NoteFormState(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailOrSuccessOption: saveFailOrSuccessOption == freezed
          ? _value.saveFailOrSuccessOption
          : saveFailOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NoteFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_NoteFormState implements _NoteFormState {
  const _$_NoteFormState(
      {required this.note,
      required this.showErrorMessage,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailOrSuccessOption});

  @override
  final Note note;
  @override
  final AutovalidateMode showErrorMessage;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<NoteFailure, Unit>> saveFailOrSuccessOption;

  @override
  String toString() {
    return 'NoteFormState(note: $note, showErrorMessage: $showErrorMessage, isEditing: $isEditing, isSaving: $isSaving, saveFailOrSuccessOption: $saveFailOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteFormState &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessage, showErrorMessage) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(
                other.saveFailOrSuccessOption, saveFailOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(showErrorMessage),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(saveFailOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_NoteFormStateCopyWith<_$_NoteFormState> get copyWith =>
      __$$_NoteFormStateCopyWithImpl<_$_NoteFormState>(this, _$identity);
}

abstract class _NoteFormState implements NoteFormState {
  const factory _NoteFormState(
      {required final Note note,
      required final AutovalidateMode showErrorMessage,
      required final bool isEditing,
      required final bool isSaving,
      required final Option<Either<NoteFailure, Unit>>
          saveFailOrSuccessOption}) = _$_NoteFormState;

  @override
  Note get note => throw _privateConstructorUsedError;
  @override
  AutovalidateMode get showErrorMessage => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  Option<Either<NoteFailure, Unit>> get saveFailOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NoteFormStateCopyWith<_$_NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
