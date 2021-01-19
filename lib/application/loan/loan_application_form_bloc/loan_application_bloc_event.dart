part of 'loan_application_bloc_bloc.dart';

@freezed
abstract class LoanApplicationBlocEvent with _$LoanApplicationBlocEvent {
  const factory LoanApplicationBlocEvent.genderChanged(String rawGender) =
      _GenderChanged;

  const factory LoanApplicationBlocEvent.loanApplicationNameChanged(
      String rawLoanApplicationName) = _LoanApplicationNameChanged;

  const factory LoanApplicationBlocEvent.marriedStatusChanged(
      String rawMarriedStatus) = _MarriedStatusChanged;
  const factory LoanApplicationBlocEvent.educationStatusChanged(
      String rawEducationStatus) = _EducationStatusChanged;
  const factory LoanApplicationBlocEvent.dependentsChanged(
      int rawDependentsValue) = _DependentsChanged;

  const factory LoanApplicationBlocEvent.loanAmountChanged(
      String rawLoanAmount) = _LoanAmountChanged;
  const factory LoanApplicationBlocEvent.selfEmployedStatusChanged(
      String rawSelfEmployedStatus) = _SelfEmployedStatusChanged;
  const factory LoanApplicationBlocEvent.applicantIncomeChanged(
      String rawApplicantIncome) = _ApplicantIncomeChanged;
  const factory LoanApplicationBlocEvent.coApplicantIncomeChanged(
      String rawCoApplicantIncome) = _CoApplicantIncomeChanged;
  const factory LoanApplicationBlocEvent.loanTermChanged(int rawLoanTerm) =
      _LoanTerChanged;
  const factory LoanApplicationBlocEvent.creditHistoryChanged(
      String rawCreditHistory) = _CreditHistorychanged;

  const factory LoanApplicationBlocEvent.propertyAreaChanged(
      String rawPropertyArea) = _PropertyAreaChanged;

  const factory LoanApplicationBlocEvent.saveData() = _SaveData;
}
