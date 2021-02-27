import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:loan_machine/domain/loan/i_loan_application_repository.dart';
import 'package:loan_machine/domain/loan/loan_application_failure.dart';
import 'package:loan_machine/domain/loan/loan_application_info.dart';

part 'loan_application_watcher_event.dart';
part 'loan_application_watcher_state.dart';
part 'loan_application_watcher_bloc.freezed.dart';

@injectable
class LoanApplicationWatcherBloc
    extends Bloc<LoanApplicationWatcherEvent, LoanApplicationWatcherState> {
  final ILoanApplicationRepository iLoanApplicationRepository;
  LoanApplicationWatcherBloc(this.iLoanApplicationRepository)
      : super(const LoanApplicationWatcherState.loadInProgress());

  @override
  Stream<LoanApplicationWatcherState> mapEventToState(
    LoanApplicationWatcherEvent event,
  ) async* {
    yield* event.map(watchAll: (e) async* {
      yield const LoanApplicationWatcherState.loadInProgress();

      final successOrFailure = await iLoanApplicationRepository.watchAll();

      yield successOrFailure.fold(
          (f) => LoanApplicationWatcherState.loadedFailure(f),
          (list) => LoanApplicationWatcherState.loadedSuccess(list.reversed()));
    });
  }
}
