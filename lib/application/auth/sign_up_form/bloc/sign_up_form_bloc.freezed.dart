// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_up_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpFormEventTearOff {
  const _$SignUpFormEventTearOff();

  _PhoneChanged phoneChanged(String? value) {
    return _PhoneChanged(
      value,
    );
  }

  _EmailChanged emailChanged(String? value) {
    return _EmailChanged(
      value,
    );
  }

  _StartTimeChanged startTimeChanged(int value, bool resend) {
    return _StartTimeChanged(
      value,
      resend,
    );
  }

  _OtpFailed otpFailed(String error) {
    return _OtpFailed(
      error,
    );
  }

  _SignUpWithEmailAndPasswordPressed signUpWithEmailAndPasswordPressed() {
    return const _SignUpWithEmailAndPasswordPressed();
  }

  _SignUpWithGoogle signUpWithGoogle(String device) {
    return _SignUpWithGoogle(
      device,
    );
  }

  _SignUpWithFacebook signUpWithFacebook(String device) {
    return _SignUpWithFacebook(
      device,
    );
  }
}

/// @nodoc
const $SignUpFormEvent = _$SignUpFormEventTearOff();

/// @nodoc
mixin _$SignUpFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? value) phoneChanged,
    required TResult Function(String? value) emailChanged,
    required TResult Function(int value, bool resend) startTimeChanged,
    required TResult Function(String error) otpFailed,
    required TResult Function() signUpWithEmailAndPasswordPressed,
    required TResult Function(String device) signUpWithGoogle,
    required TResult Function(String device) signUpWithFacebook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value)? phoneChanged,
    TResult Function(String? value)? emailChanged,
    TResult Function(int value, bool resend)? startTimeChanged,
    TResult Function(String error)? otpFailed,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    TResult Function(String device)? signUpWithGoogle,
    TResult Function(String device)? signUpWithFacebook,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_StartTimeChanged value) startTimeChanged,
    required TResult Function(_OtpFailed value) otpFailed,
    required TResult Function(_SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
    required TResult Function(_SignUpWithGoogle value) signUpWithGoogle,
    required TResult Function(_SignUpWithFacebook value) signUpWithFacebook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_StartTimeChanged value)? startTimeChanged,
    TResult Function(_OtpFailed value)? otpFailed,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    TResult Function(_SignUpWithGoogle value)? signUpWithGoogle,
    TResult Function(_SignUpWithFacebook value)? signUpWithFacebook,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormEventCopyWith<$Res> {
  factory $SignUpFormEventCopyWith(
          SignUpFormEvent value, $Res Function(SignUpFormEvent) then) =
      _$SignUpFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpFormEventCopyWithImpl<$Res>
    implements $SignUpFormEventCopyWith<$Res> {
  _$SignUpFormEventCopyWithImpl(this._value, this._then);

  final SignUpFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpFormEvent) _then;
}

/// @nodoc
abstract class _$PhoneChangedCopyWith<$Res> {
  factory _$PhoneChangedCopyWith(
          _PhoneChanged value, $Res Function(_PhoneChanged) then) =
      __$PhoneChangedCopyWithImpl<$Res>;
  $Res call({String? value});
}

/// @nodoc
class __$PhoneChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$PhoneChangedCopyWith<$Res> {
  __$PhoneChangedCopyWithImpl(
      _PhoneChanged _value, $Res Function(_PhoneChanged) _then)
      : super(_value, (v) => _then(v as _PhoneChanged));

