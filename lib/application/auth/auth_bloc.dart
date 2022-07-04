import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fire_notes/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  late StreamSubscription<Option<User>> _userOptionSub;

  AuthBloc(this._authFacade) : super(const _Initial()) {
    on<_AuthCheckRequested>(_mapAuthCheckRequested);
    on<_SignedOut>(_mapSignedOut);
    on<_AuthStateChanged>(_onAuthStateChanged);
    _userOptionSub = _authFacade.getSignedInUser.listen(
      (userOption) => add(
        AuthEvent.authStateChanged(userOption),
      ),
    );
  }

  void _onAuthStateChanged(_AuthStateChanged event, Emitter<AuthState> emit) {
    event.userOption.fold(
      () => emit(
        const AuthState.unauthenticated(),
      ),
      (_) => emit(
        const AuthState.authenticated(),
      ),
    );
  }

  Future<void> _mapAuthCheckRequested(
      _AuthCheckRequested event, Emitter<AuthState> emit) async {
    final userOption = await _authFacade.getCurrentUser;

    userOption.fold(
      () => emit(const AuthState.unauthenticated()),
      (_) => emit(const AuthState.authenticated()),
    );
  }

  Future<void> _mapSignedOut(_SignedOut event, Emitter<AuthState> emit) async {
    await _authFacade.signedOut();
    emit(const AuthState.unauthenticated());
  }

  @override
  Future<void> close() {
    _userOptionSub.cancel();
    return super.close();
  }
}
