part of 'loan_application_watcher_bloc.dart';

@freezed
abstract class LoanApplicationWatcherEvent with _$LoanApplicationWatcherEvent {
  const factory LoanApplicationWatcherEvent.watchAll() = _GetLoanApplications;
  // const factory LoanApplicationWatcherEvent.delete(
  //     UniqueId applicationUniqueId) = _Delete;
}
