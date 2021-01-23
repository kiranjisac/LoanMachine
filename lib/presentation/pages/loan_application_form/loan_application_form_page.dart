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
      appBar: buildAppBar(context),
      body: BlocProvider(
        create: (context) => getIt<LoanApplicationBloc>(),
        child: const LoanApplicationForm(),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        leading: IconButton(
          color: ConstantColors.primaryColor,
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            size: 21,
          ),
          onPressed: () => ExtendedNavigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Text(
          "Loan Application Form ",
          style: TextStyles.textStyleNormalBlack.copyWith(
              color: ConstantColors.primaryColor,
              fontSize: 22,
              fontWeight: FontWeight.w600),
        ));
  }
}

class LoanApplicationForm extends StatelessWidget {
  const LoanApplicationForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final primaryColor = ConstantColors.primaryColor;

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
                  ExtendedNavigator.of(context).pop();
                  ExtendedNavigator.of(context).replace(Routes.homePage);
                }));
      },
      builder: (context, state) {
        return Theme(
          data: Theme.of(context).copyWith(
            primaryColor: primaryColor,
            highlightColor: primaryColor,
            inputDecorationTheme: InputDecorationTheme(
              focusColor: primaryColor,
              hintStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          child: Form(
            autovalidateMode: state.showErrorMessages == true
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: ListView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 14),
                children: [
                  const SizedBox(
                    height: 7,
                  ),
                  applicationNameField(context),
                  const SizedBox(
                    height: 20,
                  ),
                  genderField(context),
                  const SizedBox(
                    height: 20,
                  ),
                  marriedField(context),
                  const SizedBox(
                    height: 20,
                  ),
                  dependentsField(context),
                  const SizedBox(
                    height: 20,
                  ),
                  educationField(context),
                  const SizedBox(
                    height: 20,
                  ),
                  selfEmployedField(context),
                  const SizedBox(
                    height: 20,
                  ),
                  applicantIncomeField(context),
                  const SizedBox(
                    height: 20,
                  ),
                  coApplicantIncomeField(context),
                  const SizedBox(
                    height: 20,
                  ),
                  loanAmountField(context),
                  const SizedBox(
                    height: 20,
                  ),
                  loanTermField(context),
                  const SizedBox(
                    height: 20,
                  ),
                  creditHistoryField(context),
                  const SizedBox(
                    height: 20,
                  ),
                  propertyAreaField(context),
                  const SizedBox(
                    height: 20,
                  ),
                  saveButton(context),
                  const SizedBox(
                    height: 20,
                  ),
                ]),
          ),
        );
      },
    );
  }

  DropdownButtonFormField<int> dependentsField(BuildContext context) {
    return DropdownButtonFormField<int>(
        isExpanded: true,
        hint: const Text(
          "Choose No of Dependents",
        ),
        value: context.watch<LoanApplicationBloc>().state.dependents.isValid()
            ? context.watch<LoanApplicationBloc>().state.dependents.getOrCrash()
            : null,
        onChanged: (val) => context
            .read<LoanApplicationBloc>()
            .add(LoanApplicationEvent.dependentsChanged(val)),
        validator: (_) => context
            .read<LoanApplicationBloc>()
            .state
            .dependents
            .value
            .fold(
                (valueFailure) => valueFailure.maybeWhen(
                    loan: (f) => f.maybeMap(
                        invalidEducationStatus: (_) =>
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

  DropdownButtonFormField<String> educationField(BuildContext context) {
    return DropdownButtonFormField<String>(
        isExpanded: true,
        hint: const Text("Choose Your Education Status"),
        value: context.watch<LoanApplicationBloc>().state.education.isValid()
            ? context.watch<LoanApplicationBloc>().state.education.getOrCrash()
            : null,
        onChanged: (val) => context
            .read<LoanApplicationBloc>()
            .add(LoanApplicationEvent.educationStatusChanged(val)),
        validator: (_) => context
            .read<LoanApplicationBloc>()
            .state
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

  DropdownButtonFormField<String> propertyAreaField(BuildContext context) {
    return DropdownButtonFormField<String>(
        isExpanded: true,
        hint: const Text("Choose Property Area"),
        value: context.watch<LoanApplicationBloc>().state.propertyArea.isValid()
            ? context
                .watch<LoanApplicationBloc>()
                .state
                .propertyArea
                .getOrCrash()
            : null,
        onChanged: (val) => context
            .read<LoanApplicationBloc>()
            .add(LoanApplicationEvent.propertyAreaChanged(val)),
        validator: (_) => context
            .read<LoanApplicationBloc>()
            .state
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

  DropdownButtonFormField<int> loanTermField(BuildContext context) {
    return DropdownButtonFormField<int>(
        isExpanded: true,
        hint: const Text("Choose loan Term"),
        value: context.watch<LoanApplicationBloc>().state.loanTerm.isValid()
            ? context.watch<LoanApplicationBloc>().state.loanTerm.getOrCrash()
            : null,
        onChanged: (val) => context
            .read<LoanApplicationBloc>()
            .add(LoanApplicationEvent.loanTermChanged(val)),
        validator: (_) => context
            .read<LoanApplicationBloc>()
            .state
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

  Column creditHistoryField(BuildContext context) {
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

  Column marriedField(BuildContext context) {
    const textStyle = TextStyle(
        color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);
    return Column(children: [
      Row(
        children: const [
          Text(
            "Married : ",
            style: textStyle,
          ),
        ],
      ),
      Row(children: [
        Radio<String>(
          onChanged: (val) => context
              .read<LoanApplicationBloc>()
              .add(LoanApplicationEvent.marriedStatusChanged(val)),
          value: "Yes",
          groupValue:
              context.watch<LoanApplicationBloc>().state.married.getOrCrash(),
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
              .add(LoanApplicationEvent.marriedStatusChanged(val)),
          value: "No",
          groupValue:
              context.watch<LoanApplicationBloc>().state.married.getOrCrash(),
          activeColor: ConstantColors.primaryColor,
        ),
        const Text(
          "Yes",
          style: textStyle,
        ),
      ])
    ]);
  }

  Column selfEmployedField(BuildContext context) {
    const textStyle = TextStyle(
        color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);
    return Column(children: [
      Row(
        children: const [
          Text(
            "Self Employment : ",
            style: textStyle,
          ),
        ],
      ),
      Row(children: [
        Radio<String>(
          onChanged: (val) => context
              .read<LoanApplicationBloc>()
              .add(LoanApplicationEvent.selfEmployedStatusChanged(val)),
          value: "Yes",
          groupValue: context
              .watch<LoanApplicationBloc>()
              .state
              .selfEmployed
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
              .add(LoanApplicationEvent.selfEmployedStatusChanged(val)),
          value: "No",
          groupValue: context
              .watch<LoanApplicationBloc>()
              .state
              .selfEmployed
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

  Column genderField(BuildContext context) {
    const textStyle = TextStyle(
        color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);

    return Column(children: [
      Row(
        children: const [
          Text(
            "Gender : ",
            style: textStyle,
          ),
        ],
      ),
      Row(children: [
        Radio<String>(
          onChanged: (val) => context
              .read<LoanApplicationBloc>()
              .add(LoanApplicationEvent.genderChanged(val)),
          value: "Male",
          groupValue:
              context.watch<LoanApplicationBloc>().state.gender.getOrCrash(),
          activeColor: ConstantColors.primaryColor,
        ),
        const Text("Male", style: textStyle),
        const SizedBox(width: 10),
        Radio<String>(
          onChanged: (val) => context
              .read<LoanApplicationBloc>()
              .add(LoanApplicationEvent.genderChanged(val)),
          value: "Female",
          groupValue:
              context.watch<LoanApplicationBloc>().state.gender.getOrCrash(),
          activeColor: ConstantColors.primaryColor,
        ),
        const Text(
          "Female",
          style: textStyle,
        ),
      ])
    ]);
  }

  TextFormField applicationNameField(BuildContext context) {
    return TextFormField(
        autocorrect: false,
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
        });
  }

  FlatButton saveButton(BuildContext context) {
    return FlatButton.icon(
      icon: const Icon(
        Icons.save_outlined,
        color: Colors.white,
        size: 24,
      ),
      padding: const EdgeInsets.all(12.5),
      color: ConstantColors.primaryColor,
      onPressed: () => context
          .read<LoanApplicationBloc>()
          .add(const LoanApplicationEvent.saveData()),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      label: const Text(
        " Save Application Info",
        style: TextStyle(
            color: Colors.white, fontSize: 16.5, fontWeight: FontWeight.w700),
      ),
    );
  }

  TextFormField loanAmountField(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4)),
        filled: true,
        hintText: "Loan amount requested",
        hintMaxLines: 1,
        suffixIcon:
            context.watch<LoanApplicationBloc>().state.loanAmount.value.fold(
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
          Icons.money_outlined,
          size: 21,
        ),
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
          Icons.attach_money_outlined,
          size: 21,
        ),
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
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4)),
        filled: true,
        hintText: "Applicant Income",
        hintMaxLines: 1,
        suffixIcon: context
            .watch<LoanApplicationBloc>()
            .state
            .applicantIncome
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
          Icons.attach_money_outlined,
          size: 21,
        ),
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
