part of 'loan_application_bloc.dart';

@freezed
abstract class LoanApplicationState with _$LoanApplicationState {
  const factory LoanApplicationState({
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required UniqueId applicationUniqueId,
    @required LoanApplicationName loanApplicationName,
    @required Gender gender,
    @required Married married,
    @required Education education,
    @required SelfEmployed selfEmployed,
    @required Dependents dependents,
    @required ApplicantIncome applicantIncome,
    @required CoApplicantIncome coApplicantIncome,
    @required LoanAmount loanAmount,
    @required LoanTerm loanTerm,
    @required CreditHistory creditHistory,
    @required PropertyArea propertyArea,
    @required
        Option<Either<LoanApplicationFailure, Unit>> loanFailureOrSuccessOption,
  }) = _LoanApplicationState;

  factory LoanApplicationState.initial() => LoanApplicationState(
      showErrorMessages: false,
      isSubmitting: false,
      applicationUniqueId: UniqueId(),
      loanApplicationName: LoanApplicationName(""),
      gender: Gender("Male"),
      married: Married("No"),
      education: Education("Graduate"),
      selfEmployed: SelfEmployed("No"),
      dependents: Dependents(0),
      applicantIncome: ApplicantIncome(""),
      coApplicantIncome: CoApplicantIncome(""),
      loanAmount: LoanAmount(""),
      loanTerm: LoanTerm(360),
      creditHistory: CreditHistory("Yes"),
      propertyArea: PropertyArea("Urban"),
      loanFailureOrSuccessOption: none());
}
