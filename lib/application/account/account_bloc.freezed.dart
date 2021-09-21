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

  _Started started(String id) {
    return _Started(
      id,
    );
  }

  _DpChanged dpChanged(File dp, String userId) {
    return _DpChanged(
      dp,
      userId,
    );
  }

  _VerifyEmail verifyEmail({required String id, required String email}) {
    return _VerifyEmail(
      id: id,
      email: email,
    );
  }

  _EmailChanged emailChanged(String email) {
    return _EmailChanged(
      email,
    );
  }

  _PhoneChanged phoneChanged(String phone) {
    return _PhoneChanged(
      phone,
    );
  }

  _OtpCodeChanged otpCodeChanged(String otp) {
    return _OtpCodeChanged(
      otp,
    );
  }

  _PhoneVerified phoneVerified(
      {required bool success, required bool failure, required String error}) {
    return _PhoneVerified(
      success: success,
      failure: failure,
      error: error,
    );
  }

  _StartTimeChanged startTimeChanged(int value, bool resend) {
    return _StartTimeChanged(
      value,
      resend,
    );
  }

  _ValidatePhone validatePhone(String phone) {
    return _ValidatePhone(
      phone,
    );
  }

  _TimerChanged timerChanged(Timer timer) {
    return _TimerChanged(
      timer,
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
    required TResult Function(String id) started,
    required TResult Function(File dp, String userId) dpChanged,
    required TResult Function(String id, String email) verifyEmail,
    required TResult Function(String email) emailChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String otp) otpCodeChanged,
    required TResult Function(bool success, bool failure, String error)
        phoneVerified,
    required TResult Function(int value, bool resend) startTimeChanged,
    required TResult Function(String phone) validatePhone,
    required TResult Function(Timer timer) timerChanged,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(File dp, String userId)? dpChanged,
    TResult Function(String id, String email)? verifyEmail,
    TResult Function(String email)? emailChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String otp)? otpCodeChanged,
    TResult Function(bool success, bool failure, String error)? phoneVerified,
    TResult Function(int value, bool resend)? startTimeChanged,
    TResult Function(String phone)? validatePhone,
    TResult Function(Timer timer)? timerChanged,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DpChanged value) dpChanged,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_OtpCodeChanged value) otpCodeChanged,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_StartTimeChanged value) startTimeChanged,
    required TResult Function(_ValidatePhone value) validatePhone,
    required TResult Function(_TimerChanged value) timerChanged,
    required TResult Function(_SignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DpChanged value)? dpChanged,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_OtpCodeChanged value)? otpCodeChanged,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_StartTimeChanged value)? startTimeChanged,
    TResult Function(_ValidatePhone value)? validatePhone,
    TResult Function(_TimerChanged value)? timerChanged,
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
  $Res call({String id});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AccountEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Started(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'AccountEvent.started(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(File dp, String userId) dpChanged,
    required TResult Function(String id, String email) verifyEmail,
    required TResult Function(String email) emailChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String otp) otpCodeChanged,
    required TResult Function(bool success, bool failure, String error)
        phoneVerified,
    required TResult Function(int value, bool resend) startTimeChanged,
    required TResult Function(String phone) validatePhone,
    required TResult Function(Timer timer) timerChanged,
    required TResult Function() signOut,
  }) {
    return started(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(File dp, String userId)? dpChanged,
    TResult Function(String id, String email)? verifyEmail,
    TResult Function(String email)? emailChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String otp)? otpCodeChanged,
    TResult Function(bool success, bool failure, String error)? phoneVerified,
    TResult Function(int value, bool resend)? startTimeChanged,
    TResult Function(String phone)? validatePhone,
    TResult Function(Timer timer)? timerChanged,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DpChanged value) dpChanged,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_OtpCodeChanged value) otpCodeChanged,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_StartTimeChanged value) startTimeChanged,
    required TResult Function(_ValidatePhone value) validatePhone,
    required TResult Function(_TimerChanged value) timerChanged,
    required TResult Function(_SignOut value) signOut,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DpChanged value)? dpChanged,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_OtpCodeChanged value)? otpCodeChanged,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_StartTimeChanged value)? startTimeChanged,
    TResult Function(_ValidatePhone value)? validatePhone,
    TResult Function(_TimerChanged value)? timerChanged,
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
  const factory _Started(String id) = _$_Started;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(String id) started,
    required TResult Function(File dp, String userId) dpChanged,
    required TResult Function(String id, String email) verifyEmail,
    required TResult Function(String email) emailChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String otp) otpCodeChanged,
    required TResult Function(bool success, bool failure, String error)
        phoneVerified,
    required TResult Function(int value, bool resend) startTimeChanged,
    required TResult Function(String phone) validatePhone,
    required TResult Function(Timer timer) timerChanged,
    required TResult Function() signOut,
  }) {
    return dpChanged(dp, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(File dp, String userId)? dpChanged,
    TResult Function(String id, String email)? verifyEmail,
    TResult Function(String email)? emailChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String otp)? otpCodeChanged,
    TResult Function(bool success, bool failure, String error)? phoneVerified,
    TResult Function(int value, bool resend)? startTimeChanged,
    TResult Function(String phone)? validatePhone,
    TResult Function(Timer timer)? timerChanged,
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
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_OtpCodeChanged value) otpCodeChanged,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_StartTimeChanged value) startTimeChanged,
    required TResult Function(_ValidatePhone value) validatePhone,
    required TResult Function(_TimerChanged value) timerChanged,
    required TResult Function(_SignOut value) signOut,
  }) {
    return dpChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DpChanged value)? dpChanged,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_OtpCodeChanged value)? otpCodeChanged,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_StartTimeChanged value)? startTimeChanged,
    TResult Function(_ValidatePhone value)? validatePhone,
    TResult Function(_TimerChanged value)? timerChanged,
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
abstract class _$VerifyEmailCopyWith<$Res> {
  factory _$VerifyEmailCopyWith(
          _VerifyEmail value, $Res Function(_VerifyEmail) then) =
      __$VerifyEmailCopyWithImpl<$Res>;
  $Res call({String id, String email});
}

