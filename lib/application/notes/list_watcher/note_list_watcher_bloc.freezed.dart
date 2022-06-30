// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_list_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteListWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchIncompletedStarted,
    required TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)
        notesRecieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchIncompletedStarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesRecieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchIncompletedStarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesRecieved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchIncompletedStarted value)
        watchIncompletedStarted,
    required TResult Function(_NotesRecieved value) notesRecieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchIncompletedStarted value)? watchIncompletedStarted,
    TResult Function(_NotesRecieved value)? notesRecieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchIncompletedStarted value)? watchIncompletedStarted,
    TResult Function(_NotesRecieved value)? notesRecieved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteListWatcherEventCopyWith<$Res> {
  factory $NoteListWatcherEventCopyWith(NoteListWatcherEvent value,
          $Res Function(NoteListWatcherEvent) then) =
      _$NoteListWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteListWatcherEventCopyWithImpl<$Res>
    implements $NoteListWatcherEventCopyWith<$Res> {
  _$NoteListWatcherEventCopyWithImpl(this._value, this._then);

  final NoteListWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(NoteListWatcherEvent) _then;
}

/// @nodoc
abstract class _$$_WatchAllStartedCopyWith<$Res> {
  factory _$$_WatchAllStartedCopyWith(
          _$_WatchAllStarted value, $Res Function(_$_WatchAllStarted) then) =
      __$$_WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchAllStartedCopyWithImpl<$Res>
    extends _$NoteListWatcherEventCopyWithImpl<$Res>
    implements _$$_WatchAllStartedCopyWith<$Res> {
  __$$_WatchAllStartedCopyWithImpl(
      _$_WatchAllStarted _value, $Res Function(_$_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _$_WatchAllStarted));

  @override
  _$_WatchAllStarted get _value => super._value as _$_WatchAllStarted;
}

/// @nodoc

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'NoteListWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchIncompletedStarted,
    required TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)
        notesRecieved,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchIncompletedStarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesRecieved,
  }) {
    return watchAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchIncompletedStarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesRecieved,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchIncompletedStarted value)
        watchIncompletedStarted,
    required TResult Function(_NotesRecieved value) notesRecieved,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchIncompletedStarted value)? watchIncompletedStarted,
    TResult Function(_NotesRecieved value)? notesRecieved,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchIncompletedStarted value)? watchIncompletedStarted,
    TResult Function(_NotesRecieved value)? notesRecieved,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements NoteListWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$$_WatchIncompletedStartedCopyWith<$Res> {
  factory _$$_WatchIncompletedStartedCopyWith(_$_WatchIncompletedStarted value,
          $Res Function(_$_WatchIncompletedStarted) then) =
      __$$_WatchIncompletedStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchIncompletedStartedCopyWithImpl<$Res>
    extends _$NoteListWatcherEventCopyWithImpl<$Res>
    implements _$$_WatchIncompletedStartedCopyWith<$Res> {
  __$$_WatchIncompletedStartedCopyWithImpl(_$_WatchIncompletedStarted _value,
      $Res Function(_$_WatchIncompletedStarted) _then)
      : super(_value, (v) => _then(v as _$_WatchIncompletedStarted));

  @override
  _$_WatchIncompletedStarted get _value =>
      super._value as _$_WatchIncompletedStarted;
}

/// @nodoc

class _$_WatchIncompletedStarted implements _WatchIncompletedStarted {
  const _$_WatchIncompletedStarted();

  @override
  String toString() {
    return 'NoteListWatcherEvent.watchIncompletedStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchIncompletedStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchIncompletedStarted,
    required TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)
        notesRecieved,
  }) {
    return watchIncompletedStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchIncompletedStarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesRecieved,
  }) {
    return watchIncompletedStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchIncompletedStarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesRecieved,
    required TResult orElse(),
  }) {
    if (watchIncompletedStarted != null) {
      return watchIncompletedStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchIncompletedStarted value)
        watchIncompletedStarted,
    required TResult Function(_NotesRecieved value) notesRecieved,
  }) {
    return watchIncompletedStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchIncompletedStarted value)? watchIncompletedStarted,
    TResult Function(_NotesRecieved value)? notesRecieved,
  }) {
    return watchIncompletedStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchIncompletedStarted value)? watchIncompletedStarted,
    TResult Function(_NotesRecieved value)? notesRecieved,
    required TResult orElse(),
  }) {
    if (watchIncompletedStarted != null) {
      return watchIncompletedStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchIncompletedStarted implements NoteListWatcherEvent {
  const factory _WatchIncompletedStarted() = _$_WatchIncompletedStarted;
}

/// @nodoc
abstract class _$$_NotesRecievedCopyWith<$Res> {
  factory _$$_NotesRecievedCopyWith(
          _$_NotesRecieved value, $Res Function(_$_NotesRecieved) then) =
      __$$_NotesRecievedCopyWithImpl<$Res>;
  $Res call({Either<NoteFailure, KtList<Note>> failureOrNotes});
}

/// @nodoc
class __$$_NotesRecievedCopyWithImpl<$Res>
    extends _$NoteListWatcherEventCopyWithImpl<$Res>
    implements _$$_NotesRecievedCopyWith<$Res> {
  __$$_NotesRecievedCopyWithImpl(
      _$_NotesRecieved _value, $Res Function(_$_NotesRecieved) _then)
      : super(_value, (v) => _then(v as _$_NotesRecieved));

  @override
  _$_NotesRecieved get _value => super._value as _$_NotesRecieved;

  @override
  $Res call({
    Object? failureOrNotes = freezed,
  }) {
    return _then(_$_NotesRecieved(
      failureOrNotes == freezed
          ? _value.failureOrNotes
          : failureOrNotes // ignore: cast_nullable_to_non_nullable
              as Either<NoteFailure, KtList<Note>>,
    ));
  }
}

/// @nodoc

class _$_NotesRecieved implements _NotesRecieved {
  const _$_NotesRecieved(this.failureOrNotes);

  @override
  final Either<NoteFailure, KtList<Note>> failureOrNotes;

  @override
  String toString() {
    return 'NoteListWatcherEvent.notesRecieved(failureOrNotes: $failureOrNotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotesRecieved &&
            const DeepCollectionEquality()
                .equals(other.failureOrNotes, failureOrNotes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrNotes));

  @JsonKey(ignore: true)
  @override
  _$$_NotesRecievedCopyWith<_$_NotesRecieved> get copyWith =>
      __$$_NotesRecievedCopyWithImpl<_$_NotesRecieved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchIncompletedStarted,
    required TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)
        notesRecieved,
  }) {
    return notesRecieved(failureOrNotes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchIncompletedStarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesRecieved,
  }) {
    return notesRecieved?.call(failureOrNotes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchIncompletedStarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        notesRecieved,
    required TResult orElse(),
  }) {
    if (notesRecieved != null) {
      return notesRecieved(failureOrNotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchIncompletedStarted value)
        watchIncompletedStarted,
    required TResult Function(_NotesRecieved value) notesRecieved,
  }) {
    return notesRecieved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchIncompletedStarted value)? watchIncompletedStarted,
    TResult Function(_NotesRecieved value)? notesRecieved,
  }) {
    return notesRecieved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchIncompletedStarted value)? watchIncompletedStarted,
    TResult Function(_NotesRecieved value)? notesRecieved,
    required TResult orElse(),
  }) {
    if (notesRecieved != null) {
      return notesRecieved(this);
    }
    return orElse();
  }
}

