import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kt_dart/collection.dart';

class Constants {
  const Constants();
  static const String version = "1 . 0 . 0 + 1";
  static const GITHUB_URL =
      'https://github.com/kiranjisac/Loanmachine/tree/master';
  static const INSTAGRAM_URL = 'https://instagram.com/kiranjisacme/';
  static const YOUTUBE_URL =
      'https://www.youtube.com/channel/UCwXdFgeE9KYzlDdR7TG9cMw';
  static const TWITTER_URL = 'https://twitter.com/IsacKiran';
  static const FACEBOOK_URL = 'https://www.facebook.com/FlutterCommunity/';

  static const emailKiran = 'mailto:kirankiranjisac16@gmail.com';
  static const emailAshik = 'mailto:ashikshaji195@gmail.com';
  static const emailKevin = 'mailto:monichankevinmonichan@gmail.com';

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
  static const loanColumnLoanStatus = 'LoanStatus';
}

final avatars = <String>[
  "assets/avatar/avatar_1.png",
  "assets/avatar/avatar_2.png",
  "assets/avatar/avatar_3.png",
  "assets/avatar/avatar_4.png",
  "assets/avatar/avatar_5.png",
  "assets/avatar/avatar_6.png"
].toImmutableList();

class TextStyles {
  static final textStyleNormalBlack = GoogleFonts.lato(color: Colors.black);
}

abstract class ConstantColors {
  static final primaryColor = Colors.blue[800];
  static final secondaryColor = Colors.grey;
}
