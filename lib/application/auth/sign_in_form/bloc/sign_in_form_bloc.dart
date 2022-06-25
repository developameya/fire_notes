import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fire_notes/domain/auth/i_auth_facade.dart';
import 'package:fire_notes/domain/auth/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/auth/auth_failure.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;
  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    //map each event to a function.
    on<_EmailChanged>(_mapEmailChanged);
    on<_PasswordChanged>(_mapPasswordChanged);
    on<_RegisterWithEmailAndPasswordPressed>(
        _mapRegisterWithEmailAndPasswordPressed);
    on<_SignInWithEmailAndPasswordPressed>(
        _mapSignInWithEmailAndPasswordPressed);
    on<_SignInWithGooglePressed>(_mapSignInWithGooglePressed);
  }

  void _mapEmailChanged(_EmailChanged event, Emitter<SignInFormState> emit) {
    emit(
      state.copyWith(
        emailAddress: EmailAddress(event.emailStr),
        authFailOrSuccessOption: none(),
      ),
    );
  }

  void _mapPasswordChanged(
      _PasswordChanged event, Emitter<SignInFormState> emit) {
    emit(
      state.copyWith(
        password: Password(event.passwordStr),
        authFailOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _mapRegisterWithEmailAndPasswordPressed(
      _RegisterWithEmailAndPasswordPressed event,
      Emitter<SignInFormState> emit) async {
    await _performActionOnAuthWithEmailAndPassword(
      emit,
      _authFacade.registerWithEmailAndPassword,
    );
  }

  Future<void> _mapSignInWithEmailAndPasswordPressed(
      _SignInWithEmailAndPasswordPressed event,
      Emitter<SignInFormState> emit) async {
    await _performActionOnAuthWithEmailAndPassword(
      emit,
      _authFacade.signInWithEmailAndPassword,
    );
  }

  Future<void> _mapSignInWithGooglePressed(
      _SignInWithGooglePressed event, Emitter<SignInFormState> emit) async {
    emit(
      state.copyWith(isSubmitting: true, authFailOrSuccessOption: none()),
    );

    final failureOrSuccess = await _authFacade.signInWithGoogle();

    emit(state.copyWith(
        isSubmitting: false, authFailOrSuccessOption: some(failureOrSuccess)));
  }

  Future<void> _performActionOnAuthWithEmailAndPassword(
      Emitter<SignInFormState> emit,
      Future<Either<AuthFailure, Unit>> Function(
              {required EmailAddress emailAddress, required Password password})
          forwardedCall) async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    if (state.emailAddress.isValid() && state.password.isValid()) {
      emit(
        state.copyWith(isSubmitting: true, authFailOrSuccessOption: none()),
      );

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );

      // emit(state.copyWith(
      //     isSubmitting: false,
      //     authFailOrSuccessOption: some(failureOrSuccess)));
    }

    emit(
      state.copyWith(
          isSubmitting: false,
          showErrorMessage: AutovalidateMode.always,
          authFailOrSuccessOption: optionOf(failureOrSuccess)),
    );
  }
}
