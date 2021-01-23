// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'loan_application_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoanApplicationWatcherEventTearOff {
  const _$LoanApplicationWatcherEventTearOff();

// ignore: unused_element
  _GetLoanApplications watchAll() {
    return const _GetLoanApplications();
  }
}

/// @nodoc
// ignore: unused_element
const $LoanApplicationWatcherEvent = _$LoanApplicationWatcherEventTearOff();

/// @nodoc
mixin _$LoanApplicationWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAll(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAll(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAll(_GetLoanApplications value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAll(_GetLoanApplications value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LoanApplicationWatcherEventCopyWith<$Res> {
  factory $LoanApplicationWatcherEventCopyWith(
          LoanApplicationWatcherEvent value,
          $Res Function(LoanApplicationWatcherEvent) then) =
      _$LoanApplicationWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoanApplicationWatcherEventCopyWithImpl<$Res>
    implements $LoanApplicationWatcherEventCopyWith<$Res> {
  _$LoanApplicationWatcherEventCopyWithImpl(this._value, this._then);

  final LoanApplicationWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(LoanApplicationWatcherEvent) _then;
}

/// @nodoc
abstract class _$GetLoanApplicationsCopyWith<$Res> {
  factory _$GetLoanApplicationsCopyWith(_GetLoanApplications value,
          $Res Function(_GetLoanApplications) then) =
      __$GetLoanApplicationsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetLoanApplicationsCopyWithImpl<$Res>
    extends _$LoanApplicationWatcherEventCopyWithImpl<$Res>
    implements _$GetLoanApplicationsCopyWith<$Res> {
  __$GetLoanApplicationsCopyWithImpl(
      _GetLoanApplications _value, $Res Function(_GetLoanApplications) _then)
      : super(_value, (v) => _then(v as _GetLoanApplications));

  @override
  _GetLoanApplications get _value => super._value as _GetLoanApplications;
}

/// @nodoc
class _$_GetLoanApplications implements _GetLoanApplications {
  const _$_GetLoanApplications();

  @override
  String toString() {
    return 'LoanApplicationWatcherEvent.watchAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetLoanApplications);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAll(),
  }) {
    assert(watchAll != null);
    return watchAll();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAll(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAll != null) {
      return watchAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAll(_GetLoanApplications value),
  }) {
    assert(watchAll != null);
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAll(_GetLoanApplications value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAll != null) {
      return watchAll(this);
    }
    return orElse();
  }
}

abstract class _GetLoanApplications implements LoanApplicationWatcherEvent {
  const factory _GetLoanApplications() = _$_GetLoanApplications;
}

/// @nodoc
class _$LoanApplicationWatcherStateTearOff {
  const _$LoanApplicationWatcherStateTearOff();

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadedSuccess loadedSuccess(KtList<LoanApplicationInfo> loanApplications) {
    return _LoadedSuccess(
      loanApplications,
    );
  }

// ignore: unused_element
  _LoadedFailure loadedFailure(LoanApplicationFailure loanApplicationFailure) {
    return _LoadedFailure(
      loanApplicationFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoanApplicationWatcherState = _$LoanApplicationWatcherStateTearOff();

/// @nodoc
mixin _$LoanApplicationWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadInProgress(),
    @required
        TResult loadedSuccess(KtList<LoanApplicationInfo> loanApplications),
    @required
        TResult loadedFailure(LoanApplicationFailure loanApplicationFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadInProgress(),
    TResult loadedSuccess(KtList<LoanApplicationInfo> loanApplications),
    TResult loadedFailure(LoanApplicationFailure loanApplicationFailure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadedSuccess(_LoadedSuccess value),
    @required TResult loadedFailure(_LoadedFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadInProgress(_LoadInProgress value),
    TResult loadedSuccess(_LoadedSuccess value),
    TResult loadedFailure(_LoadedFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LoanApplicationWatcherStateCopyWith<$Res> {
  factory $LoanApplicationWatcherStateCopyWith(
          LoanApplicationWatcherState value,
          $Res Function(LoanApplicationWatcherState) then) =
      _$LoanApplicationWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoanApplicationWatcherStateCopyWithImpl<$Res>
    implements $LoanApplicationWatcherStateCopyWith<$Res> {
  _$LoanApplicationWatcherStateCopyWithImpl(this._value, this._then);

  final LoanApplicationWatcherState _value;
  // ignore: unused_field
  final $Res Function(LoanApplicationWatcherState) _then;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$LoanApplicationWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'LoanApplicationWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadInProgress(),
    @required
        TResult loadedSuccess(KtList<LoanApplicationInfo> loanApplications),
    @required
        TResult loadedFailure(LoanApplicationFailure loanApplicationFailure),
  }) {
    assert(loadInProgress != null);
    assert(loadedSuccess != null);
    assert(loadedFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadInProgress(),
    TResult loadedSuccess(KtList<LoanApplicationInfo> loanApplications),
    TResult loadedFailure(LoanApplicationFailure loanApplicationFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadedSuccess(_LoadedSuccess value),
    @required TResult loadedFailure(_LoadedFailure value),
  }) {
    assert(loadInProgress != null);
    assert(loadedSuccess != null);
    assert(loadedFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadInProgress(_LoadInProgress value),
    TResult loadedSuccess(_LoadedSuccess value),
    TResult loadedFailure(_LoadedFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements LoanApplicationWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadedSuccessCopyWith<$Res> {
  factory _$LoadedSuccessCopyWith(
          _LoadedSuccess value, $Res Function(_LoadedSuccess) then) =
      __$LoadedSuccessCopyWithImpl<$Res>;
  $Res call({KtList<LoanApplicationInfo> loanApplications});
}

/// @nodoc
class __$LoadedSuccessCopyWithImpl<$Res>
    extends _$LoanApplicationWatcherStateCopyWithImpl<$Res>
    implements _$LoadedSuccessCopyWith<$Res> {
  __$LoadedSuccessCopyWithImpl(
      _LoadedSuccess _value, $Res Function(_LoadedSuccess) _then)
      : super(_value, (v) => _then(v as _LoadedSuccess));

  @override
  _LoadedSuccess get _value => super._value as _LoadedSuccess;

  @override
  $Res call({
    Object loanApplications = freezed,
  }) {
    return _then(_LoadedSuccess(
      loanApplications == freezed
          ? _value.loanApplications
          : loanApplications as KtList<LoanApplicationInfo>,
    ));
  }
}

/// @nodoc
class _$_LoadedSuccess implements _LoadedSuccess {
  const _$_LoadedSuccess(this.loanApplications)
      : assert(loanApplications != null);

  @override
  final KtList<LoanApplicationInfo> loanApplications;

  @override
  String toString() {
    return 'LoanApplicationWatcherState.loadedSuccess(loanApplications: $loanApplications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadedSuccess &&
            (identical(other.loanApplications, loanApplications) ||
                const DeepCollectionEquality()
                    .equals(other.loanApplications, loanApplications)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loanApplications);

  @JsonKey(ignore: true)
  @override
  _$LoadedSuccessCopyWith<_LoadedSuccess> get copyWith =>
      __$LoadedSuccessCopyWithImpl<_LoadedSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadInProgress(),
    @required
        TResult loadedSuccess(KtList<LoanApplicationInfo> loanApplications),
    @required
        TResult loadedFailure(LoanApplicationFailure loanApplicationFailure),
  }) {
    assert(loadInProgress != null);
    assert(loadedSuccess != null);
    assert(loadedFailure != null);
    return loadedSuccess(loanApplications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadInProgress(),
    TResult loadedSuccess(KtList<LoanApplicationInfo> loanApplications),
    TResult loadedFailure(LoanApplicationFailure loanApplicationFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadedSuccess != null) {
      return loadedSuccess(loanApplications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadedSuccess(_LoadedSuccess value),
    @required TResult loadedFailure(_LoadedFailure value),
  }) {
    assert(loadInProgress != null);
    assert(loadedSuccess != null);
    assert(loadedFailure != null);
    return loadedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadInProgress(_LoadInProgress value),
    TResult loadedSuccess(_LoadedSuccess value),
    TResult loadedFailure(_LoadedFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadedSuccess != null) {
      return loadedSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadedSuccess implements LoanApplicationWatcherState {
  const factory _LoadedSuccess(KtList<LoanApplicationInfo> loanApplications) =
      _$_LoadedSuccess;

  KtList<LoanApplicationInfo> get loanApplications;
  @JsonKey(ignore: true)
  _$LoadedSuccessCopyWith<_LoadedSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadedFailureCopyWith<$Res> {
  factory _$LoadedFailureCopyWith(
          _LoadedFailure value, $Res Function(_LoadedFailure) then) =
      __$LoadedFailureCopyWithImpl<$Res>;
  $Res call({LoanApplicationFailure loanApplicationFailure});

  $LoanApplicationFailureCopyWith<$Res> get loanApplicationFailure;
}

/// @nodoc
class __$LoadedFailureCopyWithImpl<$Res>
    extends _$LoanApplicationWatcherStateCopyWithImpl<$Res>
    implements _$LoadedFailureCopyWith<$Res> {
  __$LoadedFailureCopyWithImpl(
      _LoadedFailure _value, $Res Function(_LoadedFailure) _then)
      : super(_value, (v) => _then(v as _LoadedFailure));

  @override
  _LoadedFailure get _value => super._value as _LoadedFailure;

  @override
  $Res call({
    Object loanApplicationFailure = freezed,
  }) {
    return _then(_LoadedFailure(
      loanApplicationFailure == freezed
          ? _value.loanApplicationFailure
          : loanApplicationFailure as LoanApplicationFailure,
    ));
  }

  @override
  $LoanApplicationFailureCopyWith<$Res> get loanApplicationFailure {
    if (_value.loanApplicationFailure == null) {
      return null;
    }
    return $LoanApplicationFailureCopyWith<$Res>(_value.loanApplicationFailure,
        (value) {
      return _then(_value.copyWith(loanApplicationFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadedFailure implements _LoadedFailure {
  const _$_LoadedFailure(this.loanApplicationFailure)
      : assert(loanApplicationFailure != null);

  @override
  final LoanApplicationFailure loanApplicationFailure;

  @override
  String toString() {
    return 'LoanApplicationWatcherState.loadedFailure(loanApplicationFailure: $loanApplicationFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadedFailure &&
            (identical(other.loanApplicationFailure, loanApplicationFailure) ||
                const DeepCollectionEquality().equals(
                    other.loanApplicationFailure, loanApplicationFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loanApplicationFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadedFailureCopyWith<_LoadedFailure> get copyWith =>
      __$LoadedFailureCopyWithImpl<_LoadedFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadInProgress(),
    @required
        TResult loadedSuccess(KtList<LoanApplicationInfo> loanApplications),
    @required
        TResult loadedFailure(LoanApplicationFailure loanApplicationFailure),
  }) {
    assert(loadInProgress != null);
    assert(loadedSuccess != null);
    assert(loadedFailure != null);
    return loadedFailure(loanApplicationFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadInProgress(),
    TResult loadedSuccess(KtList<LoanApplicationInfo> loanApplications),
    TResult loadedFailure(LoanApplicationFailure loanApplicationFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadedFailure != null) {
      return loadedFailure(loanApplicationFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadedSuccess(_LoadedSuccess value),
    @required TResult loadedFailure(_LoadedFailure value),
  }) {
    assert(loadInProgress != null);
    assert(loadedSuccess != null);
    assert(loadedFailure != null);
    return loadedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadInProgress(_LoadInProgress value),
    TResult loadedSuccess(_LoadedSuccess value),
    TResult loadedFailure(_LoadedFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadedFailure != null) {
      return loadedFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadedFailure implements LoanApplicationWatcherState {
  const factory _LoadedFailure(LoanApplicationFailure loanApplicationFailure) =
      _$_LoadedFailure;

  LoanApplicationFailure get loanApplicationFailure;
  @JsonKey(ignore: true)
  _$LoadedFailureCopyWith<_LoadedFailure> get copyWith;
}
