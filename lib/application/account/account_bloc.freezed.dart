// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccountEventTearOff {
  const _$AccountEventTearOff();

  _Started started() {
    return const _Started();
  }

  _DpChanged dpChanged(File dp, String userId) {
    return _DpChanged(
      dp,
      userId,
    );
  }

  _AccountSwitched accountSwitched({required String id, required String type}) {
    return _AccountSwitched(
      id: id,
      type: type,
    );
  }

  _SignOut signOut() {
    return const _SignOut();
  }
}

/// @nodoc
const $AccountEvent = _$AccountEventTearOff();

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(File dp, String userId) dpChanged,
    required TResult Function(String id, String type) accountSwitched,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File dp, String userId)? dpChanged,
    TResult Function(String id, String type)? accountSwitched,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DpChanged value) dpChanged,
    required TResult Function(_AccountSwitched value) accountSwitched,
    required TResult Function(_SignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DpChanged value)? dpChanged,
    TResult Function(_AccountSwitched value)? accountSwitched,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res> implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  final AccountEvent _value;
  // ignore: unused_field
  final $Res Function(AccountEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AccountEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AccountEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(File dp, String userId) dpChanged,
    required TResult Function(String id, String type) accountSwitched,
    required TResult Function() signOut,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File dp, String userId)? dpChanged,
    TResult Function(String id, String type)? accountSwitched,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DpChanged value) dpChanged,
    required TResult Function(_AccountSwitched value) accountSwitched,
    required TResult Function(_SignOut value) signOut,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DpChanged value)? dpChanged,
    TResult Function(_AccountSwitched value)? accountSwitched,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AccountEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$DpChangedCopyWith<$Res> {
  factory _$DpChangedCopyWith(
          _DpChanged value, $Res Function(_DpChanged) then) =
      __$DpChangedCopyWithImpl<$Res>;
  $Res call({File dp, String userId});
}

