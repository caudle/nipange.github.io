// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'resetpassword_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResetpasswordEventTearOff {
  const _$ResetpasswordEventTearOff();

  _Reset reset(String id) {
    return _Reset(
      id,
    );
  }

  _PasswordChanged passwordChanged(String value) {
    return _PasswordChanged(
      value,
    );
  }

  _ConfirmChanged confirmChanged(String value) {
    return _ConfirmChanged(
      value,
    );
  }
}

/// @nodoc
const $ResetpasswordEvent = _$ResetpasswordEventTearOff();

/// @nodoc
mixin _$ResetpasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) reset,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) confirmChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? reset,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmChanged value) confirmChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmChanged value)? confirmChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetpasswordEventCopyWith<$Res> {
  factory $ResetpasswordEventCopyWith(
          ResetpasswordEvent value, $Res Function(ResetpasswordEvent) then) =
      _$ResetpasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetpasswordEventCopyWithImpl<$Res>
    implements $ResetpasswordEventCopyWith<$Res> {
  _$ResetpasswordEventCopyWithImpl(this._value, this._then);

  final ResetpasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ResetpasswordEvent) _then;
}

/// @nodoc
abstract class _$ResetCopyWith<$Res> {
  factory _$ResetCopyWith(_Reset value, $Res Function(_Reset) then) =
      __$ResetCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$ResetCopyWithImpl<$Res> extends _$ResetpasswordEventCopyWithImpl<$Res>
    implements _$ResetCopyWith<$Res> {
  __$ResetCopyWithImpl(_Reset _value, $Res Function(_Reset) _then)
      : super(_value, (v) => _then(v as _Reset));

  @override
  _Reset get _value => super._value as _Reset;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Reset(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_Reset implements _Reset {
  const _$_Reset(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ResetpasswordEvent.reset(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Reset &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ResetCopyWith<_Reset> get copyWith =>
      __$ResetCopyWithImpl<_Reset>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) reset,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) confirmChanged,
  }) {
    return reset(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? reset,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmChanged,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmChanged value) confirmChanged,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmChanged value)? confirmChanged,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements ResetpasswordEvent {
  const factory _Reset(String id) = _$_Reset;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ResetCopyWith<_Reset> get copyWith => throw _privateConstructorUsedError;
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
    extends _$ResetpasswordEventCopyWithImpl<$Res>
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
    return 'ResetpasswordEvent.passwordChanged(value: $value)';
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
    required TResult Function(String id) reset,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) confirmChanged,
  }) {
    return passwordChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? reset,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmChanged,
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
    required TResult Function(_Reset value) reset,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmChanged value) confirmChanged,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmChanged value)? confirmChanged,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements ResetpasswordEvent {
  const factory _PasswordChanged(String value) = _$_PasswordChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConfirmChangedCopyWith<$Res> {
  factory _$ConfirmChangedCopyWith(
          _ConfirmChanged value, $Res Function(_ConfirmChanged) then) =
      __$ConfirmChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$ConfirmChangedCopyWithImpl<$Res>
    extends _$ResetpasswordEventCopyWithImpl<$Res>
    implements _$ConfirmChangedCopyWith<$Res> {
  __$ConfirmChangedCopyWithImpl(
      _ConfirmChanged _value, $Res Function(_ConfirmChanged) _then)
      : super(_value, (v) => _then(v as _ConfirmChanged));

  @override
  _ConfirmChanged get _value => super._value as _ConfirmChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ConfirmChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_ConfirmChanged implements _ConfirmChanged {
  const _$_ConfirmChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'ResetpasswordEvent.confirmChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfirmChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ConfirmChangedCopyWith<_ConfirmChanged> get copyWith =>
      __$ConfirmChangedCopyWithImpl<_ConfirmChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) reset,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) confirmChanged,
  }) {
    return confirmChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? reset,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmChanged,
    required TResult orElse(),
  }) {
    if (confirmChanged != null) {
      return confirmChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmChanged value) confirmChanged,
  }) {
    return confirmChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmChanged value)? confirmChanged,
    required TResult orElse(),
  }) {
    if (confirmChanged != null) {
      return confirmChanged(this);
    }
    return orElse();
  }
}

