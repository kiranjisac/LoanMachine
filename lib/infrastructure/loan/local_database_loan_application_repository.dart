import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:loan_machine/domain/loan/i_loan_application_repository.dart';
import 'package:loan_machine/domain/loan/loan_application_info.dart';
import 'package:loan_machine/domain/loan/loan_application_failure.dart';

@LazySingleton(as: ILoanApplicationRepository)
class LocalLoanApplicationRepository implements ILoanApplicationRepository {
  @override
  Future<Either<LoanApplicationFailure, Unit>> saveDataAndPredict(
      {LoanApplicationInfo loanApplicationInfo}) {
    // TODO: implement saveDataAndPredict
    throw UnimplementedError();
  }
}
