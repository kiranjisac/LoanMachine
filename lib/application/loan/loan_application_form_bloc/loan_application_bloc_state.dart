part of 'loan_application_bloc_bloc.dart';

@freezed
abstract class LoanApplicationBlocState with _$LoanApplicationBlocState {
  const factory LoanApplicationBlocState({
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
  }) = _LoanApplicationBlocState;

  factory LoanApplicationBlocState.initial() => LoanApplicationBlocState(
      showErrorMessages: false,
      isSubmitting: false,
      applicationUniqueId: UniqueId(),
      loanApplicationName: LoanApplicationName(""),
      gender: Gender(" "),
      married: Married(""),
      education: Education(""),
      selfEmployed: SelfEmployed(""),
      dependents: Dependents(0),
      applicantIncome: ApplicantIncome(""),
      coApplicantIncome: CoApplicantIncome(""),
      loanAmount: LoanAmount(""),
      loanTerm: LoanTerm(0),
      creditHistory: CreditHistory(""),
      propertyArea: PropertyArea(""),
      loanFailureOrSuccessOption: none());
}
