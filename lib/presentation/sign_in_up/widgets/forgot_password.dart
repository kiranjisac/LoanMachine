import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loan_machine/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';
import 'package:loan_machine/injection.dart';
import 'package:loan_machine/presentation/routes/router.gr.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: Stack(
          children: [
            buildPasswordResetForm(
              screenSize,
            ),
            buildUpperSection(screenSize, context)
          ],
        ),
      ),
    );
  }
}

Column buildPasswordResetForm(
  Size screenSize,
) {
  return Column(
    children: [
      SizedBox(
        height: screenSize.height * 0.50,
      ),
      const Expanded(child: PasswordResetForm()),
    ],
  );
}

ClipPath buildUpperSection(Size screenSize, BuildContext context) {
  return ClipPath(
    clipper: ForgotPasswordPageClipper(),
    child: Container(
      height: screenSize.height / 2,
      width: screenSize.width,
      color: ConstantColors.primaryColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10.5, 30, 20, 20),
              child: Row(
                children: [
                  IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 18,
                        color: Colors.white,
                      ),
                      onPressed: () => ExtendedNavigator.of(context).pop()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: const [
                  Text(
                    "Reset\nPassword",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.w900),
                  )
                ],
              ),
            ),
            const SizedBox(height: 5),
            const SizedBox(height: 5)
          ],
        ),
      ),
    ),
  );
}

class ForgotPasswordPageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width * 0.30, size.height);
    path.quadraticBezierTo(
        size.width * 0.75, size.height, size.width, size.height * 0.70);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class PasswordResetForm extends StatelessWidget {
  const PasswordResetForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final primaryColor = ConstantColors.primaryColor;

    final secondaryColor = ConstantColors.secondaryColor;

    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
            () => null,
            (either) => either.fold((f) {
                  FlushbarHelper.createError(
                      message: f.maybeMap(
                          userDoesNotExists: (_) =>
                              "Entered emailId does not have any user account",
                          unexpectedFailure: (_) =>
                              "Database Error,Please contact the developer ",
                          orElse: () =>
                              "Something wrong happened , try again or contact the developer")).show(
                      context);
                }, (r) {
                  return FlushbarHelper.createSuccess(
                          duration: const Duration(seconds: 1),
                          message:
                              "You have successfully changed your password.")
                      .show(context)
                      .then((value) => ExtendedNavigator.of(context)
                          .replace(Routes.signInPage));
                }));
      },
      builder: (context, state) {
        return Theme(
          data: Theme.of(context).copyWith(
            primaryColor: primaryColor,
            highlightColor: primaryColor,
            inputDecorationTheme: InputDecorationTheme(
              focusColor: primaryColor,
              contentPadding: const EdgeInsets.fromLTRB(0, 16, 10, 9),
              hintStyle:
                  const TextStyle(fontSize: 15.2, fontWeight: FontWeight.w500),
            ),
          ),
          child: Form(
            autovalidateMode: state.showErrorMessages == true
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: ListView(
                //physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.fromLTRB(25, 5, 25, 15),
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  buildEmailIdFormField(context, primaryColor),
                  const SizedBox(
                    height: 10,
                  ),
                  buildPasswordFormField(context),
                  const SizedBox(
                    height: 10,
                  ),
                  buildConfirmPasswordFormField(context),
                  const SizedBox(
                    height: 25,
                  ),
                  buildresetButton(primaryColor, context),
                  const SizedBox(
                    height: 10,
                  ),
                  buildOrDivider(secondaryColor),
                  const SizedBox(
                    height: 10,
                  ),
                  buildLoginInButton(secondaryColor, primaryColor, context),
                ]),
          ),
        );
        ;
      },
    );
  }

  FlatButton buildresetButton(Color primaryColor, BuildContext context) {
    return FlatButton(
      padding: const EdgeInsets.all(12.5),
      color: primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      onPressed: () {
        if (context.read<SignInFormBloc>().state.password.isValid() &&
            context.read<SignInFormBloc>().state.password.getOrCrash() !=
                context
                    .read<SignInFormBloc>()
                    .state
                    .confirmPassword
                    .getOrCrash()) {
          context
              .read<SignInFormBloc>()
              .add(const SignInFormEvent.enableAutoValidate());
        } else {
          context
              .read<SignInFormBloc>()
              .add(const SignInFormEvent.resetForgottenPassword());
        }
      },
      child: const Text(
        "Reset password",
        style: TextStyle(
            color: Colors.white, fontSize: 16.5, fontWeight: FontWeight.w700),
      ),
    );
  }

  TextFormField buildConfirmPasswordFormField(BuildContext context) {
    return TextFormField(
        obscureText: true,
        autocorrect: false,
        decoration: InputDecoration(
          suffixIcon: context
                      .watch<SignInFormBloc>()
                      .state
                      .password
                      .isValid() &&
                  context
                      .watch<SignInFormBloc>()
                      .state
                      .confirmPassword
                      .isValid()
              ? context.watch<SignInFormBloc>().state.password.getOrCrash() ==
                      context
                          .watch<SignInFormBloc>()
                          .state
                          .confirmPassword
                          .getOrCrash()
                  ? Icon(
                      Icons.done,
                      color: ConstantColors.primaryColor,
                      size: 19,
                    )
                  : const SizedBox()
              : const SizedBox(),
          prefixIcon: Row(
            children: const [
              Icon(
                Icons.lock_outline,
                size: 19,
              ),
            ],
          ),
          prefixIconConstraints: BoxConstraints.tight(const Size(29, 15)),
          hintText: "Confirm Password",
        ),
        onChanged: (val) => context
            .read<SignInFormBloc>()
            .add(SignInFormEvent.confirmPasswordChanged(val)),
        validator: (s) {
          if (context.read<SignInFormBloc>().state.password.isValid() &&
              context.read<SignInFormBloc>().state.password.getOrCrash() == s) {
            return null;
          } else if (s.isEmpty) {
            return "please enter the password again here";
          } else {
            return "passwords don't match !";
          }
        });
  }

  TextFormField buildPasswordFormField(BuildContext context) {
    return TextFormField(
      obscureText: context.watch<SignInFormBloc>().state.obscureTextValue,
      autocorrect: false,
      decoration: InputDecoration(
          prefixIcon: Row(
            children: const [
              Icon(
                Icons.lock_outline,
                size: 19,
              ),
            ],
          ),
          prefixIconConstraints: BoxConstraints.tight(const Size(29, 15)),
          hintText: "Password",
          suffixIcon: GestureDetector(
            onTap: () {
              context
                  .read<SignInFormBloc>()
                  .add(const SignInFormEvent.obscureTextTapped());
            },
            child: Icon(
              context.watch<SignInFormBloc>().state.obscureTextValue
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              size: 19,
            ),
          )),
      onChanged: (val) => context
          .read<SignInFormBloc>()
          .add(SignInFormEvent.passwordChanged(val)),
      validator: (_) => context
          .read<SignInFormBloc>()
          .state
          .password
          .value
          .fold(
              (valueFailure) => valueFailure.maybeWhen(
                  auth: (f) => f.maybeMap(
                      invalidPassword: (_) =>
                          "Password should aleast have 8 characters",
                      orElse: () => null),
                  orElse: () => null),
              (r) => null),
    );
  }

  TextFormField buildEmailIdFormField(
      BuildContext context, Color primaryColor) {
    return TextFormField(
      autocorrect: false,
      decoration: InputDecoration(
        suffixIcon:
            context.watch<SignInFormBloc>().state.emailAddress.value.fold(
                  (valueFailure) => valueFailure.maybeWhen(
                      auth: (f) => f.maybeMap(
                          invalidEmailID: (_) => const SizedBox(),
                          orElse: () => null),
                      orElse: () => null),
                  (r) => Icon(
                    Icons.done,
                    color: primaryColor,
                    size: 19,
                  ),
                ),
        prefixIcon: Row(
          children: const [
            Icon(
              Icons.email_outlined,
              size: 19,
            ),
          ],
        ),
        prefixIconConstraints: BoxConstraints.tight(const Size(29, 15)),
        hintText: "Enter Your Email ID For Confirmation",
        hintMaxLines: 1,
      ),
      onChanged: (val) => context
          .read<SignInFormBloc>()
          .add(SignInFormEvent.emailAddressChanged(val)),
      validator: (_) => context
          .read<SignInFormBloc>()
          .state
          .emailAddress
          .value
          .fold(
              (valueFailure) => valueFailure.maybeWhen(
                  auth: (f) => f.maybeMap(
                      invalidEmailID: (_) => "Invalid Email Format",
                      orElse: () => null),
                  orElse: () => null),
              (r) => null),
    );
  }
}

Row buildOrDivider(MaterialColor secondaryColor) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        //flex: 5,
        child: Divider(
          height: 1.2,
          thickness: 1.12,
          color: secondaryColor,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9.0),
        child: Text(
          "or",
          maxLines: 1,
          style: TextStyle(
              color: secondaryColor,
              fontSize: 15.5,
              fontWeight: FontWeight.w600),
        ),
      ),
      Expanded(
        //  flex: 5,
        child: Divider(
          thickness: 1.12,
          color: secondaryColor,
          height: 1.2,
        ),
      )
    ],
  );
}

OutlineButton buildLoginInButton(
    MaterialColor secondaryColor, Color primaeyColor, BuildContext context) {
  return OutlineButton(
    padding: const EdgeInsets.all(12.5),
    highlightedBorderColor: primaeyColor,
    borderSide: BorderSide(width: 2, color: secondaryColor),
    color: secondaryColor,
    onPressed: () => ExtendedNavigator.of(context).replace(Routes.signInPage),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
    child: Text(
      "Login in",
      style: TextStyle(
          color: secondaryColor, fontSize: 16.5, fontWeight: FontWeight.w700),
    ),
  );
}
