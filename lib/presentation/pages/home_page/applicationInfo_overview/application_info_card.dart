import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:loan_machine/application/loan/loan_application_actor/loan_application_actor_bloc.dart';
import 'package:loan_machine/application/loan/loan_application_watcher_bloc/loan_application_watcher_bloc.dart';
import 'package:loan_machine/domain/loan/loan_application_info.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';
import 'package:loan_machine/presentation/routes/router.gr.dart';

class ApplicationInfoCard extends StatelessWidget {
  const ApplicationInfoCard({
    Key key,
    @required this.loanApplications,
    @required this.index,
  }) : super(key: key);

  final KtList<LoanApplicationInfo> loanApplications;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5),
      color: Colors.blue[900],
      elevation: 2,
      child: Row(
        children: [
          Container(
            width: 8,
            color: ConstantColors.primaryColor,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(4),
                      topRight: Radius.circular(3.5))),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 10, 12, 0),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 7, 12),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                loanApplications[index]
                                    .loanApplicationName
                                    .getOrCrash(),
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 19.5,
                                  color: Colors.blue[800],
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              FaIcon(
                                loanApplications[index].gender.getOrCrash() ==
                                        "Male"
                                    ? FontAwesomeIcons.male
                                    : FontAwesomeIcons.female,
                                size: 27,
                                color: ConstantColors.primaryColor,
                              ),
                            ]),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              const Text('Married: ',
                                  style: TextStyle(fontSize: 15)),
                              FaIcon(
                                loanApplications[index].married.getOrCrash() ==
                                        "Yes"
                                    ? FeatherIcons.checkSquare
                                    : FeatherIcons.xSquare,
                                size: 20,
                                color: ConstantColors.primaryColor,
                              ),
                            ]),
                            Text(
                                'Education: ${loanApplications[index].education.getOrCrash()}',
                                style: const TextStyle(fontSize: 15)),
                          ]),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              const Text('SelfEmployed: ',
                                  style: TextStyle(fontSize: 15)),
                              FaIcon(
                                loanApplications[index]
                                            .selfEmployed
                                            .getOrCrash() ==
                                        "Yes"
                                    ? FeatherIcons.checkSquare
                                    : FeatherIcons.xSquare,
                                size: 20,
                                color: ConstantColors.primaryColor,
                              ),
                            ]),
                            Text(
                                'PropertyArea: ${loanApplications[index].propertyArea.getOrCrash()}',
                                style: const TextStyle(fontSize: 15)),
                          ]),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              const Text('CreditHistory: ',
                                  style: TextStyle(fontSize: 15)),
                              FaIcon(
                                loanApplications[index]
                                            .creditHistory
                                            .getOrCrash() ==
                                        "Yes"
                                    ? FeatherIcons.checkSquare
                                    : FeatherIcons.xSquare,
                                size: 20,
                                color: ConstantColors.primaryColor,
                              ),
                            ]),
                            Text(
                                'Dependents: ${loanApplications[index].dependents.getOrCrash()}${loanApplications[index].dependents.getOrCrash() == 3 ? "+" : ""}',
                                style: const TextStyle(fontSize: 15)),
                          ]),
                      const SizedBox(
                        height: 10,
                      ),
                      Flex(
                        direction: Axis.horizontal,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Row(
                              children: [
                                const Text(
                                  "Applicant",
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const Text(": "),
                                Text(
                                    "${loanApplications[index].applicantIncome.getOrCrash().toInt()} "),
                                const Icon(
                                  FontAwesomeIcons.rupeeSign,
                                  size: 11,
                                  color: Colors.black54,
                                )
                              ],
                            ),
                          ),
                          Flexible(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text(
                                  "Co-Applicant",
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                    " : ${loanApplications[index].coApplicantIncome.getOrCrash().toInt()} "),
                                const Icon(
                                  FontAwesomeIcons.rupeeSign,
                                  size: 11,
                                  color: Colors.black54,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              "Term  : ${loanApplications[index].loanTerm.getOrCrash()} Days"),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(3)),
                            padding: const EdgeInsets.all(7),
                            child: Row(
                              children: [
                                Text(
                                  "Amount Requested  : ${loanApplications[index].loanAmount.getOrCrash().toInt()} ",
                                  style: TextStyle(
                                    color: Colors.blue[800],
                                  ),
                                ),
                                Icon(
                                  FontAwesomeIcons.rupeeSign,
                                  size: 11,
                                  color: Colors.blue[800],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ]),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(6))),
                    padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                "Application Status",
                                style: TextStyle(
                                    color: Colors.blue[800],
                                    fontSize: 16.2,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              (loanApplications[index].loanStatus == null)
                                  ? Text("N/A")
                                  : Text(double.parse(loanApplications[index]
                                              .loanStatus) <
                                          0.35
                                      ? "Sorry ,No chance"
                                      : double.parse(loanApplications[index]
                                                  .loanStatus) <
                                              0.5
                                          ? "Bter luck nxt time"
                                          : "Congrats"),
                            ],
                          ),
                        ),
                        PopupMenuButton(
                            color: Colors.blue[50],
                            tooltip: "More",
                            padding: EdgeInsets.zero,
                            onSelected: (val) {
                              if (val == 0) {
                                context.read<LoanApplicationActorBloc>().add(
                                    LoanApplicationActorEvent.delete(
                                        loanApplications[index]));

                                context.read<LoanApplicationWatcherBloc>().add(
                                    const LoanApplicationWatcherEvent
                                        .watchAll());
                              } else if (val == 1) {
                                ExtendedNavigator.of(context)
                                    .pushLoanApplicationFormPage(
                                        loanApplicationInfo:
                                            optionOf(loanApplications[index]));
                              } else {}
                            },
                            icon: Icon(
                              FontAwesomeIcons.ellipsisV,
                              size: 15,
                              color: Colors.blue[800],
                            ),
                            itemBuilder: (context) => [
                                  PopupMenuItem(
                                      value: 0,
                                      height: 30,
                                      child: Text(
                                        "Delete",
                                        style: TextStyle(
                                            color: ConstantColors.primaryColor),
                                      )),
                                  PopupMenuItem(
                                      value: 1,
                                      height: 30,
                                      child: Text(
                                        "Update",
                                        style: TextStyle(
                                            color: ConstantColors.primaryColor),
                                      ))
                                ])
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
