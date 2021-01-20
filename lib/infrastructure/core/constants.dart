import 'package:flutter/material.dart';

class Constants {
  const Constants();
  static const String databaseName = "LoanMachine.db";
  static const int databaseVersion = 1;

  static const tableName = "users";
  static const columnUniqueID = "uniqueId";
  static const columnEmailID = "emailAddress";
  static const columnUserName = "userName";

  static const columnPassword = "password";
  // of the table LoanApplicationInfo
  static const loanTableName = "loanApplicationInfo";
  static const loanColumnApplicationUniqueId = "applicationUniqueId";
  static const loanColumnApplicantUniqueId = "applicantUniqueId";
  static const loanColumnApplicationName = "applicationName";
  static const loanColumnGender = "gender";
  static const loanColumnMarried = "married";
  static const loanColumnEducation = "education";
  static const loanColumnAmount = "amount";
  static const loanColumnSelfEmployed = "selfEmployed";
  static const loanColumnDependents = "dependents";
  static const loanColumnApplicantIncome = "applicantIncome";
  static const loanColumnCoApplicantIncome = "coApplicantIncome";
  static const loanColumnPropertyArea = "propertyArea";
  static const loanColumnTerm = "term";
  static const loanColumnCreditHistory = "creditHistory";
}

class TextStyles {
  static const textStyleNormalBlack = TextStyle(color: Colors.black);
}
