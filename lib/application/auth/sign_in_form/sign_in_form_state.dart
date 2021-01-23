part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState(
          {@required
              EmailAddress emailAddress,
          @required
              Password password,
          @required
              Password confirmPassword,
          @required
              UserName userName,
          @required
              bool showErrorMessages,
          @required
              bool obscureTextValue,
          @required
              bool isSubmitting,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
      emailAddress: EmailAddress(""),
      password: Password(""),
      confirmPassword: Password(""),
      userName: UserName(""),
      showErrorMessages: false,
      obscureTextValue: true,
      isSubmitting: false,
      authFailureOrSuccessOption: none());
}
