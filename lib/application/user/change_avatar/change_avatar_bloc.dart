import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:loan_machine/infrastructure/core/constants.dart';
import 'package:loan_machine/infrastructure/core/keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'change_avatar_event.dart';
part 'change_avatar_state.dart';
part 'change_avatar_bloc.freezed.dart';

@injectable
class ChangeAvatarBloc extends Bloc<ChangeAvatarEvent, ChangeAvatarState> {
  final SharedPreferences sharedPreferences;
  ChangeAvatarBloc(this.sharedPreferences)
      : super(ChangeAvatarState(
            avatar: sharedPreferences
                    .getString(sharedPreferences.getString(AUTOLOGIN_KEY)) ??
                avatars[0]));

  @override
  Stream<ChangeAvatarState> mapEventToState(
    ChangeAvatarEvent event,
  ) async* {
    sharedPreferences.setString(
        sharedPreferences.getString(AUTOLOGIN_KEY), event.imagePath);

    yield state.copyWith(avatar: event.imagePath);
  }
}
