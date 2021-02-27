import 'dart:io';
import 'dart:math';

import 'package:kt_dart/collection.dart';
import 'package:loan_machine/domain/loan/loan_application_info.dart';
import 'package:loan_machine/infrastructure/loan/loan_application_info_dto.dart';
import 'package:url_launcher/url_launcher.dart';

class Utils {
  /// Laucnch urls passed as string in browser
  static launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class Loanee {
  static const weights = [
    -1.96297923e-02,
    5.03189568e-01,
    -2.40058859e-03,
    4.27126653e-02,
    -8.07895600e-03,
    5.78985385e-06,
    -5.69320549e-05,
    -2.04328513e-03,
    -4.82703994e-03,
    3.03846629e+00,
    -8.27650028e-02
  ];
  static const bais = 0.04851669;
  static double sigmoid(double z) {
    return 1 / (1 + exp(-z));
  }

  static double predict(LoanApplicationInfoDto info) {
    final dollor_rate = 73.18;
    double x0 = info.gender == "Male" ? 1 : 0;
    double x1 = info.married == "Yes" ? 1 : 0;
    double x2 = info.dependents.toDouble();
    double x3 = info.education == "Graduate" ? 1 : 0;
    double x4 = info.selfEmployed == "Yes" ? 1 : 0;

    double x5 = info.applicantIncome / dollor_rate;
    double x6 = info.coApplicantIncome / dollor_rate;
    double x7 = info.loanAmount / dollor_rate;
    double x8 = info.loanTerm.toDouble();
    double x9 = info.creditHistory == "Yes" ? 1 : 0;
    double x10 = info.propertyArea == "Rural"
        ? 0
        : info.propertyArea == "Urban"
            ? 2
            : 1;

    KtList<double> x =
        [x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10].toImmutableList();

    // List<double> x_values = [
    //   1.0,
    //   0.0,
    //   0.0,
    // 1,
    //   0.0,
    //   10849,
    //   1508.0,
    //   128.000000,
    //   360.0,
    //   1.0,
    //   2.0
    // ];
    double z = 0;

    for (int i = 0; i <= 10; i++) {
      z = z + weights[i] * x[i];
    }
    z = z + bais;

    return sigmoid(z);
  }
}
