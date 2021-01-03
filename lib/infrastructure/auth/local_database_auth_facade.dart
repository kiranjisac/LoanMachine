import 'package:injectable/injectable.dart';
import 'package:loan_machine/domain/auth/auth_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:loan_machine/domain/auth/i_auth_facade.dart';
import 'package:loan_machine/domain/auth/value_objects.dart';
import 'package:loan_machine/domain/auth/user.dart';
import 'package:loan_machine/domain/core/value_object.dart';
import 'package:loan_machine/infrastructure/auth/user_dto.dart';
import 'package:loan_machine/infrastructure/database/database_helper.dart';

@LazySingleton(as: IAuthFacade)
class LocalDatabaseAuthFacade implements IAuthFacade {
  DatabaseHelper databaseHelper;
  LocalDatabaseAuthFacade(this.databaseHelper);

  @override
  Future<Option<User>> getSignInUser() {
    // TODO: implement getSignInUser
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {EmailAddress emailAddress, Password password}) async {
    final userDto = UserDto.fromDomain(User(
        uniqueId: UniqueId(), emailAddress: emailAddress, password: password));
    final failureOrSuccess = await databaseHelper.insert(userDto.toMap());
    return failureOrSuccess.fold((f) {
      return f.map(
          unSuccessful: (_) => left(const AuthFailure.unableToRegister()));
    }, (_) => right(unit));
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {EmailAddress emailAddress, Password password}) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    throw UnimplementedError();
    // TODO: implement signOut
  }
}
