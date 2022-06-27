import 'package:bloc/bloc.dart';
import 'package:fire_notes/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const _Initial()) {
    on<_AuthCheckRequested>(_mapAuthCheckRequested);
    on<_SignedOut>(_mapSignedOut);
  }

  Future<void> _mapAuthCheckRequested(
      _AuthCheckRequested event, Emitter<AuthState> emit) async {
    final userOption = await _authFacade.getSignedInUser();

    userOption.fold(
      () => emit(const AuthState.unauthenticated()),
      (_) => emit(const AuthState.authenticated()),
    );
  }

  Future<void> _mapSignedOut(_SignedOut event, Emitter<AuthState> emit) async {
    await _authFacade.signedOut();
    emit(const AuthState.unauthenticated());
  }
}
