import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loan_machine/domain/core/value_failures.dart';
import 'package:loan_machine/domain/core/value_object.dart';
import 'package:loan_machine/domain/loan/value_objects.dart';

part 'loan_application_info.freezed.dart';

@freezed
abstract class LoanApplicationInfo implements _$LoanApplicationInfo {
  const factory LoanApplicationInfo(
      {@required UniqueId applicationUniqueId,
      @required UniqueId appicantUniqueId,
      @required LoanApplicationName loanApplicationName,
      @required Gender gender,
      @required SelfEmployed selfEmployed,
      @required Married married,
      @required Education education,
      @required LoanAmount loanAmount,
      @required LoanTerm loanTerm,
      @required Dependents dependents,
      @required CreditHistory creditHistory,
      @required PropertyArea propertyArea,
      @required ApplicantIncome applicantIncome,
      @required CoApplicantIncome coApplicantIncome,
      String loanStatus}) = _LoanApplicationInfo;

  factory LoanApplicationInfo.empty() => LoanApplicationInfo(
        applicationUniqueId: UniqueId(),
        appicantUniqueId: UniqueId(),
        loanApplicationName: LoanApplicationName(""),
        gender: Gender(""),
        selfEmployed: SelfEmployed(""),
        married: Married(""),
        education: Education(""),
        loanAmount: LoanAmount(""),
        loanTerm: LoanTerm(0),
        dependents: Dependents(-1),
        creditHistory: CreditHistory(""),
        propertyArea: PropertyArea(""),
        applicantIncome: ApplicantIncome(""),
        coApplicantIncome: CoApplicantIncome(""),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return gender.failureorUnit
        .andThen(selfEmployed.failureorUnit)
        .andThen(married.failureorUnit)
        .andThen(education.failureorUnit)
        .andThen(loanAmount.failureorUnit)
        .andThen(loanTerm.failureorUnit)
        .andThen(dependents.failureorUnit)
        .andThen(applicantIncome.failureorUnit)
        .andThen(coApplicantIncome.failureorUnit)
        .andThen(propertyArea.failureorUnit)
        .andThen(creditHistory.failureorUnit)
        .andThen(loanApplicationName.failureorUnit)
        .fold((f) => some(f), (_) => none());
  }

  const LoanApplicationInfo._();
}
