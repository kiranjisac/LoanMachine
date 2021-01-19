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

// ignore: unused_element
  _Loan<T> loan<T>(LoanValueFailures<dynamic> loanValueFailures) {
    return _Loan<T>(
      loanValueFailures,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult auth(AuthValueFailure<dynamic> authValueFailure),
    @required TResult loan(LoanValueFailures<dynamic> loanValueFailures),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthValueFailure<dynamic> authValueFailure),
    TResult loan(LoanValueFailures<dynamic> loanValueFailures),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult auth(_Auth<T> value),
    @required TResult loan(_Loan<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth<T> value),
    TResult loan(_Loan<T> value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class _$AuthCopyWith<T, $Res> {
  factory _$AuthCopyWith(_Auth<T> value, $Res Function(_Auth<T>) then) =
      __$AuthCopyWithImpl<T, $Res>;
  $Res call({AuthValueFailure<dynamic> authValueFailure});

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

  @JsonKey(ignore: true)
  @override
  _$AuthCopyWith<T, _Auth<T>> get copyWith =>
      __$AuthCopyWithImpl<T, _Auth<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult auth(AuthValueFailure<dynamic> authValueFailure),
    @required TResult loan(LoanValueFailures<dynamic> loanValueFailures),
  }) {
    assert(auth != null);
    assert(loan != null);
    return auth(authValueFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthValueFailure<dynamic> authValueFailure),
    TResult loan(LoanValueFailures<dynamic> loanValueFailures),
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
    @required TResult loan(_Loan<T> value),
  }) {
    assert(auth != null);
    assert(loan != null);
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth<T> value),
    TResult loan(_Loan<T> value),
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

  AuthValueFailure<dynamic> get authValueFailure;
  @JsonKey(ignore: true)
  _$AuthCopyWith<T, _Auth<T>> get copyWith;
}

/// @nodoc
abstract class _$LoanCopyWith<T, $Res> {
  factory _$LoanCopyWith(_Loan<T> value, $Res Function(_Loan<T>) then) =
      __$LoanCopyWithImpl<T, $Res>;
  $Res call({LoanValueFailures<dynamic> loanValueFailures});

  $LoanValueFailuresCopyWith<dynamic, $Res> get loanValueFailures;
}

/// @nodoc
class __$LoanCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$LoanCopyWith<T, $Res> {
  __$LoanCopyWithImpl(_Loan<T> _value, $Res Function(_Loan<T>) _then)
      : super(_value, (v) => _then(v as _Loan<T>));

  @override
  _Loan<T> get _value => super._value as _Loan<T>;

  @override
  $Res call({
    Object loanValueFailures = freezed,
  }) {
    return _then(_Loan<T>(
      loanValueFailures == freezed
          ? _value.loanValueFailures
          : loanValueFailures as LoanValueFailures<dynamic>,
    ));
  }

  @override
  $LoanValueFailuresCopyWith<dynamic, $Res> get loanValueFailures {
    if (_value.loanValueFailures == null) {
      return null;
    }
    return $LoanValueFailuresCopyWith<dynamic, $Res>(_value.loanValueFailures,
        (value) {
      return _then(_value.copyWith(loanValueFailures: value));
    });
  }
}

/// @nodoc
class _$_Loan<T> with DiagnosticableTreeMixin implements _Loan<T> {
  const _$_Loan(this.loanValueFailures) : assert(loanValueFailures != null);

  @override
  final LoanValueFailures<dynamic> loanValueFailures;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.loan(loanValueFailures: $loanValueFailures)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.loan'))
      ..add(DiagnosticsProperty('loanValueFailures', loanValueFailures));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loan<T> &&
            (identical(other.loanValueFailures, loanValueFailures) ||
                const DeepCollectionEquality()
                    .equals(other.loanValueFailures, loanValueFailures)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loanValueFailures);

  @JsonKey(ignore: true)
  @override
  _$LoanCopyWith<T, _Loan<T>> get copyWith =>
      __$LoanCopyWithImpl<T, _Loan<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult auth(AuthValueFailure<dynamic> authValueFailure),
    @required TResult loan(LoanValueFailures<dynamic> loanValueFailures),
  }) {
    assert(auth != null);
    assert(loan != null);
    return loan(loanValueFailures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthValueFailure<dynamic> authValueFailure),
    TResult loan(LoanValueFailures<dynamic> loanValueFailures),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loan != null) {
      return loan(loanValueFailures);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult auth(_Auth<T> value),
    @required TResult loan(_Loan<T> value),
  }) {
    assert(auth != null);
    assert(loan != null);
    return loan(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth<T> value),
    TResult loan(_Loan<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loan != null) {
      return loan(this);
    }
    return orElse();
  }
}

abstract class _Loan<T> implements ValueFailure<T> {
  const factory _Loan(LoanValueFailures<dynamic> loanValueFailures) =
      _$_Loan<T>;

