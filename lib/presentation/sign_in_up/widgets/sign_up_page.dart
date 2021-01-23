import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loan_machine/application/auth/auth_bloc.dart';
import 'package:loan_machine/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';
import 'package:loan_machine/injection.dart';
import 'package:loan_machine/presentation/routes/router.gr.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: Stack(children: [
          buildsignInForm(screenSize),
          buildUpperSection(screenSize, context)
        ]),
      ),
    );
  }
}

Column buildsignInForm(Size screenSize) {
  return Column(
    children: [
      SizedBox(
        height: screenSize.height * 0.45 - 10,
      ),
      Expanded(child: SignUpForm()),
    ],
  );
}

ClipPath buildUpperSection(Size screenSize, BuildContext context) {
  return ClipPath(
    clipper: SignUpPageClipper(),
    child: Container(
      height: screenSize.height * 0.45,
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
                        color: Colors.white,
                        size: 18,
                      ),
                      onPressed: () => ExtendedNavigator.of(context)
                          .replace(Routes.signInPage)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: const [
                  Text(
                    "Create Your\nAccount",
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

class SignUpPageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height * 0.90);
    path.quadraticBezierTo(
        size.width * 0.25, size.height, size.width * 0.5, size.height * 0.90);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.80, size.width, size.height * 0.95);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key key}) : super(key: key);

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
                          emailIDAlreadyTaken: (_) =>
                              "Entered emailId is already taken try another",
                          unableToRegister: (_) =>
                              "Unable to signUp ,Please contact the developer ",
                          orElse: () =>
                              "Something wrong happened , try again or contact the developer")).show(
                      context);
                }, (r) {
                  context
                      .read<AuthBloc>()
                      .add(const AuthEvent.authCheckRequested());
                  ExtendedNavigator.of(context).replace(Routes.homePage);
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
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.fromLTRB(25, 5, 25, 15),
                children: [
                  const SizedBox(height: 10),
                  buildUserNameFormField(primaryColor, context),
                  const SizedBox(height: 10),
                  buildEmailIDFormField(context, primaryColor),
                  const SizedBox(height: 10),
                  buildPasswordFormField(context, primaryColor),
                  const SizedBox(height: 10),
                  buildConfirmPasswordFormField(context, primaryColor),
                  const SizedBox(height: 25),
                  buildSignUpButton(primaryColor, context),
                  const SizedBox(height: 10),
                  buildOrDivider(secondaryColor),
                  const SizedBox(height: 10),
                  buildLoginInButton(secondaryColor, primaryColor, context)
                ]),
          ),
        );
        ;
      },
    );
  }

  TextFormField buildConfirmPasswordFormField(
      BuildContext context, Color primaryColor) {
    return TextFormField(
        style: TextStyle(color: primaryColor),
        toolbarOptions: const ToolbarOptions(
            paste: true, copy: true, selectAll: true, cut: true),
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
                      color: primaryColor,
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
            return "please retype the password here";
          } else {
            return "passwords don't match";
          }
        });
  }

  TextFormField buildPasswordFormField(
      BuildContext context, Color primaryColor) {
    return TextFormField(
      obscureText: context.watch<SignInFormBloc>().state.obscureTextValue,
      autocorrect: false,
      style: TextStyle(color: primaryColor),
      toolbarOptions: const ToolbarOptions(
          paste: true, copy: true, selectAll: true, cut: true),
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

  TextFormField buildUserNameFormField(
      Color primaryColor, BuildContext context) {
    return TextFormField(
      autocorrect: false,
      style: TextStyle(color: primaryColor),
      toolbarOptions: const ToolbarOptions(
          paste: true, copy: true, selectAll: true, cut: true),
      decoration: InputDecoration(
        prefixIconConstraints: BoxConstraints.tight(const Size(29, 15)),
        hintText: "Name",
        hintMaxLines: 1,
        suffixIcon: context.watch<SignInFormBloc>().state.userName.value.fold(
              (valueFailure) => valueFailure.maybeWhen(
                  auth: (f) => f.maybeMap(
                      emptyCredential: (_) => const SizedBox(),
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
              Icons.person_outline,
              size: 19,
            ),
          ],
        ),
      ),
      onChanged: (val) => context
          .read<SignInFormBloc>()
          .add(SignInFormEvent.userNameChanged(val)),
      validator: (_) => context
          .read<SignInFormBloc>()
          .state
          .userName
          .value
          .fold(
              (valueFailure) => valueFailure.maybeWhen(
                  auth: (f) => f.maybeMap(
                      emptyCredential: (_) => "Username cannot be empty !",
                      orElse: () => null),
                  orElse: () => null),
              (r) => null),
    );
  }

  TextFormField buildEmailIDFormField(
      BuildContext context, Color primaryColor) {
    return TextFormField(
      style: TextStyle(color: primaryColor),
      toolbarOptions: const ToolbarOptions(
          paste: true, copy: true, selectAll: true, cut: true),
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
        hintText: "Email ID",
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
                      invalidEmailID: (_) => "Invalid Email Format !",
                      orElse: () => null),
                  orElse: () => null),
              (r) => null),
    );
  }

  FlatButton buildSignUpButton(Color primaryColor, BuildContext context) {
    return FlatButton(
      padding: const EdgeInsets.all(12.5),
      color: primaryColor,
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
              .add(const SignInFormEvent.registerWithWithEmailandPassword());
        }
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      child: const Text(
        "Sign up",
        style: TextStyle(
            color: Colors.white, fontSize: 16.5, fontWeight: FontWeight.w700),
      ),
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
}
