import 'package:auto_route/auto_route_annotations.dart';
import 'package:loan_machine/presentation/pages/home_page.dart';
import 'package:loan_machine/presentation/pages/loan_application_form/loan_application_form_page.dart';
import 'package:loan_machine/presentation/sign_in_up/widgets/forgot_password.dart';
import 'package:loan_machine/presentation/sign_in_up/widgets/sign_in_page.dart';
import 'package:loan_machine/presentation/sign_in_up/widgets/sign_up_page.dart';
import 'package:loan_machine/presentation/splash/splash_screen.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true, routes: [
  MaterialRoute(page: SplashScreen, initial: true),
  MaterialRoute(
    page: SignUpPage,
  ),
  MaterialRoute(
    page: SignInPage,
  ),
  MaterialRoute(
    page: HomePage,
  ),
  MaterialRoute(
    page: ForgotPasswordPage,
  ),
  MaterialRoute(
    page: LoanApplicationFormPage,
  ),
])
class $Router {}