  LoanValueFailures<dynamic> get loanValueFailures;
  @JsonKey(ignore: true)
  _$LoanCopyWith<T, _Loan<T>> get copyWith;
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

// ignore: unused_element
  _EmptyCredential<T> emptyCredential<T>({@required T invalidValue}) {
    return _EmptyCredential<T>(
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
    @required TResult emptyCredential(T invalidValue),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailID(T invalidValue),
    TResult invalidPassword(T invalidValue),
    TResult emptyCredential(T invalidValue),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailID(_InvalidEmailID<T> value),
    @required TResult invalidPassword(_InvalidPassword<T> value),
    @required TResult emptyCredential(_EmptyCredential<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailID(_InvalidEmailID<T> value),
    TResult invalidPassword(_InvalidPassword<T> value),
    TResult emptyCredential(_EmptyCredential<T> value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  _$InvalidEmailIDCopyWith<T, _InvalidEmailID<T>> get copyWith =>
      __$InvalidEmailIDCopyWithImpl<T, _InvalidEmailID<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailID(T invalidValue),
    @required TResult invalidPassword(T invalidValue),
    @required TResult emptyCredential(T invalidValue),
  }) {
    assert(invalidEmailID != null);
    assert(invalidPassword != null);
    assert(emptyCredential != null);
    return invalidEmailID(invalidValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailID(T invalidValue),
    TResult invalidPassword(T invalidValue),
    TResult emptyCredential(T invalidValue),
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
    @required TResult emptyCredential(_EmptyCredential<T> value),
  }) {
    assert(invalidEmailID != null);
    assert(invalidPassword != null);
    assert(emptyCredential != null);
    return invalidEmailID(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailID(_InvalidEmailID<T> value),
    TResult invalidPassword(_InvalidPassword<T> value),
    TResult emptyCredential(_EmptyCredential<T> value),
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
  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  _$InvalidPasswordCopyWith<T, _InvalidPassword<T>> get copyWith =>
      __$InvalidPasswordCopyWithImpl<T, _InvalidPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailID(T invalidValue),
    @required TResult invalidPassword(T invalidValue),
    @required TResult emptyCredential(T invalidValue),
  }) {
    assert(invalidEmailID != null);
    assert(invalidPassword != null);
    assert(emptyCredential != null);
    return invalidPassword(invalidValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailID(T invalidValue),
    TResult invalidPassword(T invalidValue),
    TResult emptyCredential(T invalidValue),
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
    @required TResult emptyCredential(_EmptyCredential<T> value),
  }) {
    assert(invalidEmailID != null);
    assert(invalidPassword != null);
    assert(emptyCredential != null);
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailID(_InvalidEmailID<T> value),
    TResult invalidPassword(_InvalidPassword<T> value),
    TResult emptyCredential(_EmptyCredential<T> value),
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
  @JsonKey(ignore: true)
  _$InvalidPasswordCopyWith<T, _InvalidPassword<T>> get copyWith;
}

/// @nodoc
abstract class _$EmptyCredentialCopyWith<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  factory _$EmptyCredentialCopyWith(
          _EmptyCredential<T> value, $Res Function(_EmptyCredential<T>) then) =
      __$EmptyCredentialCopyWithImpl<T, $Res>;
  @override
  $Res call({T invalidValue});
}

/// @nodoc
class __$EmptyCredentialCopyWithImpl<T, $Res>
    extends _$AuthValueFailureCopyWithImpl<T, $Res>
    implements _$EmptyCredentialCopyWith<T, $Res> {
  __$EmptyCredentialCopyWithImpl(
      _EmptyCredential<T> _value, $Res Function(_EmptyCredential<T>) _then)
      : super(_value, (v) => _then(v as _EmptyCredential<T>));

  @override
  _EmptyCredential<T> get _value => super._value as _EmptyCredential<T>;

  @override
  $Res call({
    Object invalidValue = freezed,
  }) {
    return _then(_EmptyCredential<T>(
      invalidValue:
          invalidValue == freezed ? _value.invalidValue : invalidValue as T,
    ));
  }
}

/// @nodoc
class _$_EmptyCredential<T>
    with DiagnosticableTreeMixin
    implements _EmptyCredential<T> {
  const _$_EmptyCredential({@required this.invalidValue})
      : assert(invalidValue != null);

  @override
  final T invalidValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthValueFailure<$T>.emptyCredential(invalidValue: $invalidValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthValueFailure<$T>.emptyCredential'))
      ..add(DiagnosticsProperty('invalidValue', invalidValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmptyCredential<T> &&
            (identical(other.invalidValue, invalidValue) ||
                const DeepCollectionEquality()
                    .equals(other.invalidValue, invalidValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invalidValue);

  @JsonKey(ignore: true)
  @override
  _$EmptyCredentialCopyWith<T, _EmptyCredential<T>> get copyWith =>
      __$EmptyCredentialCopyWithImpl<T, _EmptyCredential<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailID(T invalidValue),
    @required TResult invalidPassword(T invalidValue),
    @required TResult emptyCredential(T invalidValue),
  }) {
    assert(invalidEmailID != null);
    assert(invalidPassword != null);
    assert(emptyCredential != null);
    return emptyCredential(invalidValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailID(T invalidValue),
    TResult invalidPassword(T invalidValue),
    TResult emptyCredential(T invalidValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emptyCredential != null) {
      return emptyCredential(invalidValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailID(_InvalidEmailID<T> value),
    @required TResult invalidPassword(_InvalidPassword<T> value),
    @required TResult emptyCredential(_EmptyCredential<T> value),
  }) {
    assert(invalidEmailID != null);
    assert(invalidPassword != null);
    assert(emptyCredential != null);
    return emptyCredential(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailID(_InvalidEmailID<T> value),
    TResult invalidPassword(_InvalidPassword<T> value),
    TResult emptyCredential(_EmptyCredential<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emptyCredential != null) {
      return emptyCredential(this);
    }
    return orElse();
  }
}

abstract class _EmptyCredential<T> implements AuthValueFailure<T> {
  const factory _EmptyCredential({@required T invalidValue}) =
      _$_EmptyCredential<T>;

  @override
  T get invalidValue;
  @override
  @JsonKey(ignore: true)
  _$EmptyCredentialCopyWith<T, _EmptyCredential<T>> get copyWith;
}

/// @nodoc
class _$LoanValueFailuresTearOff {
  const _$LoanValueFailuresTearOff();

// ignore: unused_element
  _InvalidGender<T> invalidGender<T>({@required T invalidValue}) {
    return _InvalidGender<T>(
      invalidValue: invalidValue,
    );
  }

// ignore: unused_element
  _InvalidMarriedStatus<T> invalidMarriedStatus<T>({@required T invalidValue}) {
    return _InvalidMarriedStatus<T>(
      invalidValue: invalidValue,
    );
  }

// ignore: unused_element
  _StringEmpty<T> stringEmpty<T>({@required T invalidValue}) {
    return _StringEmpty<T>(
      invalidValue: invalidValue,
    );
  }

// ignore: unused_element
  _InvalidEducationStatus<T> invalidEducationStatus<T>(
      {@required T invalidValue}) {
    return _InvalidEducationStatus<T>(
      invalidValue: invalidValue,
    );
  }

// ignore: unused_element
  _InvalidSelfEmployedStatus<T> invalidSelfEmployedStatus<T>(
      {@required T invalidValue}) {
    return _InvalidSelfEmployedStatus<T>(
      invalidValue: invalidValue,
    );
  }

// ignore: unused_element
  _InvalidPropertyArea<T> invalidPropertyArea<T>({@required T invalidValue}) {
    return _InvalidPropertyArea<T>(
      invalidValue: invalidValue,
    );
  }

// ignore: unused_element
  _InvalidApplicantIncome<T> invalidApplicantIncome<T>(
      {@required T invalidValue}) {
    return _InvalidApplicantIncome<T>(
      invalidValue: invalidValue,
    );
  }

// ignore: unused_element
  _InvalidCoApplicantIncome<T> invalidCoApplicantIncome<T>(
      {@required T invalidValue}) {
    return _InvalidCoApplicantIncome<T>(
      invalidValue: invalidValue,
    );
  }

// ignore: unused_element
  _InvalidLoanAmount<T> invalidLoanAmount<T>({@required T invalidValue}) {
    return _InvalidLoanAmount<T>(
      invalidValue: invalidValue,
    );
  }

// ignore: unused_element
  _InvalidLoanTerm<T> invalidLoanTerm<T>({@required T invalidValue}) {
    return _InvalidLoanTerm<T>(
      invalidValue: invalidValue,
    );
  }

// ignore: unused_element
  _InvalidDependentsNo<T> invalidDependentsNo<T>() {
    return _InvalidDependentsNo<T>();
  }

// ignore: unused_element
  _IntergerNotPositive<T> integerNotPositive<T>() {
    return _IntergerNotPositive<T>();
  }

// ignore: unused_element
  _InvalidIntegerValue<T> invalidIntegerValue<T>({@required T invalidValue}) {
    return _InvalidIntegerValue<T>(
      invalidValue: invalidValue,
    );
  }

// ignore: unused_element
  _InvalidCreditHistory<T> invalidCreditHistory<T>({@required T invalidValue}) {
    return _InvalidCreditHistory<T>(
      invalidValue: invalidValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoanValueFailures = _$LoanValueFailuresTearOff();

/// @nodoc
mixin _$LoanValueFailures<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidGender(T invalidValue),
    @required TResult invalidMarriedStatus(T invalidValue),
    @required TResult stringEmpty(T invalidValue),
    @required TResult invalidEducationStatus(T invalidValue),
    @required TResult invalidSelfEmployedStatus(T invalidValue),
    @required TResult invalidPropertyArea(T invalidValue),
    @required TResult invalidApplicantIncome(T invalidValue),
    @required TResult invalidCoApplicantIncome(T invalidValue),
    @required TResult invalidLoanAmount(T invalidValue),
    @required TResult invalidLoanTerm(T invalidValue),
    @required TResult invalidDependentsNo(),
    @required TResult integerNotPositive(),
    @required TResult invalidIntegerValue(T invalidValue),
    @required TResult invalidCreditHistory(T invalidValue),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidGender(T invalidValue),
    TResult invalidMarriedStatus(T invalidValue),
    TResult stringEmpty(T invalidValue),
    TResult invalidEducationStatus(T invalidValue),
    TResult invalidSelfEmployedStatus(T invalidValue),
    TResult invalidPropertyArea(T invalidValue),
    TResult invalidApplicantIncome(T invalidValue),
    TResult invalidCoApplicantIncome(T invalidValue),
    TResult invalidLoanAmount(T invalidValue),
    TResult invalidLoanTerm(T invalidValue),
    TResult invalidDependentsNo(),
    TResult integerNotPositive(),
    TResult invalidIntegerValue(T invalidValue),
    TResult invalidCreditHistory(T invalidValue),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidGender(_InvalidGender<T> value),
    @required TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    @required TResult stringEmpty(_StringEmpty<T> value),
    @required TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    @required
        TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    @required TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    @required TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    @required
        TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    @required TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    @required TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    @required TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    @required TResult integerNotPositive(_IntergerNotPositive<T> value),
    @required TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    @required TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidGender(_InvalidGender<T> value),
    TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    TResult stringEmpty(_StringEmpty<T> value),
    TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    TResult integerNotPositive(_IntergerNotPositive<T> value),
    TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LoanValueFailuresCopyWith<T, $Res> {
  factory $LoanValueFailuresCopyWith(LoanValueFailures<T> value,
          $Res Function(LoanValueFailures<T>) then) =
      _$LoanValueFailuresCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$LoanValueFailuresCopyWithImpl<T, $Res>
    implements $LoanValueFailuresCopyWith<T, $Res> {
  _$LoanValueFailuresCopyWithImpl(this._value, this._then);

  final LoanValueFailures<T> _value;
  // ignore: unused_field
  final $Res Function(LoanValueFailures<T>) _then;
}

/// @nodoc
abstract class _$InvalidGenderCopyWith<T, $Res> {
  factory _$InvalidGenderCopyWith(
          _InvalidGender<T> value, $Res Function(_InvalidGender<T>) then) =
      __$InvalidGenderCopyWithImpl<T, $Res>;
  $Res call({T invalidValue});
}

/// @nodoc
class __$InvalidGenderCopyWithImpl<T, $Res>
    extends _$LoanValueFailuresCopyWithImpl<T, $Res>
    implements _$InvalidGenderCopyWith<T, $Res> {
  __$InvalidGenderCopyWithImpl(
      _InvalidGender<T> _value, $Res Function(_InvalidGender<T>) _then)
      : super(_value, (v) => _then(v as _InvalidGender<T>));

  @override
  _InvalidGender<T> get _value => super._value as _InvalidGender<T>;

  @override
  $Res call({
    Object invalidValue = freezed,
  }) {
    return _then(_InvalidGender<T>(
      invalidValue:
          invalidValue == freezed ? _value.invalidValue : invalidValue as T,
    ));
  }
}

/// @nodoc
class _$_InvalidGender<T>
    with DiagnosticableTreeMixin
    implements _InvalidGender<T> {
  const _$_InvalidGender({@required this.invalidValue})
      : assert(invalidValue != null);

  @override
  final T invalidValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoanValueFailures<$T>.invalidGender(invalidValue: $invalidValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoanValueFailures<$T>.invalidGender'))
      ..add(DiagnosticsProperty('invalidValue', invalidValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidGender<T> &&
            (identical(other.invalidValue, invalidValue) ||
                const DeepCollectionEquality()
                    .equals(other.invalidValue, invalidValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invalidValue);

  @JsonKey(ignore: true)
  @override
  _$InvalidGenderCopyWith<T, _InvalidGender<T>> get copyWith =>
      __$InvalidGenderCopyWithImpl<T, _InvalidGender<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidGender(T invalidValue),
    @required TResult invalidMarriedStatus(T invalidValue),
    @required TResult stringEmpty(T invalidValue),
    @required TResult invalidEducationStatus(T invalidValue),
    @required TResult invalidSelfEmployedStatus(T invalidValue),
    @required TResult invalidPropertyArea(T invalidValue),
    @required TResult invalidApplicantIncome(T invalidValue),
    @required TResult invalidCoApplicantIncome(T invalidValue),
    @required TResult invalidLoanAmount(T invalidValue),
    @required TResult invalidLoanTerm(T invalidValue),
    @required TResult invalidDependentsNo(),
    @required TResult integerNotPositive(),
    @required TResult invalidIntegerValue(T invalidValue),
    @required TResult invalidCreditHistory(T invalidValue),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidGender(invalidValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidGender(T invalidValue),
    TResult invalidMarriedStatus(T invalidValue),
    TResult stringEmpty(T invalidValue),
    TResult invalidEducationStatus(T invalidValue),
    TResult invalidSelfEmployedStatus(T invalidValue),
    TResult invalidPropertyArea(T invalidValue),
    TResult invalidApplicantIncome(T invalidValue),
    TResult invalidCoApplicantIncome(T invalidValue),
    TResult invalidLoanAmount(T invalidValue),
    TResult invalidLoanTerm(T invalidValue),
    TResult invalidDependentsNo(),
    TResult integerNotPositive(),
    TResult invalidIntegerValue(T invalidValue),
    TResult invalidCreditHistory(T invalidValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidGender != null) {
      return invalidGender(invalidValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidGender(_InvalidGender<T> value),
    @required TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    @required TResult stringEmpty(_StringEmpty<T> value),
    @required TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    @required
        TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    @required TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    @required TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    @required
        TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    @required TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    @required TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    @required TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    @required TResult integerNotPositive(_IntergerNotPositive<T> value),
    @required TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    @required TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidGender(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidGender(_InvalidGender<T> value),
    TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    TResult stringEmpty(_StringEmpty<T> value),
    TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    TResult integerNotPositive(_IntergerNotPositive<T> value),
    TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidGender != null) {
      return invalidGender(this);
    }
    return orElse();
  }
}

abstract class _InvalidGender<T> implements LoanValueFailures<T> {
  const factory _InvalidGender({@required T invalidValue}) =
      _$_InvalidGender<T>;

  T get invalidValue;
  @JsonKey(ignore: true)
  _$InvalidGenderCopyWith<T, _InvalidGender<T>> get copyWith;
}

/// @nodoc
abstract class _$InvalidMarriedStatusCopyWith<T, $Res> {
  factory _$InvalidMarriedStatusCopyWith(_InvalidMarriedStatus<T> value,
          $Res Function(_InvalidMarriedStatus<T>) then) =
      __$InvalidMarriedStatusCopyWithImpl<T, $Res>;
  $Res call({T invalidValue});
}

/// @nodoc
class __$InvalidMarriedStatusCopyWithImpl<T, $Res>
    extends _$LoanValueFailuresCopyWithImpl<T, $Res>
    implements _$InvalidMarriedStatusCopyWith<T, $Res> {
  __$InvalidMarriedStatusCopyWithImpl(_InvalidMarriedStatus<T> _value,
      $Res Function(_InvalidMarriedStatus<T>) _then)
      : super(_value, (v) => _then(v as _InvalidMarriedStatus<T>));

  @override
  _InvalidMarriedStatus<T> get _value =>
      super._value as _InvalidMarriedStatus<T>;

  @override
  $Res call({
    Object invalidValue = freezed,
  }) {
    return _then(_InvalidMarriedStatus<T>(
      invalidValue:
          invalidValue == freezed ? _value.invalidValue : invalidValue as T,
    ));
  }
}

/// @nodoc
class _$_InvalidMarriedStatus<T>
    with DiagnosticableTreeMixin
    implements _InvalidMarriedStatus<T> {
  const _$_InvalidMarriedStatus({@required this.invalidValue})
      : assert(invalidValue != null);

  @override
  final T invalidValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoanValueFailures<$T>.invalidMarriedStatus(invalidValue: $invalidValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'LoanValueFailures<$T>.invalidMarriedStatus'))
      ..add(DiagnosticsProperty('invalidValue', invalidValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidMarriedStatus<T> &&
            (identical(other.invalidValue, invalidValue) ||
                const DeepCollectionEquality()
                    .equals(other.invalidValue, invalidValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invalidValue);

  @JsonKey(ignore: true)
  @override
  _$InvalidMarriedStatusCopyWith<T, _InvalidMarriedStatus<T>> get copyWith =>
      __$InvalidMarriedStatusCopyWithImpl<T, _InvalidMarriedStatus<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidGender(T invalidValue),
    @required TResult invalidMarriedStatus(T invalidValue),
    @required TResult stringEmpty(T invalidValue),
    @required TResult invalidEducationStatus(T invalidValue),
    @required TResult invalidSelfEmployedStatus(T invalidValue),
    @required TResult invalidPropertyArea(T invalidValue),
    @required TResult invalidApplicantIncome(T invalidValue),
    @required TResult invalidCoApplicantIncome(T invalidValue),
    @required TResult invalidLoanAmount(T invalidValue),
    @required TResult invalidLoanTerm(T invalidValue),
    @required TResult invalidDependentsNo(),
    @required TResult integerNotPositive(),
    @required TResult invalidIntegerValue(T invalidValue),
    @required TResult invalidCreditHistory(T invalidValue),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidMarriedStatus(invalidValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidGender(T invalidValue),
    TResult invalidMarriedStatus(T invalidValue),
    TResult stringEmpty(T invalidValue),
    TResult invalidEducationStatus(T invalidValue),
    TResult invalidSelfEmployedStatus(T invalidValue),
    TResult invalidPropertyArea(T invalidValue),
    TResult invalidApplicantIncome(T invalidValue),
    TResult invalidCoApplicantIncome(T invalidValue),
    TResult invalidLoanAmount(T invalidValue),
    TResult invalidLoanTerm(T invalidValue),
    TResult invalidDependentsNo(),
    TResult integerNotPositive(),
    TResult invalidIntegerValue(T invalidValue),
    TResult invalidCreditHistory(T invalidValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidMarriedStatus != null) {
      return invalidMarriedStatus(invalidValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidGender(_InvalidGender<T> value),
    @required TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    @required TResult stringEmpty(_StringEmpty<T> value),
    @required TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    @required
        TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    @required TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    @required TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    @required
        TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    @required TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    @required TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    @required TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    @required TResult integerNotPositive(_IntergerNotPositive<T> value),
    @required TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    @required TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidMarriedStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidGender(_InvalidGender<T> value),
    TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    TResult stringEmpty(_StringEmpty<T> value),
    TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    TResult integerNotPositive(_IntergerNotPositive<T> value),
    TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidMarriedStatus != null) {
      return invalidMarriedStatus(this);
    }
    return orElse();
  }
}

abstract class _InvalidMarriedStatus<T> implements LoanValueFailures<T> {
  const factory _InvalidMarriedStatus({@required T invalidValue}) =
      _$_InvalidMarriedStatus<T>;

  T get invalidValue;
  @JsonKey(ignore: true)
  _$InvalidMarriedStatusCopyWith<T, _InvalidMarriedStatus<T>> get copyWith;
}

/// @nodoc
abstract class _$StringEmptyCopyWith<T, $Res> {
  factory _$StringEmptyCopyWith(
          _StringEmpty<T> value, $Res Function(_StringEmpty<T>) then) =
      __$StringEmptyCopyWithImpl<T, $Res>;
  $Res call({T invalidValue});
}

/// @nodoc
class __$StringEmptyCopyWithImpl<T, $Res>
    extends _$LoanValueFailuresCopyWithImpl<T, $Res>
    implements _$StringEmptyCopyWith<T, $Res> {
  __$StringEmptyCopyWithImpl(
      _StringEmpty<T> _value, $Res Function(_StringEmpty<T>) _then)
      : super(_value, (v) => _then(v as _StringEmpty<T>));

  @override
  _StringEmpty<T> get _value => super._value as _StringEmpty<T>;

  @override
  $Res call({
    Object invalidValue = freezed,
  }) {
    return _then(_StringEmpty<T>(
      invalidValue:
          invalidValue == freezed ? _value.invalidValue : invalidValue as T,
    ));
  }
}

/// @nodoc
class _$_StringEmpty<T>
    with DiagnosticableTreeMixin
    implements _StringEmpty<T> {
  const _$_StringEmpty({@required this.invalidValue})
      : assert(invalidValue != null);

  @override
  final T invalidValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoanValueFailures<$T>.stringEmpty(invalidValue: $invalidValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoanValueFailures<$T>.stringEmpty'))
      ..add(DiagnosticsProperty('invalidValue', invalidValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StringEmpty<T> &&
            (identical(other.invalidValue, invalidValue) ||
                const DeepCollectionEquality()
                    .equals(other.invalidValue, invalidValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invalidValue);

  @JsonKey(ignore: true)
  @override
  _$StringEmptyCopyWith<T, _StringEmpty<T>> get copyWith =>
      __$StringEmptyCopyWithImpl<T, _StringEmpty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidGender(T invalidValue),
    @required TResult invalidMarriedStatus(T invalidValue),
    @required TResult stringEmpty(T invalidValue),
    @required TResult invalidEducationStatus(T invalidValue),
    @required TResult invalidSelfEmployedStatus(T invalidValue),
    @required TResult invalidPropertyArea(T invalidValue),
    @required TResult invalidApplicantIncome(T invalidValue),
    @required TResult invalidCoApplicantIncome(T invalidValue),
    @required TResult invalidLoanAmount(T invalidValue),
    @required TResult invalidLoanTerm(T invalidValue),
    @required TResult invalidDependentsNo(),
    @required TResult integerNotPositive(),
    @required TResult invalidIntegerValue(T invalidValue),
    @required TResult invalidCreditHistory(T invalidValue),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return stringEmpty(invalidValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidGender(T invalidValue),
    TResult invalidMarriedStatus(T invalidValue),
    TResult stringEmpty(T invalidValue),
    TResult invalidEducationStatus(T invalidValue),
    TResult invalidSelfEmployedStatus(T invalidValue),
    TResult invalidPropertyArea(T invalidValue),
    TResult invalidApplicantIncome(T invalidValue),
    TResult invalidCoApplicantIncome(T invalidValue),
    TResult invalidLoanAmount(T invalidValue),
    TResult invalidLoanTerm(T invalidValue),
    TResult invalidDependentsNo(),
    TResult integerNotPositive(),
    TResult invalidIntegerValue(T invalidValue),
    TResult invalidCreditHistory(T invalidValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stringEmpty != null) {
      return stringEmpty(invalidValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidGender(_InvalidGender<T> value),
    @required TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    @required TResult stringEmpty(_StringEmpty<T> value),
    @required TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    @required
        TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    @required TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    @required TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    @required
        TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    @required TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    @required TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    @required TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    @required TResult integerNotPositive(_IntergerNotPositive<T> value),
    @required TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    @required TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return stringEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidGender(_InvalidGender<T> value),
    TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    TResult stringEmpty(_StringEmpty<T> value),
    TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    TResult integerNotPositive(_IntergerNotPositive<T> value),
    TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stringEmpty != null) {
      return stringEmpty(this);
    }
    return orElse();
  }
}

abstract class _StringEmpty<T> implements LoanValueFailures<T> {
  const factory _StringEmpty({@required T invalidValue}) = _$_StringEmpty<T>;

  T get invalidValue;
  @JsonKey(ignore: true)
  _$StringEmptyCopyWith<T, _StringEmpty<T>> get copyWith;
}

/// @nodoc
abstract class _$InvalidEducationStatusCopyWith<T, $Res> {
  factory _$InvalidEducationStatusCopyWith(_InvalidEducationStatus<T> value,
          $Res Function(_InvalidEducationStatus<T>) then) =
      __$InvalidEducationStatusCopyWithImpl<T, $Res>;
  $Res call({T invalidValue});
}

/// @nodoc
class __$InvalidEducationStatusCopyWithImpl<T, $Res>
    extends _$LoanValueFailuresCopyWithImpl<T, $Res>
    implements _$InvalidEducationStatusCopyWith<T, $Res> {
  __$InvalidEducationStatusCopyWithImpl(_InvalidEducationStatus<T> _value,
      $Res Function(_InvalidEducationStatus<T>) _then)
      : super(_value, (v) => _then(v as _InvalidEducationStatus<T>));

  @override
  _InvalidEducationStatus<T> get _value =>
      super._value as _InvalidEducationStatus<T>;

  @override
  $Res call({
    Object invalidValue = freezed,
  }) {
    return _then(_InvalidEducationStatus<T>(
      invalidValue:
          invalidValue == freezed ? _value.invalidValue : invalidValue as T,
    ));
  }
}

/// @nodoc
class _$_InvalidEducationStatus<T>
    with DiagnosticableTreeMixin
    implements _InvalidEducationStatus<T> {
  const _$_InvalidEducationStatus({@required this.invalidValue})
      : assert(invalidValue != null);

  @override
  final T invalidValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoanValueFailures<$T>.invalidEducationStatus(invalidValue: $invalidValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'LoanValueFailures<$T>.invalidEducationStatus'))
      ..add(DiagnosticsProperty('invalidValue', invalidValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidEducationStatus<T> &&
            (identical(other.invalidValue, invalidValue) ||
                const DeepCollectionEquality()
                    .equals(other.invalidValue, invalidValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invalidValue);

  @JsonKey(ignore: true)
  @override
  _$InvalidEducationStatusCopyWith<T, _InvalidEducationStatus<T>>
      get copyWith =>
          __$InvalidEducationStatusCopyWithImpl<T, _InvalidEducationStatus<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidGender(T invalidValue),
    @required TResult invalidMarriedStatus(T invalidValue),
    @required TResult stringEmpty(T invalidValue),
    @required TResult invalidEducationStatus(T invalidValue),
    @required TResult invalidSelfEmployedStatus(T invalidValue),
    @required TResult invalidPropertyArea(T invalidValue),
    @required TResult invalidApplicantIncome(T invalidValue),
    @required TResult invalidCoApplicantIncome(T invalidValue),
    @required TResult invalidLoanAmount(T invalidValue),
    @required TResult invalidLoanTerm(T invalidValue),
    @required TResult invalidDependentsNo(),
    @required TResult integerNotPositive(),
    @required TResult invalidIntegerValue(T invalidValue),
    @required TResult invalidCreditHistory(T invalidValue),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidEducationStatus(invalidValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidGender(T invalidValue),
    TResult invalidMarriedStatus(T invalidValue),
    TResult stringEmpty(T invalidValue),
    TResult invalidEducationStatus(T invalidValue),
    TResult invalidSelfEmployedStatus(T invalidValue),
    TResult invalidPropertyArea(T invalidValue),
    TResult invalidApplicantIncome(T invalidValue),
    TResult invalidCoApplicantIncome(T invalidValue),
    TResult invalidLoanAmount(T invalidValue),
    TResult invalidLoanTerm(T invalidValue),
    TResult invalidDependentsNo(),
    TResult integerNotPositive(),
    TResult invalidIntegerValue(T invalidValue),
    TResult invalidCreditHistory(T invalidValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEducationStatus != null) {
      return invalidEducationStatus(invalidValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidGender(_InvalidGender<T> value),
    @required TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    @required TResult stringEmpty(_StringEmpty<T> value),
    @required TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    @required
        TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    @required TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    @required TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    @required
        TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    @required TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    @required TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    @required TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    @required TResult integerNotPositive(_IntergerNotPositive<T> value),
    @required TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    @required TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidEducationStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidGender(_InvalidGender<T> value),
    TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    TResult stringEmpty(_StringEmpty<T> value),
    TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    TResult integerNotPositive(_IntergerNotPositive<T> value),
    TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEducationStatus != null) {
      return invalidEducationStatus(this);
    }
    return orElse();
  }
}

abstract class _InvalidEducationStatus<T> implements LoanValueFailures<T> {
  const factory _InvalidEducationStatus({@required T invalidValue}) =
      _$_InvalidEducationStatus<T>;

  T get invalidValue;
  @JsonKey(ignore: true)
  _$InvalidEducationStatusCopyWith<T, _InvalidEducationStatus<T>> get copyWith;
}

/// @nodoc
abstract class _$InvalidSelfEmployedStatusCopyWith<T, $Res> {
  factory _$InvalidSelfEmployedStatusCopyWith(
          _InvalidSelfEmployedStatus<T> value,
          $Res Function(_InvalidSelfEmployedStatus<T>) then) =
      __$InvalidSelfEmployedStatusCopyWithImpl<T, $Res>;
  $Res call({T invalidValue});
}

/// @nodoc
class __$InvalidSelfEmployedStatusCopyWithImpl<T, $Res>
    extends _$LoanValueFailuresCopyWithImpl<T, $Res>
    implements _$InvalidSelfEmployedStatusCopyWith<T, $Res> {
  __$InvalidSelfEmployedStatusCopyWithImpl(_InvalidSelfEmployedStatus<T> _value,
      $Res Function(_InvalidSelfEmployedStatus<T>) _then)
      : super(_value, (v) => _then(v as _InvalidSelfEmployedStatus<T>));

  @override
  _InvalidSelfEmployedStatus<T> get _value =>
      super._value as _InvalidSelfEmployedStatus<T>;

  @override
  $Res call({
    Object invalidValue = freezed,
  }) {
    return _then(_InvalidSelfEmployedStatus<T>(
      invalidValue:
          invalidValue == freezed ? _value.invalidValue : invalidValue as T,
    ));
  }
}

/// @nodoc
class _$_InvalidSelfEmployedStatus<T>
    with DiagnosticableTreeMixin
    implements _InvalidSelfEmployedStatus<T> {
  const _$_InvalidSelfEmployedStatus({@required this.invalidValue})
      : assert(invalidValue != null);

  @override
  final T invalidValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoanValueFailures<$T>.invalidSelfEmployedStatus(invalidValue: $invalidValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'LoanValueFailures<$T>.invalidSelfEmployedStatus'))
      ..add(DiagnosticsProperty('invalidValue', invalidValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidSelfEmployedStatus<T> &&
            (identical(other.invalidValue, invalidValue) ||
                const DeepCollectionEquality()
                    .equals(other.invalidValue, invalidValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invalidValue);

  @JsonKey(ignore: true)
  @override
  _$InvalidSelfEmployedStatusCopyWith<T, _InvalidSelfEmployedStatus<T>>
      get copyWith => __$InvalidSelfEmployedStatusCopyWithImpl<T,
          _InvalidSelfEmployedStatus<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidGender(T invalidValue),
    @required TResult invalidMarriedStatus(T invalidValue),
    @required TResult stringEmpty(T invalidValue),
    @required TResult invalidEducationStatus(T invalidValue),
    @required TResult invalidSelfEmployedStatus(T invalidValue),
    @required TResult invalidPropertyArea(T invalidValue),
    @required TResult invalidApplicantIncome(T invalidValue),
    @required TResult invalidCoApplicantIncome(T invalidValue),
    @required TResult invalidLoanAmount(T invalidValue),
    @required TResult invalidLoanTerm(T invalidValue),
    @required TResult invalidDependentsNo(),
    @required TResult integerNotPositive(),
    @required TResult invalidIntegerValue(T invalidValue),
    @required TResult invalidCreditHistory(T invalidValue),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidSelfEmployedStatus(invalidValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidGender(T invalidValue),
    TResult invalidMarriedStatus(T invalidValue),
    TResult stringEmpty(T invalidValue),
    TResult invalidEducationStatus(T invalidValue),
    TResult invalidSelfEmployedStatus(T invalidValue),
    TResult invalidPropertyArea(T invalidValue),
    TResult invalidApplicantIncome(T invalidValue),
    TResult invalidCoApplicantIncome(T invalidValue),
    TResult invalidLoanAmount(T invalidValue),
    TResult invalidLoanTerm(T invalidValue),
    TResult invalidDependentsNo(),
    TResult integerNotPositive(),
    TResult invalidIntegerValue(T invalidValue),
    TResult invalidCreditHistory(T invalidValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidSelfEmployedStatus != null) {
      return invalidSelfEmployedStatus(invalidValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidGender(_InvalidGender<T> value),
    @required TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    @required TResult stringEmpty(_StringEmpty<T> value),
    @required TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    @required
        TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    @required TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    @required TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    @required
        TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    @required TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    @required TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    @required TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    @required TResult integerNotPositive(_IntergerNotPositive<T> value),
    @required TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    @required TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidSelfEmployedStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidGender(_InvalidGender<T> value),
    TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    TResult stringEmpty(_StringEmpty<T> value),
    TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    TResult integerNotPositive(_IntergerNotPositive<T> value),
    TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidSelfEmployedStatus != null) {
      return invalidSelfEmployedStatus(this);
    }
    return orElse();
  }
}

abstract class _InvalidSelfEmployedStatus<T> implements LoanValueFailures<T> {
  const factory _InvalidSelfEmployedStatus({@required T invalidValue}) =
      _$_InvalidSelfEmployedStatus<T>;

  T get invalidValue;
  @JsonKey(ignore: true)
  _$InvalidSelfEmployedStatusCopyWith<T, _InvalidSelfEmployedStatus<T>>
      get copyWith;
}

/// @nodoc
abstract class _$InvalidPropertyAreaCopyWith<T, $Res> {
  factory _$InvalidPropertyAreaCopyWith(_InvalidPropertyArea<T> value,
          $Res Function(_InvalidPropertyArea<T>) then) =
      __$InvalidPropertyAreaCopyWithImpl<T, $Res>;
  $Res call({T invalidValue});
}

/// @nodoc
class __$InvalidPropertyAreaCopyWithImpl<T, $Res>
    extends _$LoanValueFailuresCopyWithImpl<T, $Res>
    implements _$InvalidPropertyAreaCopyWith<T, $Res> {
  __$InvalidPropertyAreaCopyWithImpl(_InvalidPropertyArea<T> _value,
      $Res Function(_InvalidPropertyArea<T>) _then)
      : super(_value, (v) => _then(v as _InvalidPropertyArea<T>));

  @override
  _InvalidPropertyArea<T> get _value => super._value as _InvalidPropertyArea<T>;

  @override
  $Res call({
    Object invalidValue = freezed,
  }) {
    return _then(_InvalidPropertyArea<T>(
      invalidValue:
          invalidValue == freezed ? _value.invalidValue : invalidValue as T,
    ));
  }
}

/// @nodoc
class _$_InvalidPropertyArea<T>
    with DiagnosticableTreeMixin
    implements _InvalidPropertyArea<T> {
  const _$_InvalidPropertyArea({@required this.invalidValue})
      : assert(invalidValue != null);

  @override
  final T invalidValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoanValueFailures<$T>.invalidPropertyArea(invalidValue: $invalidValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'LoanValueFailures<$T>.invalidPropertyArea'))
      ..add(DiagnosticsProperty('invalidValue', invalidValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidPropertyArea<T> &&
            (identical(other.invalidValue, invalidValue) ||
                const DeepCollectionEquality()
                    .equals(other.invalidValue, invalidValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invalidValue);

  @JsonKey(ignore: true)
  @override
  _$InvalidPropertyAreaCopyWith<T, _InvalidPropertyArea<T>> get copyWith =>
      __$InvalidPropertyAreaCopyWithImpl<T, _InvalidPropertyArea<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidGender(T invalidValue),
    @required TResult invalidMarriedStatus(T invalidValue),
    @required TResult stringEmpty(T invalidValue),
    @required TResult invalidEducationStatus(T invalidValue),
    @required TResult invalidSelfEmployedStatus(T invalidValue),
    @required TResult invalidPropertyArea(T invalidValue),
    @required TResult invalidApplicantIncome(T invalidValue),
    @required TResult invalidCoApplicantIncome(T invalidValue),
    @required TResult invalidLoanAmount(T invalidValue),
    @required TResult invalidLoanTerm(T invalidValue),
    @required TResult invalidDependentsNo(),
    @required TResult integerNotPositive(),
    @required TResult invalidIntegerValue(T invalidValue),
    @required TResult invalidCreditHistory(T invalidValue),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidPropertyArea(invalidValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidGender(T invalidValue),
    TResult invalidMarriedStatus(T invalidValue),
    TResult stringEmpty(T invalidValue),
    TResult invalidEducationStatus(T invalidValue),
    TResult invalidSelfEmployedStatus(T invalidValue),
    TResult invalidPropertyArea(T invalidValue),
    TResult invalidApplicantIncome(T invalidValue),
    TResult invalidCoApplicantIncome(T invalidValue),
    TResult invalidLoanAmount(T invalidValue),
    TResult invalidLoanTerm(T invalidValue),
    TResult invalidDependentsNo(),
    TResult integerNotPositive(),
    TResult invalidIntegerValue(T invalidValue),
    TResult invalidCreditHistory(T invalidValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPropertyArea != null) {
      return invalidPropertyArea(invalidValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidGender(_InvalidGender<T> value),
    @required TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    @required TResult stringEmpty(_StringEmpty<T> value),
    @required TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    @required
        TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    @required TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    @required TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    @required
        TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    @required TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    @required TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    @required TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    @required TResult integerNotPositive(_IntergerNotPositive<T> value),
    @required TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    @required TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidPropertyArea(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidGender(_InvalidGender<T> value),
    TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    TResult stringEmpty(_StringEmpty<T> value),
    TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    TResult integerNotPositive(_IntergerNotPositive<T> value),
    TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPropertyArea != null) {
      return invalidPropertyArea(this);
    }
    return orElse();
  }
}

abstract class _InvalidPropertyArea<T> implements LoanValueFailures<T> {
  const factory _InvalidPropertyArea({@required T invalidValue}) =
      _$_InvalidPropertyArea<T>;

  T get invalidValue;
  @JsonKey(ignore: true)
  _$InvalidPropertyAreaCopyWith<T, _InvalidPropertyArea<T>> get copyWith;
}

/// @nodoc
abstract class _$InvalidApplicantIncomeCopyWith<T, $Res> {
  factory _$InvalidApplicantIncomeCopyWith(_InvalidApplicantIncome<T> value,
          $Res Function(_InvalidApplicantIncome<T>) then) =
      __$InvalidApplicantIncomeCopyWithImpl<T, $Res>;
  $Res call({T invalidValue});
}

/// @nodoc
class __$InvalidApplicantIncomeCopyWithImpl<T, $Res>
    extends _$LoanValueFailuresCopyWithImpl<T, $Res>
    implements _$InvalidApplicantIncomeCopyWith<T, $Res> {
  __$InvalidApplicantIncomeCopyWithImpl(_InvalidApplicantIncome<T> _value,
      $Res Function(_InvalidApplicantIncome<T>) _then)
      : super(_value, (v) => _then(v as _InvalidApplicantIncome<T>));

  @override
  _InvalidApplicantIncome<T> get _value =>
      super._value as _InvalidApplicantIncome<T>;

  @override
  $Res call({
    Object invalidValue = freezed,
  }) {
    return _then(_InvalidApplicantIncome<T>(
      invalidValue:
          invalidValue == freezed ? _value.invalidValue : invalidValue as T,
    ));
  }
}

/// @nodoc
class _$_InvalidApplicantIncome<T>
    with DiagnosticableTreeMixin
    implements _InvalidApplicantIncome<T> {
  const _$_InvalidApplicantIncome({@required this.invalidValue})
      : assert(invalidValue != null);

  @override
  final T invalidValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoanValueFailures<$T>.invalidApplicantIncome(invalidValue: $invalidValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'LoanValueFailures<$T>.invalidApplicantIncome'))
      ..add(DiagnosticsProperty('invalidValue', invalidValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidApplicantIncome<T> &&
            (identical(other.invalidValue, invalidValue) ||
                const DeepCollectionEquality()
                    .equals(other.invalidValue, invalidValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invalidValue);

  @JsonKey(ignore: true)
  @override
  _$InvalidApplicantIncomeCopyWith<T, _InvalidApplicantIncome<T>>
      get copyWith =>
          __$InvalidApplicantIncomeCopyWithImpl<T, _InvalidApplicantIncome<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidGender(T invalidValue),
    @required TResult invalidMarriedStatus(T invalidValue),
    @required TResult stringEmpty(T invalidValue),
    @required TResult invalidEducationStatus(T invalidValue),
    @required TResult invalidSelfEmployedStatus(T invalidValue),
    @required TResult invalidPropertyArea(T invalidValue),
    @required TResult invalidApplicantIncome(T invalidValue),
    @required TResult invalidCoApplicantIncome(T invalidValue),
    @required TResult invalidLoanAmount(T invalidValue),
    @required TResult invalidLoanTerm(T invalidValue),
    @required TResult invalidDependentsNo(),
    @required TResult integerNotPositive(),
    @required TResult invalidIntegerValue(T invalidValue),
    @required TResult invalidCreditHistory(T invalidValue),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidApplicantIncome(invalidValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidGender(T invalidValue),
    TResult invalidMarriedStatus(T invalidValue),
    TResult stringEmpty(T invalidValue),
    TResult invalidEducationStatus(T invalidValue),
    TResult invalidSelfEmployedStatus(T invalidValue),
    TResult invalidPropertyArea(T invalidValue),
    TResult invalidApplicantIncome(T invalidValue),
    TResult invalidCoApplicantIncome(T invalidValue),
    TResult invalidLoanAmount(T invalidValue),
    TResult invalidLoanTerm(T invalidValue),
    TResult invalidDependentsNo(),
    TResult integerNotPositive(),
    TResult invalidIntegerValue(T invalidValue),
    TResult invalidCreditHistory(T invalidValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidApplicantIncome != null) {
      return invalidApplicantIncome(invalidValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidGender(_InvalidGender<T> value),
    @required TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    @required TResult stringEmpty(_StringEmpty<T> value),
    @required TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    @required
        TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    @required TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    @required TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    @required
        TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    @required TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    @required TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    @required TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    @required TResult integerNotPositive(_IntergerNotPositive<T> value),
    @required TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    @required TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidApplicantIncome(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidGender(_InvalidGender<T> value),
    TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    TResult stringEmpty(_StringEmpty<T> value),
    TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    TResult integerNotPositive(_IntergerNotPositive<T> value),
    TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidApplicantIncome != null) {
      return invalidApplicantIncome(this);
    }
    return orElse();
  }
}

abstract class _InvalidApplicantIncome<T> implements LoanValueFailures<T> {
  const factory _InvalidApplicantIncome({@required T invalidValue}) =
      _$_InvalidApplicantIncome<T>;

  T get invalidValue;
  @JsonKey(ignore: true)
  _$InvalidApplicantIncomeCopyWith<T, _InvalidApplicantIncome<T>> get copyWith;
}

/// @nodoc
abstract class _$InvalidCoApplicantIncomeCopyWith<T, $Res> {
  factory _$InvalidCoApplicantIncomeCopyWith(_InvalidCoApplicantIncome<T> value,
          $Res Function(_InvalidCoApplicantIncome<T>) then) =
      __$InvalidCoApplicantIncomeCopyWithImpl<T, $Res>;
  $Res call({T invalidValue});
}

/// @nodoc
class __$InvalidCoApplicantIncomeCopyWithImpl<T, $Res>
    extends _$LoanValueFailuresCopyWithImpl<T, $Res>
    implements _$InvalidCoApplicantIncomeCopyWith<T, $Res> {
  __$InvalidCoApplicantIncomeCopyWithImpl(_InvalidCoApplicantIncome<T> _value,
      $Res Function(_InvalidCoApplicantIncome<T>) _then)
      : super(_value, (v) => _then(v as _InvalidCoApplicantIncome<T>));

  @override
  _InvalidCoApplicantIncome<T> get _value =>
      super._value as _InvalidCoApplicantIncome<T>;

  @override
  $Res call({
    Object invalidValue = freezed,
  }) {
    return _then(_InvalidCoApplicantIncome<T>(
      invalidValue:
          invalidValue == freezed ? _value.invalidValue : invalidValue as T,
    ));
  }
}

/// @nodoc
class _$_InvalidCoApplicantIncome<T>
    with DiagnosticableTreeMixin
    implements _InvalidCoApplicantIncome<T> {
  const _$_InvalidCoApplicantIncome({@required this.invalidValue})
      : assert(invalidValue != null);

  @override
  final T invalidValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoanValueFailures<$T>.invalidCoApplicantIncome(invalidValue: $invalidValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'LoanValueFailures<$T>.invalidCoApplicantIncome'))
      ..add(DiagnosticsProperty('invalidValue', invalidValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidCoApplicantIncome<T> &&
            (identical(other.invalidValue, invalidValue) ||
                const DeepCollectionEquality()
                    .equals(other.invalidValue, invalidValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invalidValue);

  @JsonKey(ignore: true)
  @override
  _$InvalidCoApplicantIncomeCopyWith<T, _InvalidCoApplicantIncome<T>>
      get copyWith => __$InvalidCoApplicantIncomeCopyWithImpl<T,
          _InvalidCoApplicantIncome<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidGender(T invalidValue),
    @required TResult invalidMarriedStatus(T invalidValue),
    @required TResult stringEmpty(T invalidValue),
    @required TResult invalidEducationStatus(T invalidValue),
    @required TResult invalidSelfEmployedStatus(T invalidValue),
    @required TResult invalidPropertyArea(T invalidValue),
    @required TResult invalidApplicantIncome(T invalidValue),
    @required TResult invalidCoApplicantIncome(T invalidValue),
    @required TResult invalidLoanAmount(T invalidValue),
    @required TResult invalidLoanTerm(T invalidValue),
    @required TResult invalidDependentsNo(),
    @required TResult integerNotPositive(),
    @required TResult invalidIntegerValue(T invalidValue),
    @required TResult invalidCreditHistory(T invalidValue),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidCoApplicantIncome(invalidValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidGender(T invalidValue),
    TResult invalidMarriedStatus(T invalidValue),
    TResult stringEmpty(T invalidValue),
    TResult invalidEducationStatus(T invalidValue),
    TResult invalidSelfEmployedStatus(T invalidValue),
    TResult invalidPropertyArea(T invalidValue),
    TResult invalidApplicantIncome(T invalidValue),
    TResult invalidCoApplicantIncome(T invalidValue),
    TResult invalidLoanAmount(T invalidValue),
    TResult invalidLoanTerm(T invalidValue),
    TResult invalidDependentsNo(),
    TResult integerNotPositive(),
    TResult invalidIntegerValue(T invalidValue),
    TResult invalidCreditHistory(T invalidValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidCoApplicantIncome != null) {
      return invalidCoApplicantIncome(invalidValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidGender(_InvalidGender<T> value),
    @required TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    @required TResult stringEmpty(_StringEmpty<T> value),
    @required TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    @required
        TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    @required TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    @required TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    @required
        TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    @required TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    @required TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    @required TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    @required TResult integerNotPositive(_IntergerNotPositive<T> value),
    @required TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    @required TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidCoApplicantIncome(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidGender(_InvalidGender<T> value),
    TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    TResult stringEmpty(_StringEmpty<T> value),
    TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    TResult integerNotPositive(_IntergerNotPositive<T> value),
    TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidCoApplicantIncome != null) {
      return invalidCoApplicantIncome(this);
    }
    return orElse();
  }
}

abstract class _InvalidCoApplicantIncome<T> implements LoanValueFailures<T> {
  const factory _InvalidCoApplicantIncome({@required T invalidValue}) =
      _$_InvalidCoApplicantIncome<T>;

  T get invalidValue;
  @JsonKey(ignore: true)
  _$InvalidCoApplicantIncomeCopyWith<T, _InvalidCoApplicantIncome<T>>
      get copyWith;
}

/// @nodoc
abstract class _$InvalidLoanAmountCopyWith<T, $Res> {
  factory _$InvalidLoanAmountCopyWith(_InvalidLoanAmount<T> value,
          $Res Function(_InvalidLoanAmount<T>) then) =
      __$InvalidLoanAmountCopyWithImpl<T, $Res>;
  $Res call({T invalidValue});
}

/// @nodoc
class __$InvalidLoanAmountCopyWithImpl<T, $Res>
    extends _$LoanValueFailuresCopyWithImpl<T, $Res>
    implements _$InvalidLoanAmountCopyWith<T, $Res> {
  __$InvalidLoanAmountCopyWithImpl(
      _InvalidLoanAmount<T> _value, $Res Function(_InvalidLoanAmount<T>) _then)
      : super(_value, (v) => _then(v as _InvalidLoanAmount<T>));

  @override
  _InvalidLoanAmount<T> get _value => super._value as _InvalidLoanAmount<T>;

  @override
  $Res call({
    Object invalidValue = freezed,
  }) {
    return _then(_InvalidLoanAmount<T>(
      invalidValue:
          invalidValue == freezed ? _value.invalidValue : invalidValue as T,
    ));
  }
}

/// @nodoc
class _$_InvalidLoanAmount<T>
    with DiagnosticableTreeMixin
    implements _InvalidLoanAmount<T> {
  const _$_InvalidLoanAmount({@required this.invalidValue})
      : assert(invalidValue != null);

  @override
  final T invalidValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoanValueFailures<$T>.invalidLoanAmount(invalidValue: $invalidValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'LoanValueFailures<$T>.invalidLoanAmount'))
      ..add(DiagnosticsProperty('invalidValue', invalidValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidLoanAmount<T> &&
            (identical(other.invalidValue, invalidValue) ||
                const DeepCollectionEquality()
                    .equals(other.invalidValue, invalidValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invalidValue);

  @JsonKey(ignore: true)
  @override
  _$InvalidLoanAmountCopyWith<T, _InvalidLoanAmount<T>> get copyWith =>
      __$InvalidLoanAmountCopyWithImpl<T, _InvalidLoanAmount<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidGender(T invalidValue),
    @required TResult invalidMarriedStatus(T invalidValue),
    @required TResult stringEmpty(T invalidValue),
    @required TResult invalidEducationStatus(T invalidValue),
    @required TResult invalidSelfEmployedStatus(T invalidValue),
    @required TResult invalidPropertyArea(T invalidValue),
    @required TResult invalidApplicantIncome(T invalidValue),
    @required TResult invalidCoApplicantIncome(T invalidValue),
    @required TResult invalidLoanAmount(T invalidValue),
    @required TResult invalidLoanTerm(T invalidValue),
    @required TResult invalidDependentsNo(),
    @required TResult integerNotPositive(),
    @required TResult invalidIntegerValue(T invalidValue),
    @required TResult invalidCreditHistory(T invalidValue),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidLoanAmount(invalidValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidGender(T invalidValue),
    TResult invalidMarriedStatus(T invalidValue),
    TResult stringEmpty(T invalidValue),
    TResult invalidEducationStatus(T invalidValue),
    TResult invalidSelfEmployedStatus(T invalidValue),
    TResult invalidPropertyArea(T invalidValue),
    TResult invalidApplicantIncome(T invalidValue),
    TResult invalidCoApplicantIncome(T invalidValue),
    TResult invalidLoanAmount(T invalidValue),
    TResult invalidLoanTerm(T invalidValue),
    TResult invalidDependentsNo(),
    TResult integerNotPositive(),
    TResult invalidIntegerValue(T invalidValue),
    TResult invalidCreditHistory(T invalidValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidLoanAmount != null) {
      return invalidLoanAmount(invalidValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidGender(_InvalidGender<T> value),
    @required TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    @required TResult stringEmpty(_StringEmpty<T> value),
    @required TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    @required
        TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    @required TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    @required TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    @required
        TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    @required TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    @required TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    @required TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    @required TResult integerNotPositive(_IntergerNotPositive<T> value),
    @required TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    @required TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidLoanAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidGender(_InvalidGender<T> value),
    TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    TResult stringEmpty(_StringEmpty<T> value),
    TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    TResult integerNotPositive(_IntergerNotPositive<T> value),
    TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidLoanAmount != null) {
      return invalidLoanAmount(this);
    }
    return orElse();
  }
}

abstract class _InvalidLoanAmount<T> implements LoanValueFailures<T> {
  const factory _InvalidLoanAmount({@required T invalidValue}) =
      _$_InvalidLoanAmount<T>;

  T get invalidValue;
  @JsonKey(ignore: true)
  _$InvalidLoanAmountCopyWith<T, _InvalidLoanAmount<T>> get copyWith;
}

/// @nodoc
abstract class _$InvalidLoanTermCopyWith<T, $Res> {
  factory _$InvalidLoanTermCopyWith(
          _InvalidLoanTerm<T> value, $Res Function(_InvalidLoanTerm<T>) then) =
      __$InvalidLoanTermCopyWithImpl<T, $Res>;
  $Res call({T invalidValue});
}

/// @nodoc
class __$InvalidLoanTermCopyWithImpl<T, $Res>
    extends _$LoanValueFailuresCopyWithImpl<T, $Res>
    implements _$InvalidLoanTermCopyWith<T, $Res> {
  __$InvalidLoanTermCopyWithImpl(
      _InvalidLoanTerm<T> _value, $Res Function(_InvalidLoanTerm<T>) _then)
      : super(_value, (v) => _then(v as _InvalidLoanTerm<T>));

  @override
  _InvalidLoanTerm<T> get _value => super._value as _InvalidLoanTerm<T>;

  @override
  $Res call({
    Object invalidValue = freezed,
  }) {
    return _then(_InvalidLoanTerm<T>(
      invalidValue:
          invalidValue == freezed ? _value.invalidValue : invalidValue as T,
    ));
  }
}

/// @nodoc
class _$_InvalidLoanTerm<T>
    with DiagnosticableTreeMixin
    implements _InvalidLoanTerm<T> {
  const _$_InvalidLoanTerm({@required this.invalidValue})
      : assert(invalidValue != null);

  @override
  final T invalidValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoanValueFailures<$T>.invalidLoanTerm(invalidValue: $invalidValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'LoanValueFailures<$T>.invalidLoanTerm'))
      ..add(DiagnosticsProperty('invalidValue', invalidValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidLoanTerm<T> &&
            (identical(other.invalidValue, invalidValue) ||
                const DeepCollectionEquality()
                    .equals(other.invalidValue, invalidValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invalidValue);

  @JsonKey(ignore: true)
  @override
  _$InvalidLoanTermCopyWith<T, _InvalidLoanTerm<T>> get copyWith =>
      __$InvalidLoanTermCopyWithImpl<T, _InvalidLoanTerm<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidGender(T invalidValue),
    @required TResult invalidMarriedStatus(T invalidValue),
    @required TResult stringEmpty(T invalidValue),
    @required TResult invalidEducationStatus(T invalidValue),
    @required TResult invalidSelfEmployedStatus(T invalidValue),
    @required TResult invalidPropertyArea(T invalidValue),
    @required TResult invalidApplicantIncome(T invalidValue),
    @required TResult invalidCoApplicantIncome(T invalidValue),
    @required TResult invalidLoanAmount(T invalidValue),
    @required TResult invalidLoanTerm(T invalidValue),
    @required TResult invalidDependentsNo(),
    @required TResult integerNotPositive(),
    @required TResult invalidIntegerValue(T invalidValue),
    @required TResult invalidCreditHistory(T invalidValue),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidLoanTerm(invalidValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidGender(T invalidValue),
    TResult invalidMarriedStatus(T invalidValue),
    TResult stringEmpty(T invalidValue),
    TResult invalidEducationStatus(T invalidValue),
    TResult invalidSelfEmployedStatus(T invalidValue),
    TResult invalidPropertyArea(T invalidValue),
    TResult invalidApplicantIncome(T invalidValue),
    TResult invalidCoApplicantIncome(T invalidValue),
    TResult invalidLoanAmount(T invalidValue),
    TResult invalidLoanTerm(T invalidValue),
    TResult invalidDependentsNo(),
    TResult integerNotPositive(),
    TResult invalidIntegerValue(T invalidValue),
    TResult invalidCreditHistory(T invalidValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidLoanTerm != null) {
      return invalidLoanTerm(invalidValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidGender(_InvalidGender<T> value),
    @required TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    @required TResult stringEmpty(_StringEmpty<T> value),
    @required TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    @required
        TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    @required TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    @required TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    @required
        TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    @required TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    @required TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    @required TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    @required TResult integerNotPositive(_IntergerNotPositive<T> value),
    @required TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    @required TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidLoanTerm(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidGender(_InvalidGender<T> value),
    TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    TResult stringEmpty(_StringEmpty<T> value),
    TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    TResult integerNotPositive(_IntergerNotPositive<T> value),
    TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidLoanTerm != null) {
      return invalidLoanTerm(this);
    }
    return orElse();
  }
}

abstract class _InvalidLoanTerm<T> implements LoanValueFailures<T> {
  const factory _InvalidLoanTerm({@required T invalidValue}) =
      _$_InvalidLoanTerm<T>;

  T get invalidValue;
  @JsonKey(ignore: true)
  _$InvalidLoanTermCopyWith<T, _InvalidLoanTerm<T>> get copyWith;
}

/// @nodoc
abstract class _$InvalidDependentsNoCopyWith<T, $Res> {
  factory _$InvalidDependentsNoCopyWith(_InvalidDependentsNo<T> value,
          $Res Function(_InvalidDependentsNo<T>) then) =
      __$InvalidDependentsNoCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$InvalidDependentsNoCopyWithImpl<T, $Res>
    extends _$LoanValueFailuresCopyWithImpl<T, $Res>
    implements _$InvalidDependentsNoCopyWith<T, $Res> {
  __$InvalidDependentsNoCopyWithImpl(_InvalidDependentsNo<T> _value,
      $Res Function(_InvalidDependentsNo<T>) _then)
      : super(_value, (v) => _then(v as _InvalidDependentsNo<T>));

  @override
  _InvalidDependentsNo<T> get _value => super._value as _InvalidDependentsNo<T>;
}

/// @nodoc
class _$_InvalidDependentsNo<T>
    with DiagnosticableTreeMixin
    implements _InvalidDependentsNo<T> {
  const _$_InvalidDependentsNo();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoanValueFailures<$T>.invalidDependentsNo()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'LoanValueFailures<$T>.invalidDependentsNo'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InvalidDependentsNo<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidGender(T invalidValue),
    @required TResult invalidMarriedStatus(T invalidValue),
    @required TResult stringEmpty(T invalidValue),
    @required TResult invalidEducationStatus(T invalidValue),
    @required TResult invalidSelfEmployedStatus(T invalidValue),
    @required TResult invalidPropertyArea(T invalidValue),
    @required TResult invalidApplicantIncome(T invalidValue),
    @required TResult invalidCoApplicantIncome(T invalidValue),
    @required TResult invalidLoanAmount(T invalidValue),
    @required TResult invalidLoanTerm(T invalidValue),
    @required TResult invalidDependentsNo(),
    @required TResult integerNotPositive(),
    @required TResult invalidIntegerValue(T invalidValue),
    @required TResult invalidCreditHistory(T invalidValue),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidDependentsNo();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidGender(T invalidValue),
    TResult invalidMarriedStatus(T invalidValue),
    TResult stringEmpty(T invalidValue),
    TResult invalidEducationStatus(T invalidValue),
    TResult invalidSelfEmployedStatus(T invalidValue),
    TResult invalidPropertyArea(T invalidValue),
    TResult invalidApplicantIncome(T invalidValue),
    TResult invalidCoApplicantIncome(T invalidValue),
    TResult invalidLoanAmount(T invalidValue),
    TResult invalidLoanTerm(T invalidValue),
    TResult invalidDependentsNo(),
    TResult integerNotPositive(),
    TResult invalidIntegerValue(T invalidValue),
    TResult invalidCreditHistory(T invalidValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidDependentsNo != null) {
      return invalidDependentsNo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidGender(_InvalidGender<T> value),
    @required TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    @required TResult stringEmpty(_StringEmpty<T> value),
    @required TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    @required
        TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    @required TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    @required TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    @required
        TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    @required TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    @required TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    @required TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    @required TResult integerNotPositive(_IntergerNotPositive<T> value),
    @required TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    @required TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidDependentsNo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidGender(_InvalidGender<T> value),
    TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    TResult stringEmpty(_StringEmpty<T> value),
    TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    TResult integerNotPositive(_IntergerNotPositive<T> value),
    TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidDependentsNo != null) {
      return invalidDependentsNo(this);
    }
    return orElse();
  }
}

abstract class _InvalidDependentsNo<T> implements LoanValueFailures<T> {
  const factory _InvalidDependentsNo() = _$_InvalidDependentsNo<T>;
}

/// @nodoc
abstract class _$IntergerNotPositiveCopyWith<T, $Res> {
  factory _$IntergerNotPositiveCopyWith(_IntergerNotPositive<T> value,
          $Res Function(_IntergerNotPositive<T>) then) =
      __$IntergerNotPositiveCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$IntergerNotPositiveCopyWithImpl<T, $Res>
    extends _$LoanValueFailuresCopyWithImpl<T, $Res>
    implements _$IntergerNotPositiveCopyWith<T, $Res> {
  __$IntergerNotPositiveCopyWithImpl(_IntergerNotPositive<T> _value,
      $Res Function(_IntergerNotPositive<T>) _then)
      : super(_value, (v) => _then(v as _IntergerNotPositive<T>));

  @override
  _IntergerNotPositive<T> get _value => super._value as _IntergerNotPositive<T>;
}

/// @nodoc
class _$_IntergerNotPositive<T>
    with DiagnosticableTreeMixin
    implements _IntergerNotPositive<T> {
  const _$_IntergerNotPositive();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoanValueFailures<$T>.integerNotPositive()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'LoanValueFailures<$T>.integerNotPositive'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IntergerNotPositive<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidGender(T invalidValue),
    @required TResult invalidMarriedStatus(T invalidValue),
    @required TResult stringEmpty(T invalidValue),
    @required TResult invalidEducationStatus(T invalidValue),
    @required TResult invalidSelfEmployedStatus(T invalidValue),
    @required TResult invalidPropertyArea(T invalidValue),
    @required TResult invalidApplicantIncome(T invalidValue),
    @required TResult invalidCoApplicantIncome(T invalidValue),
    @required TResult invalidLoanAmount(T invalidValue),
    @required TResult invalidLoanTerm(T invalidValue),
    @required TResult invalidDependentsNo(),
    @required TResult integerNotPositive(),
    @required TResult invalidIntegerValue(T invalidValue),
    @required TResult invalidCreditHistory(T invalidValue),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return integerNotPositive();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidGender(T invalidValue),
    TResult invalidMarriedStatus(T invalidValue),
    TResult stringEmpty(T invalidValue),
    TResult invalidEducationStatus(T invalidValue),
    TResult invalidSelfEmployedStatus(T invalidValue),
    TResult invalidPropertyArea(T invalidValue),
    TResult invalidApplicantIncome(T invalidValue),
    TResult invalidCoApplicantIncome(T invalidValue),
    TResult invalidLoanAmount(T invalidValue),
    TResult invalidLoanTerm(T invalidValue),
    TResult invalidDependentsNo(),
    TResult integerNotPositive(),
    TResult invalidIntegerValue(T invalidValue),
    TResult invalidCreditHistory(T invalidValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (integerNotPositive != null) {
      return integerNotPositive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidGender(_InvalidGender<T> value),
    @required TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    @required TResult stringEmpty(_StringEmpty<T> value),
    @required TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    @required
        TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    @required TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    @required TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    @required
        TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    @required TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    @required TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    @required TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    @required TResult integerNotPositive(_IntergerNotPositive<T> value),
    @required TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    @required TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return integerNotPositive(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidGender(_InvalidGender<T> value),
    TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    TResult stringEmpty(_StringEmpty<T> value),
    TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    TResult integerNotPositive(_IntergerNotPositive<T> value),
    TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (integerNotPositive != null) {
      return integerNotPositive(this);
    }
    return orElse();
  }
}

abstract class _IntergerNotPositive<T> implements LoanValueFailures<T> {
  const factory _IntergerNotPositive() = _$_IntergerNotPositive<T>;
}

/// @nodoc
abstract class _$InvalidIntegerValueCopyWith<T, $Res> {
  factory _$InvalidIntegerValueCopyWith(_InvalidIntegerValue<T> value,
          $Res Function(_InvalidIntegerValue<T>) then) =
      __$InvalidIntegerValueCopyWithImpl<T, $Res>;
  $Res call({T invalidValue});
}

/// @nodoc
class __$InvalidIntegerValueCopyWithImpl<T, $Res>
    extends _$LoanValueFailuresCopyWithImpl<T, $Res>
    implements _$InvalidIntegerValueCopyWith<T, $Res> {
  __$InvalidIntegerValueCopyWithImpl(_InvalidIntegerValue<T> _value,
      $Res Function(_InvalidIntegerValue<T>) _then)
      : super(_value, (v) => _then(v as _InvalidIntegerValue<T>));

  @override
  _InvalidIntegerValue<T> get _value => super._value as _InvalidIntegerValue<T>;

  @override
  $Res call({
    Object invalidValue = freezed,
  }) {
    return _then(_InvalidIntegerValue<T>(
      invalidValue:
          invalidValue == freezed ? _value.invalidValue : invalidValue as T,
    ));
  }
}

/// @nodoc
class _$_InvalidIntegerValue<T>
    with DiagnosticableTreeMixin
    implements _InvalidIntegerValue<T> {
  const _$_InvalidIntegerValue({@required this.invalidValue})
      : assert(invalidValue != null);

  @override
  final T invalidValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoanValueFailures<$T>.invalidIntegerValue(invalidValue: $invalidValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'LoanValueFailures<$T>.invalidIntegerValue'))
      ..add(DiagnosticsProperty('invalidValue', invalidValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidIntegerValue<T> &&
            (identical(other.invalidValue, invalidValue) ||
                const DeepCollectionEquality()
                    .equals(other.invalidValue, invalidValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invalidValue);

  @JsonKey(ignore: true)
  @override
  _$InvalidIntegerValueCopyWith<T, _InvalidIntegerValue<T>> get copyWith =>
      __$InvalidIntegerValueCopyWithImpl<T, _InvalidIntegerValue<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidGender(T invalidValue),
    @required TResult invalidMarriedStatus(T invalidValue),
    @required TResult stringEmpty(T invalidValue),
    @required TResult invalidEducationStatus(T invalidValue),
    @required TResult invalidSelfEmployedStatus(T invalidValue),
    @required TResult invalidPropertyArea(T invalidValue),
    @required TResult invalidApplicantIncome(T invalidValue),
    @required TResult invalidCoApplicantIncome(T invalidValue),
    @required TResult invalidLoanAmount(T invalidValue),
    @required TResult invalidLoanTerm(T invalidValue),
    @required TResult invalidDependentsNo(),
    @required TResult integerNotPositive(),
    @required TResult invalidIntegerValue(T invalidValue),
    @required TResult invalidCreditHistory(T invalidValue),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidIntegerValue(invalidValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidGender(T invalidValue),
    TResult invalidMarriedStatus(T invalidValue),
    TResult stringEmpty(T invalidValue),
    TResult invalidEducationStatus(T invalidValue),
    TResult invalidSelfEmployedStatus(T invalidValue),
    TResult invalidPropertyArea(T invalidValue),
    TResult invalidApplicantIncome(T invalidValue),
    TResult invalidCoApplicantIncome(T invalidValue),
    TResult invalidLoanAmount(T invalidValue),
    TResult invalidLoanTerm(T invalidValue),
    TResult invalidDependentsNo(),
    TResult integerNotPositive(),
    TResult invalidIntegerValue(T invalidValue),
    TResult invalidCreditHistory(T invalidValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidIntegerValue != null) {
      return invalidIntegerValue(invalidValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidGender(_InvalidGender<T> value),
    @required TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    @required TResult stringEmpty(_StringEmpty<T> value),
    @required TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    @required
        TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    @required TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    @required TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    @required
        TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    @required TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    @required TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    @required TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    @required TResult integerNotPositive(_IntergerNotPositive<T> value),
    @required TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    @required TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidIntegerValue(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidGender(_InvalidGender<T> value),
    TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    TResult stringEmpty(_StringEmpty<T> value),
    TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    TResult integerNotPositive(_IntergerNotPositive<T> value),
    TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidIntegerValue != null) {
      return invalidIntegerValue(this);
    }
    return orElse();
  }
}

abstract class _InvalidIntegerValue<T> implements LoanValueFailures<T> {
  const factory _InvalidIntegerValue({@required T invalidValue}) =
      _$_InvalidIntegerValue<T>;

  T get invalidValue;
  @JsonKey(ignore: true)
  _$InvalidIntegerValueCopyWith<T, _InvalidIntegerValue<T>> get copyWith;
}

/// @nodoc
abstract class _$InvalidCreditHistoryCopyWith<T, $Res> {
  factory _$InvalidCreditHistoryCopyWith(_InvalidCreditHistory<T> value,
          $Res Function(_InvalidCreditHistory<T>) then) =
      __$InvalidCreditHistoryCopyWithImpl<T, $Res>;
  $Res call({T invalidValue});
}

/// @nodoc
class __$InvalidCreditHistoryCopyWithImpl<T, $Res>
    extends _$LoanValueFailuresCopyWithImpl<T, $Res>
    implements _$InvalidCreditHistoryCopyWith<T, $Res> {
  __$InvalidCreditHistoryCopyWithImpl(_InvalidCreditHistory<T> _value,
      $Res Function(_InvalidCreditHistory<T>) _then)
      : super(_value, (v) => _then(v as _InvalidCreditHistory<T>));

  @override
  _InvalidCreditHistory<T> get _value =>
      super._value as _InvalidCreditHistory<T>;

  @override
  $Res call({
    Object invalidValue = freezed,
  }) {
    return _then(_InvalidCreditHistory<T>(
      invalidValue:
          invalidValue == freezed ? _value.invalidValue : invalidValue as T,
    ));
  }
}

/// @nodoc
class _$_InvalidCreditHistory<T>
    with DiagnosticableTreeMixin
    implements _InvalidCreditHistory<T> {
  const _$_InvalidCreditHistory({@required this.invalidValue})
      : assert(invalidValue != null);

  @override
  final T invalidValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoanValueFailures<$T>.invalidCreditHistory(invalidValue: $invalidValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'LoanValueFailures<$T>.invalidCreditHistory'))
      ..add(DiagnosticsProperty('invalidValue', invalidValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidCreditHistory<T> &&
            (identical(other.invalidValue, invalidValue) ||
                const DeepCollectionEquality()
                    .equals(other.invalidValue, invalidValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invalidValue);

  @JsonKey(ignore: true)
  @override
  _$InvalidCreditHistoryCopyWith<T, _InvalidCreditHistory<T>> get copyWith =>
      __$InvalidCreditHistoryCopyWithImpl<T, _InvalidCreditHistory<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidGender(T invalidValue),
    @required TResult invalidMarriedStatus(T invalidValue),
    @required TResult stringEmpty(T invalidValue),
    @required TResult invalidEducationStatus(T invalidValue),
    @required TResult invalidSelfEmployedStatus(T invalidValue),
    @required TResult invalidPropertyArea(T invalidValue),
    @required TResult invalidApplicantIncome(T invalidValue),
    @required TResult invalidCoApplicantIncome(T invalidValue),
    @required TResult invalidLoanAmount(T invalidValue),
    @required TResult invalidLoanTerm(T invalidValue),
    @required TResult invalidDependentsNo(),
    @required TResult integerNotPositive(),
    @required TResult invalidIntegerValue(T invalidValue),
    @required TResult invalidCreditHistory(T invalidValue),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidCreditHistory(invalidValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidGender(T invalidValue),
    TResult invalidMarriedStatus(T invalidValue),
    TResult stringEmpty(T invalidValue),
    TResult invalidEducationStatus(T invalidValue),
    TResult invalidSelfEmployedStatus(T invalidValue),
    TResult invalidPropertyArea(T invalidValue),
    TResult invalidApplicantIncome(T invalidValue),
    TResult invalidCoApplicantIncome(T invalidValue),
    TResult invalidLoanAmount(T invalidValue),
    TResult invalidLoanTerm(T invalidValue),
    TResult invalidDependentsNo(),
    TResult integerNotPositive(),
    TResult invalidIntegerValue(T invalidValue),
    TResult invalidCreditHistory(T invalidValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidCreditHistory != null) {
      return invalidCreditHistory(invalidValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidGender(_InvalidGender<T> value),
    @required TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    @required TResult stringEmpty(_StringEmpty<T> value),
    @required TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    @required
        TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    @required TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    @required TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    @required
        TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    @required TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    @required TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    @required TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    @required TResult integerNotPositive(_IntergerNotPositive<T> value),
    @required TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    @required TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
  }) {
    assert(invalidGender != null);
    assert(invalidMarriedStatus != null);
    assert(stringEmpty != null);
    assert(invalidEducationStatus != null);
    assert(invalidSelfEmployedStatus != null);
    assert(invalidPropertyArea != null);
    assert(invalidApplicantIncome != null);
    assert(invalidCoApplicantIncome != null);
    assert(invalidLoanAmount != null);
    assert(invalidLoanTerm != null);
    assert(invalidDependentsNo != null);
    assert(integerNotPositive != null);
    assert(invalidIntegerValue != null);
    assert(invalidCreditHistory != null);
    return invalidCreditHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidGender(_InvalidGender<T> value),
    TResult invalidMarriedStatus(_InvalidMarriedStatus<T> value),
    TResult stringEmpty(_StringEmpty<T> value),
    TResult invalidEducationStatus(_InvalidEducationStatus<T> value),
    TResult invalidSelfEmployedStatus(_InvalidSelfEmployedStatus<T> value),
    TResult invalidPropertyArea(_InvalidPropertyArea<T> value),
    TResult invalidApplicantIncome(_InvalidApplicantIncome<T> value),
    TResult invalidCoApplicantIncome(_InvalidCoApplicantIncome<T> value),
    TResult invalidLoanAmount(_InvalidLoanAmount<T> value),
    TResult invalidLoanTerm(_InvalidLoanTerm<T> value),
    TResult invalidDependentsNo(_InvalidDependentsNo<T> value),
    TResult integerNotPositive(_IntergerNotPositive<T> value),
    TResult invalidIntegerValue(_InvalidIntegerValue<T> value),
    TResult invalidCreditHistory(_InvalidCreditHistory<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidCreditHistory != null) {
      return invalidCreditHistory(this);
    }
    return orElse();
  }
}

abstract class _InvalidCreditHistory<T> implements LoanValueFailures<T> {
  const factory _InvalidCreditHistory({@required T invalidValue}) =
      _$_InvalidCreditHistory<T>;

  T get invalidValue;
  @JsonKey(ignore: true)
  _$InvalidCreditHistoryCopyWith<T, _InvalidCreditHistory<T>> get copyWith;
}
