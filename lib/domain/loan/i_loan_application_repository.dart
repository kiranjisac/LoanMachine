import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:loan_machine/domain/loan/loan_application_failure.dart';
import 'package:loan_machine/domain/loan/loan_application_info.dart';

abstract class ILoanApplicationRepository {
  Future<Either<LoanApplicationFailure, Unit>> saveDataAndPredict(
      {@required LoanApplicationInfo loanApplicationInfo});
}