/// @nodoc
class __$VerifyEmailCopyWithImpl<$Res> extends _$AccountEventCopyWithImpl<$Res>
    implements _$VerifyEmailCopyWith<$Res> {
  __$VerifyEmailCopyWithImpl(
      _VerifyEmail _value, $Res Function(_VerifyEmail) _then)
      : super(_value, (v) => _then(v as _VerifyEmail));

  @override
  _VerifyEmail get _value => super._value as _VerifyEmail;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
  }) {
    return _then(_VerifyEmail(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_VerifyEmail implements _VerifyEmail {
  const _$_VerifyEmail({required this.id, required this.email});

  @override
  final String id;
  @override
  final String email;

  @override
  String toString() {
    return 'AccountEvent.verifyEmail(id: $id, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerifyEmail &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$VerifyEmailCopyWith<_VerifyEmail> get copyWith =>
      __$VerifyEmailCopyWithImpl<_VerifyEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(File dp, String userId) dpChanged,
    required TResult Function(String id, String email) verifyEmail,
    required TResult Function(String email) emailChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String otp) otpCodeChanged,
    required TResult Function(bool success, bool failure, String error)
        phoneVerified,
    required TResult Function(int value, bool resend) startTimeChanged,
    required TResult Function(String phone) validatePhone,
    required TResult Function(Timer timer) timerChanged,
    required TResult Function() signOut,
  }) {
    return verifyEmail(id, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(File dp, String userId)? dpChanged,
    TResult Function(String id, String email)? verifyEmail,
    TResult Function(String email)? emailChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String otp)? otpCodeChanged,
    TResult Function(bool success, bool failure, String error)? phoneVerified,
    TResult Function(int value, bool resend)? startTimeChanged,
    TResult Function(String phone)? validatePhone,
    TResult Function(Timer timer)? timerChanged,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(id, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DpChanged value) dpChanged,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_OtpCodeChanged value) otpCodeChanged,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_StartTimeChanged value) startTimeChanged,
    required TResult Function(_ValidatePhone value) validatePhone,
    required TResult Function(_TimerChanged value) timerChanged,
    required TResult Function(_SignOut value) signOut,
  }) {
    return verifyEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DpChanged value)? dpChanged,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_OtpCodeChanged value)? otpCodeChanged,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_StartTimeChanged value)? startTimeChanged,
    TResult Function(_ValidatePhone value)? validatePhone,
    TResult Function(_TimerChanged value)? timerChanged,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(this);
    }
    return orElse();
  }
}