  @override
  _PhoneChanged get _value => super._value as _PhoneChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_PhoneChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_PhoneChanged with DiagnosticableTreeMixin implements _PhoneChanged {
  const _$_PhoneChanged(this.value);

  @override
  final String? value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.phoneChanged(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormEvent.phoneChanged'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhoneChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$PhoneChangedCopyWith<_PhoneChanged> get copyWith =>
      __$PhoneChangedCopyWithImpl<_PhoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? value) phoneChanged,
    required TResult Function(String? value) emailChanged,
    required TResult Function(int value, bool resend) startTimeChanged,
    required TResult Function(String error) otpFailed,
    required TResult Function() signUpWithEmailAndPasswordPressed,
    required TResult Function(String device) signUpWithGoogle,
    required TResult Function(String device) signUpWithFacebook,
  }) {
    return phoneChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value)? phoneChanged,
    TResult Function(String? value)? emailChanged,
    TResult Function(int value, bool resend)? startTimeChanged,
    TResult Function(String error)? otpFailed,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    TResult Function(String device)? signUpWithGoogle,
    TResult Function(String device)? signUpWithFacebook,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_StartTimeChanged value) startTimeChanged,
    required TResult Function(_OtpFailed value) otpFailed,
    required TResult Function(_SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
    required TResult Function(_SignUpWithGoogle value) signUpWithGoogle,
    required TResult Function(_SignUpWithFacebook value) signUpWithFacebook,
  }) {
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_StartTimeChanged value)? startTimeChanged,
    TResult Function(_OtpFailed value)? otpFailed,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    TResult Function(_SignUpWithGoogle value)? signUpWithGoogle,
    TResult Function(_SignUpWithFacebook value)? signUpWithFacebook,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneChanged implements SignUpFormEvent {
  const factory _PhoneChanged(String? value) = _$_PhoneChanged;

  String? get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PhoneChangedCopyWith<_PhoneChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String? value});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_EmailChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_EmailChanged with DiagnosticableTreeMixin implements _EmailChanged {
  const _$_EmailChanged(this.value);

  @override
  final String? value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.emailChanged(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormEvent.emailChanged'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? value) phoneChanged,
    required TResult Function(String? value) emailChanged,
    required TResult Function(int value, bool resend) startTimeChanged,
    required TResult Function(String error) otpFailed,
    required TResult Function() signUpWithEmailAndPasswordPressed,
    required TResult Function(String device) signUpWithGoogle,
    required TResult Function(String device) signUpWithFacebook,
  }) {
    return emailChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value)? phoneChanged,
    TResult Function(String? value)? emailChanged,
    TResult Function(int value, bool resend)? startTimeChanged,
    TResult Function(String error)? otpFailed,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    TResult Function(String device)? signUpWithGoogle,
    TResult Function(String device)? signUpWithFacebook,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_StartTimeChanged value) startTimeChanged,
    required TResult Function(_OtpFailed value) otpFailed,
    required TResult Function(_SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
    required TResult Function(_SignUpWithGoogle value) signUpWithGoogle,
    required TResult Function(_SignUpWithFacebook value) signUpWithFacebook,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_StartTimeChanged value)? startTimeChanged,
    TResult Function(_OtpFailed value)? otpFailed,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    TResult Function(_SignUpWithGoogle value)? signUpWithGoogle,
    TResult Function(_SignUpWithFacebook value)? signUpWithFacebook,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignUpFormEvent {
  const factory _EmailChanged(String? value) = _$_EmailChanged;

  String? get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
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
    extends _$SignUpFormEventCopyWithImpl<$Res>
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
class _$_StartTimeChanged
    with DiagnosticableTreeMixin
    implements _StartTimeChanged {
  const _$_StartTimeChanged(this.value, this.resend);

  @override
  final int value;
  @override
  final bool resend;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.startTimeChanged(value: $value, resend: $resend)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormEvent.startTimeChanged'))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('resend', resend));
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
    required TResult Function(String? value) phoneChanged,
    required TResult Function(String? value) emailChanged,
    required TResult Function(int value, bool resend) startTimeChanged,
    required TResult Function(String error) otpFailed,
    required TResult Function() signUpWithEmailAndPasswordPressed,
    required TResult Function(String device) signUpWithGoogle,
    required TResult Function(String device) signUpWithFacebook,
  }) {
    return startTimeChanged(value, resend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value)? phoneChanged,
    TResult Function(String? value)? emailChanged,
    TResult Function(int value, bool resend)? startTimeChanged,
    TResult Function(String error)? otpFailed,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    TResult Function(String device)? signUpWithGoogle,
    TResult Function(String device)? signUpWithFacebook,
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
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_StartTimeChanged value) startTimeChanged,
    required TResult Function(_OtpFailed value) otpFailed,
    required TResult Function(_SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
    required TResult Function(_SignUpWithGoogle value) signUpWithGoogle,
    required TResult Function(_SignUpWithFacebook value) signUpWithFacebook,
  }) {
    return startTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_StartTimeChanged value)? startTimeChanged,
    TResult Function(_OtpFailed value)? otpFailed,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    TResult Function(_SignUpWithGoogle value)? signUpWithGoogle,
    TResult Function(_SignUpWithFacebook value)? signUpWithFacebook,
    required TResult orElse(),
  }) {
    if (startTimeChanged != null) {
      return startTimeChanged(this);
    }
    return orElse();
  }
}

