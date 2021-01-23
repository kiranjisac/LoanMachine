import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loan_machine/application/auth/auth_bloc.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';
import 'package:loan_machine/presentation/routes/router.gr.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
            initial: (_) {},
            authenticated: (_) {
              ExtendedNavigator.of(context).replace(Routes.homePage);
            },
            unauthenticated: (_) {
              ExtendedNavigator.of(context).replace(Routes.signInPage);
            });
      },
      child: Scaffold(
          backgroundColor: ConstantColors.primaryColor,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                " Loan Machine",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(height: 20),
              Center(
                  child: CupertinoActivityIndicator(
                radius: 20,
              )),
            ],
          )),
    );
  }
}
