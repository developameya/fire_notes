import 'package:fire_notes/presentation/sign_in/sign_in_page.dart';
import 'package:fire_notes/presentation/splash/splash_page.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

enum Routes {
  root('/', SplashPage()),
  signIn('/signin', SignInPage());

  final String path;
  final Widget page;

  const Routes(this.path, this.page);
}

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
        path: Routes.root.path, builder: (context, state) => Routes.root.page),
    GoRoute(
        path: Routes.signIn.path,
        builder: (context, state) => Routes.signIn.page),
  ],
);
