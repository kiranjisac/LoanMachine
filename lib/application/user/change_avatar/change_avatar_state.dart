part of 'change_avatar_bloc.dart';

@freezed
abstract class ChangeAvatarState with _$ChangeAvatarState {
  const factory ChangeAvatarState({@required String avatar}) =
      _ChangeAvatarState;

  //factory ChangeAvatarState.initial() => ChangeAvatarState(avatar: "");
}
