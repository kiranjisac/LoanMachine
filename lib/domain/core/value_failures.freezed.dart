// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  _Auth<T> auth<T>(AuthValueFailure<dynamic> authValueFailure) {
    return _Auth<T>(
      authValueFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  AuthValueFailure<dynamic> get authValueFailure;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult auth(AuthValueFailure<dynamic> authValueFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthValueFailure<dynamic> authValueFailure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult auth(_Auth<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth<T> value),
    @required TResult orElse(),
  });

  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({AuthValueFailure<dynamic> authValueFailure});

  $AuthValueFailureCopyWith<dynamic, $Res> get authValueFailure;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object authValueFailure = freezed,
  }) {
    return _then(_value.copyWith(
      authValueFailure: authValueFailure == freezed
          ? _value.authValueFailure
          : authValueFailure as AuthValueFailure<dynamic>,
    ));
  }

  @override
  $AuthValueFailureCopyWith<dynamic, $Res> get authValueFailure {
    if (_value.authValueFailure == null) {
      return null;
    }
    return $AuthValueFailureCopyWith<dynamic, $Res>(_value.authValueFailure,
        (value) {
      return _then(_value.copyWith(authValueFailure: value));
    });
  }
}

/// @nodoc
abstract class _$AuthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$AuthCopyWith(_Auth<T> value, $Res Function(_Auth<T>) then) =
      __$AuthCopyWithImpl<T, $Res>;
  @override
  $Res call({AuthValueFailure<dynamic> authValueFailure});

  @override
  $AuthValueFailureCopyWith<dynamic, $Res> get authValueFailure;
}

/// @nodoc
class __$AuthCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$AuthCopyWith<T, $Res> {
  __$AuthCopyWithImpl(_Auth<T> _value, $Res Function(_Auth<T>) _then)
      : super(_value, (v) => _then(v as _Auth<T>));

  @override
  _Auth<T> get _value => super._value as _Auth<T>;

  @override
  $Res call({
    Object authValueFailure = freezed,
  }) {
    return _then(_Auth<T>(
      authValueFailure == freezed
          ? _value.authValueFailure
          : authValueFailure as AuthValueFailure<dynamic>,
    ));
  }
}

/// @nodoc
class _$_Auth<T> with DiagnosticableTreeMixin implements _Auth<T> {
  const _$_Auth(this.authValueFailure) : assert(authValueFailure != null);

