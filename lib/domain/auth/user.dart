import 'package:fire_notes/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({required Uid uniqueId}) = _User;
}
