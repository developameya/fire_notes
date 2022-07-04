import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../application/auth/auth_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        print('from  splash: $state');
        // state.when(
        //   initial: () {},
        //   authenticated: () =>
        //       GoRouter.of(context).go(Routes.notesOverview.path),
        //   unauthenticated: () => GoRouter.of(context).go(Routes.signIn.path),
        // );
      },
      child: const _BuildSplash(),
    );
  }
}

class _BuildSplash extends StatelessWidget {
  const _BuildSplash({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('lib/assets/splash.json'),
      ),
    );
  }
}
