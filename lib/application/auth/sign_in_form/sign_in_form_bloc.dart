import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:loan_machine/domain/auth/auth_failures.dart';
import 'package:loan_machine/domain/auth/i_auth_facade.dart';
import 'package:loan_machine/domain/auth/value_objects.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade iAuthFacade;
  SignInFormBloc(this.iAuthFacade) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      emailAddressChanged: (e) async* {
        yield state.copyWith(
            emailAddress: EmailAddress(e.rawEmailAddress),
            authFailureOrSuccessOption: none());
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
            password: Password(e.rawPassword),
            authFailureOrSuccessOption: none());
      },
      confirmPasswordChanged: (e) async* {
        yield state.copyWith(
            confirmPassword: Password(e.rawConfirmPassword),
            authFailureOrSuccessOption: none());
      },
      userNameChanged: (e) async* {
        yield state.copyWith(
            userName: UserName(e.rawUserName),
            authFailureOrSuccessOption: none());
      },
      enableAutoValidate: (e) async* {
        yield state.copyWith(
            showErrorMessages: true, authFailureOrSuccessOption: none());
      },
      obscureTextTapped: (e) async* {
        yield state.copyWith(
            obscureTextValue: !state.obscureTextValue,
            authFailureOrSuccessOption: none());
      },
      registerWithWithEmailandPassword: (e) async* {
        Either<AuthFailure, Unit> successOrfailure;

        final isValidEmailAddress = state.emailAddress.isValid();
        final isValidPassword = state.password.isValid();
        final isValidUserName = state.userName.isValid();

        if (isValidEmailAddress && isValidPassword && isValidUserName) {
          yield state.copyWith(
              isSubmitting: true, authFailureOrSuccessOption: none());

          successOrfailure = await iAuthFacade.registerWithEmailAndPassword(
              userName: state.userName,
              emailAddress: state.emailAddress,
              password: state.password);
        }

        yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption:
                successOrfailure == null ? none() : some(successOrfailure));
      },
      signInWithWithEmailandPassword: (e) async* {
        yield* _performActionOnIAuthFacadeWithEmailAddressandPassword(
            iAuthFacade.signInWithEmailAndPassword);
      },
      resetForgottenPassword: (e) async* {
        yield* _performActionOnIAuthFacadeWithEmailAddressandPassword(
            iAuthFacade.forgotPassword);
      },
    );
  }

  Stream<SignInFormState>
      _performActionOnIAuthFacadeWithEmailAddressandPassword(
          Future<Either<AuthFailure, Unit>> Function(
                  {@required EmailAddress emailAddress,
                  @required Password password})
              callforwarded) async* {
    Either<AuthFailure, Unit> successOrfailure;

    final isValidEmailAddress = state.emailAddress.isValid();
    final isValidPassword = state.password.isValid();

    if (isValidEmailAddress && isValidPassword) {
      yield state.copyWith(
          isSubmitting: true, authFailureOrSuccessOption: none());

      successOrfailure = await callforwarded(
          emailAddress: state.emailAddress, password: state.password);
    }

    /// optionOf(failureOrSuccess) is equvalent to
    /// failureOrSuccess == null ? none() : some(failureOrSuccess)

    yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption:
            successOrfailure == null ? none() : some(successOrfailure));
  }
}
