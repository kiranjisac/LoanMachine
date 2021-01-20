import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loan_machine/application/auth/auth_bloc.dart';
import 'package:loan_machine/presentation/routes/router.gr.dart';

import '../../injection.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: Scaffold(
          body: Column(
        children: [
          Center(
            child: FlatButton(
                color: Colors.greenAccent,
                onPressed: () {
                  ExtendedNavigator.of(context)
                      .push(Routes.loanApplicationFormPage);
                },
                child: const Text("Save Loan Application Info ")),
          ),
          Center(
            child: FlatButton(
                onPressed: () {
                  context.read<AuthBloc>().add(const AuthEvent.signOut());
                  ExtendedNavigator.of(context).replace(Routes.signInPage);
                },
                child: const Text("LogOut")),
          ),
        ],
      )),
    );
  }
}
