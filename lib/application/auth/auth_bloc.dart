import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:loan_machine/domain/auth/i_auth_facade.dart';
import 'package:loan_machine/domain/auth/user.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade iAuthFacade;

  AuthBloc(this.iAuthFacade) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(authCheckRequested: (e) async* {
      final signedInUser = await iAuthFacade.getSignedInUser();
      yield signedInUser.fold(() => const AuthState.unauthenticated(),
          (user) => AuthState.authenticated(user));
    }, signOut: (e) async* {
      await iAuthFacade.signOut();
      yield const AuthState.unauthenticated();
    });
  }
}
