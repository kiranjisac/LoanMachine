import 'package:freezed_annotation/freezed_annotation.dart';

part 'database_failures.freezed.dart';

@freezed
abstract class DatabaseFailures with _$DatabaseFailures {
  const factory DatabaseFailures.unSuccessful() = _UnSuccessful;
}