abstract class _VerifyEmail implements AccountEvent {
  const factory _VerifyEmail({required String id, required String email}) =
      _$_VerifyEmail;

  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$VerifyEmailCopyWith<_VerifyEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res> extends _$AccountEventCopyWithImpl<$Res>
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
    return 'AccountEvent.emailChanged(email: $email)';
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
    required TResult Function(String id) started,
    required TResult Function(File dp, String userId) dpChanged,
    required TResult Function(String id, String email) verifyEmail,
    required TResult Function(String email) emailChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String otp) otpCodeChanged,
    required TResult Function(bool success, bool failure, String error)
        phoneVerified,
    required TResult Function(int value, bool resend) startTimeChanged,
    required TResult Function(String phone) validatePhone,
    required TResult Function(Timer timer) timerChanged,
    required TResult Function() signOut,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(File dp, String userId)? dpChanged,
    TResult Function(String id, String email)? verifyEmail,
    TResult Function(String email)? emailChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String otp)? otpCodeChanged,
    TResult Function(bool success, bool failure, String error)? phoneVerified,
    TResult Function(int value, bool resend)? startTimeChanged,
    TResult Function(String phone)? validatePhone,
    TResult Function(Timer timer)? timerChanged,
    TResult Function()? signOut,
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
    required TResult Function(_Started value) started,
    required TResult Function(_DpChanged value) dpChanged,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_OtpCodeChanged value) otpCodeChanged,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_StartTimeChanged value) startTimeChanged,
    required TResult Function(_ValidatePhone value) validatePhone,
    required TResult Function(_TimerChanged value) timerChanged,
    required TResult Function(_SignOut value) signOut,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DpChanged value)? dpChanged,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_OtpCodeChanged value)? otpCodeChanged,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_StartTimeChanged value)? startTimeChanged,
    TResult Function(_ValidatePhone value)? validatePhone,
    TResult Function(_TimerChanged value)? timerChanged,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements AccountEvent {
  const factory _EmailChanged(String email) = _$_EmailChanged;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PhoneChangedCopyWith<$Res> {
  factory _$PhoneChangedCopyWith(
          _PhoneChanged value, $Res Function(_PhoneChanged) then) =
      __$PhoneChangedCopyWithImpl<$Res>;
  $Res call({String phone});
}

/// @nodoc
class __$PhoneChangedCopyWithImpl<$Res> extends _$AccountEventCopyWithImpl<$Res>
    implements _$PhoneChangedCopyWith<$Res> {
  __$PhoneChangedCopyWithImpl(
      _PhoneChanged _value, $Res Function(_PhoneChanged) _then)
      : super(_value, (v) => _then(v as _PhoneChanged));

  @override
  _PhoneChanged get _value => super._value as _PhoneChanged;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(_PhoneChanged(
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_PhoneChanged implements _PhoneChanged {
  const _$_PhoneChanged(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'AccountEvent.phoneChanged(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhoneChanged &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  _$PhoneChangedCopyWith<_PhoneChanged> get copyWith =>
      __$PhoneChangedCopyWithImpl<_PhoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(File dp, String userId) dpChanged,
    required TResult Function(String id, String email) verifyEmail,
    required TResult Function(String email) emailChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String otp) otpCodeChanged,
    required TResult Function(bool success, bool failure, String error)
        phoneVerified,
    required TResult Function(int value, bool resend) startTimeChanged,
    required TResult Function(String phone) validatePhone,
    required TResult Function(Timer timer) timerChanged,
    required TResult Function() signOut,
  }) {
    return phoneChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(File dp, String userId)? dpChanged,
    TResult Function(String id, String email)? verifyEmail,
    TResult Function(String email)? emailChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String otp)? otpCodeChanged,
    TResult Function(bool success, bool failure, String error)? phoneVerified,
    TResult Function(int value, bool resend)? startTimeChanged,
    TResult Function(String phone)? validatePhone,
    TResult Function(Timer timer)? timerChanged,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DpChanged value) dpChanged,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_OtpCodeChanged value) otpCodeChanged,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_StartTimeChanged value) startTimeChanged,
    required TResult Function(_ValidatePhone value) validatePhone,
    required TResult Function(_TimerChanged value) timerChanged,
    required TResult Function(_SignOut value) signOut,
  }) {
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DpChanged value)? dpChanged,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_OtpCodeChanged value)? otpCodeChanged,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_StartTimeChanged value)? startTimeChanged,
    TResult Function(_ValidatePhone value)? validatePhone,
    TResult Function(_TimerChanged value)? timerChanged,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneChanged implements AccountEvent {
  const factory _PhoneChanged(String phone) = _$_PhoneChanged;

  String get phone => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PhoneChangedCopyWith<_PhoneChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OtpCodeChangedCopyWith<$Res> {
  factory _$OtpCodeChangedCopyWith(
          _OtpCodeChanged value, $Res Function(_OtpCodeChanged) then) =
      __$OtpCodeChangedCopyWithImpl<$Res>;
  $Res call({String otp});
}

/// @nodoc
class __$OtpCodeChangedCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res>
    implements _$OtpCodeChangedCopyWith<$Res> {
  __$OtpCodeChangedCopyWithImpl(
      _OtpCodeChanged _value, $Res Function(_OtpCodeChanged) _then)
      : super(_value, (v) => _then(v as _OtpCodeChanged));

  @override
  _OtpCodeChanged get _value => super._value as _OtpCodeChanged;

  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_OtpCodeChanged(
      otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_OtpCodeChanged implements _OtpCodeChanged {
  const _$_OtpCodeChanged(this.otp);

  @override
  final String otp;

  @override
  String toString() {
    return 'AccountEvent.otpCodeChanged(otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OtpCodeChanged &&
            (identical(other.otp, otp) ||
                const DeepCollectionEquality().equals(other.otp, otp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(otp);

  @JsonKey(ignore: true)
  @override
  _$OtpCodeChangedCopyWith<_OtpCodeChanged> get copyWith =>
      __$OtpCodeChangedCopyWithImpl<_OtpCodeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(File dp, String userId) dpChanged,
    required TResult Function(String id, String email) verifyEmail,
    required TResult Function(String email) emailChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String otp) otpCodeChanged,
    required TResult Function(bool success, bool failure, String error)
        phoneVerified,
    required TResult Function(int value, bool resend) startTimeChanged,
    required TResult Function(String phone) validatePhone,
    required TResult Function(Timer timer) timerChanged,
    required TResult Function() signOut,
  }) {
    return otpCodeChanged(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(File dp, String userId)? dpChanged,
    TResult Function(String id, String email)? verifyEmail,
    TResult Function(String email)? emailChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String otp)? otpCodeChanged,
    TResult Function(bool success, bool failure, String error)? phoneVerified,
    TResult Function(int value, bool resend)? startTimeChanged,
    TResult Function(String phone)? validatePhone,
    TResult Function(Timer timer)? timerChanged,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (otpCodeChanged != null) {
      return otpCodeChanged(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DpChanged value) dpChanged,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_OtpCodeChanged value) otpCodeChanged,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_StartTimeChanged value) startTimeChanged,
    required TResult Function(_ValidatePhone value) validatePhone,
    required TResult Function(_TimerChanged value) timerChanged,
    required TResult Function(_SignOut value) signOut,
  }) {
    return otpCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DpChanged value)? dpChanged,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_OtpCodeChanged value)? otpCodeChanged,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_StartTimeChanged value)? startTimeChanged,
    TResult Function(_ValidatePhone value)? validatePhone,
    TResult Function(_TimerChanged value)? timerChanged,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (otpCodeChanged != null) {
      return otpCodeChanged(this);
    }
    return orElse();
  }
}

abstract class _OtpCodeChanged implements AccountEvent {
  const factory _OtpCodeChanged(String otp) = _$_OtpCodeChanged;

