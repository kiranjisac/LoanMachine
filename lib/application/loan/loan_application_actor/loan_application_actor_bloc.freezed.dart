// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'loan_application_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoanApplicationActorEventTearOff {
  const _$LoanApplicationActorEventTearOff();

// ignore: unused_element
  _Delete delete(LoanApplicationInfo laInfo) {
    return _Delete(
      laInfo,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoanApplicationActorEvent = _$LoanApplicationActorEventTearOff();

/// @nodoc
mixin _$LoanApplicationActorEvent {
  LoanApplicationInfo get laInfo;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult delete(LoanApplicationInfo laInfo),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult delete(LoanApplicationInfo laInfo),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult delete(_Delete value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult delete(_Delete value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $LoanApplicationActorEventCopyWith<LoanApplicationActorEvent> get copyWith;
}

/// @nodoc
abstract class $LoanApplicationActorEventCopyWith<$Res> {
  factory $LoanApplicationActorEventCopyWith(LoanApplicationActorEvent value,
          $Res Function(LoanApplicationActorEvent) then) =
      _$LoanApplicationActorEventCopyWithImpl<$Res>;
  $Res call({LoanApplicationInfo laInfo});

  $LoanApplicationInfoCopyWith<$Res> get laInfo;
}

/// @nodoc
class _$LoanApplicationActorEventCopyWithImpl<$Res>
    implements $LoanApplicationActorEventCopyWith<$Res> {
  _$LoanApplicationActorEventCopyWithImpl(this._value, this._then);

  final LoanApplicationActorEvent _value;
  // ignore: unused_field
  final $Res Function(LoanApplicationActorEvent) _then;

  @override
  $Res call({
    Object laInfo = freezed,
  }) {
    return _then(_value.copyWith(
      laInfo: laInfo == freezed ? _value.laInfo : laInfo as LoanApplicationInfo,
    ));
  }

  @override
  $LoanApplicationInfoCopyWith<$Res> get laInfo {
    if (_value.laInfo == null) {
      return null;
    }
    return $LoanApplicationInfoCopyWith<$Res>(_value.laInfo, (value) {
      return _then(_value.copyWith(laInfo: value));
    });
  }
}

/// @nodoc
abstract class _$DeleteCopyWith<$Res>
    implements $LoanApplicationActorEventCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  @override
  $Res call({LoanApplicationInfo laInfo});

  @override
  $LoanApplicationInfoCopyWith<$Res> get laInfo;
}

/// @nodoc
class __$DeleteCopyWithImpl<$Res>
    extends _$LoanApplicationActorEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;

  @override
  $Res call({
    Object laInfo = freezed,
  }) {
    return _then(_Delete(
      laInfo == freezed ? _value.laInfo : laInfo as LoanApplicationInfo,
    ));
  }
}

/// @nodoc
class _$_Delete implements _Delete {
  const _$_Delete(this.laInfo) : assert(laInfo != null);

  @override
  final LoanApplicationInfo laInfo;

  @override
  String toString() {
    return 'LoanApplicationActorEvent.delete(laInfo: $laInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Delete &&
            (identical(other.laInfo, laInfo) ||
                const DeepCollectionEquality().equals(other.laInfo, laInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(laInfo);

  @JsonKey(ignore: true)
  @override
  _$DeleteCopyWith<_Delete> get copyWith =>
      __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult delete(LoanApplicationInfo laInfo),
  }) {
    assert(delete != null);
    return delete(laInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult delete(LoanApplicationInfo laInfo),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(laInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult delete(_Delete value),
  }) {
    assert(delete != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult delete(_Delete value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements LoanApplicationActorEvent {
  const factory _Delete(LoanApplicationInfo laInfo) = _$_Delete;

  @override
  LoanApplicationInfo get laInfo;
  @override
  @JsonKey(ignore: true)
  _$DeleteCopyWith<_Delete> get copyWith;
}

/// @nodoc
class _$LoanApplicationActorStateTearOff {
  const _$LoanApplicationActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _DeleteSuccess deleteSucess() {
    return const _DeleteSuccess();
  }

// ignore: unused_element
  _DeleteFailure deleteFailure(LoanApplicationFailure failure) {
    return _DeleteFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoanApplicationActorState = _$LoanApplicationActorStateTearOff();

/// @nodoc
mixin _$LoanApplicationActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deleteSucess(),
    @required TResult deleteFailure(LoanApplicationFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deleteSucess(),
    TResult deleteFailure(LoanApplicationFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deleteSucess(_DeleteSuccess value),
    @required TResult deleteFailure(_DeleteFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deleteSucess(_DeleteSuccess value),
    TResult deleteFailure(_DeleteFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LoanApplicationActorStateCopyWith<$Res> {
  factory $LoanApplicationActorStateCopyWith(LoanApplicationActorState value,
          $Res Function(LoanApplicationActorState) then) =
      _$LoanApplicationActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoanApplicationActorStateCopyWithImpl<$Res>
    implements $LoanApplicationActorStateCopyWith<$Res> {
  _$LoanApplicationActorStateCopyWithImpl(this._value, this._then);

  final LoanApplicationActorState _value;
  // ignore: unused_field
  final $Res Function(LoanApplicationActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$LoanApplicationActorStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'LoanApplicationActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deleteSucess(),
    @required TResult deleteFailure(LoanApplicationFailure failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSucess != null);
    assert(deleteFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deleteSucess(),
    TResult deleteFailure(LoanApplicationFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deleteSucess(_DeleteSuccess value),
    @required TResult deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSucess != null);
    assert(deleteFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deleteSucess(_DeleteSuccess value),
    TResult deleteFailure(_DeleteFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoanApplicationActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$LoanApplicationActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc
class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'LoanApplicationActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deleteSucess(),
    @required TResult deleteFailure(LoanApplicationFailure failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSucess != null);
    assert(deleteFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deleteSucess(),
    TResult deleteFailure(LoanApplicationFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deleteSucess(_DeleteSuccess value),
    @required TResult deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSucess != null);
    assert(deleteFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deleteSucess(_DeleteSuccess value),
    TResult deleteFailure(_DeleteFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements LoanApplicationActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$LoanApplicationActorStateCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(
      _DeleteSuccess _value, $Res Function(_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteSuccess));

  @override
  _DeleteSuccess get _value => super._value as _DeleteSuccess;
}

/// @nodoc
class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'LoanApplicationActorState.deleteSucess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deleteSucess(),
    @required TResult deleteFailure(LoanApplicationFailure failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSucess != null);
    assert(deleteFailure != null);
    return deleteSucess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deleteSucess(),
    TResult deleteFailure(LoanApplicationFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteSucess != null) {
      return deleteSucess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deleteSucess(_DeleteSuccess value),
    @required TResult deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSucess != null);
    assert(deleteFailure != null);
    return deleteSucess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deleteSucess(_DeleteSuccess value),
    TResult deleteFailure(_DeleteFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteSucess != null) {
      return deleteSucess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements LoanApplicationActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

/// @nodoc
abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(
          _DeleteFailure value, $Res Function(_DeleteFailure) then) =
      __$DeleteFailureCopyWithImpl<$Res>;
  $Res call({LoanApplicationFailure failure});

  $LoanApplicationFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$DeleteFailureCopyWithImpl<$Res>
    extends _$LoanApplicationActorStateCopyWithImpl<$Res>
    implements _$DeleteFailureCopyWith<$Res> {
  __$DeleteFailureCopyWithImpl(
      _DeleteFailure _value, $Res Function(_DeleteFailure) _then)
      : super(_value, (v) => _then(v as _DeleteFailure));

  @override
  _DeleteFailure get _value => super._value as _DeleteFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_DeleteFailure(
      failure == freezed ? _value.failure : failure as LoanApplicationFailure,
    ));
  }

  @override
  $LoanApplicationFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $LoanApplicationFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.failure) : assert(failure != null);

  @override
  final LoanApplicationFailure failure;

  @override
  String toString() {
    return 'LoanApplicationActorState.deleteFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deleteSucess(),
    @required TResult deleteFailure(LoanApplicationFailure failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSucess != null);
    assert(deleteFailure != null);
    return deleteFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deleteSucess(),
    TResult deleteFailure(LoanApplicationFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deleteSucess(_DeleteSuccess value),
    @required TResult deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSucess != null);
    assert(deleteFailure != null);
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deleteSucess(_DeleteSuccess value),
    TResult deleteFailure(_DeleteFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements LoanApplicationActorState {
  const factory _DeleteFailure(LoanApplicationFailure failure) =
      _$_DeleteFailure;

  LoanApplicationFailure get failure;
  @JsonKey(ignore: true)
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith;
}
