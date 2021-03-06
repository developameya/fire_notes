import 'package:fire_notes/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:fire_notes/domain/auth/i_auth_facade.dart';
import 'package:fire_notes/domain/auth/user.dart';
import 'package:fire_notes/domain/auth/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart' as fauth;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import './firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FireBaseAuthFacade implements IAuthFacade {
  final fauth.FirebaseAuth _auth;
  final GoogleSignIn _gSignIn;

  const FireBaseAuthFacade(
      fauth.FirebaseAuth firebaseAuth, GoogleSignIn googleSignIn)
      : _auth = firebaseAuth,
        _gSignIn = googleSignIn;

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      await _auth.createUserWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr);
      return right(unit);
    } on fauth.FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      await _auth.signInWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr);
      return right(unit);
    } on fauth.FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email' || e.code == 'wrong-password') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final gUser = await _gSignIn.signIn();

      if (gUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final gAuth = await gUser.authentication;

      final authCred = fauth.GoogleAuthProvider.credential(
          idToken: gAuth.idToken, accessToken: gAuth.accessToken);
      // TODO: try logging the errors thrown by `signInWithCredential` to crashlytics for practice.
      return _auth
          .signInWithCredential(authCred)
          .then((userCred) => right(unit));
    } on fauth.FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<User>> get getCurrentUser async => optionOf(
        _auth.currentUser?.toDomain(),
      );

  @override
  Stream<Option<User>> get getSignedInUser => _auth.authStateChanges().map(
        (firebaseUser) => optionOf(
          firebaseUser?.toDomain(),
        ),
      );

  @override
  Future<void> signedOut() =>
      Future.wait([_gSignIn.signOut(), _auth.signOut()]);
}
