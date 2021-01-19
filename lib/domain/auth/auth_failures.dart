import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failures.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.invalidPasswordEmailCombination() =
      _InvalidPasswordEmailCombination;

  const factory AuthFailure.emailIDAlreadyTaken() = _EmailIDAlreadyTaken;

  const factory AuthFailure.unableToRegister() = _UnableToRegister;
  const factory AuthFailure.unableToSignIn() = _UnableToSignIn;
  const factory AuthFailure.userDoesNotExists() = _UserDoesNotExists;
  const factory AuthFailure.unexpectedFailure() = _UnexpectedFailure;
}
