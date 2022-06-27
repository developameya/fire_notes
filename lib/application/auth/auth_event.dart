part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  factory AuthEvent.authCheckRequested() = _AuthCheckRequested;
  factory AuthEvent.signedOut() = _SignedOut;
}
