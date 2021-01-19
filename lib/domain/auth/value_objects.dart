import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:loan_machine/domain/core/value_failures.dart';
import 'package:loan_machine/domain/core/value_object.dart';
import 'package:loan_machine/domain/core/value_validators.dart';

@immutable
class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input: input));
  }

  const EmailAddress._(this.value);
}

@immutable
class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(validatePassword(input: input));
  }

  factory Password.encrypted(String input) {
    assert(input != null);
    return Password._(validatePasswordandEncrypt(input: input));
  }

  const Password._(this.value);
}

@immutable
class UserName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UserName(String input) {
    assert(input != null);
    return UserName._(validateUserName(input: input));
  }

  const UserName._(this.value);
}
