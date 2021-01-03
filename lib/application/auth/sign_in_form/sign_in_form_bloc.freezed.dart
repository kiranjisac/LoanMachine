// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

// ignore: unused_element
  _EmailAddressChanged emailAddressChanged(String rawEmailAddress) {
    return _EmailAddressChanged(
      rawEmailAddress,
    );
  }

// ignore: unused_element
  _PasswordChanged passwordChanged(String rawPassword) {
    return _PasswordChanged(
      rawPassword,
    );
  }

// ignore: unused_element
  _RegisterWithWithEmailandPassword registerWithWithEmailandPassword() {
    return const _RegisterWithWithEmailandPassword();
  }

// ignore: unused_element
  _SignInWithWithEmailandPassword signInWithWithEmailandPassword() {
    return const _SignInWithWithEmailandPassword();
  }
}

/// @nodoc
// ignore: unused_element
const $SignInFormEvent = _$SignInFormEventTearOff();

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailAddressChanged(String rawEmailAddress),
    @required TResult passwordChanged(String rawPassword),
    @required TResult registerWithWithEmailandPassword(),
    @required TResult signInWithWithEmailandPassword(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailAddressChanged(String rawEmailAddress),
    TResult passwordChanged(String rawPassword),
    TResult registerWithWithEmailandPassword(),
    TResult signInWithWithEmailandPassword(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailAddressChanged(_EmailAddressChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult registerWithWithEmailandPassword(
            _RegisterWithWithEmailandPassword value),
    @required
        TResult signInWithWithEmailandPassword(
            _SignInWithWithEmailandPassword value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailAddressChanged(_EmailAddressChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult registerWithWithEmailandPassword(
        _RegisterWithWithEmailandPassword value),
    TResult signInWithWithEmailandPassword(
        _SignInWithWithEmailandPassword value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

/// @nodoc
abstract class _$EmailAddressChangedCopyWith<$Res> {
  factory _$EmailAddressChangedCopyWith(_EmailAddressChanged value,
          $Res Function(_EmailAddressChanged) then) =
      __$EmailAddressChangedCopyWithImpl<$Res>;
  $Res call({String rawEmailAddress});
}

/// @nodoc
class __$EmailAddressChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$EmailAddressChangedCopyWith<$Res> {
  __$EmailAddressChangedCopyWithImpl(
      _EmailAddressChanged _value, $Res Function(_EmailAddressChanged) _then)
      : super(_value, (v) => _then(v as _EmailAddressChanged));

  @override
  _EmailAddressChanged get _value => super._value as _EmailAddressChanged;

  @override
  $Res call({
    Object rawEmailAddress = freezed,
  }) {
    return _then(_EmailAddressChanged(
      rawEmailAddress == freezed
          ? _value.rawEmailAddress
          : rawEmailAddress as String,
    ));
  }
}

/// @nodoc
class _$_EmailAddressChanged
    with DiagnosticableTreeMixin
    implements _EmailAddressChanged {
  const _$_EmailAddressChanged(this.rawEmailAddress)
      : assert(rawEmailAddress != null);

  @override
  final String rawEmailAddress;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.emailAddressChanged(rawEmailAddress: $rawEmailAddress)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.emailAddressChanged'))
      ..add(DiagnosticsProperty('rawEmailAddress', rawEmailAddress));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailAddressChanged &&
            (identical(other.rawEmailAddress, rawEmailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.rawEmailAddress, rawEmailAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rawEmailAddress);

  @override
  _$EmailAddressChangedCopyWith<_EmailAddressChanged> get copyWith =>
      __$EmailAddressChangedCopyWithImpl<_EmailAddressChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailAddressChanged(String rawEmailAddress),
    @required TResult passwordChanged(String rawPassword),
    @required TResult registerWithWithEmailandPassword(),
    @required TResult signInWithWithEmailandPassword(),
  }) {
    assert(emailAddressChanged != null);
    assert(passwordChanged != null);
    assert(registerWithWithEmailandPassword != null);
    assert(signInWithWithEmailandPassword != null);
    return emailAddressChanged(rawEmailAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailAddressChanged(String rawEmailAddress),
    TResult passwordChanged(String rawPassword),
    TResult registerWithWithEmailandPassword(),
    TResult signInWithWithEmailandPassword(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailAddressChanged != null) {
      return emailAddressChanged(rawEmailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailAddressChanged(_EmailAddressChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult registerWithWithEmailandPassword(
            _RegisterWithWithEmailandPassword value),
    @required
        TResult signInWithWithEmailandPassword(
            _SignInWithWithEmailandPassword value),
  }) {
    assert(emailAddressChanged != null);
    assert(passwordChanged != null);
    assert(registerWithWithEmailandPassword != null);
    assert(signInWithWithEmailandPassword != null);
    return emailAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailAddressChanged(_EmailAddressChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult registerWithWithEmailandPassword(
        _RegisterWithWithEmailandPassword value),
    TResult signInWithWithEmailandPassword(
        _SignInWithWithEmailandPassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailAddressChanged != null) {
      return emailAddressChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailAddressChanged implements SignInFormEvent {
  const factory _EmailAddressChanged(String rawEmailAddress) =
      _$_EmailAddressChanged;

  String get rawEmailAddress;
  _$EmailAddressChangedCopyWith<_EmailAddressChanged> get copyWith;
}

/// @nodoc
abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String rawPassword});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(
      _PasswordChanged _value, $Res Function(_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object rawPassword = freezed,
  }) {
    return _then(_PasswordChanged(
      rawPassword == freezed ? _value.rawPassword : rawPassword as String,
    ));
  }
}

/// @nodoc
class _$_PasswordChanged
    with DiagnosticableTreeMixin
    implements _PasswordChanged {
  const _$_PasswordChanged(this.rawPassword) : assert(rawPassword != null);

  @override
  final String rawPassword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.passwordChanged(rawPassword: $rawPassword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.passwordChanged'))
      ..add(DiagnosticsProperty('rawPassword', rawPassword));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordChanged &&
            (identical(other.rawPassword, rawPassword) ||
                const DeepCollectionEquality()
                    .equals(other.rawPassword, rawPassword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(rawPassword);

  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailAddressChanged(String rawEmailAddress),
    @required TResult passwordChanged(String rawPassword),
    @required TResult registerWithWithEmailandPassword(),
    @required TResult signInWithWithEmailandPassword(),
  }) {
    assert(emailAddressChanged != null);
    assert(passwordChanged != null);
    assert(registerWithWithEmailandPassword != null);
    assert(signInWithWithEmailandPassword != null);
    return passwordChanged(rawPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailAddressChanged(String rawEmailAddress),
    TResult passwordChanged(String rawPassword),
    TResult registerWithWithEmailandPassword(),
    TResult signInWithWithEmailandPassword(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(rawPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailAddressChanged(_EmailAddressChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult registerWithWithEmailandPassword(
            _RegisterWithWithEmailandPassword value),
    @required
        TResult signInWithWithEmailandPassword(
            _SignInWithWithEmailandPassword value),
  }) {
    assert(emailAddressChanged != null);
    assert(passwordChanged != null);
    assert(registerWithWithEmailandPassword != null);
    assert(signInWithWithEmailandPassword != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailAddressChanged(_EmailAddressChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult registerWithWithEmailandPassword(
        _RegisterWithWithEmailandPassword value),
    TResult signInWithWithEmailandPassword(
        _SignInWithWithEmailandPassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SignInFormEvent {
  const factory _PasswordChanged(String rawPassword) = _$_PasswordChanged;

  String get rawPassword;
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith;
}

/// @nodoc
abstract class _$RegisterWithWithEmailandPasswordCopyWith<$Res> {
  factory _$RegisterWithWithEmailandPasswordCopyWith(
          _RegisterWithWithEmailandPassword value,
          $Res Function(_RegisterWithWithEmailandPassword) then) =
      __$RegisterWithWithEmailandPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterWithWithEmailandPasswordCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$RegisterWithWithEmailandPasswordCopyWith<$Res> {
  __$RegisterWithWithEmailandPasswordCopyWithImpl(
      _RegisterWithWithEmailandPassword _value,
      $Res Function(_RegisterWithWithEmailandPassword) _then)
      : super(_value, (v) => _then(v as _RegisterWithWithEmailandPassword));

  @override
  _RegisterWithWithEmailandPassword get _value =>
      super._value as _RegisterWithWithEmailandPassword;
}

/// @nodoc
class _$_RegisterWithWithEmailandPassword
    with DiagnosticableTreeMixin
    implements _RegisterWithWithEmailandPassword {
  const _$_RegisterWithWithEmailandPassword();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.registerWithWithEmailandPassword()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInFormEvent.registerWithWithEmailandPassword'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterWithWithEmailandPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailAddressChanged(String rawEmailAddress),
    @required TResult passwordChanged(String rawPassword),
    @required TResult registerWithWithEmailandPassword(),
    @required TResult signInWithWithEmailandPassword(),
  }) {
    assert(emailAddressChanged != null);
    assert(passwordChanged != null);
    assert(registerWithWithEmailandPassword != null);
    assert(signInWithWithEmailandPassword != null);
    return registerWithWithEmailandPassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailAddressChanged(String rawEmailAddress),
    TResult passwordChanged(String rawPassword),
    TResult registerWithWithEmailandPassword(),
    TResult signInWithWithEmailandPassword(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerWithWithEmailandPassword != null) {
      return registerWithWithEmailandPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailAddressChanged(_EmailAddressChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult registerWithWithEmailandPassword(
            _RegisterWithWithEmailandPassword value),
    @required
        TResult signInWithWithEmailandPassword(
            _SignInWithWithEmailandPassword value),
  }) {
    assert(emailAddressChanged != null);
    assert(passwordChanged != null);
    assert(registerWithWithEmailandPassword != null);
    assert(signInWithWithEmailandPassword != null);
    return registerWithWithEmailandPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailAddressChanged(_EmailAddressChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult registerWithWithEmailandPassword(
        _RegisterWithWithEmailandPassword value),
    TResult signInWithWithEmailandPassword(
        _SignInWithWithEmailandPassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerWithWithEmailandPassword != null) {
      return registerWithWithEmailandPassword(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithWithEmailandPassword implements SignInFormEvent {
  const factory _RegisterWithWithEmailandPassword() =
      _$_RegisterWithWithEmailandPassword;
}

/// @nodoc
abstract class _$SignInWithWithEmailandPasswordCopyWith<$Res> {
  factory _$SignInWithWithEmailandPasswordCopyWith(
          _SignInWithWithEmailandPassword value,
          $Res Function(_SignInWithWithEmailandPassword) then) =
      __$SignInWithWithEmailandPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithWithEmailandPasswordCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SignInWithWithEmailandPasswordCopyWith<$Res> {
  __$SignInWithWithEmailandPasswordCopyWithImpl(
      _SignInWithWithEmailandPassword _value,
      $Res Function(_SignInWithWithEmailandPassword) _then)
      : super(_value, (v) => _then(v as _SignInWithWithEmailandPassword));

  @override
  _SignInWithWithEmailandPassword get _value =>
      super._value as _SignInWithWithEmailandPassword;
}

/// @nodoc
class _$_SignInWithWithEmailandPassword
    with DiagnosticableTreeMixin
    implements _SignInWithWithEmailandPassword {
  const _$_SignInWithWithEmailandPassword();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.signInWithWithEmailandPassword()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInFormEvent.signInWithWithEmailandPassword'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInWithWithEmailandPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailAddressChanged(String rawEmailAddress),
    @required TResult passwordChanged(String rawPassword),
    @required TResult registerWithWithEmailandPassword(),
    @required TResult signInWithWithEmailandPassword(),
  }) {
    assert(emailAddressChanged != null);
    assert(passwordChanged != null);
    assert(registerWithWithEmailandPassword != null);
    assert(signInWithWithEmailandPassword != null);
    return signInWithWithEmailandPassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailAddressChanged(String rawEmailAddress),
    TResult passwordChanged(String rawPassword),
    TResult registerWithWithEmailandPassword(),
    TResult signInWithWithEmailandPassword(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithWithEmailandPassword != null) {
      return signInWithWithEmailandPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailAddressChanged(_EmailAddressChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult registerWithWithEmailandPassword(
            _RegisterWithWithEmailandPassword value),
    @required
        TResult signInWithWithEmailandPassword(
            _SignInWithWithEmailandPassword value),
  }) {
    assert(emailAddressChanged != null);
    assert(passwordChanged != null);
    assert(registerWithWithEmailandPassword != null);
    assert(signInWithWithEmailandPassword != null);
    return signInWithWithEmailandPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailAddressChanged(_EmailAddressChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult registerWithWithEmailandPassword(
        _RegisterWithWithEmailandPassword value),
    TResult signInWithWithEmailandPassword(
        _SignInWithWithEmailandPassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithWithEmailandPassword != null) {
      return signInWithWithEmailandPassword(this);
    }
    return orElse();
  }
}

abstract class _SignInWithWithEmailandPassword implements SignInFormEvent {
  const factory _SignInWithWithEmailandPassword() =
      _$_SignInWithWithEmailandPassword;
}

/// @nodoc
class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

// ignore: unused_element
  _SignInFormState call(
      {@required EmailAddress emailAddress,
      @required Password password,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignInFormState(
      emailAddress: emailAddress,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignInFormState = _$SignInFormStateTearOff();

/// @nodoc
mixin _$SignInFormState {
  EmailAddress get emailAddress;
  Password get password;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;

  $SignInFormStateCopyWith<SignInFormState> get copyWith;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_SignInFormState
    with DiagnosticableTreeMixin
    implements _SignInFormState {
  const _$_SignInFormState(
      {@required this.emailAddress,
      @required this.password,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(emailAddress != null),
        assert(password != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormState'))
      ..add(DiagnosticsProperty('emailAddress', emailAddress))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty(
          'authFailureOrSuccessOption', authFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
          {@required
              EmailAddress emailAddress,
          @required
              Password password,
          @required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$_SignInFormState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith;
}
