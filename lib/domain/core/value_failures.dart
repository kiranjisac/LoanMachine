import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.auth(AuthValueFailure authValueFailure) = _Auth<T>;
  const factory ValueFailure.loan(LoanValueFailures loanValueFailures) =
      _Loan<T>;
}

@freezed
abstract class AuthValueFailure<T> with _$AuthValueFailure<T> {
  const factory AuthValueFailure.invalidEmailID({@required T invalidValue}) =
      _InvalidEmailID<T>;
  const factory AuthValueFailure.invalidPassword({@required T invalidValue}) =
      _InvalidPassword<T>;
  const factory AuthValueFailure.emptyCredential({@required T invalidValue}) =
      _EmptyCredential<T>;
}

@freezed
abstract class LoanValueFailures<T> with _$LoanValueFailures<T> {
  const factory LoanValueFailures.invalidGender({@required T invalidValue}) =
      _InvalidGender<T>;
  const factory LoanValueFailures.invalidMarriedStatus(
      {@required T invalidValue}) = _InvalidMarriedStatus<T>;
  const factory LoanValueFailures.stringEmpty({@required T invalidValue}) =
      _StringEmpty<T>;
  const factory LoanValueFailures.invalidEducationStatus(
      {@required T invalidValue}) = _InvalidEducationStatus<T>;
  const factory LoanValueFailures.invalidSelfEmployedStatus(
      {@required T invalidValue}) = _InvalidSelfEmployedStatus<T>;
  const factory LoanValueFailures.invalidPropertyArea(
      {@required T invalidValue}) = _InvalidPropertyArea<T>;
  const factory LoanValueFailures.invalidApplicantIncome(
      {@required T invalidValue}) = _InvalidApplicantIncome<T>;
  const factory LoanValueFailures.invalidCoApplicantIncome(
      {@required T invalidValue}) = _InvalidCoApplicantIncome<T>;
  const factory LoanValueFailures.invalidLoanAmount(
      {@required T invalidValue}) = _InvalidLoanAmount<T>;
  const factory LoanValueFailures.invalidLoanTerm({@required T invalidValue}) =
      _InvalidLoanTerm<T>;
  const factory LoanValueFailures.invalidDependentsNo() =
      _InvalidDependentsNo<T>;
  const factory LoanValueFailures.integerNotPositive() =
      _IntergerNotPositive<T>;
  const factory LoanValueFailures.invalidIntegerValue(
      {@required T invalidValue}) = _InvalidIntegerValue<T>;
  const factory LoanValueFailures.invalidCreditHistory(
      {@required T invalidValue}) = _InvalidCreditHistory<T>;
}
