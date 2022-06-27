//i = interface
// Interface class is similar to a protocol in Swift. It's available in Javascript but not in dart.
// This is a workaround for that.

import 'package:dartz/dartz.dart';
import 'package:fire_notes/domain/auth/auth_failure.dart';
import 'package:fire_notes/domain/auth/user.dart';
import 'package:fire_notes/domain/auth/value_objects.dart';

///Any class name that start with 'I' in front is only an Interface class.
///
///'Facade' is a design pattern used to connect two or more classes which has weird interaces and cannot be used in the app,
///'Facade' takes those classes and blocks then in a nice and unified interface.
abstract class IAuthFacade {
  //'Unit' is similar to 'Void' in Swift, which means it's an class which returns an empty tuple, unlike the 'void' keyword in dart.
  //The reason we use 'option' instead of 'either' is that there are only two possible response from the auth service, either the user is signed in or not.
  Future<Option<User>> getSignedInUser();
  //The reason we use 'Either' with 'AuthFailure' instead of 'option' is that there can be many different 'AuthFailure' returned by the register/sign-in method of the auth service.
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signedOut();
}
