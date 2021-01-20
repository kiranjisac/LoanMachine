import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:loan_machine/domain/core/value_failures.dart';
import 'package:loan_machine/domain/core/value_object.dart';
import 'package:loan_machine/domain/core/value_validators.dart';

@immutable
class LoanApplicationName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory LoanApplicationName(String input) {
    assert(input != null);

    return LoanApplicationName._(validateStringNotEmpty(input: input));
  }

  const LoanApplicationName._(this.value);
}

@immutable
class Gender extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Gender(String input) {
    assert(input != null);

    if (input == "Female" || input == "Male") {
      return Gender._(right(input));
    } else {
      return Gender._(left(ValueFailure.loan(
          LoanValueFailures.invalidGender(invalidValue: input))));
    }
  }

  const Gender._(this.value);
}

@immutable
class Married extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Married(String input) {
    assert(input != null);

    if (input == "Yes" || input == "No") {
      return Married._(right(input));
    } else {
      return Married._(left(ValueFailure.loan(
          LoanValueFailures.invalidMarriedStatus(invalidValue: input))));
    }
  }

  const Married._(this.value);
}

@immutable
class Education extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Education(String input) {
    assert(input != null);

    if (input == "Graduate" || input == "Not Graduate") {
      return Education._(right(input));
    } else {
      return Education._(left(ValueFailure.loan(
          LoanValueFailures.invalidEducationStatus(invalidValue: input))));
    }
  }

  const Education._(this.value);
}

@immutable
class SelfEmployed extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory SelfEmployed(String input) {
    assert(input != null);

    if (input == "Yes" || input == "No") {
      return SelfEmployed._(right(input));
    } else {
      return SelfEmployed._(left(ValueFailure.loan(
          LoanValueFailures.invalidSelfEmployedStatus(invalidValue: input))));
    }
  }

  const SelfEmployed._(this.value);
}

@immutable
class Dependents extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory Dependents(int input) {
    assert(input != null);

    const possibleOptions = [0, 1, 2, 3];

    if (possibleOptions.contains(input)) {
      return Dependents._(right(input));
    } else {
      return Dependents._(left(ValueFailure.loan(
          LoanValueFailures.invalidDependentsNo(invalidValue: input))));
    }
  }

  const Dependents._(this.value);
}

@immutable
class ApplicantIncome extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory ApplicantIncome(String input) {
    assert(input != null);
    return ApplicantIncome._(validateIntegerFromString(input: input));
  }

  const ApplicantIncome._(this.value);
}

@immutable
class CoApplicantIncome extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory CoApplicantIncome(String input) {
    assert(input != null);

    return CoApplicantIncome._(validateIntegerFromString(input: input));
  }

  const CoApplicantIncome._(this.value);
}

@immutable
class LoanAmount extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory LoanAmount(String input) {
    assert(input != null);
    return LoanAmount._(validateIntegerFromString(input: input));
  }

  const LoanAmount._(this.value);
}

@immutable
class LoanTerm extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory LoanTerm(int input) {
    assert(input != null);

    return LoanTerm._(validateLoanTerm(input: input));
  }

  const LoanTerm._(this.value);
}

@immutable
class CreditHistory extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory CreditHistory(String input) {
    assert(input != null);

    if (input == "Yes" || input == "No") {
      return CreditHistory._(right(input));
    } else {
      return CreditHistory._(left(ValueFailure.loan(
          LoanValueFailures.invalidCreditHistory(invalidValue: input))));
    }
  }

  const CreditHistory._(this.value);
}

@immutable
class PropertyArea extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PropertyArea(String input) {
    assert(input != null);

    if (input == "Urban" || input == "Rural" || input == "Semiurban") {
      return PropertyArea._(right(input));
    } else {
      return PropertyArea._(left(ValueFailure.loan(
          LoanValueFailures.invalidPropertyArea(invalidValue: input))));
    }
  }

  const PropertyArea._(this.value);
}
