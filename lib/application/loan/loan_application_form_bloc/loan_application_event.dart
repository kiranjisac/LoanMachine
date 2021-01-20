part of 'loan_application_bloc.dart';

@freezed
abstract class LoanApplicationEvent with _$LoanApplicationEvent {
  const factory LoanApplicationEvent.genderChanged(String rawGender) =
      _GenderChanged;

  const factory LoanApplicationEvent.loanApplicationNameChanged(
      String rawLoanApplicationName) = _LoanApplicationNameChanged;

  const factory LoanApplicationEvent.marriedStatusChanged(
      String rawMarriedStatus) = _MarriedStatusChanged;
  const factory LoanApplicationEvent.educationStatusChanged(
      String rawEducationStatus) = _EducationStatusChanged;
  const factory LoanApplicationEvent.dependentsChanged(int rawDependentsValue) =
      _DependentsChanged;

  const factory LoanApplicationEvent.loanAmountChanged(String rawLoanAmount) =
      _LoanAmountChanged;
  const factory LoanApplicationEvent.selfEmployedStatusChanged(
      String rawSelfEmployedStatus) = _SelfEmployedStatusChanged;
  const factory LoanApplicationEvent.applicantIncomeChanged(
      String rawApplicantIncome) = _ApplicantIncomeChanged;
  const factory LoanApplicationEvent.coApplicantIncomeChanged(
      String rawCoApplicantIncome) = _CoApplicantIncomeChanged;
  const factory LoanApplicationEvent.loanTermChanged(int rawLoanTerm) =
      _LoanTerChanged;
  const factory LoanApplicationEvent.creditHistoryChanged(
      String rawCreditHistory) = _CreditHistorychanged;

  const factory LoanApplicationEvent.propertyAreaChanged(
      String rawPropertyArea) = _PropertyAreaChanged;

  const factory LoanApplicationEvent.saveData() = _SaveData;
}
