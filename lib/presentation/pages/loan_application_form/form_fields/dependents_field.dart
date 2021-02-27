import 'package:flutter/material.dart';
import 'package:loan_machine/application/loan/loan_application_form_bloc/loan_application_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DependentsField extends StatelessWidget {
  const DependentsField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<int>(
        isExpanded: true,
        hint: const Text(
          "Choose No of Dependents",
        ),
        value: context
                .watch<LoanApplicationBloc>()
                .state
                .loanApplicationInfo
                .dependents
                .isValid()
            ? context
                .watch<LoanApplicationBloc>()
                .state
                .loanApplicationInfo
                .dependents
                .getOrCrash()
            : null,
        onChanged: (val) => context
            .read<LoanApplicationBloc>()
            .add(LoanApplicationEvent.dependentsChanged(val)),
        validator: (_) => context
            .read<LoanApplicationBloc>()
            .state
            .loanApplicationInfo
            .dependents
            .value
            .fold(
                (valueFailure) => valueFailure.maybeWhen(
                    loan: (f) => f.maybeMap(
                        invalidDependentsNo: (_) =>
                            "you should choose no of dependents ",
                        orElse: () => null),
                    orElse: () => null),
                (r) => null),
        items: const [
          DropdownMenuItem(value: 0, child: Text(" 0 ")),
          DropdownMenuItem(value: 1, child: Text(" 1 ")),
          DropdownMenuItem(value: 2, child: Text(" 2 ")),
          DropdownMenuItem(value: 3, child: Text(" 3+ "))
        ]);
  }
}
