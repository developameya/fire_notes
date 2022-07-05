import 'package:fire_notes/application/auth/auth_bloc.dart';
import 'package:fire_notes/presentation/notes/notes_overview/notes_overview_page.dart';
import 'package:fire_notes/presentation/sign_in/sign_in_page.dart';
import 'package:fire_notes/presentation/splash/splash_page.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../injection.dart';

enum Routes {
  root('/', SplashPage()),
  signIn('/signin', SignInPage()),
  notesOverview('/notesOverview', NotesOverviewPage());

  final String path;
  final Widget page;

  const Routes(this.path, this.page);
}

final GoRouter router = GoRouter(
  //Listen to the changes in the authBloc.
  refreshListenable: GoRouterRefreshStream(getIt<AuthBloc>().stream),
  //Change the routes based on the state of authentication in the bloc.
  // navigatorBuilder: (context, state, child) {
  //   return context.read<AuthBloc>().state.when(
  //         initial: () => Routes.root.page,
  //         authenticated: () => Routes.notesOverview.page,
  //         unauthenticated: () => Routes.signIn.page,
  //       );
  // },
  initialLocation: '/',
  routes: [
    GoRoute(
        path: Routes.root.path,
        builder: (context, routerState) {
          return Routes.root.page;
        }),
    GoRoute(
      path: Routes.signIn.path,
      builder: (context, routerState) => Routes.signIn.page,
    ),
    GoRoute(
      path: Routes.notesOverview.path,
      builder: (context, routerState) => Routes.notesOverview.page,
    ),
  ],
);
