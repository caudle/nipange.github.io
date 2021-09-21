// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForgotPasswordEventTearOff {
  const _$ForgotPasswordEventTearOff();

  _Send send() {
    return const _Send();
  }

  _TimeOut timeOut() {
    return const _TimeOut();
  }

  _EmailChanged emailChanged(String email) {
    return _EmailChanged(
      email,
    );
  }
}

/// @nodoc
const $ForgotPasswordEvent = _$ForgotPasswordEventTearOff();

/// @nodoc
mixin _$ForgotPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() send,
    required TResult Function() timeOut,
    required TResult Function(String email) emailChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? send,
    TResult Function()? timeOut,
    TResult Function(String email)? emailChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Send value) send,
    required TResult Function(_TimeOut value) timeOut,
    required TResult Function(_EmailChanged value) emailChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Send value)? send,
    TResult Function(_TimeOut value)? timeOut,
    TResult Function(_EmailChanged value)? emailChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEventCopyWith(
          ForgotPasswordEvent value, $Res Function(ForgotPasswordEvent) then) =
      _$ForgotPasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgotPasswordEventCopyWithImpl<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._value, this._then);

  final ForgotPasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordEvent) _then;
}

/// @nodoc
abstract class _$SendCopyWith<$Res> {
  factory _$SendCopyWith(_Send value, $Res Function(_Send) then) =
      __$SendCopyWithImpl<$Res>;
}

/// @nodoc
class __$SendCopyWithImpl<$Res> extends _$ForgotPasswordEventCopyWithImpl<$Res>
    implements _$SendCopyWith<$Res> {
  __$SendCopyWithImpl(_Send _value, $Res Function(_Send) _then)
      : super(_value, (v) => _then(v as _Send));

  @override
  _Send get _value => super._value as _Send;
}

/// @nodoc
class _$_Send implements _Send {
  const _$_Send();

  @override
  String toString() {
    return 'ForgotPasswordEvent.send()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Send);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() send,
    required TResult Function() timeOut,
    required TResult Function(String email) emailChanged,
  }) {
    return send();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? send,
    TResult Function()? timeOut,
    TResult Function(String email)? emailChanged,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Send value) send,
    required TResult Function(_TimeOut value) timeOut,
    required TResult Function(_EmailChanged value) emailChanged,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Send value)? send,
    TResult Function(_TimeOut value)? timeOut,
    TResult Function(_EmailChanged value)? emailChanged,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }
}

abstract class _Send implements ForgotPasswordEvent {
  const factory _Send() = _$_Send;
}

/// @nodoc
abstract class _$TimeOutCopyWith<$Res> {
  factory _$TimeOutCopyWith(_TimeOut value, $Res Function(_TimeOut) then) =
      __$TimeOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$TimeOutCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
    implements _$TimeOutCopyWith<$Res> {
  __$TimeOutCopyWithImpl(_TimeOut _value, $Res Function(_TimeOut) _then)
      : super(_value, (v) => _then(v as _TimeOut));

  @override
  _TimeOut get _value => super._value as _TimeOut;
}

/// @nodoc
class _$_TimeOut implements _TimeOut {
  const _$_TimeOut();

  @override
  String toString() {
    return 'ForgotPasswordEvent.timeOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TimeOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() send,
    required TResult Function() timeOut,
    required TResult Function(String email) emailChanged,
  }) {
    return timeOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? send,
    TResult Function()? timeOut,
    TResult Function(String email)? emailChanged,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Send value) send,
    required TResult Function(_TimeOut value) timeOut,
    required TResult Function(_EmailChanged value) emailChanged,
  }) {
    return timeOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Send value)? send,
    TResult Function(_TimeOut value)? timeOut,
    TResult Function(_EmailChanged value)? emailChanged,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut(this);
    }
    return orElse();
  }
}

