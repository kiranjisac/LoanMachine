import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loan_machine/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:loan_machine/injection.dart';
import 'package:loan_machine/presentation/routes/router.gr.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      //backgroundColor: Colors.blueGrey,
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: SignUpForm(),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => ExtendedNavigator.of(context).pop(),
      ),
    );
  }
}

class SignUpForm extends StatelessWidget {
  SignUpForm({Key key}) : super(key: key);

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
                          emailIDAlreadyTaken: (_) =>
                              "Entered emailId is already taken try another",
                          unableToRegister: (_) =>
                              "Unable to signUp ,Please contact the developer ",
                          orElse: () =>
                              "Something wrong happened , try again or contact the developer")).show(
                      context);
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
              "Create an Account",
              style: TextStyle(color: Colors.blue),
            ),
            TextFormField(
              autocorrect: false,
              decoration: const InputDecoration(labelText: "UserName"),
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
                              emptyCredential: (_) =>
                                  "Please enter the username",
                              orElse: () => null),
                          orElse: () => null),
                      (r) => null),
            ),
            const SizedBox(
              height: 30,
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
              height: 30,
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
            const SizedBox(
              height: 30,
            ),
            TextFormField(
                obscureText: true,
                controller: _passwordController,
                autocorrect: false,
                decoration:
                    const InputDecoration(labelText: "confirm Password"),
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
                    return "please retype the password here";
                  } else {
                    return "passwords don't match";
                  }
                }),
            FlatButton(
                onPressed: () {
                  if (context.read<SignInFormBloc>().state.password.isValid() &&
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
                    context.read<SignInFormBloc>().add(const SignInFormEvent
                        .registerWithWithEmailandPassword());
                  }
                },
                child: const Text("Register")),
            const SizedBox(
              height: 20,
            ),
            FlatButton(
                onPressed: () =>
                    ExtendedNavigator.of(context).replace(Routes.signInPage),
                child: const Text("Already have account ? SignIn here.")),
            const SizedBox(
              height: 20,
            ),
          ]),
        );
        ;
      },
    );
  }
}
