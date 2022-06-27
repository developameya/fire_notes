import 'package:fire_notes/domain/auth/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import '../../domain/auth/user.dart';

extension FirebaseUserDomainX on firebase.User {
  User toDomain() => User(uniqueId: Uid.fromUid(uid));
}
