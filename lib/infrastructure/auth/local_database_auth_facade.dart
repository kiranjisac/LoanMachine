import 'package:injectable/injectable.dart';
import 'package:loan_machine/domain/auth/auth_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:loan_machine/domain/auth/i_auth_facade.dart';
import 'package:loan_machine/domain/auth/value_objects.dart';
import 'package:loan_machine/domain/auth/user.dart';
import 'package:loan_machine/domain/core/value_object.dart';
import 'package:loan_machine/infrastructure/auth/auth_local_database_helper.dart';
import 'package:loan_machine/infrastructure/auth/user_dto.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';
import 'package:loan_machine/infrastructure/core/encrypter.dart';
import 'package:loan_machine/infrastructure/core/keys.dart';
import 'package:loan_machine/infrastructure/database/local_database_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IAuthFacade)
class LocalDatabaseAuthFacade implements IAuthFacade {
  SharedPreferences sharedPreferenceInstance;
  LocalDatabaseHelper databaseHelper;
  LocalDatabaseAuthFacade(
      @Named.from(AuthLocalDatabaseHelper) this.databaseHelper,
      this.sharedPreferenceInstance);

  @override
  Future<Option<User>> getSignedInUser() async {
    final _currentUserID = sharedPreferenceInstance.getString(AUTOLOGIN_KEY);

    if (_currentUserID == null) {
      return none();
    } else {
      UserDto userDto;
      final userMapOrFailure =
          await databaseHelper.querySingleData(_currentUserID);
      userMapOrFailure.fold((_) => none(),
          (r) => {userDto = UserDto.fromMap(r.cast<String, String>())});
      return some(userDto.toDomain());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {UserName userName, EmailAddress emailAddress, Password password}) async {
    final emailStr = emailAddress.getOrCrash();

    final result = await databaseHelper
        .getdatabase()
        .rawQuery(
            "SELECT * FROM ${Constants.tableName} WHERE ${Constants.columnEmailID} = '$emailStr' ")
        .catchError((_) => left(const AuthFailure.unableToRegister()));
    if (result.length == 1) {
      /// checking whether email Id already taken or not
      return left(const AuthFailure.emailIDAlreadyTaken());
    } else {
      // if Email Id not taken
      final userDto = UserDto.fromDomain(User(
          uniqueId: UniqueId(),
          userName: userName,
          emailAddress: emailAddress,
          password: password));
      final failureOrSuccess = await databaseHelper.insert(userDto.toMap());
      return failureOrSuccess.fold((f) {
        return f.map(
            unSuccessful: (_) => left(const AuthFailure.unableToRegister()));
      }, (_) {
        sharedPreferenceInstance.setString(AUTOLOGIN_KEY, userDto.uniqueId);
        return right(unit);
      });
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {EmailAddress emailAddress, Password password}) async {
    final emailStr = emailAddress.getOrCrash();
    final passwordStr = encrpyt(password.getOrCrash());

    final result = await databaseHelper
        .getdatabase()
        .rawQuery(
            "SELECT * FROM ${Constants.tableName} WHERE ${Constants.columnEmailID} = '$emailStr' and password = '$passwordStr'")
        .catchError((_) => left(const AuthFailure.unableToSignIn()));
    if (result.length == 1) {
      final userDto = UserDto.fromMap(result.first.cast<String, String>());
      await sharedPreferenceInstance.setString(AUTOLOGIN_KEY, userDto.uniqueId);
      return right(unit);
    } else {
      return left(const AuthFailure.invalidPasswordEmailCombination());
    }
  }

  @override
  Future<void> signOut() async {
    await sharedPreferenceInstance.setString(AUTOLOGIN_KEY, null);
  }

  @override
  Future<Either<AuthFailure, Unit>> forgotPassword(
      {EmailAddress emailAddress, Password password}) async {
    final emailStr = emailAddress.getOrCrash();

    final result = await databaseHelper
        .getdatabase()
        .rawQuery(
            "SELECT * FROM ${Constants.tableName} WHERE ${Constants.columnEmailID} = '$emailStr' ")
        .catchError((_) => left(const AuthFailure.unexpectedFailure()));
    if (result.length == 1) {
      /// checking whether user with this emailID exists or Not

      final User user =
          UserDto.fromMap(result.first.cast<String, String>()).toDomain();

      final UserDto userDto =
          UserDto.fromDomain(user.copyWith(password: password));

      databaseHelper
          .update(userDto.toMap(), userDto.uniqueId)
          .catchError((e) => left(const AuthFailure.unexpectedFailure()));

      return right(unit);
    } else {
      return left(const AuthFailure.userDoesNotExists());
    }
  }
}
