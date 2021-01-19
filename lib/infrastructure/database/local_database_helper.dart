import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:loan_machine/infrastructure/database/database_failures.dart';
import 'package:sqflite/sqflite.dart';

abstract class LocalDatabaseHelper {
  Database getdatabase();
  Future<Either<DatabaseFailures, Map<String, dynamic>>> querySingleData(
      String primaryKeyvalue);

  Future<Either<DatabaseFailures, int>> queryRowCount();
  Future<Either<DatabaseFailures, List<Map<String, dynamic>>>> queryAllRows();
  Future<Either<DatabaseFailures, Unit>> insert(Map<String, dynamic> row);
  Future<Either<DatabaseFailures, Unit>> update(
      Map<String, dynamic> row, String uniqueId);
  Future<Either<DatabaseFailures, Unit>> delete(String uniqueId);
}
