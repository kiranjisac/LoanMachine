import 'package:flutter/material.dart';
import 'package:loan_machine/application/loan/loan_application_form_bloc/loan_application_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoanTermField extends StatelessWidget {
  const LoanTermField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<int>(
        isExpanded: true,
        hint: const Text("Choose loan Term"),
        value: context
                .watch<LoanApplicationBloc>()
                .state
                .loanApplicationInfo
                .loanTerm
                .isValid()
            ? context
                .watch<LoanApplicationBloc>()
                .state
                .loanApplicationInfo
                .loanTerm
                .getOrCrash()
            : null,
        onChanged: (val) => context
            .read<LoanApplicationBloc>()
            .add(LoanApplicationEvent.loanTermChanged(val)),
        validator: (_) => context
            .read<LoanApplicationBloc>()
            .state
            .loanApplicationInfo
            .loanTerm
            .value
            .fold(
                (valueFailure) => valueFailure.maybeWhen(
                    loan: (f) => f.maybeMap(
                        invalidLoanTerm: (_) =>
                            "Please choose your  loan term ",
                        orElse: () => null),
                    orElse: () => null),
                (r) => null),
        items: const [
          DropdownMenuItem(value: 60, child: Text(" 2 months ")),
          DropdownMenuItem(value: 120, child: Text(" 4 months ")),
          DropdownMenuItem(value: 180, child: Text(" 6 months ")),
          DropdownMenuItem(value: 240, child: Text(" 8 months ")),
          DropdownMenuItem(value: 300, child: Text(" 10 months ")),
          DropdownMenuItem(value: 360, child: Text(" 1 year ")),
          DropdownMenuItem(value: 420, child: Text(" 1 year and 2 months ")),
          DropdownMenuItem(value: 480, child: Text(" 1 year and 4 months ")),
          DropdownMenuItem(value: 540, child: Text(" 1 year and 6 months "))
        ]);
  }
}
