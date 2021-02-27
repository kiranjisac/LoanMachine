part of 'loan_application_actor_bloc.dart';

@freezed
abstract class LoanApplicationActorState with _$LoanApplicationActorState {
  const factory LoanApplicationActorState.initial() = _Initial;
  const factory LoanApplicationActorState.actionInProgress() =
      _ActionInProgress;

  const factory LoanApplicationActorState.deleteSucess() = _DeleteSuccess;
  const factory LoanApplicationActorState.deleteFailure(
      LoanApplicationFailure failure) = _DeleteFailure;
}
