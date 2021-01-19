part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.userNameChanged(String rawUserName) =
      _UserNameChanged;
  const factory SignInFormEvent.emailAddressChanged(String rawEmailAddress) =
      _EmailAddressChanged;
  const factory SignInFormEvent.passwordChanged(String rawPassword) =
      _PasswordChanged;
  const factory SignInFormEvent.registerWithWithEmailandPassword() =
      _RegisterWithWithEmailandPassword;
  const factory SignInFormEvent.signInWithWithEmailandPassword() =
      _SignInWithWithEmailandPassword;

  const factory SignInFormEvent.resetForgottenPassword() =
      _ResetForgottenPasswprd;
  const factory SignInFormEvent.enableAutoValidate() = _EnableAutoValidate;

  const factory SignInFormEvent.obscureTextTapped() = _ObscureTextTapped;
}