  String get otp => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OtpCodeChangedCopyWith<_OtpCodeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PhoneVerifiedCopyWith<$Res> {
  factory _$PhoneVerifiedCopyWith(
          _PhoneVerified value, $Res Function(_PhoneVerified) then) =
      __$PhoneVerifiedCopyWithImpl<$Res>;
  $Res call({bool success, bool failure, String error});
}

/// @nodoc
class __$PhoneVerifiedCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res>
    implements _$PhoneVerifiedCopyWith<$Res> {
  __$PhoneVerifiedCopyWithImpl(
      _PhoneVerified _value, $Res Function(_PhoneVerified) _then)
      : super(_value, (v) => _then(v as _PhoneVerified));

  @override
  _PhoneVerified get _value => super._value as _PhoneVerified;

  @override
  $Res call({
    Object? success = freezed,
    Object? failure = freezed,
    Object? error = freezed,
  }) {
    return _then(_PhoneVerified(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_PhoneVerified implements _PhoneVerified {
  const _$_PhoneVerified(
      {required this.success, required this.failure, required this.error});

  @override
  final bool success;
  @override
  final bool failure;
  @override
  final String error;

  @override
  String toString() {
    return 'AccountEvent.phoneVerified(success: $success, failure: $failure, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhoneVerified &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality()
                    .equals(other.failure, failure)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$PhoneVerifiedCopyWith<_PhoneVerified> get copyWith =>
      __$PhoneVerifiedCopyWithImpl<_PhoneVerified>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(File dp, String userId) dpChanged,
    required TResult Function(String id, String email) verifyEmail,
    required TResult Function(String email) emailChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String otp) otpCodeChanged,
    required TResult Function(bool success, bool failure, String error)
        phoneVerified,
    required TResult Function(int value, bool resend) startTimeChanged,
    required TResult Function(String phone) validatePhone,
    required TResult Function(Timer timer) timerChanged,
    required TResult Function() signOut,
  }) {
    return phoneVerified(success, failure, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(File dp, String userId)? dpChanged,
    TResult Function(String id, String email)? verifyEmail,
    TResult Function(String email)? emailChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String otp)? otpCodeChanged,
    TResult Function(bool success, bool failure, String error)? phoneVerified,
    TResult Function(int value, bool resend)? startTimeChanged,
    TResult Function(String phone)? validatePhone,
    TResult Function(Timer timer)? timerChanged,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (phoneVerified != null) {
      return phoneVerified(success, failure, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DpChanged value) dpChanged,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_OtpCodeChanged value) otpCodeChanged,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_StartTimeChanged value) startTimeChanged,
    required TResult Function(_ValidatePhone value) validatePhone,
    required TResult Function(_TimerChanged value) timerChanged,
    required TResult Function(_SignOut value) signOut,
  }) {
    return phoneVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DpChanged value)? dpChanged,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_OtpCodeChanged value)? otpCodeChanged,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_StartTimeChanged value)? startTimeChanged,
    TResult Function(_ValidatePhone value)? validatePhone,
    TResult Function(_TimerChanged value)? timerChanged,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (phoneVerified != null) {
      return phoneVerified(this);
    }
    return orElse();
  }
}

abstract class _PhoneVerified implements AccountEvent {
  const factory _PhoneVerified(
      {required bool success,
      required bool failure,
      required String error}) = _$_PhoneVerified;

  bool get success => throw _privateConstructorUsedError;
  bool get failure => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PhoneVerifiedCopyWith<_PhoneVerified> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StartTimeChangedCopyWith<$Res> {
  factory _$StartTimeChangedCopyWith(
          _StartTimeChanged value, $Res Function(_StartTimeChanged) then) =
      __$StartTimeChangedCopyWithImpl<$Res>;
  $Res call({int value, bool resend});
}

/// @nodoc
class __$StartTimeChangedCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res>
    implements _$StartTimeChangedCopyWith<$Res> {
  __$StartTimeChangedCopyWithImpl(
      _StartTimeChanged _value, $Res Function(_StartTimeChanged) _then)
      : super(_value, (v) => _then(v as _StartTimeChanged));

  @override
  _StartTimeChanged get _value => super._value as _StartTimeChanged;

  @override
  $Res call({
    Object? value = freezed,
    Object? resend = freezed,
  }) {
    return _then(_StartTimeChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      resend == freezed
          ? _value.resend
          : resend // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_StartTimeChanged implements _StartTimeChanged {
  const _$_StartTimeChanged(this.value, this.resend);

  @override
  final int value;
  @override
  final bool resend;

  @override
  String toString() {
    return 'AccountEvent.startTimeChanged(value: $value, resend: $resend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StartTimeChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.resend, resend) ||
                const DeepCollectionEquality().equals(other.resend, resend)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(resend);

  @JsonKey(ignore: true)
  @override
  _$StartTimeChangedCopyWith<_StartTimeChanged> get copyWith =>
      __$StartTimeChangedCopyWithImpl<_StartTimeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(File dp, String userId) dpChanged,
    required TResult Function(String id, String email) verifyEmail,
    required TResult Function(String email) emailChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String otp) otpCodeChanged,
    required TResult Function(bool success, bool failure, String error)
        phoneVerified,
    required TResult Function(int value, bool resend) startTimeChanged,
    required TResult Function(String phone) validatePhone,
    required TResult Function(Timer timer) timerChanged,
    required TResult Function() signOut,
  }) {
    return startTimeChanged(value, resend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(File dp, String userId)? dpChanged,
    TResult Function(String id, String email)? verifyEmail,
    TResult Function(String email)? emailChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String otp)? otpCodeChanged,
    TResult Function(bool success, bool failure, String error)? phoneVerified,
    TResult Function(int value, bool resend)? startTimeChanged,
    TResult Function(String phone)? validatePhone,
    TResult Function(Timer timer)? timerChanged,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (startTimeChanged != null) {
      return startTimeChanged(value, resend);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DpChanged value) dpChanged,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_OtpCodeChanged value) otpCodeChanged,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_StartTimeChanged value) startTimeChanged,
    required TResult Function(_ValidatePhone value) validatePhone,
    required TResult Function(_TimerChanged value) timerChanged,
    required TResult Function(_SignOut value) signOut,
  }) {
    return startTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DpChanged value)? dpChanged,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_OtpCodeChanged value)? otpCodeChanged,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_StartTimeChanged value)? startTimeChanged,
    TResult Function(_ValidatePhone value)? validatePhone,
    TResult Function(_TimerChanged value)? timerChanged,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (startTimeChanged != null) {
      return startTimeChanged(this);
    }
    return orElse();
  }
}

