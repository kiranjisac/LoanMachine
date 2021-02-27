import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_machine/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';
import 'package:loan_machine/infrastructure/core/utils.dart';
import 'package:loan_machine/presentation/pages/about_us_page.dart';
import 'package:loan_machine/presentation/routes/router.gr.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              ExtendedNavigator.of(context)
                  .popUntil((route) => route.settings.name == Routes.homePage);
            },
            icon: Icon(
              Icons.arrow_back,
              color: ConstantColors.primaryColor,
            ),
          ),
          backgroundColor: Colors.white,
          title: Text(
            "Help Page",
            style: GoogleFonts.lato(
                color: ConstantColors.primaryColor,
                fontWeight: FontWeight.w600),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const AppLogo(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    FlatButton(
                      padding: const EdgeInsets.all(12.5),
                      color: Colors.black54,
                      onPressed: () {
                        Utils.launchUrl("${Constants.GITHUB_URL}/issues");
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                      child: const Text(
                        "Report Bug on Github",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.5,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    FlatButton(
                      padding: const EdgeInsets.all(12.5),
                      color: ConstantColors.primaryColor,
                      onPressed: () {
                        Utils.launchUrl(Constants.emailKiran);
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                      child: const Text(
                        "Mail Us Your Concern",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.5,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ]),
            ),
            Row(
              children: <Widget>[
                IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.blue[800],
                    ),
                    onPressed: () => Utils.launchUrl(Constants.INSTAGRAM_URL)),
                IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.youtube,
                      color: Colors.blue[800],
                    ),
                    onPressed: () => Utils.launchUrl(Constants.YOUTUBE_URL)),
                IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.blue[800],
                    ),
                    onPressed: () => Utils.launchUrl(Constants.TWITTER_URL)),
                IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blue[800],
                    ),
                    onPressed: () => Utils.launchUrl(Constants.FACEBOOK_URL)),
              ],
            )
          ],
        ));
  }
}