abstract class _TimeOut implements ForgotPasswordEvent {
  const factory _TimeOut() = _$_TimeOut;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'ForgotPasswordEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() send,
    required TResult Function() timeOut,
    required TResult Function(String email) emailChanged,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? send,
    TResult Function()? timeOut,
    TResult Function(String email)? emailChanged,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Send value) send,
    required TResult Function(_TimeOut value) timeOut,
    required TResult Function(_EmailChanged value) emailChanged,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Send value)? send,
    TResult Function(_TimeOut value)? timeOut,
    TResult Function(_EmailChanged value)? emailChanged,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements ForgotPasswordEvent {
  const factory _EmailChanged(String email) = _$_EmailChanged;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ForgotPasswordStateTearOff {
  const _$ForgotPasswordStateTearOff();

  _ForgotPasswordState call(
      {required String email,
      required bool isLoading,
      required bool isSuccess,
      required String failureMessage,
      required int start}) {
    return _ForgotPasswordState(
      email: email,
      isLoading: isLoading,
      isSuccess: isSuccess,
      failureMessage: failureMessage,
      start: start,
    );
  }
}

/// @nodoc
const $ForgotPasswordState = _$ForgotPasswordStateTearOff();

/// @nodoc
mixin _$ForgotPasswordState {
  String get email => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  String get failureMessage => throw _privateConstructorUsedError;
  int get start => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res>;
  $Res call(
      {String email,
      bool isLoading,
      bool isSuccess,
      String failureMessage,
      int start});
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  final ForgotPasswordState _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? isLoading = freezed,
    Object? isSuccess = freezed,
    Object? failureMessage = freezed,
    Object? start = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: failureMessage == freezed
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ForgotPasswordStateCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$ForgotPasswordStateCopyWith(_ForgotPasswordState value,
          $Res Function(_ForgotPasswordState) then) =
      __$ForgotPasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      bool isLoading,
      bool isSuccess,
      String failureMessage,
      int start});
}

/// @nodoc
class __$ForgotPasswordStateCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res>
    implements _$ForgotPasswordStateCopyWith<$Res> {
  __$ForgotPasswordStateCopyWithImpl(
      _ForgotPasswordState _value, $Res Function(_ForgotPasswordState) _then)
      : super(_value, (v) => _then(v as _ForgotPasswordState));

  @override
  _ForgotPasswordState get _value => super._value as _ForgotPasswordState;

  @override
  $Res call({
    Object? email = freezed,
    Object? isLoading = freezed,
    Object? isSuccess = freezed,
    Object? failureMessage = freezed,
    Object? start = freezed,
  }) {
    return _then(_ForgotPasswordState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: failureMessage == freezed
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_ForgotPasswordState implements _ForgotPasswordState {
  const _$_ForgotPasswordState(
      {required this.email,
      required this.isLoading,
      required this.isSuccess,
      required this.failureMessage,
      required this.start});

  @override
  final String email;
  @override
  final bool isLoading;
  @override
  final bool isSuccess;
  @override
  final String failureMessage;
  @override
  final int start;

  @override
  String toString() {
    return 'ForgotPasswordState(email: $email, isLoading: $isLoading, isSuccess: $isSuccess, failureMessage: $failureMessage, start: $start)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForgotPasswordState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.failureMessage, failureMessage) ||
                const DeepCollectionEquality()
                    .equals(other.failureMessage, failureMessage)) &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(failureMessage) ^
      const DeepCollectionEquality().hash(start);

  @JsonKey(ignore: true)
  @override
  _$ForgotPasswordStateCopyWith<_ForgotPasswordState> get copyWith =>
      __$ForgotPasswordStateCopyWithImpl<_ForgotPasswordState>(
          this, _$identity);
}

abstract class _ForgotPasswordState implements ForgotPasswordState {
  const factory _ForgotPasswordState(
      {required String email,
      required bool isLoading,
      required bool isSuccess,
      required String failureMessage,
      required int start}) = _$_ForgotPasswordState;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isSuccess => throw _privateConstructorUsedError;
  @override
  String get failureMessage => throw _privateConstructorUsedError;
  @override
  int get start => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ForgotPasswordStateCopyWith<_ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
