import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:fire_notes/domain/auth/i_auth_facade.dart';

import '../../domain/auth/errors.dart';
import '../../domain/auth/user.dart';
import '../../injection.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  ///Returns the user document for the logged in [User]
  ///Otherwise throws a [NotAuthenticatedError]
  Future<DocumentReference> userDocument() async {
    final Option<User> userOption = await getIt<IAuthFacade>().getCurrentUser;
    final User user = userOption.getOrElse(
      () => throw NotAuthenticatedError(),
    );
    return FirebaseFirestore.instance.collection('users').doc(
          user.uniqueId.getOrCrash(),
        );
  }
}

extension DocumentReferenceX on DocumentReference {
  ///Returns the notes collection for the user.
  CollectionReference get noteCollection => collection('notes');
}
