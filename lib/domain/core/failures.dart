import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@immutable
@freezed
abstract class ValueFailure<T> implements _$ValueFailure<T> {
  const ValueFailure._();
  const factory ValueFailure.auth(AuthValueFailure<T> failure) = _Auth<T>;
  const factory ValueFailure.notes(NotesValueFailure<T> failure) = _Notes<T>;
  Option<NotesValueFailure<T>> get getNoteFailure => maybeMap(
        notes: (f) => some(f.failure),
        orElse: () => none(),
      );
  Option<AuthValueFailure<T>> get getAuthFailure => maybeMap(
        auth: (f) => some(f.failure),
        orElse: () => none(),
      );
}

@immutable
@freezed
abstract class AuthValueFailure<T> with _$AuthValueFailure<T> {
  const factory AuthValueFailure.invalidEmail({required T failedValue}) =
      InvalidEmail<T>;
  const factory AuthValueFailure.shortPassword({required T failedValue}) =
      ShortPassword<T>;
}

@immutable
@freezed
abstract class NotesValueFailure<T> with _$NotesValueFailure<T> {
  const factory NotesValueFailure.exceedingLength(
      {required T failedValue, required int maxLength}) = ExceedingLength<T>;
  const factory NotesValueFailure.empty({required T failedValue}) = Empty<T>;
  const factory NotesValueFailure.multiline({required T failedValue}) =
      Multiline<T>;
  const factory NotesValueFailure.listTooLong(
      {required T failedValue, required int maxLength}) = ListTooLong<T>;
}
