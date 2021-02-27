import 'package:flutter/material.dart';
import 'package:loan_machine/application/loan/loan_application_form_bloc/loan_application_bloc.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreditHistoryField extends StatelessWidget {
  const CreditHistoryField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);
    return Column(children: [
      Row(
        children: const [
          Text("Credit History : ", style: textStyle),
        ],
      ),
      Row(children: [
        Radio<String>(
          onChanged: (val) => context
              .read<LoanApplicationBloc>()
              .add(LoanApplicationEvent.creditHistoryChanged(val)),
          value: "Yes",
          groupValue: context
              .watch<LoanApplicationBloc>()
              .state
              .loanApplicationInfo
              .creditHistory
              .getOrCrash(),
          activeColor: ConstantColors.primaryColor,
        ),
        const Text(
          "Yes",
          style: textStyle,
        ),
        const SizedBox(width: 10),
        Radio<String>(
          onChanged: (val) => context
              .read<LoanApplicationBloc>()
              .add(LoanApplicationEvent.creditHistoryChanged(val)),
          value: "No",
          groupValue: context
              .watch<LoanApplicationBloc>()
              .state
              .loanApplicationInfo
              .creditHistory
              .getOrCrash(),
          activeColor: ConstantColors.primaryColor,
        ),
        const Text(
          "No",
          style: textStyle,
        ),
      ])
    ]);
  }
}