abstract class _StartTimeChanged implements AccountEvent {
  const factory _StartTimeChanged(int value, bool resend) = _$_StartTimeChanged;

  int get value => throw _privateConstructorUsedError;
  bool get resend => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartTimeChangedCopyWith<_StartTimeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ValidatePhoneCopyWith<$Res> {
  factory _$ValidatePhoneCopyWith(
          _ValidatePhone value, $Res Function(_ValidatePhone) then) =
      __$ValidatePhoneCopyWithImpl<$Res>;
  $Res call({String phone});
}

/// @nodoc
class __$ValidatePhoneCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res>
    implements _$ValidatePhoneCopyWith<$Res> {
  __$ValidatePhoneCopyWithImpl(
      _ValidatePhone _value, $Res Function(_ValidatePhone) _then)
      : super(_value, (v) => _then(v as _ValidatePhone));

  @override
  _ValidatePhone get _value => super._value as _ValidatePhone;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(_ValidatePhone(
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_ValidatePhone implements _ValidatePhone {
  const _$_ValidatePhone(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'AccountEvent.validatePhone(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ValidatePhone &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  _$ValidatePhoneCopyWith<_ValidatePhone> get copyWith =>
      __$ValidatePhoneCopyWithImpl<_ValidatePhone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(File dp, String userId) dpChanged,
    required TResult Function(String id, String email) verifyEmail,
    required TResult Function(String email) emailChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String otp) otpCodeChanged,
    required TResult Function(bool success, bool failure, String error)
        phoneVerified,
    required TResult Function(int value, bool resend) startTimeChanged,
    required TResult Function(String phone) validatePhone,
    required TResult Function(Timer timer) timerChanged,
    required TResult Function() signOut,
  }) {
    return validatePhone(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(File dp, String userId)? dpChanged,
    TResult Function(String id, String email)? verifyEmail,
    TResult Function(String email)? emailChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String otp)? otpCodeChanged,
    TResult Function(bool success, bool failure, String error)? phoneVerified,
    TResult Function(int value, bool resend)? startTimeChanged,
    TResult Function(String phone)? validatePhone,
    TResult Function(Timer timer)? timerChanged,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (validatePhone != null) {
      return validatePhone(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DpChanged value) dpChanged,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_OtpCodeChanged value) otpCodeChanged,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_StartTimeChanged value) startTimeChanged,
    required TResult Function(_ValidatePhone value) validatePhone,
    required TResult Function(_TimerChanged value) timerChanged,
    required TResult Function(_SignOut value) signOut,
  }) {
    return validatePhone(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DpChanged value)? dpChanged,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_OtpCodeChanged value)? otpCodeChanged,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_StartTimeChanged value)? startTimeChanged,
    TResult Function(_ValidatePhone value)? validatePhone,
    TResult Function(_TimerChanged value)? timerChanged,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (validatePhone != null) {
      return validatePhone(this);
    }
    return orElse();
  }
}

abstract class _ValidatePhone implements AccountEvent {
  const factory _ValidatePhone(String phone) = _$_ValidatePhone;

  String get phone => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ValidatePhoneCopyWith<_ValidatePhone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TimerChangedCopyWith<$Res> {
  factory _$TimerChangedCopyWith(
          _TimerChanged value, $Res Function(_TimerChanged) then) =
      __$TimerChangedCopyWithImpl<$Res>;
  $Res call({Timer timer});
}

/// @nodoc
class __$TimerChangedCopyWithImpl<$Res> extends _$AccountEventCopyWithImpl<$Res>
    implements _$TimerChangedCopyWith<$Res> {
  __$TimerChangedCopyWithImpl(
      _TimerChanged _value, $Res Function(_TimerChanged) _then)
      : super(_value, (v) => _then(v as _TimerChanged));

  @override
  _TimerChanged get _value => super._value as _TimerChanged;

  @override
  $Res call({
    Object? timer = freezed,
  }) {
    return _then(_TimerChanged(
      timer == freezed
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as Timer,
    ));
  }
}

/// @nodoc
class _$_TimerChanged implements _TimerChanged {
  const _$_TimerChanged(this.timer);

  @override
  final Timer timer;

  @override
  String toString() {
    return 'AccountEvent.timerChanged(timer: $timer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimerChanged &&
            (identical(other.timer, timer) ||
                const DeepCollectionEquality().equals(other.timer, timer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(timer);

  @JsonKey(ignore: true)
  @override
  _$TimerChangedCopyWith<_TimerChanged> get copyWith =>
      __$TimerChangedCopyWithImpl<_TimerChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(File dp, String userId) dpChanged,
    required TResult Function(String id, String email) verifyEmail,
    required TResult Function(String email) emailChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String otp) otpCodeChanged,
    required TResult Function(bool success, bool failure, String error)
        phoneVerified,
    required TResult Function(int value, bool resend) startTimeChanged,
    required TResult Function(String phone) validatePhone,
    required TResult Function(Timer timer) timerChanged,
    required TResult Function() signOut,
  }) {
    return timerChanged(timer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(File dp, String userId)? dpChanged,
    TResult Function(String id, String email)? verifyEmail,
    TResult Function(String email)? emailChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String otp)? otpCodeChanged,
    TResult Function(bool success, bool failure, String error)? phoneVerified,
    TResult Function(int value, bool resend)? startTimeChanged,
    TResult Function(String phone)? validatePhone,
    TResult Function(Timer timer)? timerChanged,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (timerChanged != null) {
      return timerChanged(timer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DpChanged value) dpChanged,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_OtpCodeChanged value) otpCodeChanged,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_StartTimeChanged value) startTimeChanged,
    required TResult Function(_ValidatePhone value) validatePhone,
    required TResult Function(_TimerChanged value) timerChanged,
    required TResult Function(_SignOut value) signOut,
  }) {
    return timerChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DpChanged value)? dpChanged,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_OtpCodeChanged value)? otpCodeChanged,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_StartTimeChanged value)? startTimeChanged,
    TResult Function(_ValidatePhone value)? validatePhone,
    TResult Function(_TimerChanged value)? timerChanged,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (timerChanged != null) {
      return timerChanged(this);
    }
    return orElse();
  }
}

