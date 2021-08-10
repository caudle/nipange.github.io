// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'saved_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SavedEventTearOff {
  const _$SavedEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $SavedEvent = _$SavedEventTearOff();

/// @nodoc
mixin _$SavedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedEventCopyWith<$Res> {
  factory $SavedEventCopyWith(
          SavedEvent value, $Res Function(SavedEvent) then) =
      _$SavedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SavedEventCopyWithImpl<$Res> implements $SavedEventCopyWith<$Res> {
  _$SavedEventCopyWithImpl(this._value, this._then);

  final SavedEvent _value;
  // ignore: unused_field
  final $Res Function(SavedEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$SavedEventCopyWithImpl<$Res>
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
    return 'SavedEvent.started()';
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
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SavedEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$SavedStateTearOff {
  const _$SavedStateTearOff();

  _SavedState call(
      {required IOWebSocketChannel savedChannel, required User? user}) {
    return _SavedState(
      savedChannel: savedChannel,
      user: user,
    );
  }
}

/// @nodoc
const $SavedState = _$SavedStateTearOff();

/// @nodoc
mixin _$SavedState {
  IOWebSocketChannel get savedChannel => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SavedStateCopyWith<SavedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedStateCopyWith<$Res> {
  factory $SavedStateCopyWith(
          SavedState value, $Res Function(SavedState) then) =
      _$SavedStateCopyWithImpl<$Res>;
  $Res call({IOWebSocketChannel savedChannel, User? user});
}

/// @nodoc
class _$SavedStateCopyWithImpl<$Res> implements $SavedStateCopyWith<$Res> {
  _$SavedStateCopyWithImpl(this._value, this._then);

  final SavedState _value;
  // ignore: unused_field
  final $Res Function(SavedState) _then;

  @override
  $Res call({
    Object? savedChannel = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      savedChannel: savedChannel == freezed
          ? _value.savedChannel
          : savedChannel // ignore: cast_nullable_to_non_nullable
              as IOWebSocketChannel,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
abstract class _$SavedStateCopyWith<$Res> implements $SavedStateCopyWith<$Res> {
  factory _$SavedStateCopyWith(
          _SavedState value, $Res Function(_SavedState) then) =
      __$SavedStateCopyWithImpl<$Res>;
  @override
  $Res call({IOWebSocketChannel savedChannel, User? user});
}

/// @nodoc
class __$SavedStateCopyWithImpl<$Res> extends _$SavedStateCopyWithImpl<$Res>
    implements _$SavedStateCopyWith<$Res> {
  __$SavedStateCopyWithImpl(
      _SavedState _value, $Res Function(_SavedState) _then)
      : super(_value, (v) => _then(v as _SavedState));

  @override
  _SavedState get _value => super._value as _SavedState;

  @override
  $Res call({
    Object? savedChannel = freezed,
    Object? user = freezed,
  }) {
    return _then(_SavedState(
      savedChannel: savedChannel == freezed
          ? _value.savedChannel
          : savedChannel // ignore: cast_nullable_to_non_nullable
              as IOWebSocketChannel,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
class _$_SavedState implements _SavedState {
  const _$_SavedState({required this.savedChannel, required this.user});

  @override
  final IOWebSocketChannel savedChannel;
  @override
  final User? user;

  @override
  String toString() {
    return 'SavedState(savedChannel: $savedChannel, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SavedState &&
            (identical(other.savedChannel, savedChannel) ||
                const DeepCollectionEquality()
                    .equals(other.savedChannel, savedChannel)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(savedChannel) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$SavedStateCopyWith<_SavedState> get copyWith =>
      __$SavedStateCopyWithImpl<_SavedState>(this, _$identity);
}

abstract class _SavedState implements SavedState {
  const factory _SavedState(
      {required IOWebSocketChannel savedChannel,
      required User? user}) = _$_SavedState;

  @override
  IOWebSocketChannel get savedChannel => throw _privateConstructorUsedError;
  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SavedStateCopyWith<_SavedState> get copyWith =>
      throw _privateConstructorUsedError;
}
