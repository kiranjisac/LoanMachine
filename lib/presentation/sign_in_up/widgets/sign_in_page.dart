import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loan_machine/application/auth/auth_bloc.dart';
import 'package:loan_machine/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';
import 'package:loan_machine/injection.dart';
import 'package:loan_machine/presentation/routes/router.gr.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        //  resizeToAvoidBottomInset: false,
        body: BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: Stack(children: [
        buildsignInForm(screenSize),
        buildUpperSection(screenSize),
      ]),
    ));
  }

  Flex buildsignInForm(Size screenSize) {
    return Flex(
      direction: Axis.vertical,
      children: [
        SizedBox(
          height: screenSize.height / 1.85 - 15,
        ),
        const Flexible(child: SignInForm()),
      ],
    );
  }

  ClipPath buildUpperSection(Size screenSize) {
    return ClipPath(
      clipper: LogInPageClipper(),
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/log_in.jpg"))),
        height: screenSize.height / 1.85,
        width: screenSize.width,
        //color: ConstantColors.primaryColor,
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
                        icon: const Icon(Icons.arrow_back_ios,
                            color: Colors.white, size: 18),
                        onPressed: () => SystemNavigator.pop()),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: const [
                    Text(
                      "Welcome\nBack",
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
}

class LogInPageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0.0, size.height * 0.90);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.80,
        size.width * 0.5, size.height * 0.90);
    path.quadraticBezierTo(
        size.width * 0.75, size.height, size.width, size.height * 0.90);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class SignInForm extends StatelessWidget {
  const SignInForm({Key key}) : super(key: key);

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
                              invalidPasswordEmailCombination: (_) =>
                                  "Invalid Email And Password Combination",
                              unableToSignIn: (_) =>
                                  " Unable to SignIn , Contact the developer",
                              orElse: () => "Error ! Contact the developer"))
                      .show(context);
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
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    buildEmailAddressFormField(context, primaryColor),
                    const SizedBox(
                      height: 15,
                    ),
                    buildPasswordFormField(context, primaryColor),
                    const SizedBox(height: 6),
                    buildforgotPassword(context, primaryColor),
                    const SizedBox(height: 20),
                    buildLogInButton(primaryColor, context),
                    const SizedBox(height: 10),
                    buildOrDivider(secondaryColor),
                    const SizedBox(height: 10),
                    buildSignUpButton(secondaryColor, primaryColor, context),
                    const SizedBox(height: 10),
                  ]),
            ),
          ),
        );
      },
    );
  }

  TextFormField buildEmailAddressFormField(
      BuildContext context, Color primaryColor) {
    return TextFormField(
      cursorColor: primaryColor,
      style: TextStyle(color: primaryColor),
      autocorrect: false,
      toolbarOptions: const ToolbarOptions(
          paste: true, copy: true, selectAll: true, cut: true),
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
        hintText: "Enter Your Email ID",
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

  TextFormField buildPasswordFormField(
      BuildContext context, Color primaryColor) {
    return TextFormField(
      cursorColor: primaryColor,
      style: TextStyle(color: primaryColor),
      obscureText: context.watch<SignInFormBloc>().state.obscureTextValue,
      autocorrect: false,
      decoration: InputDecoration(
          prefixIcon: Row(
            children: [
              const Icon(
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

  Row buildforgotPassword(BuildContext context, Color primaryColor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () => ExtendedNavigator.of(context).pushForgotPasswordPage(),
          child: Text("Forgot password?",
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 16.3,
                  fontWeight: FontWeight.w800)),
        )
      ],
    );
  }

  FlatButton buildLogInButton(Color primaryColor, BuildContext context) {
    return FlatButton(
      padding: const EdgeInsets.all(12.5),
      color: primaryColor,
      onPressed: () => context
          .read<SignInFormBloc>()
          .add(const SignInFormEvent.signInWithWithEmailandPassword()),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      child: const Text(
        "Log in",
        style: TextStyle(
            color: Colors.white, fontSize: 16.5, fontWeight: FontWeight.w700),
      ),
    );
  }

  OutlineButton buildSignUpButton(
      MaterialColor secondaryColor, Color primaryColor, BuildContext context) {
    return OutlineButton(
      highlightedBorderColor: primaryColor,
      padding: const EdgeInsets.all(12.5),
      borderSide: BorderSide(width: 2, color: secondaryColor),
      color: secondaryColor,
      onPressed: () => ExtendedNavigator.of(context).pushSignUpPage(),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      child: Text(
        "Sign up ",
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
