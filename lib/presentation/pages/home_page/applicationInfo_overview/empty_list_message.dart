import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';
import 'package:loan_machine/presentation/routes/router.gr.dart';

class EmptyListMessage extends StatelessWidget {
  const EmptyListMessage({
    Key key,
    @required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
              height: 250,
              width: 250,
              child: AspectRatio(
                  aspectRatio: 6 / 4,
                  child: Transform.rotate(
                      angle: 69.38,
                      child: Image.asset("assets/images/notfound.png")))),
        ),
        Center(
            child: Text(
          "You have no loan applications available",
          style: TextStyle(color: Colors.blue[800], fontSize: 18),
        )),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Center(
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text:
                      "You currently have no loan application informations saved in Your ",
                  style: GoogleFonts.lato(color: Colors.grey, fontSize: 14),
                ),
                TextSpan(
                  text: "User Account .",
                  style:
                      GoogleFonts.lato(color: Colors.blue[800], fontSize: 14),
                )
              ]),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(height: 35),
        FlatButton.icon(
          icon: const Icon(
            Icons.add_box,
            color: Colors.white,
            size: 22,
          ),
          padding: const EdgeInsets.fromLTRB(15, 9, 20, 9),
          color: ConstantColors.primaryColor,
          onPressed: () => ExtendedNavigator.of(context)
              .pushLoanApplicationFormPage(loanApplicationInfo: none()),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          label: const Text(
            "Add  Loan  Application",
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.5,
                fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}
