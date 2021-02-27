import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loan_machine/application/loan/loan_application_form_bloc/loan_application_bloc.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoApplicantIncomeField extends HookWidget {
  const CoApplicantIncomeField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocListener<LoanApplicationBloc, LoanApplicationState>(
        listenWhen: (p, c) => p.isEditing != c.isEditing,
        listener: (context, state) {
          textEditingController.text = state
              .loanApplicationInfo.coApplicantIncome
              .getOrCrash()
              .toString();
        },
        child: TextFormField(
          controller: textEditingController,
          autocorrect: false,
          cursorColor: ConstantColors.primaryColor,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(4)),
            filled: true,
            hintText: "Co-applicant Income",
            hintMaxLines: 1,
            suffixIcon: context
                .watch<LoanApplicationBloc>()
                .state
                .loanApplicationInfo
                .coApplicantIncome
                .value
                .fold(
                  (valueFailure) => valueFailure.maybeWhen(
                      loan: (f) => f.maybeMap(
                          integerNotPositive: (_) => const SizedBox(),
                          invalidIntegerValue: (_) => const SizedBox(),
                          orElse: () => null),
                      orElse: () => null),
                  (r) => Icon(
                    Icons.done,
                    color: ConstantColors.primaryColor,
                    size: 21,
                  ),
                ),
            prefixIcon: const Icon(
              FontAwesomeIcons.rupeeSign,
              size: 16,
            ),
          ),
          onChanged: (val) => context
              .read<LoanApplicationBloc>()
              .add(LoanApplicationEvent.coApplicantIncomeChanged(val)),
          validator: (_) => context
              .read<LoanApplicationBloc>()
              .state
              .loanApplicationInfo
              .coApplicantIncome
              .value
              .fold(
                  (valueFailure) => valueFailure.maybeWhen(
                      loan: (f) => f.maybeMap(
                          invalidIntegerValue: (_) =>
                              "it should be a valid number",
                          integerNotPositive: (_) =>
                              "it cannot be negative or zero ",
                          orElse: () => null),
                      orElse: () => null),
                  (r) => null),
        ));
  }
}
