import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:loan_machine/application/loan/loan_application_actor/loan_application_actor_bloc.dart';
import 'package:loan_machine/application/loan/loan_application_form_bloc/loan_application_bloc.dart';
import 'package:loan_machine/application/loan/loan_application_watcher_bloc/loan_application_watcher_bloc.dart';
import 'package:loan_machine/application/user/change_avatar/change_avatar_bloc.dart';
import 'package:loan_machine/domain/loan/loan_application_info.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';
import 'package:loan_machine/presentation/pages/home_page/applicationInfo_overview/application_info_card.dart';
import 'package:loan_machine/presentation/pages/home_page/drawer.dart';
import 'package:loan_machine/presentation/routes/router.gr.dart';

import '../../../injection.dart';
import 'applicationInfo_overview/empty_list_message.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.white,
        drawer: const BuildDrawer(),
        appBar: buildAppBar(context),
        body: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<LoanApplicationWatcherBloc>()
                  ..add(const LoanApplicationWatcherEvent.watchAll()),
              ),
              BlocProvider(
                create: (context) => getIt<LoanApplicationBloc>(),
              ),
              BlocProvider(
                  create: (context) => getIt<LoanApplicationActorBloc>())
            ],
            child: BlocBuilder<LoanApplicationWatcherBloc,
                LoanApplicationWatcherState>(builder: (context, state) {
              return state.maybeMap(
                loadInProgress: (e) {
                  return loadingIndicator();
                },
                loadedSuccess: (data) {
                  final loanApplications = data.loanApplications;
                  if (loanApplications.isEmpty()) {
                    return EmptyListMessage(context: context);
                  }

                  return buildListView(loanApplications, context: context);
                },
                loadedFailure: (failure) {
                  return failure.loanApplicationFailure
                      .map(databaseError: (_) => buildDatabaseErrorMessage());
                },
                orElse: () => loadingIndicator(),
              );
            })));
  }

  Center buildDatabaseErrorMessage() {
    return const Center(
        child: Text("Unexpected Error Issue With the Database  "));
  }

  Center loadingIndicator() {
    return const Center(
        child: CupertinoActivityIndicator(
      radius: 11,
    ));
  }

  ListView buildListView(KtList<LoanApplicationInfo> loanApplications,
      {BuildContext context}) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(6),
        itemCount: loanApplications.size,
        itemBuilder: (context, index) {
          return ApplicationInfoCard(
            loanApplications: loanApplications,
            index: index,
          );
        });
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (context) {
          return IconButton(
            icon: Icon(
              Icons.menu_open_rounded,
              color: ConstantColors.primaryColor,
              size: 32,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          );
        },
      ),
      foregroundColor: Colors.blue,
      elevation: 2.5,
      title: Text(
        "Loan Machine",
        style: GoogleFonts.lato(
            color: ConstantColors.primaryColor,
            fontSize: 23,
            fontWeight: FontWeight.w600),
      ),
      backgroundColor: Colors.white,
      actions: [
        IconButton(
            tooltip: "Save loan Application",
            color: ConstantColors.primaryColor,
            onPressed: () {
              ExtendedNavigator.of(context)
                  .pushLoanApplicationFormPage(loanApplicationInfo: none());
            },
            icon: const Icon(Icons.add_box)),
      ],
    );
  }
}
