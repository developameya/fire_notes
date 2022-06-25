import 'package:fire_notes/bloc_observer.dart';
import 'package:fire_notes/injection.dart';
import 'package:fire_notes/presentation/core/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

void main() {
  return BlocOverrides.runZoned(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
      //Since we have not set up a test environment, we are using the production environment.
      configureInjection(Environment.prod);
      runApp(const App());
    },
    blocObserver: AppBlocObserver(),
  );
}
