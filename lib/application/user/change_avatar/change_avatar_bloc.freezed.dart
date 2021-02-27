// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'change_avatar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ChangeAvatarEventTearOff {
  const _$ChangeAvatarEventTearOff();

// ignore: unused_element
  _AvatarChanged avatarChanged(String imagePath) {
    return _AvatarChanged(
      imagePath,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChangeAvatarEvent = _$ChangeAvatarEventTearOff();

/// @nodoc
mixin _$ChangeAvatarEvent {
  String get imagePath;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult avatarChanged(String imagePath),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult avatarChanged(String imagePath),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult avatarChanged(_AvatarChanged value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult avatarChanged(_AvatarChanged value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ChangeAvatarEventCopyWith<ChangeAvatarEvent> get copyWith;
}

/// @nodoc
abstract class $ChangeAvatarEventCopyWith<$Res> {
  factory $ChangeAvatarEventCopyWith(
          ChangeAvatarEvent value, $Res Function(ChangeAvatarEvent) then) =
      _$ChangeAvatarEventCopyWithImpl<$Res>;
  $Res call({String imagePath});
}

/// @nodoc
class _$ChangeAvatarEventCopyWithImpl<$Res>
    implements $ChangeAvatarEventCopyWith<$Res> {
  _$ChangeAvatarEventCopyWithImpl(this._value, this._then);

  final ChangeAvatarEvent _value;
  // ignore: unused_field
  final $Res Function(ChangeAvatarEvent) _then;

  @override
  $Res call({
    Object imagePath = freezed,
  }) {
    return _then(_value.copyWith(
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as String,
    ));
  }
}

/// @nodoc
abstract class _$AvatarChangedCopyWith<$Res>
    implements $ChangeAvatarEventCopyWith<$Res> {
  factory _$AvatarChangedCopyWith(
          _AvatarChanged value, $Res Function(_AvatarChanged) then) =
      __$AvatarChangedCopyWithImpl<$Res>;
  @override
  $Res call({String imagePath});
}

/// @nodoc
class __$AvatarChangedCopyWithImpl<$Res>
    extends _$ChangeAvatarEventCopyWithImpl<$Res>
    implements _$AvatarChangedCopyWith<$Res> {
  __$AvatarChangedCopyWithImpl(
      _AvatarChanged _value, $Res Function(_AvatarChanged) _then)
      : super(_value, (v) => _then(v as _AvatarChanged));

  @override
  _AvatarChanged get _value => super._value as _AvatarChanged;

  @override
  $Res call({
    Object imagePath = freezed,
  }) {
    return _then(_AvatarChanged(
      imagePath == freezed ? _value.imagePath : imagePath as String,
    ));
  }
}

/// @nodoc
class _$_AvatarChanged implements _AvatarChanged {
  const _$_AvatarChanged(this.imagePath) : assert(imagePath != null);

  @override
  final String imagePath;

  @override
  String toString() {
    return 'ChangeAvatarEvent.avatarChanged(imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AvatarChanged &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imagePath);

  @JsonKey(ignore: true)
  @override
  _$AvatarChangedCopyWith<_AvatarChanged> get copyWith =>
      __$AvatarChangedCopyWithImpl<_AvatarChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult avatarChanged(String imagePath),
  }) {
    assert(avatarChanged != null);
    return avatarChanged(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult avatarChanged(String imagePath),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (avatarChanged != null) {
      return avatarChanged(imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult avatarChanged(_AvatarChanged value),
  }) {
    assert(avatarChanged != null);
    return avatarChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult avatarChanged(_AvatarChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (avatarChanged != null) {
      return avatarChanged(this);
    }
    return orElse();
  }
}

abstract class _AvatarChanged implements ChangeAvatarEvent {
  const factory _AvatarChanged(String imagePath) = _$_AvatarChanged;

  @override
  String get imagePath;
  @override
  @JsonKey(ignore: true)
  _$AvatarChangedCopyWith<_AvatarChanged> get copyWith;
}

/// @nodoc
class _$ChangeAvatarStateTearOff {
  const _$ChangeAvatarStateTearOff();

// ignore: unused_element
  _ChangeAvatarState call({@required String avatar}) {
    return _ChangeAvatarState(
      avatar: avatar,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChangeAvatarState = _$ChangeAvatarStateTearOff();

/// @nodoc
mixin _$ChangeAvatarState {
  String get avatar;

  @JsonKey(ignore: true)
  $ChangeAvatarStateCopyWith<ChangeAvatarState> get copyWith;
}

/// @nodoc
abstract class $ChangeAvatarStateCopyWith<$Res> {
  factory $ChangeAvatarStateCopyWith(
          ChangeAvatarState value, $Res Function(ChangeAvatarState) then) =
      _$ChangeAvatarStateCopyWithImpl<$Res>;
  $Res call({String avatar});
}

/// @nodoc
class _$ChangeAvatarStateCopyWithImpl<$Res>
    implements $ChangeAvatarStateCopyWith<$Res> {
  _$ChangeAvatarStateCopyWithImpl(this._value, this._then);

  final ChangeAvatarState _value;
  // ignore: unused_field
  final $Res Function(ChangeAvatarState) _then;

  @override
  $Res call({
    Object avatar = freezed,
  }) {
    return _then(_value.copyWith(
      avatar: avatar == freezed ? _value.avatar : avatar as String,
    ));
  }
}

/// @nodoc
abstract class _$ChangeAvatarStateCopyWith<$Res>
    implements $ChangeAvatarStateCopyWith<$Res> {
  factory _$ChangeAvatarStateCopyWith(
          _ChangeAvatarState value, $Res Function(_ChangeAvatarState) then) =
      __$ChangeAvatarStateCopyWithImpl<$Res>;
  @override
  $Res call({String avatar});
}

/// @nodoc
class __$ChangeAvatarStateCopyWithImpl<$Res>
    extends _$ChangeAvatarStateCopyWithImpl<$Res>
    implements _$ChangeAvatarStateCopyWith<$Res> {
  __$ChangeAvatarStateCopyWithImpl(
      _ChangeAvatarState _value, $Res Function(_ChangeAvatarState) _then)
      : super(_value, (v) => _then(v as _ChangeAvatarState));

  @override
  _ChangeAvatarState get _value => super._value as _ChangeAvatarState;

  @override
  $Res call({
    Object avatar = freezed,
  }) {
    return _then(_ChangeAvatarState(
      avatar: avatar == freezed ? _value.avatar : avatar as String,
    ));
  }
}

/// @nodoc
class _$_ChangeAvatarState implements _ChangeAvatarState {
  const _$_ChangeAvatarState({@required this.avatar}) : assert(avatar != null);

  @override
  final String avatar;

  @override
  String toString() {
    return 'ChangeAvatarState(avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeAvatarState &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(avatar);

  @JsonKey(ignore: true)
  @override
  _$ChangeAvatarStateCopyWith<_ChangeAvatarState> get copyWith =>
      __$ChangeAvatarStateCopyWithImpl<_ChangeAvatarState>(this, _$identity);
}

abstract class _ChangeAvatarState implements ChangeAvatarState {
  const factory _ChangeAvatarState({@required String avatar}) =
      _$_ChangeAvatarState;

  @override
  String get avatar;
  @override
  @JsonKey(ignore: true)
  _$ChangeAvatarStateCopyWith<_ChangeAvatarState> get copyWith;
}
