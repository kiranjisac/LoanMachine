import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:loan_machine/application/loan/loan_application_form_bloc/loan_application_bloc.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';
import 'package:loan_machine/presentation/pages/loan_application_form/form_fields/application_name_field.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loan_machine/presentation/pages/loan_application_form/form_fields/credit_history_field.dart';
import 'package:loan_machine/presentation/pages/loan_application_form/form_fields/dependents_field.dart';
import 'package:loan_machine/presentation/pages/loan_application_form/form_fields/education_field.dart';
import 'package:loan_machine/presentation/pages/loan_application_form/form_fields/gender_field.dart';
import 'package:loan_machine/presentation/pages/loan_application_form/form_fields/loan_term_field.dart';
import 'package:loan_machine/presentation/pages/loan_application_form/form_fields/married_field.dart';
import 'package:loan_machine/presentation/pages/loan_application_form/form_fields/property_area_field.dart';
import 'package:loan_machine/presentation/pages/loan_application_form/form_fields/save_button.dart';
import 'package:loan_machine/presentation/pages/loan_application_form/form_fields/self_employed_field.dart';

import 'form_fields/applicant_income_field.dart';
import 'form_fields/application_name_field.dart';
import 'form_fields/co_applicant_income_field.dart';
import 'form_fields/loan_amount.dart';

class LoanApplicationForm extends StatelessWidget {
  const LoanApplicationForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final primaryColor = ConstantColors.primaryColor;

    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            tooltip: "go back",
            color: ConstantColors.primaryColor,
            icon: const Icon(
              Icons.arrow_back_outlined,
              //size: 21,
            ),
            onPressed: () => ExtendedNavigator.of(context).pop(),
          ),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: BlocBuilder<LoanApplicationBloc, LoanApplicationState>(
            buildWhen: (p, c) =>
                p.isEditing !=
                c.isEditing, // rebuild only when the isEditing changes
            builder: (context, state) {
              return Text(
                state.isEditing ? "Edit Appliction" : "Application Form",
                style: TextStyles.textStyleNormalBlack.copyWith(
                    color: ConstantColors.primaryColor,
                    fontSize: 21,
                    fontWeight: FontWeight.w600),
              );
            },
          )),
      body: BlocBuilder<LoanApplicationBloc, LoanApplicationState>(
        buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
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
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      SizedBox(
                        height: 7,
                      ),
                      ApplicationNameField(),
                      SizedBox(
                        height: 20,
                      ),
                      GenderField(),
                      SizedBox(
                        height: 20,
                      ),
                      MarriedField(),
                      SizedBox(
                        height: 20,
                      ),
                      DependentsField(),
                      SizedBox(
                        height: 20,
                      ),
                      EducationField(),
                      SizedBox(
                        height: 20,
                      ),
                      SelfEmployedField(),
                      SizedBox(
                        height: 20,
                      ),
                      ApplicantIncomeField(),
                      SizedBox(
                        height: 20,
                      ),
                      CoApplicantIncomeField(),
                      SizedBox(
                        height: 20,
                      ),
                      LoanAmount(),
                      SizedBox(
                        height: 20,
                      ),
                      LoanTermField(),
                      SizedBox(
                        height: 20,
                      ),
                      CreditHistoryField(),
                      SizedBox(
                        height: 20,
                      ),
                      PropertyAreaField(),
                      SizedBox(
                        height: 20,
                      ),
                      SaveButton(),
                      SizedBox(
                        height: 20,
                      ),
                    ]),
              ),
            ),
          );
        },
      ),
    );
  }
}
