// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginDetailsEventTearOff {
  const _$LoginDetailsEventTearOff();

  _FinishWithEmailAndPasswordPressed finishWithEmailAndPasswordPressed(
      {required String phone, required String email}) {
    return _FinishWithEmailAndPasswordPressed(
      phone: phone,
      email: email,
    );
  }

  _UsernameChanged usernameChanged(String value) {
    return _UsernameChanged(
      value,
    );
  }

  _PasswordChanged passwordChanged(String value) {
    return _PasswordChanged(
      value,
    );
  }

  _ConfirmPasswordChanged confirmPasswordChanged(String value) {
    return _ConfirmPasswordChanged(
      value,
    );
  }
}

/// @nodoc
const $LoginDetailsEvent = _$LoginDetailsEventTearOff();

/// @nodoc
mixin _$LoginDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone, String email)
        finishWithEmailAndPasswordPressed,
    required TResult Function(String value) usernameChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) confirmPasswordChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String email)?
        finishWithEmailAndPasswordPressed,
    TResult Function(String value)? usernameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FinishWithEmailAndPasswordPressed value)
        finishWithEmailAndPasswordPressed,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FinishWithEmailAndPasswordPressed value)?
        finishWithEmailAndPasswordPressed,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDetailsEventCopyWith<$Res> {
  factory $LoginDetailsEventCopyWith(
          LoginDetailsEvent value, $Res Function(LoginDetailsEvent) then) =
      _$LoginDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginDetailsEventCopyWithImpl<$Res>
    implements $LoginDetailsEventCopyWith<$Res> {
  _$LoginDetailsEventCopyWithImpl(this._value, this._then);

  final LoginDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(LoginDetailsEvent) _then;
}

/// @nodoc
abstract class _$FinishWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$FinishWithEmailAndPasswordPressedCopyWith(
          _FinishWithEmailAndPasswordPressed value,
          $Res Function(_FinishWithEmailAndPasswordPressed) then) =
      __$FinishWithEmailAndPasswordPressedCopyWithImpl<$Res>;
  $Res call({String phone, String email});
}