abstract class _TimerChanged implements AccountEvent {
  const factory _TimerChanged(Timer timer) = _$_TimerChanged;

  Timer get timer => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TimerChangedCopyWith<_TimerChanged> get copyWith =>
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
    required TResult Function(String id) started,
    required TResult Function(File dp, String userId) dpChanged,
    required TResult Function(String id, String email) verifyEmail,
    required TResult Function(String email) emailChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String otp) otpCodeChanged,
    required TResult Function(bool success, bool failure, String error)
        phoneVerified,
    required TResult Function(int value, bool resend) startTimeChanged,
    required TResult Function(String phone) validatePhone,
    required TResult Function(Timer timer) timerChanged,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(File dp, String userId)? dpChanged,
    TResult Function(String id, String email)? verifyEmail,
    TResult Function(String email)? emailChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String otp)? otpCodeChanged,
    TResult Function(bool success, bool failure, String error)? phoneVerified,
    TResult Function(int value, bool resend)? startTimeChanged,
    TResult Function(String phone)? validatePhone,
    TResult Function(Timer timer)? timerChanged,
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
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_OtpCodeChanged value) otpCodeChanged,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_StartTimeChanged value) startTimeChanged,
    required TResult Function(_ValidatePhone value) validatePhone,
    required TResult Function(_TimerChanged value) timerChanged,
    required TResult Function(_SignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DpChanged value)? dpChanged,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_OtpCodeChanged value)? otpCodeChanged,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_StartTimeChanged value)? startTimeChanged,
    TResult Function(_ValidatePhone value)? validatePhone,
    TResult Function(_TimerChanged value)? timerChanged,
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
      required Future<User>? futureUser,
      required bool isSubmit,
      required bool isSucess,
      required bool isverifyEmailSucess,
      required String verifyEmailError,
      required String email,
      required String phone,
      required String otpCode,
      required bool isVerifyPhoneSuccess,
      required bool isVerifyPhoneFailed,
      required String verifyPhoneError,
      required int startTime,
      required bool resendCode,
      required String failure,
      required bool isphoneValid,
      required String phoneValidError,
      required bool isSignout,
      required Timer? timer}) {
    return _AccountState(
      dp: dp,
      futureUser: futureUser,
      isSubmit: isSubmit,
      isSucess: isSucess,
      isverifyEmailSucess: isverifyEmailSucess,
      verifyEmailError: verifyEmailError,
      email: email,
      phone: phone,
      otpCode: otpCode,
      isVerifyPhoneSuccess: isVerifyPhoneSuccess,
      isVerifyPhoneFailed: isVerifyPhoneFailed,
      verifyPhoneError: verifyPhoneError,
      startTime: startTime,
      resendCode: resendCode,
      failure: failure,
      isphoneValid: isphoneValid,
      phoneValidError: phoneValidError,
      isSignout: isSignout,
      timer: timer,
    );
  }
}

/// @nodoc
const $AccountState = _$AccountStateTearOff();