abstract class _StartTimeChanged implements SignUpFormEvent {
  const factory _StartTimeChanged(int value, bool resend) = _$_StartTimeChanged;

  int get value => throw _privateConstructorUsedError;
  bool get resend => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartTimeChangedCopyWith<_StartTimeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OtpFailedCopyWith<$Res> {
  factory _$OtpFailedCopyWith(
          _OtpFailed value, $Res Function(_OtpFailed) then) =
      __$OtpFailedCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$OtpFailedCopyWithImpl<$Res> extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$OtpFailedCopyWith<$Res> {
  __$OtpFailedCopyWithImpl(_OtpFailed _value, $Res Function(_OtpFailed) _then)
      : super(_value, (v) => _then(v as _OtpFailed));

  @override
  _OtpFailed get _value => super._value as _OtpFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_OtpFailed(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_OtpFailed with DiagnosticableTreeMixin implements _OtpFailed {
  const _$_OtpFailed(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.otpFailed(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormEvent.otpFailed'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OtpFailed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$OtpFailedCopyWith<_OtpFailed> get copyWith =>
      __$OtpFailedCopyWithImpl<_OtpFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? value) phoneChanged,
    required TResult Function(String? value) emailChanged,
    required TResult Function(int value, bool resend) startTimeChanged,
    required TResult Function(String error) otpFailed,
    required TResult Function() signUpWithEmailAndPasswordPressed,
    required TResult Function(String device) signUpWithGoogle,
    required TResult Function(String device) signUpWithFacebook,
  }) {
    return otpFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value)? phoneChanged,
    TResult Function(String? value)? emailChanged,
    TResult Function(int value, bool resend)? startTimeChanged,
    TResult Function(String error)? otpFailed,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    TResult Function(String device)? signUpWithGoogle,
    TResult Function(String device)? signUpWithFacebook,
    required TResult orElse(),
  }) {
    if (otpFailed != null) {
      return otpFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_StartTimeChanged value) startTimeChanged,
    required TResult Function(_OtpFailed value) otpFailed,
    required TResult Function(_SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
    required TResult Function(_SignUpWithGoogle value) signUpWithGoogle,
    required TResult Function(_SignUpWithFacebook value) signUpWithFacebook,
  }) {
    return otpFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_StartTimeChanged value)? startTimeChanged,
    TResult Function(_OtpFailed value)? otpFailed,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    TResult Function(_SignUpWithGoogle value)? signUpWithGoogle,
    TResult Function(_SignUpWithFacebook value)? signUpWithFacebook,
    required TResult orElse(),
  }) {
    if (otpFailed != null) {
      return otpFailed(this);
    }
    return orElse();
  }
}

