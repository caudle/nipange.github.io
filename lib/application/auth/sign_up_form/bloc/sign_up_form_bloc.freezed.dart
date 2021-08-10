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

  _FirstnameChanged firstnameChanged(String? value) {
    return _FirstnameChanged(
      value,
    );
  }

  _LastnameChanged lastnameChanged(String? value) {
    return _LastnameChanged(
      value,
    );
  }

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

  _SignUpWithEmailAndPasswordPressed signUpWithEmailAndPasswordPressed() {
    return const _SignUpWithEmailAndPasswordPressed();
  }
}

/// @nodoc
const $SignUpFormEvent = _$SignUpFormEventTearOff();

/// @nodoc
mixin _$SignUpFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? value) firstnameChanged,
    required TResult Function(String? value) lastnameChanged,
    required TResult Function(String? value) phoneChanged,
    required TResult Function(String? value) emailChanged,
    required TResult Function() signUpWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value)? firstnameChanged,
    TResult Function(String? value)? lastnameChanged,
    TResult Function(String? value)? phoneChanged,
    TResult Function(String? value)? emailChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstnameChanged value) firstnameChanged,
    required TResult Function(_LastnameChanged value) lastnameChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstnameChanged value)? firstnameChanged,
    TResult Function(_LastnameChanged value)? lastnameChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
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
abstract class _$FirstnameChangedCopyWith<$Res> {
  factory _$FirstnameChangedCopyWith(
          _FirstnameChanged value, $Res Function(_FirstnameChanged) then) =
      __$FirstnameChangedCopyWithImpl<$Res>;
  $Res call({String? value});
}

/// @nodoc
class __$FirstnameChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$FirstnameChangedCopyWith<$Res> {
  __$FirstnameChangedCopyWithImpl(
      _FirstnameChanged _value, $Res Function(_FirstnameChanged) _then)
      : super(_value, (v) => _then(v as _FirstnameChanged));

  @override
  _FirstnameChanged get _value => super._value as _FirstnameChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_FirstnameChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_FirstnameChanged implements _FirstnameChanged {
  const _$_FirstnameChanged(this.value);

  @override
  final String? value;

  @override
  String toString() {
    return 'SignUpFormEvent.firstnameChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FirstnameChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$FirstnameChangedCopyWith<_FirstnameChanged> get copyWith =>
      __$FirstnameChangedCopyWithImpl<_FirstnameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? value) firstnameChanged,
    required TResult Function(String? value) lastnameChanged,
    required TResult Function(String? value) phoneChanged,
    required TResult Function(String? value) emailChanged,
    required TResult Function() signUpWithEmailAndPasswordPressed,
  }) {
    return firstnameChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value)? firstnameChanged,
    TResult Function(String? value)? lastnameChanged,
    TResult Function(String? value)? phoneChanged,
    TResult Function(String? value)? emailChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (firstnameChanged != null) {
      return firstnameChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstnameChanged value) firstnameChanged,
    required TResult Function(_LastnameChanged value) lastnameChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
  }) {
    return firstnameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstnameChanged value)? firstnameChanged,
    TResult Function(_LastnameChanged value)? lastnameChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (firstnameChanged != null) {
      return firstnameChanged(this);
    }
    return orElse();
  }
}

abstract class _FirstnameChanged implements SignUpFormEvent {
  const factory _FirstnameChanged(String? value) = _$_FirstnameChanged;

  String? get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FirstnameChangedCopyWith<_FirstnameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LastnameChangedCopyWith<$Res> {
  factory _$LastnameChangedCopyWith(
          _LastnameChanged value, $Res Function(_LastnameChanged) then) =
      __$LastnameChangedCopyWithImpl<$Res>;
  $Res call({String? value});
}

/// @nodoc
class __$LastnameChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$LastnameChangedCopyWith<$Res> {
  __$LastnameChangedCopyWithImpl(
      _LastnameChanged _value, $Res Function(_LastnameChanged) _then)
      : super(_value, (v) => _then(v as _LastnameChanged));

  @override
  _LastnameChanged get _value => super._value as _LastnameChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_LastnameChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_LastnameChanged implements _LastnameChanged {
  const _$_LastnameChanged(this.value);

  @override
  final String? value;

  @override
  String toString() {
    return 'SignUpFormEvent.lastnameChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LastnameChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$LastnameChangedCopyWith<_LastnameChanged> get copyWith =>
      __$LastnameChangedCopyWithImpl<_LastnameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? value) firstnameChanged,
    required TResult Function(String? value) lastnameChanged,
    required TResult Function(String? value) phoneChanged,
    required TResult Function(String? value) emailChanged,
    required TResult Function() signUpWithEmailAndPasswordPressed,
  }) {
    return lastnameChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value)? firstnameChanged,
    TResult Function(String? value)? lastnameChanged,
    TResult Function(String? value)? phoneChanged,
    TResult Function(String? value)? emailChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (lastnameChanged != null) {
      return lastnameChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstnameChanged value) firstnameChanged,
    required TResult Function(_LastnameChanged value) lastnameChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
  }) {
    return lastnameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstnameChanged value)? firstnameChanged,
    TResult Function(_LastnameChanged value)? lastnameChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (lastnameChanged != null) {
      return lastnameChanged(this);
    }
    return orElse();
  }
}

abstract class _LastnameChanged implements SignUpFormEvent {
  const factory _LastnameChanged(String? value) = _$_LastnameChanged;