abstract class _NotesRecieved implements NoteListWatcherEvent {
  const factory _NotesRecieved(
          final Either<NoteFailure, KtList<Note>> failureOrNotes) =
      _$_NotesRecieved;

  Either<NoteFailure, KtList<Note>> get failureOrNotes =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_NotesRecievedCopyWith<_$_NotesRecieved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoteListWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Note> notes) success,
    required TResult Function(NoteFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Note> notes)? success,
    TResult Function(NoteFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Note> notes)? success,
    TResult Function(NoteFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteListWatcherStateCopyWith<$Res> {
  factory $NoteListWatcherStateCopyWith(NoteListWatcherState value,
          $Res Function(NoteListWatcherState) then) =
      _$NoteListWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteListWatcherStateCopyWithImpl<$Res>
    implements $NoteListWatcherStateCopyWith<$Res> {
  _$NoteListWatcherStateCopyWithImpl(this._value, this._then);

  final NoteListWatcherState _value;
  // ignore: unused_field
  final $Res Function(NoteListWatcherState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$NoteListWatcherStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NoteListWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Note> notes) success,
    required TResult Function(NoteFailure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Note> notes)? success,
    TResult Function(NoteFailure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Note> notes)? success,
    TResult Function(NoteFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NoteListWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$NoteListWatcherStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'NoteListWatcherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Note> notes) success,
    required TResult Function(NoteFailure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Note> notes)? success,
    TResult Function(NoteFailure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Note> notes)? success,
    TResult Function(NoteFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NoteListWatcherState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  $Res call({KtList<Note> notes});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$NoteListWatcherStateCopyWithImpl<$Res>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, (v) => _then(v as _$_Success));

  @override
  _$_Success get _value => super._value as _$_Success;

  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(_$_Success(
      notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as KtList<Note>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.notes);

  @override
  final KtList<Note> notes;

  @override
  String toString() {
    return 'NoteListWatcherState.success(notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality().equals(other.notes, notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(notes));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Note> notes) success,
    required TResult Function(NoteFailure failure) failure,
  }) {
    return success(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Note> notes)? success,
    TResult Function(NoteFailure failure)? failure,
  }) {
    return success?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Note> notes)? success,
    TResult Function(NoteFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements NoteListWatcherState {
  const factory _Success(final KtList<Note> notes) = _$_Success;

  KtList<Note> get notes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_failureCopyWith<$Res> {
  factory _$$_failureCopyWith(
          _$_failure value, $Res Function(_$_failure) then) =
      __$$_failureCopyWithImpl<$Res>;
  $Res call({NoteFailure failure});

  $NoteFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_failureCopyWithImpl<$Res>
    extends _$NoteListWatcherStateCopyWithImpl<$Res>
    implements _$$_failureCopyWith<$Res> {
  __$$_failureCopyWithImpl(_$_failure _value, $Res Function(_$_failure) _then)
      : super(_value, (v) => _then(v as _$_failure));

  @override
  _$_failure get _value => super._value as _$_failure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_failure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as NoteFailure,
    ));
  }

  @override
  $NoteFailureCopyWith<$Res> get failure {
    return $NoteFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_failure implements _failure {
  const _$_failure(this.failure);

  @override
  final NoteFailure failure;

  @override
  String toString() {
    return 'NoteListWatcherState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_failure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_failureCopyWith<_$_failure> get copyWith =>
      __$$_failureCopyWithImpl<_$_failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Note> notes) success,
    required TResult Function(NoteFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Note> notes)? success,
    TResult Function(NoteFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Note> notes)? success,
    TResult Function(NoteFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _failure implements NoteListWatcherState {
  const factory _failure(final NoteFailure failure) = _$_failure;

  NoteFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_failureCopyWith<_$_failure> get copyWith =>
      throw _privateConstructorUsedError;
}