/// @nodoc
mixin _$AccountState {
  File? get dp => throw _privateConstructorUsedError;
  Future<User>? get futureUser => throw _privateConstructorUsedError;
  bool get isSubmit =>
      throw _privateConstructorUsedError; // dp upload or change
  bool get isSucess => throw _privateConstructorUsedError;
  bool get isverifyEmailSucess => throw _privateConstructorUsedError;
  String get verifyEmailError => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get otpCode => throw _privateConstructorUsedError;
  bool get isVerifyPhoneSuccess => throw _privateConstructorUsedError;
  bool get isVerifyPhoneFailed => throw _privateConstructorUsedError;
  String get verifyPhoneError => throw _privateConstructorUsedError;
  int get startTime => throw _privateConstructorUsedError;
  bool get resendCode => throw _privateConstructorUsedError;
  String get failure => throw _privateConstructorUsedError;
  bool get isphoneValid => throw _privateConstructorUsedError;
  String get phoneValidError => throw _privateConstructorUsedError;
  bool get isSignout => throw _privateConstructorUsedError;
  Timer? get timer => throw _privateConstructorUsedError;

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
      Future<User>? futureUser,
      bool isSubmit,
      bool isSucess,
      bool isverifyEmailSucess,
      String verifyEmailError,
      String email,
      String phone,
      String otpCode,
      bool isVerifyPhoneSuccess,
      bool isVerifyPhoneFailed,
      String verifyPhoneError,
      int startTime,
      bool resendCode,
      String failure,
      bool isphoneValid,
      String phoneValidError,
      bool isSignout,
      Timer? timer});
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
    Object? isverifyEmailSucess = freezed,
    Object? verifyEmailError = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? otpCode = freezed,
    Object? isVerifyPhoneSuccess = freezed,
    Object? isVerifyPhoneFailed = freezed,
    Object? verifyPhoneError = freezed,
    Object? startTime = freezed,
    Object? resendCode = freezed,
    Object? failure = freezed,
    Object? isphoneValid = freezed,
    Object? phoneValidError = freezed,
    Object? isSignout = freezed,
    Object? timer = freezed,
  }) {
    return _then(_value.copyWith(
      dp: dp == freezed
          ? _value.dp
          : dp // ignore: cast_nullable_to_non_nullable
              as File?,
      futureUser: futureUser == freezed
          ? _value.futureUser
          : futureUser // ignore: cast_nullable_to_non_nullable
              as Future<User>?,
      isSubmit: isSubmit == freezed
          ? _value.isSubmit
          : isSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      isSucess: isSucess == freezed
          ? _value.isSucess
          : isSucess // ignore: cast_nullable_to_non_nullable
              as bool,
      isverifyEmailSucess: isverifyEmailSucess == freezed
          ? _value.isverifyEmailSucess
          : isverifyEmailSucess // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyEmailError: verifyEmailError == freezed
          ? _value.verifyEmailError
          : verifyEmailError // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      otpCode: otpCode == freezed
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
      isVerifyPhoneSuccess: isVerifyPhoneSuccess == freezed
          ? _value.isVerifyPhoneSuccess
          : isVerifyPhoneSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerifyPhoneFailed: isVerifyPhoneFailed == freezed
          ? _value.isVerifyPhoneFailed
          : isVerifyPhoneFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyPhoneError: verifyPhoneError == freezed
          ? _value.verifyPhoneError
          : verifyPhoneError // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      resendCode: resendCode == freezed
          ? _value.resendCode
          : resendCode // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
      isphoneValid: isphoneValid == freezed
          ? _value.isphoneValid
          : isphoneValid // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneValidError: phoneValidError == freezed
          ? _value.phoneValidError
          : phoneValidError // ignore: cast_nullable_to_non_nullable
              as String,
      isSignout: isSignout == freezed
          ? _value.isSignout
          : isSignout // ignore: cast_nullable_to_non_nullable
              as bool,
      timer: timer == freezed
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as Timer?,
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
      Future<User>? futureUser,
      bool isSubmit,
      bool isSucess,
      bool isverifyEmailSucess,
      String verifyEmailError,
      String email,
      String phone,
      String otpCode,
      bool isVerifyPhoneSuccess,
      bool isVerifyPhoneFailed,
      String verifyPhoneError,
      int startTime,
      bool resendCode,
      String failure,
      bool isphoneValid,
      String phoneValidError,
      bool isSignout,
      Timer? timer});
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
    Object? isverifyEmailSucess = freezed,
    Object? verifyEmailError = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? otpCode = freezed,
    Object? isVerifyPhoneSuccess = freezed,
    Object? isVerifyPhoneFailed = freezed,
    Object? verifyPhoneError = freezed,
    Object? startTime = freezed,
    Object? resendCode = freezed,
    Object? failure = freezed,
    Object? isphoneValid = freezed,
    Object? phoneValidError = freezed,
    Object? isSignout = freezed,
    Object? timer = freezed,
  }) {
    return _then(_AccountState(
      dp: dp == freezed
          ? _value.dp
          : dp // ignore: cast_nullable_to_non_nullable
              as File?,
      futureUser: futureUser == freezed
          ? _value.futureUser
          : futureUser // ignore: cast_nullable_to_non_nullable
              as Future<User>?,
      isSubmit: isSubmit == freezed
          ? _value.isSubmit
          : isSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      isSucess: isSucess == freezed
          ? _value.isSucess
          : isSucess // ignore: cast_nullable_to_non_nullable
              as bool,
      isverifyEmailSucess: isverifyEmailSucess == freezed
          ? _value.isverifyEmailSucess
          : isverifyEmailSucess // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyEmailError: verifyEmailError == freezed
          ? _value.verifyEmailError
          : verifyEmailError // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      otpCode: otpCode == freezed
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
      isVerifyPhoneSuccess: isVerifyPhoneSuccess == freezed
          ? _value.isVerifyPhoneSuccess
          : isVerifyPhoneSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerifyPhoneFailed: isVerifyPhoneFailed == freezed
          ? _value.isVerifyPhoneFailed
          : isVerifyPhoneFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyPhoneError: verifyPhoneError == freezed
          ? _value.verifyPhoneError
          : verifyPhoneError // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      resendCode: resendCode == freezed
          ? _value.resendCode
          : resendCode // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
      isphoneValid: isphoneValid == freezed
          ? _value.isphoneValid
          : isphoneValid // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneValidError: phoneValidError == freezed
          ? _value.phoneValidError
          : phoneValidError // ignore: cast_nullable_to_non_nullable
              as String,
      isSignout: isSignout == freezed
          ? _value.isSignout
          : isSignout // ignore: cast_nullable_to_non_nullable
              as bool,
      timer: timer == freezed
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as Timer?,
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
      required this.isverifyEmailSucess,
      required this.verifyEmailError,
      required this.email,
      required this.phone,
      required this.otpCode,
      required this.isVerifyPhoneSuccess,
      required this.isVerifyPhoneFailed,
      required this.verifyPhoneError,
      required this.startTime,
      required this.resendCode,
      required this.failure,
      required this.isphoneValid,
      required this.phoneValidError,
      required this.isSignout,
      required this.timer});

  @override
  final File? dp;
  @override
  final Future<User>? futureUser;
  @override
  final bool isSubmit;
  @override // dp upload or change
  final bool isSucess;
  @override
  final bool isverifyEmailSucess;
  @override
  final String verifyEmailError;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String otpCode;
  @override
  final bool isVerifyPhoneSuccess;
  @override
  final bool isVerifyPhoneFailed;
  @override
  final String verifyPhoneError;
  @override
  final int startTime;
  @override
  final bool resendCode;
  @override
  final String failure;
  @override
  final bool isphoneValid;
  @override
  final String phoneValidError;
  @override
  final bool isSignout;
  @override
  final Timer? timer;

  @override
  String toString() {
    return 'AccountState(dp: $dp, futureUser: $futureUser, isSubmit: $isSubmit, isSucess: $isSucess, isverifyEmailSucess: $isverifyEmailSucess, verifyEmailError: $verifyEmailError, email: $email, phone: $phone, otpCode: $otpCode, isVerifyPhoneSuccess: $isVerifyPhoneSuccess, isVerifyPhoneFailed: $isVerifyPhoneFailed, verifyPhoneError: $verifyPhoneError, startTime: $startTime, resendCode: $resendCode, failure: $failure, isphoneValid: $isphoneValid, phoneValidError: $phoneValidError, isSignout: $isSignout, timer: $timer)';
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
            (identical(other.isverifyEmailSucess, isverifyEmailSucess) ||
                const DeepCollectionEquality()
                    .equals(other.isverifyEmailSucess, isverifyEmailSucess)) &&
            (identical(other.verifyEmailError, verifyEmailError) ||
                const DeepCollectionEquality()
                    .equals(other.verifyEmailError, verifyEmailError)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.otpCode, otpCode) ||
                const DeepCollectionEquality()
                    .equals(other.otpCode, otpCode)) &&
            (identical(other.isVerifyPhoneSuccess, isVerifyPhoneSuccess) ||
                const DeepCollectionEquality().equals(
                    other.isVerifyPhoneSuccess, isVerifyPhoneSuccess)) &&
            (identical(other.isVerifyPhoneFailed, isVerifyPhoneFailed) ||
                const DeepCollectionEquality()
                    .equals(other.isVerifyPhoneFailed, isVerifyPhoneFailed)) &&
            (identical(other.verifyPhoneError, verifyPhoneError) ||
                const DeepCollectionEquality()
                    .equals(other.verifyPhoneError, verifyPhoneError)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.resendCode, resendCode) ||
                const DeepCollectionEquality()
                    .equals(other.resendCode, resendCode)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality()
                    .equals(other.failure, failure)) &&
            (identical(other.isphoneValid, isphoneValid) ||
                const DeepCollectionEquality()
                    .equals(other.isphoneValid, isphoneValid)) &&
            (identical(other.phoneValidError, phoneValidError) ||
                const DeepCollectionEquality()
                    .equals(other.phoneValidError, phoneValidError)) &&
            (identical(other.isSignout, isSignout) ||
                const DeepCollectionEquality()
                    .equals(other.isSignout, isSignout)) &&
            (identical(other.timer, timer) ||
                const DeepCollectionEquality().equals(other.timer, timer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dp) ^
      const DeepCollectionEquality().hash(futureUser) ^
      const DeepCollectionEquality().hash(isSubmit) ^
      const DeepCollectionEquality().hash(isSucess) ^
      const DeepCollectionEquality().hash(isverifyEmailSucess) ^
      const DeepCollectionEquality().hash(verifyEmailError) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(otpCode) ^
      const DeepCollectionEquality().hash(isVerifyPhoneSuccess) ^
      const DeepCollectionEquality().hash(isVerifyPhoneFailed) ^
      const DeepCollectionEquality().hash(verifyPhoneError) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(resendCode) ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(isphoneValid) ^
      const DeepCollectionEquality().hash(phoneValidError) ^
      const DeepCollectionEquality().hash(isSignout) ^
      const DeepCollectionEquality().hash(timer);

  @JsonKey(ignore: true)
  @override
  _$AccountStateCopyWith<_AccountState> get copyWith =>
      __$AccountStateCopyWithImpl<_AccountState>(this, _$identity);
}

