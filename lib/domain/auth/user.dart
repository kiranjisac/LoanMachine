import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loan_machine/domain/auth/value_objects.dart';
import 'package:loan_machine/domain/core/value_failures.dart';
import 'package:loan_machine/domain/core/value_object.dart';

part 'user.freezed.dart';

@freezed
abstract class User implements _$User {
  const factory User(
      {@required UniqueId uniqueId,
      @required UserName userName,
      @required EmailAddress emailAddress,
      @required Password password}) = _User;
  factory User.empty() => User(
      uniqueId: UniqueId(),
      userName: UserName(""),
      emailAddress: EmailAddress(""),
      password: Password(""));
  const User._();
  Option<ValueFailure<dynamic>> get failureOption {
    // uniqueid is automatically generated  and therefore no chance for valuefailure.
    return emailAddress.failureorUnit
        .andThen(password.failureorUnit)
        .fold((f) => some(f), (_) => none());
  }
}
