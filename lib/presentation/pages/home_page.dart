import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:loan_machine/application/auth/auth_bloc.dart';
import 'package:loan_machine/application/loan/loan_application_watcher_bloc/loan_application_watcher_bloc.dart';
import 'package:loan_machine/domain/core/errors.dart';
import 'package:loan_machine/domain/loan/loan_application_info.dart';
import 'package:loan_machine/presentation/routes/router.gr.dart';

import '../../injection.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: buildDrawer(context),
        appBar: buildAppBar(context),
        body: BlocProvider(
            create: (context) => getIt<LoanApplicationWatcherBloc>()
              ..add(const LoanApplicationWatcherEvent.watchAll()),
            child: BlocBuilder<LoanApplicationWatcherBloc,
                LoanApplicationWatcherState>(builder: (context, state) {
              return state.map(
                loadInProgress: (e) {
                  return loadingIndicator();
                },
                loadedSuccess: (data) {
                  final loanApplications = data.loanApplications;

                  if (loanApplications.isEmpty()) {
                    return buildNodataAvailableMessage();
                  }

                  return buildListView(loanApplications);
                },
                loadedFailure: (failure) {
                  return failure.loanApplicationFailure
                      .map(databaseError: (_) => buildDatabaseErrorMessage());
                },
              );
            })));
  }

  Center buildDatabaseErrorMessage() {
    return const Center(
        child: Text("Unexpected Error Issue With the Database  "));
  }

  Center buildNodataAvailableMessage() {
    return const Center(
      child: Text("You have no loan applications available"),
    );
  }

  Center loadingIndicator() {
    return const Center(
        child: CupertinoActivityIndicator(
      radius: 28,
    ));
  }

  ListView buildListView(KtList<LoanApplicationInfo> loanApplications) {
    return ListView.builder(
        padding: const EdgeInsets.all(6),
        itemCount: loanApplications.size,
        itemBuilder: (context, index) {
          return buildApplicationInfoCard(loanApplications, index, [
            Colors.blue[100],
            Colors.green[100],
            Colors.lightGreenAccent[100],
            Colors.deepPurple[100]
          ]);
        });
  }

  Container buildApplicationInfoCard(
      KtList<LoanApplicationInfo> loanApplications,
      int index,
      List<Color> colors) {
    return Container(
      color: colors[index % 4],
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(5),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
                "Application Name : ${loanApplications[index].loanApplicationName.getOrCrash()}"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Gender : ${loanApplications[index].gender.getOrCrash()}"),
            Text("Married : ${loanApplications[index].married.getOrCrash()}"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
                "Education : ${loanApplications[index].education.getOrCrash()}"),
            Text(
                "SelfEmployed : ${loanApplications[index].selfEmployed.getOrCrash()}"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
                "ApplicantIncome : ${loanApplications[index].applicantIncome.getOrCrash()}"),
            Text(
                "CoapplicantIncome : ${loanApplications[index].coApplicantIncome.getOrCrash()}"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
                "CreditHistory : ${loanApplications[index].creditHistory.getOrCrash()}"),
            Text(
                "PropertyArea : ${loanApplications[index].propertyArea.getOrCrash()}"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
                "Loan Amount Required  : ${loanApplications[index].loanAmount.getOrCrash()}"),
          ],
        )
      ]),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (context) {
          return IconButton(
            icon: Icon(
              Icons.menu_open_rounded,
              color: Colors.blue[700],
              size: 32,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          );
        },
      ),
      foregroundColor: Colors.blue,
      elevation: 0,
      title: Text(
        "Loan Machine",
        style: GoogleFonts.lato(
            color: Colors.blue[700], fontSize: 23, fontWeight: FontWeight.w600),
      ),
      backgroundColor: Colors.white,
      actions: [
        IconButton(
            tooltip: "Save loan Application",
            color: Colors.blue[700],
            onPressed: () {
              ExtendedNavigator.of(context)
                  .push(Routes.loanApplicationFormPage);
            },
            icon: const Icon(Icons.add_circle)),
      ],
    );
  }

  SafeArea buildDrawer(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.blue[700]),
                child: context.watch<AuthBloc>().state.map(
                    initial: (_) => const CircularProgressIndicator(),
                    authenticated: (e) {
                      return SizedBox(
                        width: double.maxFinite,
                        child: Column(
                          children: [
                            const Center(
                              child: CircleAvatar(
                                radius: 37,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(e.user.userName.getOrCrash(),
                                style: const TextStyle(fontSize: 19)),
                            const SizedBox(height: 7),
                            Text(e.user.emailAddress.getOrCrash())
                          ],
                        ),
                      );
                    },
                    unauthenticated: (_) => throw UnexpectedError())),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {
                context.read<AuthBloc>().add(const AuthEvent.signOut());
                ExtendedNavigator.of(context).replace(Routes.signInPage);
              },
            )
          ],
        ),
      ),
    );
  }
}