abstract class _AccountState implements AccountState {
  const factory _AccountState(
      {required File? dp,
      required Future<User>? futureUser,
      required bool isSubmit,
      required bool isSucess,
      required bool isverifyEmailSucess,
      required String verifyEmailError,
      required String email,
      required String phone,
      required String otpCode,
      required bool isVerifyPhoneSuccess,
      required bool isVerifyPhoneFailed,
      required String verifyPhoneError,
      required int startTime,
      required bool resendCode,
      required String failure,
      required bool isphoneValid,
      required String phoneValidError,
      required bool isSignout,
      required Timer? timer}) = _$_AccountState;

  @override
  File? get dp => throw _privateConstructorUsedError;
  @override
  Future<User>? get futureUser => throw _privateConstructorUsedError;
  @override
  bool get isSubmit => throw _privateConstructorUsedError;
  @override // dp upload or change
  bool get isSucess => throw _privateConstructorUsedError;
  @override
  bool get isverifyEmailSucess => throw _privateConstructorUsedError;
  @override
  String get verifyEmailError => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  String get otpCode => throw _privateConstructorUsedError;
  @override
  bool get isVerifyPhoneSuccess => throw _privateConstructorUsedError;
  @override
  bool get isVerifyPhoneFailed => throw _privateConstructorUsedError;
  @override
  String get verifyPhoneError => throw _privateConstructorUsedError;
  @override
  int get startTime => throw _privateConstructorUsedError;
  @override
  bool get resendCode => throw _privateConstructorUsedError;
  @override
  String get failure => throw _privateConstructorUsedError;
  @override
  bool get isphoneValid => throw _privateConstructorUsedError;
  @override
  String get phoneValidError => throw _privateConstructorUsedError;
  @override
  bool get isSignout => throw _privateConstructorUsedError;
  @override
  Timer? get timer => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AccountStateCopyWith<_AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}
