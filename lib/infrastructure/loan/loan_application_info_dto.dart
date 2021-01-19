import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loan_machine/domain/core/value_object.dart';
import 'package:loan_machine/domain/loan/loan_application_info.dart';
import 'package:loan_machine/domain/loan/value_objects.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';

part 'loan_application_info_dto.freezed.dart';

@freezed
abstract class LoanApplicationInfoDto implements _$LoanApplicationInfoDto {
  const factory LoanApplicationInfoDto({
    String applicationUniqueId,
    String loanApplicantionName,
    String applicantUniqueId,
    String gender,
    String married,
    String selfEmployed,
    String education,
    String propertyArea,
    String creditHistory,
    int dependents,
    int loanTerm,
    double applicantIncome,
    double coApplicantIncome,
    double loanAmount,
  }) = _LoanApplicationInfoDto;

  factory LoanApplicationInfoDto.fromDomain(LoanApplicationInfo laInfo) {
    return LoanApplicationInfoDto(
        loanApplicantionName: laInfo.loanApplicationName.getOrCrash(),
        applicationUniqueId: laInfo.applicationUniqueId.getOrCrash(),
        applicantUniqueId: laInfo.appicantUniqueId.getOrCrash(),
        gender: laInfo.gender.getOrCrash(),
        married: laInfo.married.getOrCrash(),
        education: laInfo.education.getOrCrash(),
        selfEmployed: laInfo.selfEmployed.getOrCrash(),
        dependents: laInfo.dependents.getOrCrash(),
        loanAmount: laInfo.loanAmount.getOrCrash(),
        loanTerm: laInfo.loanTerm.getOrCrash(),
        applicantIncome: laInfo.applicantIncome.getOrCrash(),
        coApplicantIncome: laInfo.coApplicantIncome.getOrCrash(),
        propertyArea: laInfo.propertyArea.getOrCrash(),
        creditHistory: laInfo.creditHistory.getOrCrash());
  }

  LoanApplicationInfo toDomain() {
    return LoanApplicationInfo(
        applicationUniqueId: UniqueId.fromUniqueString(applicationUniqueId),
        appicantUniqueId: UniqueId.fromUniqueString(applicantUniqueId),
        loanApplicationName: LoanApplicationName(loanApplicantionName),
        gender: Gender(gender),
        selfEmployed: SelfEmployed(selfEmployed),
        married: Married(married),
        education: Education(education),
        loanAmount: LoanAmount(loanAmount.toString()),
        loanTerm: LoanTerm(loanTerm),
        dependents: Dependents(dependents),
        creditHistory: CreditHistory(creditHistory),
        propertyArea: PropertyArea(propertyArea),
        applicantIncome: ApplicantIncome(applicantIncome.toString()),
        coApplicantIncome: CoApplicantIncome(coApplicantIncome.toString()));
  }

  factory LoanApplicationInfoDto.fromMap(Map<String, String> laInfoMap) {
    return LoanApplicationInfoDto(
        applicationUniqueId: laInfoMap[Constants.loanColumnApplicationUniqueId],
        applicantUniqueId: laInfoMap[Constants.loanColumnApplicantUniqueId],
        loanApplicantionName: laInfoMap[Constants.loanColumnApplicationName],
        gender: laInfoMap[Constants.loanColumnGender],
        selfEmployed: laInfoMap[Constants.loanColumnSelfEmployed],
        married: laInfoMap[Constants.loanColumnMarried],
        education: laInfoMap[Constants.loanColumnEducation],
        loanAmount: double.parse(laInfoMap[Constants.loanColumnAmount]),
        loanTerm: int.parse(laInfoMap[Constants.loanColumnTerm]),
        dependents: int.parse(laInfoMap[Constants.loanColumnDependents]),
        creditHistory: laInfoMap[Constants.loanColumnCreditHistory],
        propertyArea: laInfoMap[Constants.loanColumnPropertyArea],
        applicantIncome:
            double.parse(laInfoMap[Constants.loanColumnApplicantIncome]),
        coApplicantIncome:
            double.parse(laInfoMap[Constants.loanColumnCoApplicantIncome]));
  }

  Map<String, String> toMap() => <String, String>{
        Constants.loanColumnApplicationUniqueId: applicationUniqueId,
        Constants.loanColumnApplicantUniqueId: applicantUniqueId,
        Constants.loanColumnApplicationName: loanApplicantionName,
        Constants.loanColumnGender: gender,
        Constants.loanColumnMarried: married,
        Constants.loanColumnEducation: education,
        Constants.loanColumnSelfEmployed: selfEmployed,
        Constants.loanColumnDependents: dependents.toString(),
        Constants.loanColumnApplicantIncome: applicantIncome.toString(),
        Constants.loanColumnCoApplicantIncome: coApplicantIncome.toString(),
        Constants.loanColumnAmount: loanAmount.toString(),
        Constants.loanColumnTerm: loanTerm.toString(),
        Constants.loanColumnPropertyArea: propertyArea,
        Constants.loanColumnCreditHistory: creditHistory
      };
  const LoanApplicationInfoDto._();
}
