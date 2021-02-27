import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:loan_machine/domain/loan/i_loan_application_repository.dart';
import 'package:loan_machine/domain/loan/loan_application_failure.dart';
import 'package:loan_machine/domain/loan/loan_application_info.dart';

part 'loan_application_actor_event.dart';
part 'loan_application_actor_state.dart';
part 'loan_application_actor_bloc.freezed.dart';

@injectable
class LoanApplicationActorBloc
    extends Bloc<LoanApplicationActorEvent, LoanApplicationActorState> {
  final ILoanApplicationRepository iLoanApplicationRepository;
  LoanApplicationActorBloc(this.iLoanApplicationRepository)
      : super(const LoanApplicationActorState.initial());

  @override
  Stream<LoanApplicationActorState> mapEventToState(
    LoanApplicationActorEvent event,
  ) async* {
    yield const LoanApplicationActorState.actionInProgress();

    final possibleFailure = await iLoanApplicationRepository.delete(
        loanApplicationUniqueId: event.laInfo.applicationUniqueId);

    possibleFailure.fold((f) => LoanApplicationActorState.deleteFailure(f),
        (r) => const LoanApplicationActorState.deleteSucess());
  }
}
