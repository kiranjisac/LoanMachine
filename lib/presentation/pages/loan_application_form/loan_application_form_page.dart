import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loan_machine/application/loan/loan_application_form_bloc/loan_application_bloc.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';
import 'package:loan_machine/injection.dart';
import 'package:loan_machine/presentation/routes/router.gr.dart';

class LoanApplicationFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<LoanApplicationBloc>(),
        child: const Padding(
          padding: EdgeInsets.all(12.0),
          child: LoanApplicationForm(),
        ),
      ),
    );
  }
}

class LoanApplicationForm extends StatelessWidget {
  const LoanApplicationForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoanApplicationBloc, LoanApplicationState>(
      listener: (context, state) {
        state.loanFailureOrSuccessOption.fold(
            () => null,
            (either) => either.fold((f) {
                  FlushbarHelper.createError(
                          message: f.map(
                              databaseError: (_) =>
                                  "Sorry for the inconvenience ! Database Error . Contact the developer."))
                      .show(context);
                }, (r) {
                  ExtendedNavigator.of(context).replace(Routes.homePage);
                }));
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages == true
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: ListView(children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Please Fill in your Loan Application Details",
              style: TextStyle(color: Colors.blue),
            ),
            applicationNameField(context),
            const SizedBox(
              height: 20,
            ),
            genderField(context),
            marriedField(context),
            dependentsField(context),
            educationField(context),
            selfEmployedField(context),
            applicantIncomeField(context),
            coApplicantIncomeField(context),
            loanAmountField(context),
            loanTermField(context),
            creditHistoryField(context),
            propertyAreaField(context),
            saveButton(context),
            const SizedBox(
              height: 20,
            ),
          ]),
        );
      },
    );
  }

  DropdownButton<int> dependentsField(BuildContext context) {
    return DropdownButton<int>(
        isExpanded: true,
        hint: const Text(
          "Choose No of Dependents",
        ),
        value:
            context.watch<LoanApplicationBloc>().state.dependents.getOrCrash(),
        onChanged: (val) => context
            .read<LoanApplicationBloc>()
            .add(LoanApplicationEvent.dependentsChanged(val)),
        items: const [
          DropdownMenuItem(value: 0, child: Text(" 0 ")),
          DropdownMenuItem(value: 1, child: Text(" 1 ")),
          DropdownMenuItem(value: 2, child: Text(" 2 ")),
          DropdownMenuItem(value: 3, child: Text(" 3+ "))
        ]);
  }

  DropdownButton<String> educationField(BuildContext context) {
    return DropdownButton<String>(
        isExpanded: true,
        hint: const Text("Choose Your Education Status"),
        value: context.watch<LoanApplicationBloc>().state.education.isValid()
            ? context.watch<LoanApplicationBloc>().state.education.getOrCrash()
            : null,
        onChanged: (val) => context
            .read<LoanApplicationBloc>()
            .add(LoanApplicationEvent.educationStatusChanged(val)),
        items: const [
          DropdownMenuItem(value: "Graduate", child: Text(" Graduate ")),
          DropdownMenuItem(
              value: "Not Graduate", child: Text(" Not Graduate ")),
        ]);
  }

  DropdownButton<String> propertyAreaField(BuildContext context) {
    return DropdownButton<String>(
        isExpanded: true,
        hint: const Text("Choose Any"),
        value: context
            .watch<LoanApplicationBloc>()
            .state
            .propertyArea
            .getOrCrash(),
        onChanged: (val) => context
            .read<LoanApplicationBloc>()
            .add(LoanApplicationEvent.propertyAreaChanged(val)),
        items: const [
          DropdownMenuItem(value: "Urban", child: Text(" Urban  ")),
          DropdownMenuItem(value: "Semiurban", child: Text(" Semiurban  ")),
          DropdownMenuItem(value: "Rural", child: Text(" Rural ")),
        ]);
  }

  DropdownButton<int> loanTermField(BuildContext context) {
    return DropdownButton<int>(
        isExpanded: true,
        hint: const Text("Choose loan Term"),
        value: context.watch<LoanApplicationBloc>().state.loanTerm.getOrCrash(),
        onChanged: (val) => context
            .read<LoanApplicationBloc>()
            .add(LoanApplicationEvent.loanTermChanged(val)),
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

  Column creditHistoryField(BuildContext context) {
    return Column(children: [
      const Text("Credit History : "),
      Wrap(children: [
        RadioListTile<String>(
          title: const Text("Yes"),
          onChanged: (val) => context
              .read<LoanApplicationBloc>()
              .add(LoanApplicationEvent.creditHistoryChanged(val)),
          value: "Yes",
          groupValue: context
              .watch<LoanApplicationBloc>()
              .state
              .creditHistory
              .getOrCrash(),
        ),
        RadioListTile<String>(
          title: const Text("No"),
          onChanged: (val) => context
              .read<LoanApplicationBloc>()
              .add(LoanApplicationEvent.creditHistoryChanged(val)),
          value: "No",
          groupValue: context
              .watch<LoanApplicationBloc>()
              .state
              .creditHistory
              .getOrCrash(),
        )
      ])
    ]);
  }

  Column marriedField(BuildContext context) {
    return Column(children: [
      const Text("Married : "),
      Wrap(children: [
        RadioListTile<String>(
          title: const Text("Yes"),
          onChanged: (val) => context
              .read<LoanApplicationBloc>()
              .add(LoanApplicationEvent.marriedStatusChanged(val)),
          value: "Yes",
          groupValue:
              context.watch<LoanApplicationBloc>().state.married.getOrCrash(),
        ),
        RadioListTile<String>(
          title: const Text("No"),
          onChanged: (val) => context
              .read<LoanApplicationBloc>()
              .add(LoanApplicationEvent.marriedStatusChanged(val)),
          value: "No",
          groupValue:
              context.watch<LoanApplicationBloc>().state.married.getOrCrash(),
        )
      ])
    ]);
  }

  Column selfEmployedField(BuildContext context) {
    return Column(children: [
      const Text("Self Employment : "),
      Wrap(children: [
        RadioListTile<String>(
          title: const Text("Yes"),
          onChanged: (val) => context
              .read<LoanApplicationBloc>()
              .add(LoanApplicationEvent.selfEmployedStatusChanged(val)),
          value: "Yes",
          groupValue: context
              .watch<LoanApplicationBloc>()
              .state
              .selfEmployed
              .getOrCrash(),
        ),
        RadioListTile<String>(
          title: const Text("No"),
          onChanged: (val) => context
              .read<LoanApplicationBloc>()
              .add(LoanApplicationEvent.selfEmployedStatusChanged(val)),
          value: "No",
          groupValue: context
              .watch<LoanApplicationBloc>()
              .state
              .selfEmployed
              .getOrCrash(),
        )
      ])
    ]);
  }

  Column genderField(BuildContext context) {
    return Column(children: [
      const Text("Gender : "),
      Wrap(children: [
        RadioListTile<String>(
          title: const Text("Male"),
          onChanged: (val) => context
              .read<LoanApplicationBloc>()
              .add(LoanApplicationEvent.genderChanged(val)),
          value: "Male",
          groupValue:
              context.watch<LoanApplicationBloc>().state.gender.getOrCrash(),
        ),
        RadioListTile<String>(
          title: const Text("Female"),
          onChanged: (val) => context
              .read<LoanApplicationBloc>()
              .add(LoanApplicationEvent.genderChanged(val)),
          value: "Female",
          groupValue:
              context.watch<LoanApplicationBloc>().state.gender.getOrCrash(),
        )
      ])
    ]);
  }

  TextFormField applicationNameField(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      decoration: const InputDecoration(labelText: "Application Name"),
      onChanged: (val) => context
          .read<LoanApplicationBloc>()
          .add(LoanApplicationEvent.loanApplicationNameChanged(val)),
      validator: (_) => context
          .read<LoanApplicationBloc>()
          .state
          .loanApplicationName
          .value
          .fold(
              (valueFailure) => valueFailure.maybeWhen(
                  loan: (f) => f.maybeMap(
                      stringEmpty: (_) =>
                          "Name of the application cannot be empty !",
                      orElse: () => null),
                  orElse: () => null),
              (r) => null),
    );
  }

  FlatButton saveButton(BuildContext context) {
    return FlatButton(
        color: Colors.lightBlue,
        onPressed: () => context
            .read<LoanApplicationBloc>()
            .add(const LoanApplicationEvent.saveData()),
        child: const Text("save and exit"));
  }

  TextFormField loanAmountField(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      decoration: const InputDecoration(
        labelText: "Loan Amount",
      ),
      onChanged: (val) => context
          .read<LoanApplicationBloc>()
          .add(LoanApplicationEvent.loanAmountChanged(val)),
      validator: (_) => context
          .read<LoanApplicationBloc>()
          .state
          .loanAmount
          .value
          .fold(
              (valueFailure) => valueFailure.maybeWhen(
                  loan: (f) => f.maybeMap(
                      invalidIntegerValue: (_) => "it should be a valid number",
                      integerNotPositive: (_) =>
                          "it cannot be negative or zero ",
                      orElse: () => null),
                  orElse: () => null),
              (r) => null),
    );
  }

  TextFormField coApplicantIncomeField(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      decoration: const InputDecoration(
        labelText: "CoApplicant Income",
      ),
      onChanged: (val) => context
          .read<LoanApplicationBloc>()
          .add(LoanApplicationEvent.coApplicantIncomeChanged(val)),
      validator: (_) => context
          .read<LoanApplicationBloc>()
          .state
          .coApplicantIncome
          .value
          .fold(
              (valueFailure) => valueFailure.maybeWhen(
                  loan: (f) => f.maybeMap(
                      invalidIntegerValue: (_) => "it should be a valid number",
                      integerNotPositive: (_) =>
                          "it cannot be negative or zero ",
                      orElse: () => null),
                  orElse: () => null),
              (r) => null),
    );
  }

  TextFormField applicantIncomeField(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      decoration: const InputDecoration(
        labelText: "Applicant Income",
      ),
      onChanged: (val) => context
          .read<LoanApplicationBloc>()
          .add(LoanApplicationEvent.applicantIncomeChanged(val)),
      validator: (_) => context
          .read<LoanApplicationBloc>()
          .state
          .applicantIncome
          .value
          .fold(
              (valueFailure) => valueFailure.maybeWhen(
                  loan: (f) => f.maybeMap(
                      invalidIntegerValue: (_) => "it should be a valid number",
                      integerNotPositive: (_) =>
                          "it cannot be negative or zero ",
                      orElse: () => null),
                  orElse: () => null),
              (r) => null),
    );
  }
}
