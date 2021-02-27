// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../domain/loan/loan_application_info.dart';
import '../pages/about_us_page.dart';
import '../pages/changeAvatar.dart';
import '../pages/help_page.dart';
import '../pages/home_page/home_page.dart';
import '../pages/loan_application_form/loan_application_form_page.dart';
import '../sign_in_up/widgets/forgot_password.dart';
import '../sign_in_up/widgets/sign_in_page.dart';
import '../sign_in_up/widgets/sign_up_page.dart';
import '../splash/splash_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String signUpPage = '/sign-up-page';
  static const String signInPage = '/sign-in-page';
  static const String homePage = '/home-page';
  static const String forgotPasswordPage = '/forgot-password-page';
  static const String loanApplicationFormPage = '/loan-application-form-page';
  static const String changeAvatar = '/change-avatar';
  static const String aboutUsPage = '/about-us-page';
  static const String helpPage = '/help-page';
  static const all = <String>{
    splashScreen,
    signUpPage,
    signInPage,
    homePage,
    forgotPasswordPage,
    loanApplicationFormPage,
    changeAvatar,
    aboutUsPage,
    helpPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.signUpPage, page: SignUpPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.forgotPasswordPage, page: ForgotPasswordPage),
    RouteDef(Routes.loanApplicationFormPage, page: LoanApplicationFormPage),
    RouteDef(Routes.changeAvatar, page: ChangeAvatar),
    RouteDef(Routes.aboutUsPage, page: AboutUsPage),
    RouteDef(Routes.helpPage, page: HelpPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
      );
    },
    SignUpPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    ForgotPasswordPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ForgotPasswordPage(),
        settings: data,
      );
    },
    LoanApplicationFormPage: (data) {
      final args =
          data.getArgs<LoanApplicationFormPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoanApplicationFormPage(args.loanApplicationInfo),
        settings: data,
      );
    },
    ChangeAvatar: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ChangeAvatar(),
        settings: data,
      );
    },
    AboutUsPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AboutUsPage(),
        settings: data,
      );
    },
    HelpPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HelpPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashScreen() => push<dynamic>(Routes.splashScreen);

  Future<dynamic> pushSignUpPage() => push<dynamic>(Routes.signUpPage);

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushHomePage() => push<dynamic>(Routes.homePage);

  Future<dynamic> pushForgotPasswordPage() =>
      push<dynamic>(Routes.forgotPasswordPage);

  Future<dynamic> pushLoanApplicationFormPage({
    @required Option<LoanApplicationInfo> loanApplicationInfo,
  }) =>
      push<dynamic>(
        Routes.loanApplicationFormPage,
        arguments: LoanApplicationFormPageArguments(
            loanApplicationInfo: loanApplicationInfo),
      );

  Future<dynamic> pushChangeAvatar() => push<dynamic>(Routes.changeAvatar);

  Future<dynamic> pushAboutUsPage() => push<dynamic>(Routes.aboutUsPage);

  Future<dynamic> pushHelpPage() => push<dynamic>(Routes.helpPage);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// LoanApplicationFormPage arguments holder class
class LoanApplicationFormPageArguments {
  final Option<LoanApplicationInfo> loanApplicationInfo;
  LoanApplicationFormPageArguments({@required this.loanApplicationInfo});
}
