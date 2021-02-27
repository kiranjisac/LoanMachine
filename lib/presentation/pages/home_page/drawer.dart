import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:loan_machine/application/auth/auth_bloc.dart';
import 'package:loan_machine/application/user/change_avatar/change_avatar_bloc.dart';
import 'package:loan_machine/domain/core/errors.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';
import 'package:loan_machine/infrastructure/core/utils.dart';
import 'package:loan_machine/presentation/routes/router.gr.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../injection.dart';

class BuildDrawer extends StatelessWidget {
  const BuildDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BlocProvider(
      create: (context) => getIt<ChangeAvatarBloc>(),
      child: Drawer(
        child: Column(
          children: [
            const DrawerHeaderWidget(),
            ListTile(
              leading: Icon(
                FeatherIcons.github,
                color: ConstantColors.primaryColor,
                size: 22,
              ),
              title: Text("Source Code on Github",
                  style: TextStyle(
                      color: ConstantColors.primaryColor, fontSize: 17)),
              onTap: () {
                Utils.launchUrl(Constants.GITHUB_URL);
              },
            ),
            ListTile(
              leading: Icon(Icons.bug_report_outlined,
                  size: 27, color: ConstantColors.primaryColor),
              title: Text("Report Issue on Github",
                  style: TextStyle(
                      color: ConstantColors.primaryColor, fontSize: 17)),
              onTap: () {
                Utils.launchUrl("${Constants.GITHUB_URL}/issues");
              },
            ),
            ListTile(
              leading: Icon(Icons.help_center_outlined,
                  color: ConstantColors.primaryColor),
              title: Text("Help",
                  style: TextStyle(
                      color: ConstantColors.primaryColor, fontSize: 17)),
              onTap: () {
                ExtendedNavigator.of(context).push(Routes.helpPage);
              },
            ),
            ListTile(
              leading:
                  Icon(Icons.info_outline, color: ConstantColors.primaryColor),
              title: Text("About Us",
                  style: TextStyle(
                      color: ConstantColors.primaryColor, fontSize: 17)),
              onTap: () {
                ExtendedNavigator.of(context).push(Routes.aboutUsPage);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: ConstantColors.primaryColor,
              ),
              title: Text("Logout",
                  style: TextStyle(
                      color: ConstantColors.primaryColor, fontSize: 17)),
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) => SizedBox(
                          width: double.maxFinite,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                // const SizedBox(height: 30),
                                Row(
                                  children: [
                                    Text(
                                      "Are you sure to Log Out? ",
                                      style: TextStyle(
                                          color: ConstantColors.primaryColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5),

                                ButtonBar(children: [
                                  FlatButton(
                                    onPressed: () =>
                                        ExtendedNavigator.of(context).pop(),
                                    child: Text(
                                      "No",
                                      style: TextStyle(
                                          color: ConstantColors.primaryColor,
                                          fontSize: 16.5,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  FlatButton(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    color: ConstantColors.primaryColor,
                                    onPressed: () {
                                      ExtendedNavigator.of(context).pop();
                                      context
                                          .read<AuthBloc>()
                                          .add(const AuthEvent.signOut());
                                      ExtendedNavigator.of(context)
                                          .replace(Routes.signInPage);
                                    },
                                    child: const Text(
                                      "Yes , Log Out",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.5,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ])
                              ],
                            ),
                          ),
                        ));
              },
            )
          ],
        ),
      ),
    ));
  }
}

class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        decoration: BoxDecoration(color: ConstantColors.primaryColor),
        child: context.watch<AuthBloc>().state.map(
            initial: (_) => const CircularProgressIndicator(),
            authenticated: (e) {
              return Builder(builder: (context) {
                return SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      Center(
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) => SizedBox(
                                      width: double.maxFinite,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 20, 20, 20),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            // const SizedBox(height: 30),
                                            Row(
                                              children: [
                                                Text(
                                                  "Do you want to change the avatar ? ",
                                                  style: TextStyle(
                                                      color: ConstantColors
                                                          .primaryColor,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 10),
                                            BlocProvider(
                                              create: (context) =>
                                                  getIt<ChangeAvatarBloc>(),
                                              child:
                                                  Builder(builder: (context) {
                                                return CircleAvatar(
                                                    radius: 38,
                                                    backgroundColor:
                                                        Colors.white,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              38),
                                                      child: Image.asset(context
                                                          .watch<
                                                              ChangeAvatarBloc>()
                                                          .state
                                                          .avatar),
                                                    ));
                                              }),
                                            ),
                                            const SizedBox(height: 10),
                                            ButtonBar(children: [
                                              FlatButton(
                                                onPressed: () =>
                                                    ExtendedNavigator.of(
                                                            context)
                                                        .pop(),
                                                child: Text(
                                                  "Don't Change",
                                                  style: TextStyle(
                                                      color: ConstantColors
                                                          .primaryColor,
                                                      fontSize: 16.5,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                              FlatButton(
                                                color:
                                                    ConstantColors.primaryColor,
                                                onPressed: () {
                                                  ExtendedNavigator.of(context)
                                                      .pop();
                                                  ExtendedNavigator.of(context)
                                                      .popAndPush(
                                                          Routes.changeAvatar);
                                                },
                                                child: const Text(
                                                  "Change Avatar",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16.5,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              )
                                            ])
                                          ],
                                        ),
                                      ),
                                    ));
                          },
                          child:
                              BlocBuilder<ChangeAvatarBloc, ChangeAvatarState>(
                            builder: (context, state) {
                              return CircleAvatar(
                                  radius: 38,
                                  backgroundColor: Colors.white,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(38),
                                    child: Image.asset(state.avatar),
                                  ));
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(e.user.userName.getOrCrash(),
                          style: const TextStyle(
                              fontSize: 19, color: Colors.white)),
                      const SizedBox(height: 7),
                      Text(e.user.emailAddress.getOrCrash(),
                          style: const TextStyle(color: Colors.white))
                    ],
                  ),
                );
              });
            },
            unauthenticated: (_) => throw UnexpectedError()));
  }
}
