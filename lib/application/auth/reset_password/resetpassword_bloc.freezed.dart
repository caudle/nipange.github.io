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
}

/// @nodoc
const $ResetpasswordEvent = _$ResetpasswordEventTearOff();

/// @nodoc
mixin _$ResetpasswordEvent {
  String get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetpasswordEventCopyWith<ResetpasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetpasswordEventCopyWith<$Res> {
  factory $ResetpasswordEventCopyWith(
          ResetpasswordEvent value, $Res Function(ResetpasswordEvent) then) =
      _$ResetpasswordEventCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$ResetpasswordEventCopyWithImpl<$Res>
    implements $ResetpasswordEventCopyWith<$Res> {
  _$ResetpasswordEventCopyWithImpl(this._value, this._then);

  final ResetpasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ResetpasswordEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ResetCopyWith<$Res>
    implements $ResetpasswordEventCopyWith<$Res> {
  factory _$ResetCopyWith(_Reset value, $Res Function(_Reset) then) =
      __$ResetCopyWithImpl<$Res>;
  @override
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
  }) {
    return reset(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? reset,
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
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
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

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResetCopyWith<_Reset> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ResetpasswordStateTearOff {
  const _$ResetpasswordStateTearOff();

  _ResetpasswordState call(
      {required TextEditingController passwordController,
      required TextEditingController confirmController,
      required bool isLoading,
      required bool isSuccess,
      required String failureMessage}) {
    return _ResetpasswordState(
      passwordController: passwordController,
      confirmController: confirmController,
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
  TextEditingController get passwordController =>
      throw _privateConstructorUsedError;
  TextEditingController get confirmController =>
      throw _privateConstructorUsedError;
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
      {TextEditingController passwordController,
      TextEditingController confirmController,
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
    Object? passwordController = freezed,
    Object? confirmController = freezed,
    Object? isLoading = freezed,
    Object? isSuccess = freezed,
    Object? failureMessage = freezed,
  }) {
    return _then(_value.copyWith(
      passwordController: passwordController == freezed
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      confirmController: confirmController == freezed
          ? _value.confirmController
          : confirmController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
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
      {TextEditingController passwordController,
      TextEditingController confirmController,
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
    Object? passwordController = freezed,
    Object? confirmController = freezed,
    Object? isLoading = freezed,
    Object? isSuccess = freezed,
    Object? failureMessage = freezed,
  }) {
    return _then(_ResetpasswordState(
      passwordController: passwordController == freezed
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      confirmController: confirmController == freezed
          ? _value.confirmController
          : confirmController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
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
      {required this.passwordController,
      required this.confirmController,
      required this.isLoading,
      required this.isSuccess,
      required this.failureMessage});

  @override
  final TextEditingController passwordController;
  @override
  final TextEditingController confirmController;
  @override
  final bool isLoading;
  @override
  final bool isSuccess;
  @override
  final String failureMessage;

  @override
  String toString() {
    return 'ResetpasswordState(passwordController: $passwordController, confirmController: $confirmController, isLoading: $isLoading, isSuccess: $isSuccess, failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResetpasswordState &&
            (identical(other.passwordController, passwordController) ||
                const DeepCollectionEquality()
                    .equals(other.passwordController, passwordController)) &&
            (identical(other.confirmController, confirmController) ||
                const DeepCollectionEquality()
                    .equals(other.confirmController, confirmController)) &&
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
      const DeepCollectionEquality().hash(passwordController) ^
      const DeepCollectionEquality().hash(confirmController) ^
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
      {required TextEditingController passwordController,
      required TextEditingController confirmController,
      required bool isLoading,
      required bool isSuccess,
      required String failureMessage}) = _$_ResetpasswordState;

  @override
  TextEditingController get passwordController =>
      throw _privateConstructorUsedError;
  @override
  TextEditingController get confirmController =>
      throw _privateConstructorUsedError;
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
