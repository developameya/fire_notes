//i = interface
// Interface class is similar to a protocol in Swift. It's available in Javascript but not in dart.
// This is a workaround for that.

import 'package:dartz/dartz.dart';
import 'package:fire_notes/domain/auth/auth_failure.dart';
import 'package:fire_notes/domain/auth/value_objects.dart';

///Any class name that start with 'I' in front is only an Interface class.
///
///'Facade' is a design pattern used to connect two or more classes which has weird interaces and cannot be used in the app,
///'Facade' takes those classes and blocks then in a nice and unified interface.
abstract class IAuthFacade {
  //'Unit' is similar to 'Void' in Swift, which means it's an class which returns an empty tuple, unlike the 'void' keyword in dart.
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