  @override
  final AuthValueFailure<dynamic> authValueFailure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.auth(authValueFailure: $authValueFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.auth'))
      ..add(DiagnosticsProperty('authValueFailure', authValueFailure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Auth<T> &&
            (identical(other.authValueFailure, authValueFailure) ||
                const DeepCollectionEquality()
                    .equals(other.authValueFailure, authValueFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authValueFailure);

  @override
  _$AuthCopyWith<T, _Auth<T>> get copyWith =>
      __$AuthCopyWithImpl<T, _Auth<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult auth(AuthValueFailure<dynamic> authValueFailure),
  }) {
    assert(auth != null);
    return auth(authValueFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthValueFailure<dynamic> authValueFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (auth != null) {
      return auth(authValueFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult auth(_Auth<T> value),
  }) {
    assert(auth != null);
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class _Auth<T> implements ValueFailure<T> {
  const factory _Auth(AuthValueFailure<dynamic> authValueFailure) = _$_Auth<T>;

  @override
  AuthValueFailure<dynamic> get authValueFailure;
  @override
  _$AuthCopyWith<T, _Auth<T>> get copyWith;
}

/// @nodoc
class _$AuthValueFailureTearOff {
  const _$AuthValueFailureTearOff();

// ignore: unused_element
  _InvalidEmailID<T> invalidEmailID<T>({@required T invalidValue}) {
    return _InvalidEmailID<T>(
      invalidValue: invalidValue,
    );
  }

// ignore: unused_element
  _InvalidPassword<T> invalidPassword<T>({@required T invalidValue}) {
    return _InvalidPassword<T>(
      invalidValue: invalidValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthValueFailure = _$AuthValueFailureTearOff();

/// @nodoc
mixin _$AuthValueFailure<T> {
  T get invalidValue;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailID(T invalidValue),
    @required TResult invalidPassword(T invalidValue),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailID(T invalidValue),
    TResult invalidPassword(T invalidValue),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailID(_InvalidEmailID<T> value),
    @required TResult invalidPassword(_InvalidPassword<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailID(_InvalidEmailID<T> value),
    TResult invalidPassword(_InvalidPassword<T> value),
    @required TResult orElse(),
  });

  $AuthValueFailureCopyWith<T, AuthValueFailure<T>> get copyWith;
}

/// @nodoc
abstract class $AuthValueFailureCopyWith<T, $Res> {
  factory $AuthValueFailureCopyWith(
          AuthValueFailure<T> value, $Res Function(AuthValueFailure<T>) then) =
      _$AuthValueFailureCopyWithImpl<T, $Res>;
  $Res call({T invalidValue});
}

/// @nodoc
class _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  _$AuthValueFailureCopyWithImpl(this._value, this._then);

  final AuthValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(AuthValueFailure<T>) _then;

  @override
  $Res call({
    Object invalidValue = freezed,
  }) {
    return _then(_value.copyWith(
      invalidValue:
          invalidValue == freezed ? _value.invalidValue : invalidValue as T,
    ));
  }
}

/// @nodoc
abstract class _$InvalidEmailIDCopyWith<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  factory _$InvalidEmailIDCopyWith(
          _InvalidEmailID<T> value, $Res Function(_InvalidEmailID<T>) then) =
      __$InvalidEmailIDCopyWithImpl<T, $Res>;
  @override
  $Res call({T invalidValue});
}

/// @nodoc
class __$InvalidEmailIDCopyWithImpl<T, $Res>
    extends _$AuthValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidEmailIDCopyWith<T, $Res> {
  __$InvalidEmailIDCopyWithImpl(
      _InvalidEmailID<T> _value, $Res Function(_InvalidEmailID<T>) _then)
      : super(_value, (v) => _then(v as _InvalidEmailID<T>));

  @override
  _InvalidEmailID<T> get _value => super._value as _InvalidEmailID<T>;

  @override
  $Res call({
    Object invalidValue = freezed,
  }) {
    return _then(_InvalidEmailID<T>(
      invalidValue:
          invalidValue == freezed ? _value.invalidValue : invalidValue as T,
    ));
  }
}

/// @nodoc
class _$_InvalidEmailID<T>
    with DiagnosticableTreeMixin
    implements _InvalidEmailID<T> {
  const _$_InvalidEmailID({@required this.invalidValue})
      : assert(invalidValue != null);

  @override
  final T invalidValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthValueFailure<$T>.invalidEmailID(invalidValue: $invalidValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthValueFailure<$T>.invalidEmailID'))
      ..add(DiagnosticsProperty('invalidValue', invalidValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidEmailID<T> &&
            (identical(other.invalidValue, invalidValue) ||
                const DeepCollectionEquality()
                    .equals(other.invalidValue, invalidValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invalidValue);

  @override
  _$InvalidEmailIDCopyWith<T, _InvalidEmailID<T>> get copyWith =>
      __$InvalidEmailIDCopyWithImpl<T, _InvalidEmailID<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailID(T invalidValue),
    @required TResult invalidPassword(T invalidValue),
  }) {
    assert(invalidEmailID != null);
    assert(invalidPassword != null);
    return invalidEmailID(invalidValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailID(T invalidValue),
    TResult invalidPassword(T invalidValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailID != null) {
      return invalidEmailID(invalidValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailID(_InvalidEmailID<T> value),
    @required TResult invalidPassword(_InvalidPassword<T> value),
  }) {
    assert(invalidEmailID != null);
    assert(invalidPassword != null);
    return invalidEmailID(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailID(_InvalidEmailID<T> value),
    TResult invalidPassword(_InvalidPassword<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailID != null) {
      return invalidEmailID(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmailID<T> implements AuthValueFailure<T> {
  const factory _InvalidEmailID({@required T invalidValue}) =
      _$_InvalidEmailID<T>;

  @override
  T get invalidValue;
  @override
  _$InvalidEmailIDCopyWith<T, _InvalidEmailID<T>> get copyWith;
}

/// @nodoc
abstract class _$InvalidPasswordCopyWith<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  factory _$InvalidPasswordCopyWith(
          _InvalidPassword<T> value, $Res Function(_InvalidPassword<T>) then) =
      __$InvalidPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T invalidValue});
}

/// @nodoc
class __$InvalidPasswordCopyWithImpl<T, $Res>
    extends _$AuthValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidPasswordCopyWith<T, $Res> {
  __$InvalidPasswordCopyWithImpl(
      _InvalidPassword<T> _value, $Res Function(_InvalidPassword<T>) _then)
      : super(_value, (v) => _then(v as _InvalidPassword<T>));

  @override
  _InvalidPassword<T> get _value => super._value as _InvalidPassword<T>;

  @override
  $Res call({
    Object invalidValue = freezed,
  }) {
    return _then(_InvalidPassword<T>(
      invalidValue:
          invalidValue == freezed ? _value.invalidValue : invalidValue as T,
    ));
  }
}

/// @nodoc
class _$_InvalidPassword<T>
    with DiagnosticableTreeMixin
    implements _InvalidPassword<T> {
  const _$_InvalidPassword({@required this.invalidValue})
      : assert(invalidValue != null);

  @override
  final T invalidValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthValueFailure<$T>.invalidPassword(invalidValue: $invalidValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthValueFailure<$T>.invalidPassword'))
      ..add(DiagnosticsProperty('invalidValue', invalidValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidPassword<T> &&
            (identical(other.invalidValue, invalidValue) ||
                const DeepCollectionEquality()
                    .equals(other.invalidValue, invalidValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invalidValue);

  @override
  _$InvalidPasswordCopyWith<T, _InvalidPassword<T>> get copyWith =>
      __$InvalidPasswordCopyWithImpl<T, _InvalidPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailID(T invalidValue),
    @required TResult invalidPassword(T invalidValue),
  }) {
    assert(invalidEmailID != null);
    assert(invalidPassword != null);
    return invalidPassword(invalidValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailID(T invalidValue),
    TResult invalidPassword(T invalidValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword(invalidValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailID(_InvalidEmailID<T> value),
    @required TResult invalidPassword(_InvalidPassword<T> value),
  }) {
    assert(invalidEmailID != null);
    assert(invalidPassword != null);
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailID(_InvalidEmailID<T> value),
    TResult invalidPassword(_InvalidPassword<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class _InvalidPassword<T> implements AuthValueFailure<T> {
  const factory _InvalidPassword({@required T invalidValue}) =
      _$_InvalidPassword<T>;

  @override
  T get invalidValue;
  @override
  _$InvalidPasswordCopyWith<T, _InvalidPassword<T>> get copyWith;
}
