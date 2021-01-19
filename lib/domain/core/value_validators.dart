import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:loan_machine/domain/core/value_failures.dart';
import 'package:loan_machine/infrastructure/core/encrypter.dart';

Either<ValueFailure<String>, String> validateUserName(
    {@required String input}) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.auth(
        AuthValueFailure.emptyCredential(invalidValue: input)));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(
    {@required String input}) {
  const emailRegx =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (RegExp(emailRegx).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.auth(
        AuthValueFailure.invalidEmailID(invalidValue: input)));
  }
}

Either<ValueFailure<String>, String> validatePassword(
    {@required String input}) {
  if (input.length >= 8) {
    return right(input);
  } else {
    return left(ValueFailure.auth(
        AuthValueFailure.invalidPassword(invalidValue: input)));
  }
}

Either<ValueFailure<String>, String> validatePasswordandEncrypt(
    {@required String input}) {
  if (input.length >= 8) {
    return right(encrpyt(input));
  } else {
    return left(ValueFailure.auth(
        AuthValueFailure.invalidPassword(invalidValue: input)));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(
    {@required String input}) {
  if (input.isNotEmpty) {
    return right(input);
  }
  return left(
      ValueFailure.loan(LoanValueFailures.stringEmpty(invalidValue: input)));
}

Either<ValueFailure<double>, double> validateIntegerFromString(
    {@required String input}) {
  final value = double.tryParse(input);
  if (value == null) {
    return left(ValueFailure.loan(
        LoanValueFailures.invalidIntegerValue(invalidValue: value)));
  } else if (value <= 0) {
    return left(
        const ValueFailure.loan(LoanValueFailures.integerNotPositive()));
  } else {
    return right(value);
  }
}

Either<ValueFailure<int>, int> validateLoanTerm({@required int input}) {
  const loanTerms = [60, 120, 180, 240, 300, 360, 480];

  if (loanTerms.contains(input)) {
    return right(input);
  } else {
    return left(ValueFailure.loan(
        LoanValueFailures.invalidLoanTerm(invalidValue: input)));
  }
}
