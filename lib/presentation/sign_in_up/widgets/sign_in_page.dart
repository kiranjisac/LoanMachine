import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loan_machine/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:loan_machine/injection.dart';
import 'package:loan_machine/presentation/routes/router.gr.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: const SignInForm(),
      ),
    );
  }
}

class SignInForm extends StatelessWidget {
  const SignInForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  ExtendedNavigator.of(context).replace(Routes.homePage);
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
              "SignIn",
              style: TextStyle(color: Colors.blue),
            ),
            TextFormField(
              autocorrect: false,
              decoration: const InputDecoration(labelText: "Email ID"),
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
              height: 40,
            ),
            TextFormField(
              obscureText:
                  context.watch<SignInFormBloc>().state.obscureTextValue,
              autocorrect: false,
              decoration: InputDecoration(
                  labelText: "Password",
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
            FlatButton(
                onPressed: () => context.read<SignInFormBloc>().add(
                    const SignInFormEvent.signInWithWithEmailandPassword()),
                child: const Text("signIn")),
            const SizedBox(
              height: 20,
            ),
            FlatButton(
                onPressed: () => ExtendedNavigator.of(context).pushSignUpPage(),
                child: const Text("Want to signUp ? ")),
            const SizedBox(
              height: 20,
            ),
            FlatButton(
                onPressed: () => ExtendedNavigator.of(context)
                    .push(Routes.forgotPasswordPage),
                child: const Text("Forgot password ?")),
          ]),
        );
      },
    );
  }
}
