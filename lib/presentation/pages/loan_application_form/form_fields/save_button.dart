import 'package:flutter/material.dart';
import 'package:loan_machine/application/loan/loan_application_form_bloc/loan_application_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      icon: const Icon(
        Icons.save_outlined,
        color: Colors.white,
        size: 24,
      ),
      padding: const EdgeInsets.all(12.5),
      color: ConstantColors.primaryColor,
      onPressed: () {
        context
            .read<LoanApplicationBloc>()
            .add(const LoanApplicationEvent.saveData());
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      label: const Text(
        " Save Application Info",
        style: TextStyle(
            color: Colors.white, fontSize: 16.5, fontWeight: FontWeight.w700),
      ),
    );
  }
}
