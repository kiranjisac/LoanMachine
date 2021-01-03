import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.auth(AuthValueFailure authValueFailure) = _Auth<T>;
}

@freezed
abstract class AuthValueFailure<T> with _$AuthValueFailure<T> {
  const factory AuthValueFailure.invalidEmailID({@required T invalidValue}) =
      _InvalidEmailID<T>;
  const factory AuthValueFailure.invalidPassword({@required T invalidValue}) =
      _InvalidPassword<T>;
}
