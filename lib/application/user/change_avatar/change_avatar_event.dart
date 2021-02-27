part of 'change_avatar_bloc.dart';

@freezed
abstract class ChangeAvatarEvent with _$ChangeAvatarEvent {
  const factory ChangeAvatarEvent.avatarChanged(String imagePath) =
      _AvatarChanged;
}