/// @nodoc
class __$FinishWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$LoginDetailsEventCopyWithImpl<$Res>
    implements _$FinishWithEmailAndPasswordPressedCopyWith<$Res> {
  __$FinishWithEmailAndPasswordPressedCopyWithImpl(
      _FinishWithEmailAndPasswordPressed _value,
      $Res Function(_FinishWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as _FinishWithEmailAndPasswordPressed));

  @override
  _FinishWithEmailAndPasswordPressed get _value =>
      super._value as _FinishWithEmailAndPasswordPressed;

  @override
  $Res call({
    Object? phone = freezed,
    Object? email = freezed,
  }) {
    return _then(_FinishWithEmailAndPasswordPressed(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_FinishWithEmailAndPasswordPressed
    implements _FinishWithEmailAndPasswordPressed {
  const _$_FinishWithEmailAndPasswordPressed(
      {required this.phone, required this.email});

  @override
  final String phone;
  @override
  final String email;

  @override
  String toString() {
    return 'LoginDetailsEvent.finishWithEmailAndPasswordPressed(phone: $phone, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FinishWithEmailAndPasswordPressed &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$FinishWithEmailAndPasswordPressedCopyWith<
          _FinishWithEmailAndPasswordPressed>
      get copyWith => __$FinishWithEmailAndPasswordPressedCopyWithImpl<
          _FinishWithEmailAndPasswordPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone, String email)
        finishWithEmailAndPasswordPressed,
    required TResult Function(String value) usernameChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) confirmPasswordChanged,
  }) {
    return finishWithEmailAndPasswordPressed(phone, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String email)?
        finishWithEmailAndPasswordPressed,
    TResult Function(String value)? usernameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    required TResult orElse(),
  }) {
    if (finishWithEmailAndPasswordPressed != null) {
      return finishWithEmailAndPasswordPressed(phone, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FinishWithEmailAndPasswordPressed value)
        finishWithEmailAndPasswordPressed,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
  }) {
    return finishWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FinishWithEmailAndPasswordPressed value)?
        finishWithEmailAndPasswordPressed,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    required TResult orElse(),
  }) {
    if (finishWithEmailAndPasswordPressed != null) {
      return finishWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _FinishWithEmailAndPasswordPressed implements LoginDetailsEvent {
  const factory _FinishWithEmailAndPasswordPressed(
      {required String phone,
      required String email}) = _$_FinishWithEmailAndPasswordPressed;

  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FinishWithEmailAndPasswordPressedCopyWith<
          _FinishWithEmailAndPasswordPressed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UsernameChangedCopyWith<$Res> {
  factory _$UsernameChangedCopyWith(
          _UsernameChanged value, $Res Function(_UsernameChanged) then) =
      __$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$UsernameChangedCopyWithImpl<$Res>
    extends _$LoginDetailsEventCopyWithImpl<$Res>
    implements _$UsernameChangedCopyWith<$Res> {
  __$UsernameChangedCopyWithImpl(
      _UsernameChanged _value, $Res Function(_UsernameChanged) _then)
      : super(_value, (v) => _then(v as _UsernameChanged));

  @override
  _UsernameChanged get _value => super._value as _UsernameChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_UsernameChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_UsernameChanged implements _UsernameChanged {
  const _$_UsernameChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginDetailsEvent.usernameChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsernameChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith =>
      __$UsernameChangedCopyWithImpl<_UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone, String email)
        finishWithEmailAndPasswordPressed,
    required TResult Function(String value) usernameChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) confirmPasswordChanged,
  }) {
    return usernameChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String email)?
        finishWithEmailAndPasswordPressed,
    TResult Function(String value)? usernameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FinishWithEmailAndPasswordPressed value)
        finishWithEmailAndPasswordPressed,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FinishWithEmailAndPasswordPressed value)?
        finishWithEmailAndPasswordPressed,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements LoginDetailsEvent {
  const factory _UsernameChanged(String value) = _$_UsernameChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    extends _$LoginDetailsEventCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(
      _PasswordChanged _value, $Res Function(_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_PasswordChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginDetailsEvent.passwordChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone, String email)
        finishWithEmailAndPasswordPressed,
    required TResult Function(String value) usernameChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) confirmPasswordChanged,
  }) {
    return passwordChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String email)?
        finishWithEmailAndPasswordPressed,
    TResult Function(String value)? usernameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FinishWithEmailAndPasswordPressed value)
        finishWithEmailAndPasswordPressed,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FinishWithEmailAndPasswordPressed value)?
        finishWithEmailAndPasswordPressed,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements LoginDetailsEvent {
  const factory _PasswordChanged(String value) = _$_PasswordChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConfirmPasswordChangedCopyWith<$Res> {
  factory _$ConfirmPasswordChangedCopyWith(_ConfirmPasswordChanged value,
          $Res Function(_ConfirmPasswordChanged) then) =
      __$ConfirmPasswordChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$ConfirmPasswordChangedCopyWithImpl<$Res>
    extends _$LoginDetailsEventCopyWithImpl<$Res>
    implements _$ConfirmPasswordChangedCopyWith<$Res> {
  __$ConfirmPasswordChangedCopyWithImpl(_ConfirmPasswordChanged _value,
      $Res Function(_ConfirmPasswordChanged) _then)
      : super(_value, (v) => _then(v as _ConfirmPasswordChanged));

  @override
  _ConfirmPasswordChanged get _value => super._value as _ConfirmPasswordChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ConfirmPasswordChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_ConfirmPasswordChanged implements _ConfirmPasswordChanged {
  const _$_ConfirmPasswordChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginDetailsEvent.confirmPasswordChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfirmPasswordChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ConfirmPasswordChangedCopyWith<_ConfirmPasswordChanged> get copyWith =>
      __$ConfirmPasswordChangedCopyWithImpl<_ConfirmPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone, String email)
        finishWithEmailAndPasswordPressed,
    required TResult Function(String value) usernameChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) confirmPasswordChanged,
  }) {
    return confirmPasswordChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String email)?
        finishWithEmailAndPasswordPressed,
    TResult Function(String value)? usernameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FinishWithEmailAndPasswordPressed value)
        finishWithEmailAndPasswordPressed,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FinishWithEmailAndPasswordPressed value)?
        finishWithEmailAndPasswordPressed,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPasswordChanged implements LoginDetailsEvent {
  const factory _ConfirmPasswordChanged(String value) =
      _$_ConfirmPasswordChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ConfirmPasswordChangedCopyWith<_ConfirmPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LoginDetailsStateTearOff {
  const _$LoginDetailsStateTearOff();

  _LoginDetailsState call(
      {required String username,
      required String password,
      required String confirmPassword,
      required String failuremessage,
      required bool isSubmitting,
      required bool isSuccess}) {
    return _LoginDetailsState(
      username: username,
      password: password,
      confirmPassword: confirmPassword,
      failuremessage: failuremessage,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
    );
  }
}

/// @nodoc
const $LoginDetailsState = _$LoginDetailsStateTearOff();

/// @nodoc
mixin _$LoginDetailsState {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  String get failuremessage =>
      throw _privateConstructorUsedError; //when signup fails
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginDetailsStateCopyWith<LoginDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDetailsStateCopyWith<$Res> {
  factory $LoginDetailsStateCopyWith(
          LoginDetailsState value, $Res Function(LoginDetailsState) then) =
      _$LoginDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {String username,
      String password,
      String confirmPassword,
      String failuremessage,
      bool isSubmitting,
      bool isSuccess});
}

/// @nodoc
class _$LoginDetailsStateCopyWithImpl<$Res>
    implements $LoginDetailsStateCopyWith<$Res> {
  _$LoginDetailsStateCopyWithImpl(this._value, this._then);

  final LoginDetailsState _value;
  // ignore: unused_field
  final $Res Function(LoginDetailsState) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? failuremessage = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      failuremessage: failuremessage == freezed
          ? _value.failuremessage
          : failuremessage // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$LoginDetailsStateCopyWith<$Res>
    implements $LoginDetailsStateCopyWith<$Res> {
  factory _$LoginDetailsStateCopyWith(
          _LoginDetailsState value, $Res Function(_LoginDetailsState) then) =
      __$LoginDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String username,
      String password,
      String confirmPassword,
      String failuremessage,
      bool isSubmitting,
      bool isSuccess});
}

