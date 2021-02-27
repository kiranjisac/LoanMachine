import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_machine/application/user/change_avatar/change_avatar_bloc.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';
import 'package:loan_machine/presentation/routes/router.gr.dart';

import '../../injection.dart';

class ChangeAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<ChangeAvatarBloc>(),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                ExtendedNavigator.of(context).popUntil(
                    (route) => route.settings.name == Routes.homePage);
              },
              icon: Icon(
                Icons.arrow_back,
                color: ConstantColors.primaryColor,
              ),
            ),
            backgroundColor: Colors.white,
            title: Text(
              "Change Your Avatar",
              style: GoogleFonts.lato(
                  color: ConstantColors.primaryColor,
                  fontWeight: FontWeight.w600),
            ),
          ),
          body: BlocBuilder<ChangeAvatarBloc, ChangeAvatarState>(
            builder: (context, state) {
              return SingleChildScrollView(
                child: Column(children: [
                  const SizedBox(height: 25),
                  Text(
                    "The Avatar Chosen",
                    style: TextStyle(
                        color: ConstantColors.primaryColor,
                        fontSize: 18.5,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 15),
                  CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(state.avatar),
                      )),
                  Divider(
                    indent: 20,
                    endIndent: 20,
                    height: 50,
                    color: ConstantColors.primaryColor,
                  ),
                  Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      runAlignment: WrapAlignment.spaceBetween,
                      alignment: WrapAlignment.spaceBetween,
                      children: avatars.iter.map((avatar) {
                        if (state.avatar == avatar) {
                          return CircleAvatar(
                              radius: 45,
                              backgroundColor: Colors.red,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(38),
                                child: Image.asset(avatar),
                              ));
                        } else {
                          return InkWell(
                            borderRadius: BorderRadius.circular(30),
                            onTap: () {
                              context
                                  .read<ChangeAvatarBloc>()
                                  .add(ChangeAvatarEvent.avatarChanged(avatar));
                            },
                            child: CircleAvatar(
                                radius: 38,
                                backgroundColor: Colors.white,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(38),
                                  child: Image.asset(avatar),
                                )),
                          );
                        }
                      }).toList()),
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        FlatButton(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 12),
                            color: ConstantColors.primaryColor,
                            onPressed: () {
                              ExtendedNavigator.of(context).popUntil((route) =>
                                  route.settings.name == Routes.homePage);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text(
                                  "Go back",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.5,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            )),
                      ],
                    ),
                  )
                ]),
              );
            },
          ),
        ));
  }
}
