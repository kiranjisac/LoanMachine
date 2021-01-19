import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loan_machine/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:loan_machine/injection.dart';
import 'package:loan_machine/presentation/routes/router.gr.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: PasswordResetForm(),
      ),
    );
  }
}

class PasswordResetForm extends StatelessWidget {
  PasswordResetForm({Key key}) : super(key: key);

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                  ExtendedNavigator.of(context).replace(Routes.signInPage);
                }));
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages == true
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: ListView(children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Reset Your Password",
              style: TextStyle(color: Colors.blue),
            ),
            TextFormField(
              autocorrect: false,
              decoration: const InputDecoration(
                  labelText: "Enter Email ID For Confirmation"),
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
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              obscureText:
                  context.watch<SignInFormBloc>().state.obscureTextValue,
              autocorrect: false,
              decoration: InputDecoration(
                  labelText: "Enter New Password",
                  suffixIcon: GestureDetector(
                    onTap: () {
                      context
                          .read<SignInFormBloc>()
                          .add(const SignInFormEvent.obscureTextTapped());
                    },
                    child: Icon(
                        context.watch<SignInFormBloc>().state.obscureTextValue
                            ? Icons.visibility
                            : Icons.visibility_off),
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
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
                obscureText: true,
                controller: _passwordController,
                autocorrect: false,
                decoration:
                    const InputDecoration(labelText: "Confirm the password"),
                validator: (s) {
                  if (context.read<SignInFormBloc>().state.password.isValid() &&
                      context
                              .read<SignInFormBloc>()
                              .state
                              .password
                              .getOrCrash() ==
                          s) {
                    return null;
                  } else if (s.isEmpty) {
                    return "please confirm the password here";
                  } else {
                    return "passwords don't match";
                  }
                }),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    if (context
                            .read<SignInFormBloc>()
                            .state
                            .password
                            .isValid() &&
                        context
                                .read<SignInFormBloc>()
                                .state
                                .password
                                .getOrCrash() !=
                            _passwordController.value.text) {
                      context
                          .read<SignInFormBloc>()
                          .add(const SignInFormEvent.enableAutoValidate());
                    } else {
                      context
                          .read<SignInFormBloc>()
                          .add(const SignInFormEvent.resetForgottenPassword());
                    }
                  },
                  child: const Text("Reset Password")),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: FlatButton(
                  color: Colors.blue,
                  onPressed: () =>
                      ExtendedNavigator.of(context).replace(Routes.signInPage),
                  child: const Text("Remember the password ? SignIn here.")),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: const BorderRadius.all(Radius.circular(12))),
              padding: const EdgeInsets.all(20),
              child: const Text(
                  "Since It is an offline project , reseting password is implemented just "
                  "using emailID for demonstrasionm thougn it is not secure enough"),
            )
          ]),
        );
        ;
      },
    );
  }
}
