import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';
import 'package:loan_machine/infrastructure/database/database_failures.dart';
import 'package:loan_machine/infrastructure/database/local_database_helper.dart';
import 'package:sqflite/sqflite.dart';

@named
@LazySingleton(as: LocalDatabaseHelper)
class AuthLocalDatabaseHelper implements LocalDatabaseHelper {
  final Database db;
  AuthLocalDatabaseHelper(this.db);

  @override
  Future<Either<DatabaseFailures, Map<String, dynamic>>> querySingleData(
      String primaryKeyvalue) async {
    final user = await db.rawQuery(
        'SELECT * FROM ${Constants.tableName} WHERE ${Constants.columnUniqueID}=?',
        [
          primaryKeyvalue
        ]).catchError((e) => left(const DatabaseFailures.unSuccessful()));

    if (user.length == 1) {
      return right(user.first);
    } else {
      return left(const DatabaseFailures.unSuccessful());
    }
  }

  @override
  Future<Either<DatabaseFailures, List<Map<String, dynamic>>>>
      queryAllRows() async {
    final queryData = await db
        .query(Constants.tableName)
        .catchError((e) => left(const DatabaseFailures.unSuccessful()));

    return right(queryData);
  }

  // All of the methods (insert, query, update, delete) can also be done using
  // raw SQL commands. This method uses a raw query to give the row count.
  @override
  Future<Either<DatabaseFailures, int>> queryRowCount() async {
    final result = Sqflite.firstIntValue(await db
        .rawQuery('SELECT COUNT(*) FROM ${Constants.tableName}')
        .catchError((e) => left(const DatabaseFailures.unSuccessful())));

    return right(result);
  }

  @override
  Future<Either<DatabaseFailures, Unit>> insert(
      Map<String, dynamic> row) async {
    //final db = await instance.database;
    await db.insert(Constants.tableName, row).catchError((_) {
      left(const DatabaseFailures.unSuccessful());
    });

    return right(unit);
  }

  @override
  Future<Either<DatabaseFailures, Unit>> delete(String uniqueId) async {
    //final db = await instance.database;
    await db.delete(Constants.tableName,
        where: '${Constants.columnUniqueID} = ?',
        whereArgs: [
          uniqueId
        ]).catchError((e) => const DatabaseFailures.unSuccessful());
    return right(unit);
  }

  @override
  Future<Either<DatabaseFailures, Unit>> update(
      Map<String, dynamic> row, String uniqueId) async {
    // final db = await instance.database;

    await db.update(Constants.tableName, row,
        where: '${Constants.columnUniqueID} = ?',
        whereArgs: [
          uniqueId
        ]).catchError((e) => const DatabaseFailures.unSuccessful());

    return right(unit);
  }

  @override
  Database getdatabase() {
    return db;
  }
}
