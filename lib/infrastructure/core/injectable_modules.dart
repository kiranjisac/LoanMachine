import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
  @preResolve
  Future<Database> get db async {
    FutureOr<void> _onCreate(Database db, int version) async {
      await db.execute('''
        CREATE TABLE ${Constants.tableName}(
         ${Constants.columnUniqueID} TEXT PRIMARY KEY ,
         ${Constants.columnEmailID} TEXT NOT NULL,
         ${Constants.columnUserName} TEXT NOT NULL,
         ${Constants.columnPassword} TEXT NOT NULL)
           ''');

      await db.execute('''
        CREATE TABLE ${Constants.loanTableName}(
         ${Constants.loanColumnApplicationUniqueId} TEXT PRIMARY KEY ,
         ${Constants.loanColumnApplicantUniqueId} TEXT NOT NULL,
         ${Constants.loanColumnApplicationName} TEXT NOT NULL,
         ${Constants.loanColumnGender} TEXT NOT NULL,
         ${Constants.loanColumnMarried} TEXT NOT NULL,
         ${Constants.loanColumnEducation} TEXT NOT NULL,
         ${Constants.loanColumnSelfEmployed} TEXT NOT NULL,
         ${Constants.loanColumnDependents} TEXT NOT NULL,
         ${Constants.loanColumnApplicantIncome} TEXT NOT NULL,
         ${Constants.loanColumnCoApplicantIncome} TEXT NOT NULL,
         ${Constants.loanColumnTerm} TEXT NOT NULL,
         ${Constants.loanColumnAmount} TEXT NOT NULL,
         ${Constants.loanColumnCreditHistory} TEXT NOT NULL,
         ${Constants.loanColumnPropertyArea} TEXT NOT NULL,
         ${Constants.loanColumnLoanStatus} TEXT)
           ''');
    }

    Future<Database> _initDatabase() async {
      final databasesPath = await getDatabasesPath();
      final path = join(databasesPath, Constants.databaseName);
      return openDatabase(path,
          version: Constants.databaseVersion, onCreate: _onCreate);
    }

    return _initDatabase();
  }
}
