import 'package:flutter/material.dart';
import 'package:loan_machine/application/loan/loan_application_form_bloc/loan_application_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PropertyAreaField extends StatelessWidget {
  const PropertyAreaField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
        isExpanded: true,
        hint: const Text("Choose Property Area"),
        value: context
                .watch<LoanApplicationBloc>()
                .state
                .loanApplicationInfo
                .propertyArea
                .isValid()
            ? context
                .watch<LoanApplicationBloc>()
                .state
                .loanApplicationInfo
                .propertyArea
                .getOrCrash()
            : null,
        onChanged: (val) => context
            .read<LoanApplicationBloc>()
            .add(LoanApplicationEvent.propertyAreaChanged(val)),
        validator: (_) => context
            .read<LoanApplicationBloc>()
            .state
            .loanApplicationInfo
            .propertyArea
            .value
            .fold(
                (valueFailure) => valueFailure.maybeWhen(
                    loan: (f) => f.maybeMap(
                        invalidPropertyArea: (_) =>
                            "should choose your property area",
                        orElse: () => null),
                    orElse: () => null),
                (r) => null),
        items: const [
          DropdownMenuItem(value: "Urban", child: Text(" Urban  ")),
          DropdownMenuItem(value: "Semiurban", child: Text(" Semiurban  ")),
          DropdownMenuItem(value: "Rural", child: Text(" Rural ")),
        ]);
  }
}
