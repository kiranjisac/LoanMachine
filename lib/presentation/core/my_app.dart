import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_machine/application/auth/auth_bloc.dart';
import 'package:loan_machine/domain/auth/i_auth_facade.dart';
import 'package:loan_machine/infrastructure/auth/auth_local_database_helper.dart';
import 'package:loan_machine/infrastructure/auth/local_database_auth_facade.dart';
import 'package:loan_machine/infrastructure/core/injectable_modules.dart';
import 'package:loan_machine/infrastructure/database/local_database_helper.dart';
import 'package:loan_machine/injection.dart';
import 'package:loan_machine/presentation/routes/router.gr.dart' as router;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqlite_api.dart';

class MyApp extends StatelessWidget {
  final _textStyle = const TextStyle().copyWith(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()))
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Loan Machine',
          themeMode: ThemeMode.dark,
          theme: Theme.of(context).copyWith(
              textTheme: TextTheme(
            bodyText1: GoogleFonts.lato(textStyle: _textStyle),
            bodyText2: GoogleFonts.lato(textStyle: _textStyle),
            subtitle1: GoogleFonts.lato(textStyle: _textStyle),
            subtitle2: GoogleFonts.lato(textStyle: _textStyle),
            button: GoogleFonts.lato(textStyle: _textStyle),
            headline1: GoogleFonts.lato(textStyle: _textStyle),
            headline2: GoogleFonts.lato(textStyle: _textStyle),
            headline3: GoogleFonts.lato(textStyle: _textStyle),
            headline4: GoogleFonts.lato(textStyle: _textStyle),
            headline5: GoogleFonts.lato(textStyle: _textStyle),
            headline6: GoogleFonts.lato(textStyle: _textStyle),
            caption: GoogleFonts.lato(textStyle: _textStyle),
            overline: GoogleFonts.lato(textStyle: _textStyle),
          )),
          onGenerateRoute: router.Router(),
          builder:
              ExtendedNavigator.builder<router.Router>(router: router.Router()),
        ));
  }
}
