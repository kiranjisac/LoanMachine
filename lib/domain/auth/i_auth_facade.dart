import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:loan_machine/domain/auth/auth_failures.dart';
import 'package:loan_machine/domain/auth/user.dart';
import 'package:loan_machine/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {@required UserName userName,
      @required EmailAddress emailAddress,
      @required Password password});

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {@required EmailAddress emailAddress, @required Password password});
  Future<Either<AuthFailure, Unit>> forgotPassword(
      {@required EmailAddress emailAddress, @required Password password});
  Future<void> signOut();
}
