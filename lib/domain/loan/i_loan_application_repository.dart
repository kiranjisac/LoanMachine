import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:loan_machine/domain/core/value_object.dart';
import 'package:loan_machine/domain/loan/loan_application_failure.dart';
import 'package:loan_machine/domain/loan/loan_application_info.dart';

abstract class ILoanApplicationRepository {
  // Stream<Either<LoanApplicationFailure, List<LoanApplicationInfo>>> watchAll();
  //TODO need to implement watch() using stream instead of Future

  Future<Either<LoanApplicationFailure, KtList<LoanApplicationInfo>>>
      watchAll();

  Future<Either<LoanApplicationFailure, Unit>> saveData(
      {@required LoanApplicationInfo loanApplicationInfo});
  Future<Either<LoanApplicationFailure, Unit>> updateData(
      {@required LoanApplicationInfo loanApplicationInfo});
  Future<Either<LoanApplicationFailure, Unit>> delete(
      {@required UniqueId loanApplicationUniqueId});
}