abstract class _ConfirmChanged implements ResetpasswordEvent {
  const factory _ConfirmChanged(String value) = _$_ConfirmChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ConfirmChangedCopyWith<_ConfirmChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ResetpasswordStateTearOff {
  const _$ResetpasswordStateTearOff();

  _ResetpasswordState call(
      {required String password,
      required String confirm,
      required bool isLoading,
      required bool isSuccess,
      required String failureMessage}) {
    return _ResetpasswordState(
      password: password,
      confirm: confirm,
      isLoading: isLoading,
      isSuccess: isSuccess,
      failureMessage: failureMessage,
    );
  }
}

/// @nodoc
const $ResetpasswordState = _$ResetpasswordStateTearOff();

/// @nodoc
mixin _$ResetpasswordState {
  String get password => throw _privateConstructorUsedError;
  String get confirm => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  String get failureMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetpasswordStateCopyWith<ResetpasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetpasswordStateCopyWith<$Res> {
  factory $ResetpasswordStateCopyWith(
          ResetpasswordState value, $Res Function(ResetpasswordState) then) =
      _$ResetpasswordStateCopyWithImpl<$Res>;
  $Res call(
      {String password,
      String confirm,
      bool isLoading,
      bool isSuccess,
      String failureMessage});
}

/// @nodoc
class _$ResetpasswordStateCopyWithImpl<$Res>
    implements $ResetpasswordStateCopyWith<$Res> {
  _$ResetpasswordStateCopyWithImpl(this._value, this._then);

  final ResetpasswordState _value;
  // ignore: unused_field
  final $Res Function(ResetpasswordState) _then;

  @override
  $Res call({
    Object? password = freezed,
    Object? confirm = freezed,
    Object? isLoading = freezed,
    Object? isSuccess = freezed,
    Object? failureMessage = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirm: confirm == freezed
          ? _value.confirm
          : confirm // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
abstract class _$ResetpasswordStateCopyWith<$Res>
    implements $ResetpasswordStateCopyWith<$Res> {
  factory _$ResetpasswordStateCopyWith(
          _ResetpasswordState value, $Res Function(_ResetpasswordState) then) =
      __$ResetpasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String password,
      String confirm,
      bool isLoading,
      bool isSuccess,
      String failureMessage});
}

/// @nodoc
class __$ResetpasswordStateCopyWithImpl<$Res>
    extends _$ResetpasswordStateCopyWithImpl<$Res>
    implements _$ResetpasswordStateCopyWith<$Res> {
  __$ResetpasswordStateCopyWithImpl(
      _ResetpasswordState _value, $Res Function(_ResetpasswordState) _then)
      : super(_value, (v) => _then(v as _ResetpasswordState));

  @override
  _ResetpasswordState get _value => super._value as _ResetpasswordState;

  @override
  $Res call({
    Object? password = freezed,
    Object? confirm = freezed,
    Object? isLoading = freezed,
    Object? isSuccess = freezed,
    Object? failureMessage = freezed,
  }) {
    return _then(_ResetpasswordState(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirm: confirm == freezed
          ? _value.confirm
          : confirm // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
class _$_ResetpasswordState implements _ResetpasswordState {
  const _$_ResetpasswordState(
      {required this.password,
      required this.confirm,
      required this.isLoading,
      required this.isSuccess,
      required this.failureMessage});

  @override
  final String password;
  @override
  final String confirm;
  @override
  final bool isLoading;
  @override
  final bool isSuccess;
  @override
  final String failureMessage;

  @override
  String toString() {
    return 'ResetpasswordState(password: $password, confirm: $confirm, isLoading: $isLoading, isSuccess: $isSuccess, failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResetpasswordState &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirm, confirm) ||
                const DeepCollectionEquality()
                    .equals(other.confirm, confirm)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.failureMessage, failureMessage) ||
                const DeepCollectionEquality()
                    .equals(other.failureMessage, failureMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirm) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(failureMessage);

  @JsonKey(ignore: true)
  @override
  _$ResetpasswordStateCopyWith<_ResetpasswordState> get copyWith =>
      __$ResetpasswordStateCopyWithImpl<_ResetpasswordState>(this, _$identity);
}

abstract class _ResetpasswordState implements ResetpasswordState {
  const factory _ResetpasswordState(
      {required String password,
      required String confirm,
      required bool isLoading,
      required bool isSuccess,
      required String failureMessage}) = _$_ResetpasswordState;

  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get confirm => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isSuccess => throw _privateConstructorUsedError;
  @override
  String get failureMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResetpasswordStateCopyWith<_ResetpasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
