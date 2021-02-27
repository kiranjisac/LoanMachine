import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:loan_machine/domain/core/value_object.dart';
import 'package:loan_machine/domain/loan/i_loan_application_repository.dart';
import 'package:loan_machine/domain/loan/loan_application_info.dart';
import 'package:loan_machine/domain/loan/loan_application_failure.dart';
import 'package:loan_machine/infrastructure/core/utils.dart';
import 'package:loan_machine/infrastructure/database/local_database_helper.dart';
import 'package:loan_machine/infrastructure/loan/loan_application_info_dto.dart';
import 'package:loan_machine/infrastructure/loan/loan_local_database_helper.dart';
import 'package:kt_dart/kt.dart';

@LazySingleton(as: ILoanApplicationRepository)
class LocalLoanApplicationRepository implements ILoanApplicationRepository {
  final LocalDatabaseHelper databaseHelper;
  LocalLoanApplicationRepository(
    @Named.from(LoanLocalDatabaseHelper) this.databaseHelper,
  );
  @override
  Future<Either<LoanApplicationFailure, Unit>> saveData(
      {LoanApplicationInfo loanApplicationInfo}) async {
    final loanApplicationInfoDto =
        LoanApplicationInfoDto.fromDomain(loanApplicationInfo);

    final successOrFailure = await databaseHelper.insert(loanApplicationInfoDto
        .copyWith(loanStatus: Loanee.predict(loanApplicationInfoDto).toString())
        .toMap());

    return successOrFailure.fold(
        (f) => f.map(
            unSuccessful: (_) =>
                left(const LoanApplicationFailure.databaseError())),
        (r) => right(unit));
  }

  @override
  Future<Either<LoanApplicationFailure, Unit>> updateData(
      {LoanApplicationInfo loanApplicationInfo}) async {
    final loanApplicationInfoDto =
        LoanApplicationInfoDto.fromDomain(loanApplicationInfo);

    final successOrFailure = await databaseHelper.update(
        loanApplicationInfoDto
            .copyWith(
                loanStatus: Loanee.predict(loanApplicationInfoDto).toString())
            .toMap(),
        loanApplicationInfoDto.applicationUniqueId);

    return successOrFailure.fold(
        (f) => f.map(
            unSuccessful: (_) =>
                left(const LoanApplicationFailure.databaseError())),
        (r) => right(unit));
  }

  @override
  Future<Either<LoanApplicationFailure, Unit>> delete(
      {UniqueId loanApplicationUniqueId}) async {
    final successOrFailure =
        await databaseHelper.delete(loanApplicationUniqueId.getOrCrash());

    return successOrFailure.fold(
        (f) => f.map(
            unSuccessful: (_) =>
                left(const LoanApplicationFailure.databaseError())),
        (r) => right(unit));
  }

  @override
  Future<Either<LoanApplicationFailure, KtList<LoanApplicationInfo>>>
      watchAll() async {
    final successOrFailure = await databaseHelper.queryAllRows();

    return successOrFailure.fold(
        (f) => f.map(
            unSuccessful: (_) =>
                left(const LoanApplicationFailure.databaseError())),
        (list) => right<LoanApplicationFailure, KtList<LoanApplicationInfo>>(
            list
                .map((row) =>
                    LoanApplicationInfoDto.fromMap(row.cast<String, String>())
                        .toDomain())
                .toImmutableList()));
  }
}
