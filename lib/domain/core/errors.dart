import 'package:loan_machine/domain/core/value_failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        "Unexpected value error , for your safety terminating ...";
    return Error.safeToString("$explanation valueError : $valueFailure ");
  }
}

class UnexpectedError extends Error {}