abstract class _OtpFailed implements SignUpFormEvent {
  const factory _OtpFailed(String error) = _$_OtpFailed;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OtpFailedCopyWith<_OtpFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignUpWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$SignUpWithEmailAndPasswordPressedCopyWith(
          _SignUpWithEmailAndPasswordPressed value,
          $Res Function(_SignUpWithEmailAndPasswordPressed) then) =
      __$SignUpWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignUpWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$SignUpWithEmailAndPasswordPressedCopyWith<$Res> {
  __$SignUpWithEmailAndPasswordPressedCopyWithImpl(
      _SignUpWithEmailAndPasswordPressed _value,
      $Res Function(_SignUpWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as _SignUpWithEmailAndPasswordPressed));

  @override
  _SignUpWithEmailAndPasswordPressed get _value =>
      super._value as _SignUpWithEmailAndPasswordPressed;
}

/// @nodoc
class _$_SignUpWithEmailAndPasswordPressed
    with DiagnosticableTreeMixin
    implements _SignUpWithEmailAndPasswordPressed {
  const _$_SignUpWithEmailAndPasswordPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.signUpWithEmailAndPasswordPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignUpFormEvent.signUpWithEmailAndPasswordPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? value) phoneChanged,
    required TResult Function(String? value) emailChanged,
    required TResult Function(int value, bool resend) startTimeChanged,
    required TResult Function(String error) otpFailed,
    required TResult Function() signUpWithEmailAndPasswordPressed,
    required TResult Function(String device) signUpWithGoogle,
    required TResult Function(String device) signUpWithFacebook,
  }) {
    return signUpWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value)? phoneChanged,
    TResult Function(String? value)? emailChanged,
    TResult Function(int value, bool resend)? startTimeChanged,
    TResult Function(String error)? otpFailed,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    TResult Function(String device)? signUpWithGoogle,
    TResult Function(String device)? signUpWithFacebook,
    required TResult orElse(),
  }) {
    if (signUpWithEmailAndPasswordPressed != null) {
      return signUpWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_StartTimeChanged value) startTimeChanged,
    required TResult Function(_OtpFailed value) otpFailed,
    required TResult Function(_SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
    required TResult Function(_SignUpWithGoogle value) signUpWithGoogle,
    required TResult Function(_SignUpWithFacebook value) signUpWithFacebook,
  }) {
    return signUpWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_StartTimeChanged value)? startTimeChanged,
    TResult Function(_OtpFailed value)? otpFailed,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    TResult Function(_SignUpWithGoogle value)? signUpWithGoogle,
    TResult Function(_SignUpWithFacebook value)? signUpWithFacebook,
    required TResult orElse(),
  }) {
    if (signUpWithEmailAndPasswordPressed != null) {
      return signUpWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _SignUpWithEmailAndPasswordPressed implements SignUpFormEvent {
  const factory _SignUpWithEmailAndPasswordPressed() =
      _$_SignUpWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class _$SignUpWithGoogleCopyWith<$Res> {
  factory _$SignUpWithGoogleCopyWith(
          _SignUpWithGoogle value, $Res Function(_SignUpWithGoogle) then) =
      __$SignUpWithGoogleCopyWithImpl<$Res>;
  $Res call({String device});
}

/// @nodoc
class __$SignUpWithGoogleCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$SignUpWithGoogleCopyWith<$Res> {
  __$SignUpWithGoogleCopyWithImpl(
      _SignUpWithGoogle _value, $Res Function(_SignUpWithGoogle) _then)
      : super(_value, (v) => _then(v as _SignUpWithGoogle));

  @override
  _SignUpWithGoogle get _value => super._value as _SignUpWithGoogle;

  @override
  $Res call({
    Object? device = freezed,
  }) {
    return _then(_SignUpWithGoogle(
      device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_SignUpWithGoogle
    with DiagnosticableTreeMixin
    implements _SignUpWithGoogle {
  const _$_SignUpWithGoogle(this.device);

  @override
  final String device;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.signUpWithGoogle(device: $device)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormEvent.signUpWithGoogle'))
      ..add(DiagnosticsProperty('device', device));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpWithGoogle &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(device);

  @JsonKey(ignore: true)
  @override
  _$SignUpWithGoogleCopyWith<_SignUpWithGoogle> get copyWith =>
      __$SignUpWithGoogleCopyWithImpl<_SignUpWithGoogle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? value) phoneChanged,
    required TResult Function(String? value) emailChanged,
    required TResult Function(int value, bool resend) startTimeChanged,
    required TResult Function(String error) otpFailed,
    required TResult Function() signUpWithEmailAndPasswordPressed,
    required TResult Function(String device) signUpWithGoogle,
    required TResult Function(String device) signUpWithFacebook,
  }) {
    return signUpWithGoogle(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value)? phoneChanged,
    TResult Function(String? value)? emailChanged,
    TResult Function(int value, bool resend)? startTimeChanged,
    TResult Function(String error)? otpFailed,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    TResult Function(String device)? signUpWithGoogle,
    TResult Function(String device)? signUpWithFacebook,
    required TResult orElse(),
  }) {
    if (signUpWithGoogle != null) {
      return signUpWithGoogle(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_StartTimeChanged value) startTimeChanged,
    required TResult Function(_OtpFailed value) otpFailed,
    required TResult Function(_SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
    required TResult Function(_SignUpWithGoogle value) signUpWithGoogle,
    required TResult Function(_SignUpWithFacebook value) signUpWithFacebook,
  }) {
    return signUpWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_StartTimeChanged value)? startTimeChanged,
    TResult Function(_OtpFailed value)? otpFailed,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    TResult Function(_SignUpWithGoogle value)? signUpWithGoogle,
    TResult Function(_SignUpWithFacebook value)? signUpWithFacebook,
    required TResult orElse(),
  }) {
    if (signUpWithGoogle != null) {
      return signUpWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignUpWithGoogle implements SignUpFormEvent {
  const factory _SignUpWithGoogle(String device) = _$_SignUpWithGoogle;

  String get device => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SignUpWithGoogleCopyWith<_SignUpWithGoogle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignUpWithFacebookCopyWith<$Res> {
  factory _$SignUpWithFacebookCopyWith(
          _SignUpWithFacebook value, $Res Function(_SignUpWithFacebook) then) =
      __$SignUpWithFacebookCopyWithImpl<$Res>;
  $Res call({String device});
}

/// @nodoc
class __$SignUpWithFacebookCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$SignUpWithFacebookCopyWith<$Res> {
  __$SignUpWithFacebookCopyWithImpl(
      _SignUpWithFacebook _value, $Res Function(_SignUpWithFacebook) _then)
      : super(_value, (v) => _then(v as _SignUpWithFacebook));

  @override
  _SignUpWithFacebook get _value => super._value as _SignUpWithFacebook;

  @override
  $Res call({
    Object? device = freezed,
  }) {
    return _then(_SignUpWithFacebook(
      device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_SignUpWithFacebook
    with DiagnosticableTreeMixin
    implements _SignUpWithFacebook {
  const _$_SignUpWithFacebook(this.device);

  @override
  final String device;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.signUpWithFacebook(device: $device)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormEvent.signUpWithFacebook'))
      ..add(DiagnosticsProperty('device', device));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpWithFacebook &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(device);

  @JsonKey(ignore: true)
  @override
  _$SignUpWithFacebookCopyWith<_SignUpWithFacebook> get copyWith =>
      __$SignUpWithFacebookCopyWithImpl<_SignUpWithFacebook>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? value) phoneChanged,
    required TResult Function(String? value) emailChanged,
    required TResult Function(int value, bool resend) startTimeChanged,
    required TResult Function(String error) otpFailed,
    required TResult Function() signUpWithEmailAndPasswordPressed,
    required TResult Function(String device) signUpWithGoogle,
    required TResult Function(String device) signUpWithFacebook,
  }) {
    return signUpWithFacebook(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value)? phoneChanged,
    TResult Function(String? value)? emailChanged,
    TResult Function(int value, bool resend)? startTimeChanged,
    TResult Function(String error)? otpFailed,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    TResult Function(String device)? signUpWithGoogle,
    TResult Function(String device)? signUpWithFacebook,
    required TResult orElse(),
  }) {
    if (signUpWithFacebook != null) {
      return signUpWithFacebook(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_StartTimeChanged value) startTimeChanged,
    required TResult Function(_OtpFailed value) otpFailed,
    required TResult Function(_SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
    required TResult Function(_SignUpWithGoogle value) signUpWithGoogle,
    required TResult Function(_SignUpWithFacebook value) signUpWithFacebook,
  }) {
    return signUpWithFacebook(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_StartTimeChanged value)? startTimeChanged,
    TResult Function(_OtpFailed value)? otpFailed,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    TResult Function(_SignUpWithGoogle value)? signUpWithGoogle,
    TResult Function(_SignUpWithFacebook value)? signUpWithFacebook,
    required TResult orElse(),
  }) {
    if (signUpWithFacebook != null) {
      return signUpWithFacebook(this);
    }
    return orElse();
  }
}

abstract class _SignUpWithFacebook implements SignUpFormEvent {
  const factory _SignUpWithFacebook(String device) = _$_SignUpWithFacebook;

  String get device => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SignUpWithFacebookCopyWith<_SignUpWithFacebook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SignUpFormStateTearOff {
  const _$SignUpFormStateTearOff();

  _SignUpFormState call(
      {required String? phone,
      required String? email,
      required String? failuremessage,
      required bool isSubmitting,
      required bool isSuccess,
      required bool issocialSuccess,
      required bool isOtpFailed,
      required bool resendCode,
      String? otpError,
      required int startTime,
      required TextEditingController otpController}) {
    return _SignUpFormState(
      phone: phone,
      email: email,
      failuremessage: failuremessage,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      issocialSuccess: issocialSuccess,
      isOtpFailed: isOtpFailed,
      resendCode: resendCode,
      otpError: otpError,
      startTime: startTime,
      otpController: otpController,
    );
  }
}

/// @nodoc
const $SignUpFormState = _$SignUpFormStateTearOff();

/// @nodoc
mixin _$SignUpFormState {
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get failuremessage =>
      throw _privateConstructorUsedError; //when signup fails
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError; // signup succeeds
  bool get issocialSuccess =>
      throw _privateConstructorUsedError; // social sign up success
  bool get isOtpFailed => throw _privateConstructorUsedError;
  bool get resendCode => throw _privateConstructorUsedError;
  String? get otpError => throw _privateConstructorUsedError;
  int get startTime => throw _privateConstructorUsedError;
  TextEditingController get otpController => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpFormStateCopyWith<SignUpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormStateCopyWith<$Res> {
  factory $SignUpFormStateCopyWith(
          SignUpFormState value, $Res Function(SignUpFormState) then) =
      _$SignUpFormStateCopyWithImpl<$Res>;
  $Res call(
      {String? phone,
      String? email,
      String? failuremessage,
      bool isSubmitting,
      bool isSuccess,
      bool issocialSuccess,
      bool isOtpFailed,
      bool resendCode,
      String? otpError,
      int startTime,
      TextEditingController otpController});
}

/// @nodoc
class _$SignUpFormStateCopyWithImpl<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  _$SignUpFormStateCopyWithImpl(this._value, this._then);

  final SignUpFormState _value;
  // ignore: unused_field
  final $Res Function(SignUpFormState) _then;

  @override
  $Res call({
    Object? phone = freezed,
    Object? email = freezed,
    Object? failuremessage = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
    Object? issocialSuccess = freezed,
    Object? isOtpFailed = freezed,
    Object? resendCode = freezed,
    Object? otpError = freezed,
    Object? startTime = freezed,
    Object? otpController = freezed,
  }) {
    return _then(_value.copyWith(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      failuremessage: failuremessage == freezed
          ? _value.failuremessage
          : failuremessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      issocialSuccess: issocialSuccess == freezed
          ? _value.issocialSuccess
          : issocialSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtpFailed: isOtpFailed == freezed
          ? _value.isOtpFailed
          : isOtpFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      resendCode: resendCode == freezed
          ? _value.resendCode
          : resendCode // ignore: cast_nullable_to_non_nullable
              as bool,
      otpError: otpError == freezed
          ? _value.otpError
          : otpError // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      otpController: otpController == freezed
          ? _value.otpController
          : otpController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc
abstract class _$SignUpFormStateCopyWith<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  factory _$SignUpFormStateCopyWith(
          _SignUpFormState value, $Res Function(_SignUpFormState) then) =
      __$SignUpFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? phone,
      String? email,
      String? failuremessage,
      bool isSubmitting,
      bool isSuccess,
      bool issocialSuccess,
      bool isOtpFailed,
      bool resendCode,
      String? otpError,
      int startTime,
      TextEditingController otpController});
}

/// @nodoc
class __$SignUpFormStateCopyWithImpl<$Res>
    extends _$SignUpFormStateCopyWithImpl<$Res>
    implements _$SignUpFormStateCopyWith<$Res> {
  __$SignUpFormStateCopyWithImpl(
      _SignUpFormState _value, $Res Function(_SignUpFormState) _then)
      : super(_value, (v) => _then(v as _SignUpFormState));

  @override
  _SignUpFormState get _value => super._value as _SignUpFormState;

  @override
  $Res call({
    Object? phone = freezed,
    Object? email = freezed,
    Object? failuremessage = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
    Object? issocialSuccess = freezed,
    Object? isOtpFailed = freezed,
    Object? resendCode = freezed,
    Object? otpError = freezed,
    Object? startTime = freezed,
    Object? otpController = freezed,
  }) {
    return _then(_SignUpFormState(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      failuremessage: failuremessage == freezed
          ? _value.failuremessage
          : failuremessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      issocialSuccess: issocialSuccess == freezed
          ? _value.issocialSuccess
          : issocialSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtpFailed: isOtpFailed == freezed
          ? _value.isOtpFailed
          : isOtpFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      resendCode: resendCode == freezed
          ? _value.resendCode
          : resendCode // ignore: cast_nullable_to_non_nullable
              as bool,
      otpError: otpError == freezed
          ? _value.otpError
          : otpError // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      otpController: otpController == freezed
          ? _value.otpController
          : otpController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc
class _$_SignUpFormState
    with DiagnosticableTreeMixin
    implements _SignUpFormState {
  const _$_SignUpFormState(
      {required this.phone,
      required this.email,
      required this.failuremessage,
      required this.isSubmitting,
      required this.isSuccess,
      required this.issocialSuccess,
      required this.isOtpFailed,
      required this.resendCode,
      this.otpError,
      required this.startTime,
      required this.otpController});

  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? failuremessage;
  @override //when signup fails
  final bool isSubmitting;
  @override
  final bool isSuccess;
  @override // signup succeeds
  final bool issocialSuccess;
  @override // social sign up success
  final bool isOtpFailed;
  @override
  final bool resendCode;
  @override
  final String? otpError;
  @override
  final int startTime;
  @override
  final TextEditingController otpController;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormState(phone: $phone, email: $email, failuremessage: $failuremessage, isSubmitting: $isSubmitting, isSuccess: $isSuccess, issocialSuccess: $issocialSuccess, isOtpFailed: $isOtpFailed, resendCode: $resendCode, otpError: $otpError, startTime: $startTime, otpController: $otpController)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormState'))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('failuremessage', failuremessage))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('isSuccess', isSuccess))
      ..add(DiagnosticsProperty('issocialSuccess', issocialSuccess))
      ..add(DiagnosticsProperty('isOtpFailed', isOtpFailed))
      ..add(DiagnosticsProperty('resendCode', resendCode))
      ..add(DiagnosticsProperty('otpError', otpError))
      ..add(DiagnosticsProperty('startTime', startTime))
      ..add(DiagnosticsProperty('otpController', otpController));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpFormState &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.failuremessage, failuremessage) ||
                const DeepCollectionEquality()
                    .equals(other.failuremessage, failuremessage)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.issocialSuccess, issocialSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.issocialSuccess, issocialSuccess)) &&
            (identical(other.isOtpFailed, isOtpFailed) ||
                const DeepCollectionEquality()
                    .equals(other.isOtpFailed, isOtpFailed)) &&
            (identical(other.resendCode, resendCode) ||
                const DeepCollectionEquality()
                    .equals(other.resendCode, resendCode)) &&
            (identical(other.otpError, otpError) ||
                const DeepCollectionEquality()
                    .equals(other.otpError, otpError)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.otpController, otpController) ||
                const DeepCollectionEquality()
                    .equals(other.otpController, otpController)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(failuremessage) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(issocialSuccess) ^
      const DeepCollectionEquality().hash(isOtpFailed) ^
      const DeepCollectionEquality().hash(resendCode) ^
      const DeepCollectionEquality().hash(otpError) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(otpController);

  @JsonKey(ignore: true)
  @override
  _$SignUpFormStateCopyWith<_SignUpFormState> get copyWith =>
      __$SignUpFormStateCopyWithImpl<_SignUpFormState>(this, _$identity);
}

abstract class _SignUpFormState implements SignUpFormState {
  const factory _SignUpFormState(
      {required String? phone,
      required String? email,
      required String? failuremessage,
      required bool isSubmitting,
      required bool isSuccess,
      required bool issocialSuccess,
      required bool isOtpFailed,
      required bool resendCode,
      String? otpError,
      required int startTime,
      required TextEditingController otpController}) = _$_SignUpFormState;

  @override
  String? get phone => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get failuremessage => throw _privateConstructorUsedError;
  @override //when signup fails
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get isSuccess => throw _privateConstructorUsedError;
  @override // signup succeeds
  bool get issocialSuccess => throw _privateConstructorUsedError;
  @override // social sign up success
  bool get isOtpFailed => throw _privateConstructorUsedError;
  @override
  bool get resendCode => throw _privateConstructorUsedError;
  @override
  String? get otpError => throw _privateConstructorUsedError;
  @override
  int get startTime => throw _privateConstructorUsedError;
  @override
  TextEditingController get otpController => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignUpFormStateCopyWith<_SignUpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
