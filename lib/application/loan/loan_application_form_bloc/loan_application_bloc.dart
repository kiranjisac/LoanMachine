import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:loan_machine/domain/auth/i_auth_facade.dart';
import 'package:loan_machine/domain/core/errors.dart';
import 'package:loan_machine/domain/core/value_object.dart';
import 'package:loan_machine/domain/loan/i_loan_application_repository.dart';
import 'package:loan_machine/domain/loan/loan_application_failure.dart';
import 'package:loan_machine/domain/loan/loan_application_info.dart';
import 'package:loan_machine/domain/loan/value_objects.dart';
import 'package:dartz/dartz.dart';
part 'loan_application_event.dart';
part 'loan_application_state.dart';
part 'loan_application_bloc.freezed.dart';

@injectable
class LoanApplicationBloc
    extends Bloc<LoanApplicationEvent, LoanApplicationState> {
  IAuthFacade iAuthFacade;
  ILoanApplicationRepository iLoanApplicationRepository;

  LoanApplicationBloc(this.iLoanApplicationRepository, this.iAuthFacade)
      : super(LoanApplicationState.initial());

  @override
  Stream<LoanApplicationState> mapEventToState(
    LoanApplicationEvent event,
  ) async* {
    yield* event.map(genderChanged: (e) async* {
      yield state.copyWith(
          gender: Gender(e.rawGender), loanFailureOrSuccessOption: none());
    }, loanApplicationNameChanged: (e) async* {
      yield state.copyWith(
          loanApplicationName: LoanApplicationName(e.rawLoanApplicationName),
          loanFailureOrSuccessOption: none());
    }, marriedStatusChanged: (e) async* {
      yield state.copyWith(
          married: Married(e.rawMarriedStatus),
          loanFailureOrSuccessOption: none());
    }, educationStatusChanged: (e) async* {
      yield state.copyWith(
          education: Education(e.rawEducationStatus),
          loanFailureOrSuccessOption: none());
    }, dependentsChanged: (e) async* {
      yield state.copyWith(
          dependents: Dependents(e.rawDependentsValue),
          loanFailureOrSuccessOption: none());
    }, loanAmountChanged: (e) async* {
      yield state.copyWith(
          loanAmount: LoanAmount(e.rawLoanAmount),
          loanFailureOrSuccessOption: none());
    }, selfEmployedStatusChanged: (e) async* {
      yield state.copyWith(
          selfEmployed: SelfEmployed(e.rawSelfEmployedStatus),
          loanFailureOrSuccessOption: none());
    }, applicantIncomeChanged: (e) async* {
      yield state.copyWith(
          applicantIncome: ApplicantIncome(e.rawApplicantIncome),
          loanFailureOrSuccessOption: none());
    }, coApplicantIncomeChanged: (e) async* {
      yield state.copyWith(
          coApplicantIncome: CoApplicantIncome(e.rawCoApplicantIncome),
          loanFailureOrSuccessOption: none());
    }, loanTermChanged: (e) async* {
      yield state.copyWith(
          loanTerm: LoanTerm(e.rawLoanTerm),
          loanFailureOrSuccessOption: none());
    }, creditHistoryChanged: (e) async* {
      yield state.copyWith(
          creditHistory: CreditHistory(e.rawCreditHistory),
          loanFailureOrSuccessOption: none());
    }, propertyAreaChanged: (e) async* {
      yield state.copyWith(
          propertyArea: PropertyArea(e.rawPropertyArea),
          loanFailureOrSuccessOption: none());
    }, saveData: (e) async* {
      Either<LoanApplicationFailure, Unit> successOrFailure;
      //TODO : Try using shared preference for getting the useruniqueId
      final currUserOption = await iAuthFacade.getSignedInUser();
      final currUser = currUserOption.getOrElse(() => throw UnexpectedError());

      final LoanApplicationInfo loanApplicationInfo = LoanApplicationInfo(
          applicationUniqueId: state.applicationUniqueId,
          appicantUniqueId: currUser.uniqueId,
          loanApplicationName: state.loanApplicationName,
          gender: state.gender,
          selfEmployed: state.selfEmployed,
          married: state.married,
          education: state.education,
          loanAmount: state.loanAmount,
          loanTerm: state.loanTerm,
          dependents: state.dependents,
          creditHistory: state.creditHistory,
          propertyArea: state.propertyArea,
          applicantIncome: state.applicantIncome,
          coApplicantIncome: state.coApplicantIncome);

      if (loanApplicationInfo.failureOption.isNone()) {
        yield state.copyWith(
            isSubmitting: true, loanFailureOrSuccessOption: none());

        successOrFailure = await iLoanApplicationRepository.saveData(
            loanApplicationInfo: loanApplicationInfo);
      }

      yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          loanFailureOrSuccessOption:
              successOrFailure == null ? none() : some(successOrFailure));
    });
  }
}
