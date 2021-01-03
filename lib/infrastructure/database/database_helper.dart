import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';
import 'package:loan_machine/infrastructure/database/database_failures.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';

abstract class DatabaseHelper {
  Future<Either<DatabaseFailures, Unit>> insert(Map<String, dynamic> row);
  Future<Either<DatabaseFailures, Unit>> update(
      Map<String, dynamic> row, String uniqueId);
  Future<Either<DatabaseFailures, Unit>> delete(String uniqueId);
}

class AuthDatabaseHelper implements DatabaseHelper {
  AuthDatabaseHelper._private();

  final AuthDatabaseHelper instance = AuthDatabaseHelper._private();

  Database _database;

  final String _tableName = "users";
  // final String _columnID = "id";
  final String _columnUniqueID = "uniqueId";
  final String _columnEmailID = "emailAddress";
  final String _columnPassword = "password";

  Future<Database> get database async {
    if (_database != null) {
      return _database;
    } else {
      return _database = await _initDatabase();
    }
  }

  Future<Database> _initDatabase() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, Constants.databaseName);
    return openDatabase(path,
        version: Constants.databaseVersion, onCreate: _onCreate);
  }

  FutureOr<void> _onCreate(Database db, int version) async {
    await db.execute('''
        CREATE TABLE $_tableName(
         $_columnUniqueID TEXT PRIMARY KEY ,
          $_columnEmailID TEXT NOT NULL,
          $_columnPassword TEXT NOT NULL) 
           ''');
  }

  @override
  Future<Either<DatabaseFailures, Unit>> insert(
      Map<String, dynamic> row) async {
    final db = await instance.database;
    await db.insert(_tableName, row);
    return right(unit);
  }

  @override
  Future<Either<DatabaseFailures, Unit>> delete(String uniqueId) async {
    final db = await instance.database;
    await db.delete(_tableName,
        where: '$_columnUniqueID = ?', whereArgs: [uniqueId]);
    return right(unit);
  }

  @override
  Future<Either<DatabaseFailures, Unit>> update(
      Map<String, dynamic> row, String uniqueId) async {
    final db = await instance.database;

    await db.update(_tableName, row,
        where: '$_columnUniqueID = ?', whereArgs: [uniqueId]);

    return right(unit);
  }
}
