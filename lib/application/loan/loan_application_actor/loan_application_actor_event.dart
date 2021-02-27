part of 'loan_application_actor_bloc.dart';

@freezed
abstract class LoanApplicationActorEvent with _$LoanApplicationActorEvent {
  const factory LoanApplicationActorEvent.delete(LoanApplicationInfo laInfo) =
      _Delete;
}
