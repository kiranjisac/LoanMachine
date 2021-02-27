import 'package:flutter/material.dart';
import 'package:loan_machine/application/loan/loan_application_form_bloc/loan_application_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EducationField extends StatelessWidget {
  const EducationField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
        isExpanded: true,
        hint: const Text("Choose Your Education Status"),
        value: context
                .watch<LoanApplicationBloc>()
                .state
                .loanApplicationInfo
                .education
                .isValid()
            ? context
                .watch<LoanApplicationBloc>()
                .state
                .loanApplicationInfo
                .education
                .getOrCrash()
            : null,
        onChanged: (val) => context
            .read<LoanApplicationBloc>()
            .add(LoanApplicationEvent.educationStatusChanged(val)),
        validator: (_) => context
            .read<LoanApplicationBloc>()
            .state
            .loanApplicationInfo
            .education
            .value
            .fold(
                (valueFailure) => valueFailure.maybeWhen(
                    loan: (f) => f.maybeMap(
                        invalidEducationStatus: (_) =>
                            "should choose your education status ",
                        orElse: () => null),
                    orElse: () => null),
                (r) => null),
        items: const [
          DropdownMenuItem(value: "Graduate", child: Text(" Graduate ")),
          DropdownMenuItem(
              value: "Not Graduate", child: Text(" Not Graduate ")),
        ]);
  }
}
