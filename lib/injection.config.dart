// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:sqflite/sqflite.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'application/auth/auth_bloc.dart';
import 'infrastructure/auth/auth_local_database_helper.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/loan/i_loan_application_repository.dart';
import 'application/loan/loan_application_form_bloc/loan_application_bloc.dart';
import 'application/loan/loan_application_watcher_bloc/loan_application_watcher_bloc.dart';
import 'infrastructure/loan/loan_local_database_helper.dart';
import 'infrastructure/auth/local_database_auth_facade.dart';
import 'infrastructure/database/local_database_helper.dart';
import 'infrastructure/loan/local_database_loan_application_repository.dart';
import 'infrastructure/core/injectable_modules.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  final database = await registerModule.db;
  gh.factory<Database>(() => database);
  gh.lazySingleton<LocalDatabaseHelper>(
      () => AuthLocalDatabaseHelper(get<Database>()),
      instanceName: 'AuthLocalDatabaseHelper');
  final sharedPreferences = await registerModule.prefs;
  gh.factory<SharedPreferences>(() => sharedPreferences);
  gh.lazySingleton<IAuthFacade>(() => LocalDatabaseAuthFacade(
      get<LocalDatabaseHelper>(instanceName: 'AuthLocalDatabaseHelper'),
      get<SharedPreferences>()));
  gh.lazySingleton<ILoanApplicationRepository>(() =>
      LocalLoanApplicationRepository(
          get<LocalDatabaseHelper>(instanceName: 'LoanLocalDatabaseHelper')));
  gh.factory<LoanApplicationBloc>(() => LoanApplicationBloc(
      get<ILoanApplicationRepository>(), get<IAuthFacade>()));
  gh.factory<LoanApplicationWatcherBloc>(
      () => LoanApplicationWatcherBloc(get<ILoanApplicationRepository>()));
  gh.lazySingleton<LocalDatabaseHelper>(
      () => LoanLocalDatabaseHelper(get<Database>(), get<SharedPreferences>()),
      instanceName: 'LoanLocalDatabaseHelper');
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
