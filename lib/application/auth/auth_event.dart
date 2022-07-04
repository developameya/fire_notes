part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  factory AuthEvent.authStateChanged(Option<User> userOption) =
      _AuthStateChanged;
  factory AuthEvent.authCheckRequested() = _AuthCheckRequested;
  factory AuthEvent.signedOut() = _SignedOut;
}
