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
              Future.delayed(const Duration(milliseconds: 1500)).then((value) =>
                  ExtendedNavigator.of(context).replace(Routes.homePage));
            },
            unauthenticated: (_) {
              Future.delayed(const Duration(milliseconds: 1500)).then((value) =>
                  ExtendedNavigator.of(context).replace(Routes.signInPage));
            });
      },
      child: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/splash_screen.png"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 1,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 130,
                    width: 130,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.asset(
                      "assets/images/Logo.png",
                      height: 64,
                      width: 64,
                    )),
                // const SizedBox(height: 5),
                const Center(
                    child: CupertinoActivityIndicator(
                  radius: 16,
                )),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 18.0),
              child: Text(
                "Version  ${Constants.version}",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      )),
    );
  }
}
