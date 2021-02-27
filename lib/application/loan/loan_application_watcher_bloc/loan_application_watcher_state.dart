part of 'loan_application_watcher_bloc.dart';

@freezed
abstract class LoanApplicationWatcherState with _$LoanApplicationWatcherState {
  const factory LoanApplicationWatcherState.loadInProgress() = _LoadInProgress;
  const factory LoanApplicationWatcherState.loadedSuccess(
      KtList<LoanApplicationInfo> loanApplications) = _LoadedSuccess;

  const factory LoanApplicationWatcherState.loadedFailure(
      LoanApplicationFailure loanApplicationFailure) = _LoadedFailure;

  // const factory LoanApplicationWatcherState.deletionInProgress() =
  //     _DeleteInProgress;

  // const factory LoanApplicationWatcherState.deletionFailure(
  //     LoanApplicationFailure failure) = _DeleteFailure;
  // const factory LoanApplicationWatcherState.deletionSuccess() =
  //     _DeletionSuccess;
}
