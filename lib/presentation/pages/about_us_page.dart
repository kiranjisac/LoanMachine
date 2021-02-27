import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';
import 'package:loan_machine/infrastructure/core/utils.dart';
import 'package:loan_machine/presentation/routes/router.gr.dart';

class AboutUsPage extends StatelessWidget {
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
          "About Page",
          style: GoogleFonts.lato(
              color: ConstantColors.primaryColor, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        const SizedBox(),
        const AppLogo(),
        const DevelopersList()
      ]),
    );
  }
}

class DevelopersList extends StatelessWidget {
  const DevelopersList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Developers And Contributers",
              style: TextStyle(
                  fontSize: 21,
                  color: ConstantColors.primaryColor,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: ListTile(
            contentPadding: const EdgeInsets.all(9),
            // horizontalTitleGap: 8,
            tileColor: Colors.green[50],
            leading: CircleAvatar(
                radius: 40,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset("assets/avatar/avatar_1.png"))),
            title: Text(
              "Kiran J Isac",
              style: TextStyle(
                fontSize: 17,
                color: ConstantColors.primaryColor,
              ),
            ),
            subtitle: const Text(
              "Software Developer, MachineLearning Architect",
            ),
            trailing: IconButton(
                onPressed: () {
                  Utils.launchUrl(Constants.emailKiran);
                },
                icon: Icon(
                  Icons.contact_support_outlined,
                  color: Colors.blue[800],
                )),
          ),
        ),
      ),
      const SizedBox(height: 15),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: ListTile(
            // horizontalTitleGap: 8,
            contentPadding: const EdgeInsets.all(9),
            tileColor: Colors.blue[50],

            leading: CircleAvatar(
                radius: 40,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset("assets/avatar/avatar_3.png"))),
            title: Text(
              "Ashik Shaji",
              style: TextStyle(
                //   fontSize: 17,
                color: ConstantColors.primaryColor,
              ),
            ),
            subtitle: const Text(
              "Software Developer, MachineLearning Architect",
            ),
            trailing: IconButton(
                onPressed: () {
                  Utils.launchUrl(Constants.emailAshik);
                },
                icon: Icon(
                  Icons.contact_support_outlined,
                  color: Colors.blue[800],
                )),
          ),
        ),
      ),
      const SizedBox(height: 15),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: ListTile(
            contentPadding: const EdgeInsets.all(9),
            tileColor: Colors.red[50],
            leading: CircleAvatar(
                radius: 40,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset("assets/avatar/avatar_5.png"))),
            title: Text(
              "Kevin Eapen",
              style: TextStyle(
                fontSize: 17,
                color: ConstantColors.primaryColor,
              ),
            ),
            subtitle: const Text(
              "Software Developer, MachineLearning Architect",
            ),
            trailing: IconButton(
                onPressed: () {
                  Utils.launchUrl(Constants.emailKevin);
                },
                icon: Icon(
                  Icons.contact_support_outlined,
                  color: Colors.blue[800],
                )),
          ),
        ),
      )
    ]);
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CircleAvatar(
              radius: 40,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset("assets/images/Logo_rounded.png"))),
          const SizedBox(height: 12),
          Text(
            "LoanEe",
            style: TextStyle(
                fontSize: 24,
                color: ConstantColors.primaryColor,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
