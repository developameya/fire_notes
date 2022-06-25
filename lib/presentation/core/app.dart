import 'package:fire_notes/presentation/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fire Notes',
      theme: ThemeData.light().copyWith(
          primaryColor: Colors.amber,
          inputDecorationTheme: const InputDecorationTheme(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))))),
      home: const SignInPage(),
    );
  }
}
