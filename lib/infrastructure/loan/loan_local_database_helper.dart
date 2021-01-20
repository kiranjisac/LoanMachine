import 'package:injectable/injectable.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';
import 'package:loan_machine/infrastructure/core/keys.dart';
import 'package:loan_machine/infrastructure/database/database_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:loan_machine/infrastructure/database/local_database_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

@named
@LazySingleton(as: LocalDatabaseHelper)
class LoanLocalDatabaseHelper implements LocalDatabaseHelper {
  final Database db;
  SharedPreferences sharedPreferences;
  LoanLocalDatabaseHelper(this.db, this.sharedPreferences);

  @override
  Future<Either<DatabaseFailures, Unit>> delete(String uniqueId) async {
    await db.delete(Constants.loanTableName,
        where: '${Constants.loanColumnApplicationUniqueId} = ?',
        whereArgs: [
          uniqueId
        ]).catchError((e) => const DatabaseFailures.unSuccessful());
    return right(unit);
  }

  @override
  Database getdatabase() {
    return db;
  }

  @override
  Future<Either<DatabaseFailures, Unit>> insert(
      Map<String, dynamic> row) async {
    await db.insert(Constants.loanTableName, row).catchError((_) {
      return left(const DatabaseFailures.unSuccessful());
    });

    return right(unit);
  }

  @override
  Future<Either<DatabaseFailures, List<Map<String, dynamic>>>>
      queryAllRows() async {
    final applicantUniqueId = sharedPreferences.getString(AUTOLOGIN_KEY);

    final queryData = await db.query(Constants.loanTableName,
        where: "${Constants.loanColumnApplicantUniqueId} = ?",
        whereArgs: [
          applicantUniqueId
        ]).catchError((e) => left(const DatabaseFailures.unSuccessful()));

    return right(queryData);
  }

  @override
  Future<Either<DatabaseFailures, int>> queryRowCount() async {
    final applicantUniqueId = sharedPreferences.getString(AUTOLOGIN_KEY);
    final result = Sqflite.firstIntValue(await db.rawQuery(
        'SELECT COUNT(*) FROM ${Constants.loanTableName} WHERE ${Constants.loanColumnApplicantUniqueId}=?',
        [
          applicantUniqueId
        ]).catchError((e) => left(const DatabaseFailures.unSuccessful())));

    return right(result);
  }

  @override
  Future<Either<DatabaseFailures, Map<String, dynamic>>> querySingleData(
      String primaryKeyvalue) async {
    final loanApplicationInfo = await db.rawQuery(
        'SELECT * FROM ${Constants.loanTableName} WHERE ${Constants.loanColumnApplicationUniqueId}=?',
        [
          primaryKeyvalue
        ]).catchError((e) => left(const DatabaseFailures.unSuccessful()));

    if (loanApplicationInfo.length == 1) {
      return right(loanApplicationInfo.first);
    } else {
      return left(const DatabaseFailures.unSuccessful());
    }
  }

  @override
  Future<Either<DatabaseFailures, Unit>> update(
      Map<String, dynamic> row, String uniqueId) async {
    await db.update(Constants.loanTableName, row,
        where: '${Constants.loanColumnApplicationUniqueId} = ?',
        whereArgs: [
          uniqueId
        ]).catchError((e) => const DatabaseFailures.unSuccessful());

    return right(unit);
  }
}
