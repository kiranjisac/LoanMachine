import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:loan_machine/application/loan/loan_application_form_bloc/loan_application_bloc.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApplicationNameField extends HookWidget {
  const ApplicationNameField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocListener<LoanApplicationBloc, LoanApplicationState>(
        listenWhen: (p, c) => p.isEditing != c.isEditing,
        listener: (context, state) {
          textEditingController.text =
              state.loanApplicationInfo.loanApplicationName.getOrCrash();
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
              hintText: "Application Name",
              hintMaxLines: 1,
              suffixIcon: context
                  .watch<LoanApplicationBloc>()
                  .state
                  .loanApplicationInfo
                  .loanApplicationName
                  .value
                  .fold(
                    (valueFailure) => valueFailure.maybeWhen(
                        loan: (f) => f.maybeMap(
                            stringEmpty: (_) => const SizedBox(),
                            orElse: () => null),
                        orElse: () => null),
                    (r) => Icon(
                      Icons.done,
                      color: ConstantColors.primaryColor,
                      size: 21,
                    ),
                  ),
              prefixIcon: const Icon(
                Icons.featured_play_list_outlined,
                size: 21,
              ),
            ),
            onChanged: (val) => context
                .read<LoanApplicationBloc>()
                .add(LoanApplicationEvent.loanApplicationNameChanged(val)),
            validator: (val) {
              if (val.isEmpty) {
                return "Name cannot be empty! ";
              } else {
                return null;
              }
            }));
  }
}
