part of 'loan_application_bloc.dart';

@freezed
abstract class LoanApplicationState with _$LoanApplicationState {
  const factory LoanApplicationState({
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required bool isEditing,
    @required LoanApplicationInfo loanApplicationInfo,
    @required
        Option<Either<LoanApplicationFailure, Unit>> loanFailureOrSuccessOption,
  }) = _LoanApplicationState;

  factory LoanApplicationState.initial() => LoanApplicationState(
      showErrorMessages: false,
      isSubmitting: false,
      isEditing: false,
      loanApplicationInfo: LoanApplicationInfo.empty().copyWith(
        gender: Gender("Male"),
        married: Married("No"),
        selfEmployed: SelfEmployed("No"),
        creditHistory: CreditHistory("Yes"),
      ),
      loanFailureOrSuccessOption: none());
}
