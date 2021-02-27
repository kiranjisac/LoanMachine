import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loan_machine/application/loan/loan_application_form_bloc/loan_application_bloc.dart';
import 'package:loan_machine/domain/loan/loan_application_info.dart';
import 'package:loan_machine/injection.dart';
import 'package:loan_machine/presentation/pages/loan_application_form/loan_application_form.dart';
import 'package:loan_machine/presentation/routes/router.gr.dart';

class LoanApplicationFormPage extends StatelessWidget {
  final Option<LoanApplicationInfo> loanApplicationInfo;

  const LoanApplicationFormPage(this.loanApplicationInfo);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoanApplicationBloc>()
        ..add(LoanApplicationEvent.initialised(loanApplicationInfo)),
      child: BlocConsumer<LoanApplicationBloc, LoanApplicationState>(
        listenWhen: (p, c) =>
            p.loanFailureOrSuccessOption != c.loanFailureOrSuccessOption,
        listener: (context, state) {
          state.loanFailureOrSuccessOption.fold(
              () => null,
              (either) => either.fold((f) {
                    FlushbarHelper.createError(
                            message: f.map(
                                databaseError: (_) =>
                                    "Sorry for the inconvenience ! Database Error . Contact the developer."))
                        .show(context);
                  }, (r) {
                    ExtendedNavigator.of(context).replace(Routes.homePage);

                    /// The below method to be used once the homepage uses stream instead of Future
                    // ExtendedNavigator.of(context).popUntil(
                    //     (route) => route.settings.name == Routes.homePage);
                  }));
        },
        buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
        builder: (context, state) {
          return Stack(
            children: [
              const LoanApplicationForm(),
              SavingInProgressOverlay(
                isSaving: state.isSubmitting,
              )
            ],
          );
        },
      ),
    );
  }
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingInProgressOverlay({Key key, this.isSaving}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          duration: const Duration(seconds: 300),
          color: isSaving ? Colors.black.withOpacity(0.7) : Colors.transparent,
          child: Visibility(
            visible: isSaving,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircularProgressIndicator(),
                const SizedBox(height: 10),
                Text(
                  "Saving",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Colors.blue[800]),
                )
              ],
            ),
          )),
    );
  }
}
