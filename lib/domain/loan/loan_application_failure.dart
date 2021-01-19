import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_application_failure.freezed.dart';

@freezed
abstract class LoanApplicationFailure with _$LoanApplicationFailure {
  const factory LoanApplicationFailure.databaseError() = _DatabaseError;
}