  String? get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LastnameChangedCopyWith<_LastnameChanged> get copyWith =>
      throw _privateConstructorUsedError;
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
class _$_PhoneChanged implements _PhoneChanged {
  const _$_PhoneChanged(this.value);

  @override
  final String? value;

  @override
  String toString() {
    return 'SignUpFormEvent.phoneChanged(value: $value)';
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
    required TResult Function(String? value) firstnameChanged,
    required TResult Function(String? value) lastnameChanged,
    required TResult Function(String? value) phoneChanged,
    required TResult Function(String? value) emailChanged,
    required TResult Function() signUpWithEmailAndPasswordPressed,
  }) {
    return phoneChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value)? firstnameChanged,
    TResult Function(String? value)? lastnameChanged,
    TResult Function(String? value)? phoneChanged,
    TResult Function(String? value)? emailChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
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
    required TResult Function(_FirstnameChanged value) firstnameChanged,
    required TResult Function(_LastnameChanged value) lastnameChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
  }) {
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstnameChanged value)? firstnameChanged,
    TResult Function(_LastnameChanged value)? lastnameChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
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
class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.value);

  @override
  final String? value;

  @override
  String toString() {
    return 'SignUpFormEvent.emailChanged(value: $value)';
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
    required TResult Function(String? value) firstnameChanged,
    required TResult Function(String? value) lastnameChanged,
    required TResult Function(String? value) phoneChanged,
    required TResult Function(String? value) emailChanged,
    required TResult Function() signUpWithEmailAndPasswordPressed,
  }) {
    return emailChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value)? firstnameChanged,
    TResult Function(String? value)? lastnameChanged,
    TResult Function(String? value)? phoneChanged,
    TResult Function(String? value)? emailChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
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
    required TResult Function(_FirstnameChanged value) firstnameChanged,
    required TResult Function(_LastnameChanged value) lastnameChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstnameChanged value)? firstnameChanged,
    TResult Function(_LastnameChanged value)? lastnameChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
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
    implements _SignUpWithEmailAndPasswordPressed {
  const _$_SignUpWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SignUpFormEvent.signUpWithEmailAndPasswordPressed()';
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
    required TResult Function(String? value) firstnameChanged,
    required TResult Function(String? value) lastnameChanged,
    required TResult Function(String? value) phoneChanged,
    required TResult Function(String? value) emailChanged,
    required TResult Function() signUpWithEmailAndPasswordPressed,
  }) {
    return signUpWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value)? firstnameChanged,
    TResult Function(String? value)? lastnameChanged,
    TResult Function(String? value)? phoneChanged,
    TResult Function(String? value)? emailChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
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
    required TResult Function(_FirstnameChanged value) firstnameChanged,
    required TResult Function(_LastnameChanged value) lastnameChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
  }) {
    return signUpWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstnameChanged value)? firstnameChanged,
    TResult Function(_LastnameChanged value)? lastnameChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
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
class _$SignUpFormStateTearOff {
  const _$SignUpFormStateTearOff();

  _SignUpFormState call(
      {required String? firstname,
      required String? lastname,
      required String? phone,
      required String? email,
      required String? failuremessage,
      required bool isSubmitting,
      required bool isSuccess}) {
    return _SignUpFormState(
      firstname: firstname,
      lastname: lastname,
      phone: phone,
      email: email,
      failuremessage: failuremessage,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
    );
  }
}

/// @nodoc
const $SignUpFormState = _$SignUpFormStateTearOff();

/// @nodoc
mixin _$SignUpFormState {
  String? get firstname => throw _privateConstructorUsedError;
  String? get lastname => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get failuremessage =>
      throw _privateConstructorUsedError; //when signup fails
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;

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
      {String? firstname,
      String? lastname,
      String? phone,
      String? email,
      String? failuremessage,
      bool isSubmitting,
      bool isSuccess});
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
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? failuremessage = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String? firstname,
      String? lastname,
      String? phone,
      String? email,
      String? failuremessage,
      bool isSubmitting,
      bool isSuccess});
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
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? failuremessage = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_SignUpFormState(
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
class _$_SignUpFormState implements _SignUpFormState {
  const _$_SignUpFormState(
      {required this.firstname,
      required this.lastname,
      required this.phone,
      required this.email,
      required this.failuremessage,
      required this.isSubmitting,
      required this.isSuccess});

  @override
  final String? firstname;
  @override
  final String? lastname;
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

  @override
  String toString() {
    return 'SignUpFormState(firstname: $firstname, lastname: $lastname, phone: $phone, email: $email, failuremessage: $failuremessage, isSubmitting: $isSubmitting, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpFormState &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
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
                    .equals(other.isSuccess, isSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(failuremessage) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess);

  @JsonKey(ignore: true)
  @override
  _$SignUpFormStateCopyWith<_SignUpFormState> get copyWith =>
      __$SignUpFormStateCopyWithImpl<_SignUpFormState>(this, _$identity);
}

abstract class _SignUpFormState implements SignUpFormState {
  const factory _SignUpFormState(
      {required String? firstname,
      required String? lastname,
      required String? phone,
      required String? email,
      required String? failuremessage,
      required bool isSubmitting,
      required bool isSuccess}) = _$_SignUpFormState;

  @override
  String? get firstname => throw _privateConstructorUsedError;
  @override
  String? get lastname => throw _privateConstructorUsedError;
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
  @override
  @JsonKey(ignore: true)
  _$SignUpFormStateCopyWith<_SignUpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