/// @nodoc
class __$LoginDetailsStateCopyWithImpl<$Res>
    extends _$LoginDetailsStateCopyWithImpl<$Res>
    implements _$LoginDetailsStateCopyWith<$Res> {
  __$LoginDetailsStateCopyWithImpl(
      _LoginDetailsState _value, $Res Function(_LoginDetailsState) _then)
      : super(_value, (v) => _then(v as _LoginDetailsState));

  @override
  _LoginDetailsState get _value => super._value as _LoginDetailsState;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? failuremessage = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_LoginDetailsState(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      failuremessage: failuremessage == freezed
          ? _value.failuremessage
          : failuremessage // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_LoginDetailsState implements _LoginDetailsState {
  const _$_LoginDetailsState(
      {required this.username,
      required this.password,
      required this.confirmPassword,
      required this.failuremessage,
      required this.isSubmitting,
      required this.isSuccess});

  @override
  final String username;
  @override
  final String password;
  @override
  final String confirmPassword;
  @override
  final String failuremessage;
  @override //when signup fails
  final bool isSubmitting;
  @override
  final bool isSuccess;

  @override
  String toString() {
    return 'LoginDetailsState(username: $username, password: $password, confirmPassword: $confirmPassword, failuremessage: $failuremessage, isSubmitting: $isSubmitting, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginDetailsState &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.failuremessage, failuremessage) ||
                const DeepCollectionEquality()
                    .equals(other.failuremessage, failuremessage)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(failuremessage) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess);

  @JsonKey(ignore: true)
  @override
  _$LoginDetailsStateCopyWith<_LoginDetailsState> get copyWith =>
      __$LoginDetailsStateCopyWithImpl<_LoginDetailsState>(this, _$identity);
}

abstract class _LoginDetailsState implements LoginDetailsState {
  const factory _LoginDetailsState(
      {required String username,
      required String password,
      required String confirmPassword,
      required String failuremessage,
      required bool isSubmitting,
      required bool isSuccess}) = _$_LoginDetailsState;

  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get confirmPassword => throw _privateConstructorUsedError;
  @override
  String get failuremessage => throw _privateConstructorUsedError;
  @override //when signup fails
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get isSuccess => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginDetailsStateCopyWith<_LoginDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
