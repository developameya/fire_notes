import 'package:fire_notes/presentation/core/widgets/rounded_flush_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (f) {
              RoundedFlushBar.createRoundedErrorBar(
                message: f.map(
                  cancelledByUser: (_) => 'Cancelled.',
                  serverError: (_) => 'Server Error.',
                  emailAlreadyInUse: (_) => 'Email already in use.',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid email and password combination.',
                  operationNotAllowed: (_) => 'Operation not allowed.',
                  weakPassword: (_) => 'Weak password.',
                ),
              ).show(context);
            },
            (_) {},
          ),
        );
      },
      builder: (context, state) {
        return Form(
            autovalidateMode: state.showErrorMessage,
            child: ListView(
              children: const [
                _Header(),
                SizedBox(height: 8.0),
                _EmailField(),
                SizedBox(height: 8.0),
                _PasswordField(),
                _EmailAndPasswordAuthButtons(),
                SizedBox(height: 8.0),
                _GoogleSignInButton()
              ],
            ));
      },
    );
  }
}

class _GoogleSignInButton extends StatelessWidget {
  const _GoogleSignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => context
            .read<SignInFormBloc>()
            .add(const SignInFormEvent.signInWithGooglePressed()),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Icon(FontAwesomeIcons.google),
          const SizedBox(width: 10.0),
          Text('Sign In with Google'.toUpperCase())
        ]));
  }
}

class _EmailAndPasswordAuthButtons extends StatelessWidget {
  const _EmailAndPasswordAuthButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SignInFormBloc>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
            onPressed: () => bloc.add(
                  const SignInFormEvent.signInWithEmailAndPasswordPressed(),
                ),
            child: Text('Sign In'.toUpperCase())),
        TextButton(
            onPressed: () => bloc.add(
                  const SignInFormEvent.registerWithEmailAndPasswordPressed(),
                ),
            child: Text('Register'.toUpperCase()))
      ],
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '📝',
      style: TextStyle(fontSize: 130),
      textAlign: TextAlign.center,
    );
  }
}

class _PasswordField extends StatelessWidget {
  const _PasswordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SignInFormBloc>();
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Password',
        prefixIcon: Icon(Icons.lock),
      ),
      textCapitalization: TextCapitalization.none,
      autocorrect: false,
      obscureText: true,
      onChanged: (value) => bloc.add(SignInFormEvent.passwordChanged(value)),
      validator: (_) => bloc.state.password.value.fold(
        (f) => f.maybeMap(
          shortPassword: (_) => 'Short password',
          orElse: () => null,
        ),
        (r) => null,
      ),
    );
  }
}

class _EmailField extends StatelessWidget {
  const _EmailField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SignInFormBloc>();
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Email',
        prefixIcon: Icon(Icons.mail),
      ),
      textCapitalization: TextCapitalization.none,
      autocorrect: false,
      onChanged: (value) => bloc.add(SignInFormEvent.emailChanged(value)),
      //If we use 'map' on 'f(failure)' then we've to return a function for faliure of each object. Instead, we'll use 'maybeMap' where, we return a function for the failure of the current object and return a common function for every other failure.
      validator: (_) => bloc.state.emailAddress.value.fold(
        (f) => f.maybeMap(
          invalidEmail: (_) => 'Invalid Email',
          orElse: () => null,
        ),
        (_) => null,
      ),
    );
  }
}