/// @nodoc
class __$DpChangedCopyWithImpl<$Res> extends _$AccountEventCopyWithImpl<$Res>
    implements _$DpChangedCopyWith<$Res> {
  __$DpChangedCopyWithImpl(_DpChanged _value, $Res Function(_DpChanged) _then)
      : super(_value, (v) => _then(v as _DpChanged));

  @override
  _DpChanged get _value => super._value as _DpChanged;

  @override
  $Res call({
    Object? dp = freezed,
    Object? userId = freezed,
  }) {
    return _then(_DpChanged(
      dp == freezed
          ? _value.dp
          : dp // ignore: cast_nullable_to_non_nullable
              as File,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_DpChanged implements _DpChanged {
  const _$_DpChanged(this.dp, this.userId);

  @override
  final File dp;
  @override
  final String userId;

  @override
  String toString() {
    return 'AccountEvent.dpChanged(dp: $dp, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DpChanged &&
            (identical(other.dp, dp) ||
                const DeepCollectionEquality().equals(other.dp, dp)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dp) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$DpChangedCopyWith<_DpChanged> get copyWith =>
      __$DpChangedCopyWithImpl<_DpChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(File dp, String userId) dpChanged,
    required TResult Function(String id, String type) accountSwitched,
    required TResult Function() signOut,
  }) {
    return dpChanged(dp, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File dp, String userId)? dpChanged,
    TResult Function(String id, String type)? accountSwitched,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (dpChanged != null) {
      return dpChanged(dp, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DpChanged value) dpChanged,
    required TResult Function(_AccountSwitched value) accountSwitched,
    required TResult Function(_SignOut value) signOut,
  }) {
    return dpChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DpChanged value)? dpChanged,
    TResult Function(_AccountSwitched value)? accountSwitched,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (dpChanged != null) {
      return dpChanged(this);
    }
    return orElse();
  }
}

abstract class _DpChanged implements AccountEvent {
  const factory _DpChanged(File dp, String userId) = _$_DpChanged;

  File get dp => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DpChangedCopyWith<_DpChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AccountSwitchedCopyWith<$Res> {
  factory _$AccountSwitchedCopyWith(
          _AccountSwitched value, $Res Function(_AccountSwitched) then) =
      __$AccountSwitchedCopyWithImpl<$Res>;
  $Res call({String id, String type});
}

/// @nodoc
class __$AccountSwitchedCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res>
    implements _$AccountSwitchedCopyWith<$Res> {
  __$AccountSwitchedCopyWithImpl(
      _AccountSwitched _value, $Res Function(_AccountSwitched) _then)
      : super(_value, (v) => _then(v as _AccountSwitched));

  @override
  _AccountSwitched get _value => super._value as _AccountSwitched;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
  }) {
    return _then(_AccountSwitched(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_AccountSwitched implements _AccountSwitched {
  const _$_AccountSwitched({required this.id, required this.type});

  @override
  final String id;
  @override
  final String type;

  @override
  String toString() {
    return 'AccountEvent.accountSwitched(id: $id, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountSwitched &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$AccountSwitchedCopyWith<_AccountSwitched> get copyWith =>
      __$AccountSwitchedCopyWithImpl<_AccountSwitched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(File dp, String userId) dpChanged,
    required TResult Function(String id, String type) accountSwitched,
    required TResult Function() signOut,
  }) {
    return accountSwitched(id, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File dp, String userId)? dpChanged,
    TResult Function(String id, String type)? accountSwitched,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (accountSwitched != null) {
      return accountSwitched(id, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DpChanged value) dpChanged,
    required TResult Function(_AccountSwitched value) accountSwitched,
    required TResult Function(_SignOut value) signOut,
  }) {
    return accountSwitched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DpChanged value)? dpChanged,
    TResult Function(_AccountSwitched value)? accountSwitched,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (accountSwitched != null) {
      return accountSwitched(this);
    }
    return orElse();
  }
}

abstract class _AccountSwitched implements AccountEvent {
  const factory _AccountSwitched({required String id, required String type}) =
      _$_AccountSwitched;

  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AccountSwitchedCopyWith<_AccountSwitched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignOutCopyWith<$Res> {
  factory _$SignOutCopyWith(_SignOut value, $Res Function(_SignOut) then) =
      __$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignOutCopyWithImpl<$Res> extends _$AccountEventCopyWithImpl<$Res>
    implements _$SignOutCopyWith<$Res> {
  __$SignOutCopyWithImpl(_SignOut _value, $Res Function(_SignOut) _then)
      : super(_value, (v) => _then(v as _SignOut));

  @override
  _SignOut get _value => super._value as _SignOut;
}

/// @nodoc
class _$_SignOut implements _SignOut {
  const _$_SignOut();

  @override
  String toString() {
    return 'AccountEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(File dp, String userId) dpChanged,
    required TResult Function(String id, String type) accountSwitched,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File dp, String userId)? dpChanged,
    TResult Function(String id, String type)? accountSwitched,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DpChanged value) dpChanged,
    required TResult Function(_AccountSwitched value) accountSwitched,
    required TResult Function(_SignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DpChanged value)? dpChanged,
    TResult Function(_AccountSwitched value)? accountSwitched,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AccountEvent {
  const factory _SignOut() = _$_SignOut;
}

/// @nodoc
class _$AccountStateTearOff {
  const _$AccountStateTearOff();

  _AccountState call(
      {required File? dp,
      required Future<User> futureUser,
      required bool isSubmit,
      required bool isSucess,
      required String failure,
      required bool isSwitchSuccess,
      required bool isSwitchLoading,
      required bool isSignout}) {
    return _AccountState(
      dp: dp,
      futureUser: futureUser,
      isSubmit: isSubmit,
      isSucess: isSucess,
      failure: failure,
      isSwitchSuccess: isSwitchSuccess,
      isSwitchLoading: isSwitchLoading,
      isSignout: isSignout,
    );
  }
}

/// @nodoc
const $AccountState = _$AccountStateTearOff();

/// @nodoc
mixin _$AccountState {
  File? get dp => throw _privateConstructorUsedError;
  Future<User> get futureUser => throw _privateConstructorUsedError;
  bool get isSubmit =>
      throw _privateConstructorUsedError; // dp upload or change
  bool get isSucess => throw _privateConstructorUsedError;
  String get failure => throw _privateConstructorUsedError;
  bool get isSwitchSuccess =>
      throw _privateConstructorUsedError; // account switch
  bool get isSwitchLoading => throw _privateConstructorUsedError;
  bool get isSignout => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res>;
  $Res call(
      {File? dp,
      Future<User> futureUser,
      bool isSubmit,
      bool isSucess,
      String failure,
      bool isSwitchSuccess,
      bool isSwitchLoading,
      bool isSignout});
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res> implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  final AccountState _value;
  // ignore: unused_field
  final $Res Function(AccountState) _then;

  @override
  $Res call({
    Object? dp = freezed,
    Object? futureUser = freezed,
    Object? isSubmit = freezed,
    Object? isSucess = freezed,
    Object? failure = freezed,
    Object? isSwitchSuccess = freezed,
    Object? isSwitchLoading = freezed,
    Object? isSignout = freezed,
  }) {
    return _then(_value.copyWith(
      dp: dp == freezed
          ? _value.dp
          : dp // ignore: cast_nullable_to_non_nullable
              as File?,
      futureUser: futureUser == freezed
          ? _value.futureUser
          : futureUser // ignore: cast_nullable_to_non_nullable
              as Future<User>,
      isSubmit: isSubmit == freezed
          ? _value.isSubmit
          : isSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      isSucess: isSucess == freezed
          ? _value.isSucess
          : isSucess // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
      isSwitchSuccess: isSwitchSuccess == freezed
          ? _value.isSwitchSuccess
          : isSwitchSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isSwitchLoading: isSwitchLoading == freezed
          ? _value.isSwitchLoading
          : isSwitchLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignout: isSignout == freezed
          ? _value.isSignout
          : isSignout // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AccountStateCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$AccountStateCopyWith(
          _AccountState value, $Res Function(_AccountState) then) =
      __$AccountStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {File? dp,
      Future<User> futureUser,
      bool isSubmit,
      bool isSucess,
      String failure,
      bool isSwitchSuccess,
      bool isSwitchLoading,
      bool isSignout});
}

/// @nodoc
class __$AccountStateCopyWithImpl<$Res> extends _$AccountStateCopyWithImpl<$Res>
    implements _$AccountStateCopyWith<$Res> {
  __$AccountStateCopyWithImpl(
      _AccountState _value, $Res Function(_AccountState) _then)
      : super(_value, (v) => _then(v as _AccountState));

  @override
  _AccountState get _value => super._value as _AccountState;

  @override
  $Res call({
    Object? dp = freezed,
    Object? futureUser = freezed,
    Object? isSubmit = freezed,
    Object? isSucess = freezed,
    Object? failure = freezed,
    Object? isSwitchSuccess = freezed,
    Object? isSwitchLoading = freezed,
    Object? isSignout = freezed,
  }) {
    return _then(_AccountState(
      dp: dp == freezed
          ? _value.dp
          : dp // ignore: cast_nullable_to_non_nullable
              as File?,
      futureUser: futureUser == freezed
          ? _value.futureUser
          : futureUser // ignore: cast_nullable_to_non_nullable
              as Future<User>,
      isSubmit: isSubmit == freezed
          ? _value.isSubmit
          : isSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      isSucess: isSucess == freezed
          ? _value.isSucess
          : isSucess // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
      isSwitchSuccess: isSwitchSuccess == freezed
          ? _value.isSwitchSuccess
          : isSwitchSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isSwitchLoading: isSwitchLoading == freezed
          ? _value.isSwitchLoading
          : isSwitchLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignout: isSignout == freezed
          ? _value.isSignout
          : isSignout // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_AccountState implements _AccountState {
  const _$_AccountState(
      {required this.dp,
      required this.futureUser,
      required this.isSubmit,
      required this.isSucess,
      required this.failure,
      required this.isSwitchSuccess,
      required this.isSwitchLoading,
      required this.isSignout});

  @override
  final File? dp;
  @override
  final Future<User> futureUser;
  @override
  final bool isSubmit;
  @override // dp upload or change
  final bool isSucess;
  @override
  final String failure;
  @override
  final bool isSwitchSuccess;
  @override // account switch
  final bool isSwitchLoading;
  @override
  final bool isSignout;

  @override
  String toString() {
    return 'AccountState(dp: $dp, futureUser: $futureUser, isSubmit: $isSubmit, isSucess: $isSucess, failure: $failure, isSwitchSuccess: $isSwitchSuccess, isSwitchLoading: $isSwitchLoading, isSignout: $isSignout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountState &&
            (identical(other.dp, dp) ||
                const DeepCollectionEquality().equals(other.dp, dp)) &&
            (identical(other.futureUser, futureUser) ||
                const DeepCollectionEquality()
                    .equals(other.futureUser, futureUser)) &&
            (identical(other.isSubmit, isSubmit) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmit, isSubmit)) &&
            (identical(other.isSucess, isSucess) ||
                const DeepCollectionEquality()
                    .equals(other.isSucess, isSucess)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality()
                    .equals(other.failure, failure)) &&
            (identical(other.isSwitchSuccess, isSwitchSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSwitchSuccess, isSwitchSuccess)) &&
            (identical(other.isSwitchLoading, isSwitchLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isSwitchLoading, isSwitchLoading)) &&
            (identical(other.isSignout, isSignout) ||
                const DeepCollectionEquality()
                    .equals(other.isSignout, isSignout)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dp) ^
      const DeepCollectionEquality().hash(futureUser) ^
      const DeepCollectionEquality().hash(isSubmit) ^
      const DeepCollectionEquality().hash(isSucess) ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(isSwitchSuccess) ^
      const DeepCollectionEquality().hash(isSwitchLoading) ^
      const DeepCollectionEquality().hash(isSignout);

  @JsonKey(ignore: true)
  @override
  _$AccountStateCopyWith<_AccountState> get copyWith =>
      __$AccountStateCopyWithImpl<_AccountState>(this, _$identity);
}

abstract class _AccountState implements AccountState {
  const factory _AccountState(
      {required File? dp,
      required Future<User> futureUser,
      required bool isSubmit,
      required bool isSucess,
      required String failure,
      required bool isSwitchSuccess,
      required bool isSwitchLoading,
      required bool isSignout}) = _$_AccountState;

  @override
  File? get dp => throw _privateConstructorUsedError;
  @override
  Future<User> get futureUser => throw _privateConstructorUsedError;
  @override
  bool get isSubmit => throw _privateConstructorUsedError;
  @override // dp upload or change
  bool get isSucess => throw _privateConstructorUsedError;
  @override
  String get failure => throw _privateConstructorUsedError;
  @override
  bool get isSwitchSuccess => throw _privateConstructorUsedError;
  @override // account switch
  bool get isSwitchLoading => throw _privateConstructorUsedError;
  @override
  bool get isSignout => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AccountStateCopyWith<_AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}
