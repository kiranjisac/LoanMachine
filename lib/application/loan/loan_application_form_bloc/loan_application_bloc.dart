import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:loan_machine/domain/auth/i_auth_facade.dart';
import 'package:loan_machine/domain/core/errors.dart';
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
    yield* event.map(
      initialised: (e) async* {
        yield e.initialLaInfoOption.fold(() => state,
            (la) => state.copyWith(isEditing: true, loanApplicationInfo: la));
      },
      genderChanged: (e) async* {
        yield state.copyWith(
            loanApplicationInfo:
                state.loanApplicationInfo.copyWith(gender: Gender(e.rawGender)),
            loanFailureOrSuccessOption: none());
      },
      loanApplicationNameChanged: (e) async* {
        yield state.copyWith(
            loanApplicationInfo: state.loanApplicationInfo.copyWith(
                loanApplicationName:
                    LoanApplicationName(e.rawLoanApplicationName)),
            loanFailureOrSuccessOption: none());
      },
      marriedStatusChanged: (e) async* {
        yield state.copyWith(
            loanApplicationInfo: state.loanApplicationInfo
                .copyWith(married: Married(e.rawMarriedStatus)),
            loanFailureOrSuccessOption: none());
      },
      educationStatusChanged: (e) async* {
        yield state.copyWith(
            loanApplicationInfo: state.loanApplicationInfo
                .copyWith(education: Education(e.rawEducationStatus)),
            loanFailureOrSuccessOption: none());
      },
      dependentsChanged: (e) async* {
        yield state.copyWith(
            loanApplicationInfo: state.loanApplicationInfo
                .copyWith(dependents: Dependents(e.rawDependentsValue)),
            loanFailureOrSuccessOption: none());
      },
      loanAmountChanged: (e) async* {
        yield state.copyWith(
            loanApplicationInfo: state.loanApplicationInfo
                .copyWith(loanAmount: LoanAmount(e.rawLoanAmount)),
            loanFailureOrSuccessOption: none());
      },
      selfEmployedStatusChanged: (e) async* {
        yield state.copyWith(
            loanApplicationInfo: state.loanApplicationInfo
                .copyWith(selfEmployed: SelfEmployed(e.rawSelfEmployedStatus)),
            loanFailureOrSuccessOption: none());
      },
      applicantIncomeChanged: (e) async* {
        yield state.copyWith(
            loanApplicationInfo: state.loanApplicationInfo.copyWith(
                applicantIncome: ApplicantIncome(e.rawApplicantIncome)),
            loanFailureOrSuccessOption: none());
      },
      coApplicantIncomeChanged: (e) async* {
        yield state.copyWith(
            loanApplicationInfo: state.loanApplicationInfo.copyWith(
                coApplicantIncome: CoApplicantIncome(e.rawCoApplicantIncome)),
            loanFailureOrSuccessOption: none());
      },
      loanTermChanged: (e) async* {
        yield state.copyWith(
            loanApplicationInfo: state.loanApplicationInfo
                .copyWith(loanTerm: LoanTerm(e.rawLoanTerm)),
            loanFailureOrSuccessOption: none());
      },
      creditHistoryChanged: (e) async* {
        yield state.copyWith(
            loanApplicationInfo: state.loanApplicationInfo
                .copyWith(creditHistory: CreditHistory(e.rawCreditHistory)),
            loanFailureOrSuccessOption: none());
      },
      propertyAreaChanged: (e) async* {
        yield state.copyWith(
            loanApplicationInfo: state.loanApplicationInfo
                .copyWith(propertyArea: PropertyArea(e.rawPropertyArea)),
            loanFailureOrSuccessOption: none());
      },
      saveData: (e) async* {
        Either<LoanApplicationFailure, Unit> successOrFailure;
        //TODO : Try using shared preference for getting the useruniqueId
        final currUserOption = await iAuthFacade.getSignedInUser();
        final currUser =
            currUserOption.getOrElse(() => throw UnexpectedError());

        final LoanApplicationInfo loanApplicationInfo =
            state.loanApplicationInfo.copyWith(
          appicantUniqueId: currUser.uniqueId,
        );
        if (loanApplicationInfo.failureOption.isNone()) {
          yield state.copyWith(
              isSubmitting: true, loanFailureOrSuccessOption: none());

          successOrFailure = state.isEditing
              ? await iLoanApplicationRepository.updateData(
                  loanApplicationInfo: loanApplicationInfo)
              : await iLoanApplicationRepository.saveData(
                  loanApplicationInfo: loanApplicationInfo);
        }

        yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            loanFailureOrSuccessOption:
                successOrFailure == null ? none() : some(successOrFailure));
      },
    );
  }
}
