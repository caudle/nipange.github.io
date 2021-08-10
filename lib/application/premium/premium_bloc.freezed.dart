// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'premium_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PremiumEventTearOff {
  const _$PremiumEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $PremiumEvent = _$PremiumEventTearOff();

/// @nodoc
mixin _$PremiumEvent {
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
abstract class $PremiumEventCopyWith<$Res> {
  factory $PremiumEventCopyWith(
          PremiumEvent value, $Res Function(PremiumEvent) then) =
      _$PremiumEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PremiumEventCopyWithImpl<$Res> implements $PremiumEventCopyWith<$Res> {
  _$PremiumEventCopyWithImpl(this._value, this._then);

  final PremiumEvent _value;
  // ignore: unused_field
  final $Res Function(PremiumEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$PremiumEventCopyWithImpl<$Res>
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
    return 'PremiumEvent.started()';
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

abstract class _Started implements PremiumEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$PremiumStateTearOff {
  const _$PremiumStateTearOff();

  _PremiumState call(
      {required User? user,
      required Future<List<Package>>? futurePackages,
      required Package? userPackage}) {
    return _PremiumState(
      user: user,
      futurePackages: futurePackages,
      userPackage: userPackage,
    );
  }
}

/// @nodoc
const $PremiumState = _$PremiumStateTearOff();

/// @nodoc
mixin _$PremiumState {
  User? get user => throw _privateConstructorUsedError;
  Future<List<Package>>? get futurePackages =>
      throw _privateConstructorUsedError;
  Package? get userPackage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PremiumStateCopyWith<PremiumState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PremiumStateCopyWith<$Res> {
  factory $PremiumStateCopyWith(
          PremiumState value, $Res Function(PremiumState) then) =
      _$PremiumStateCopyWithImpl<$Res>;
  $Res call(
      {User? user,
      Future<List<Package>>? futurePackages,
      Package? userPackage});
}

/// @nodoc
class _$PremiumStateCopyWithImpl<$Res> implements $PremiumStateCopyWith<$Res> {
  _$PremiumStateCopyWithImpl(this._value, this._then);

  final PremiumState _value;
  // ignore: unused_field
  final $Res Function(PremiumState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? futurePackages = freezed,
    Object? userPackage = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      futurePackages: futurePackages == freezed
          ? _value.futurePackages
          : futurePackages // ignore: cast_nullable_to_non_nullable
              as Future<List<Package>>?,
      userPackage: userPackage == freezed
          ? _value.userPackage
          : userPackage // ignore: cast_nullable_to_non_nullable
              as Package?,
    ));
  }
}

/// @nodoc
abstract class _$PremiumStateCopyWith<$Res>
    implements $PremiumStateCopyWith<$Res> {
  factory _$PremiumStateCopyWith(
          _PremiumState value, $Res Function(_PremiumState) then) =
      __$PremiumStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {User? user,
      Future<List<Package>>? futurePackages,
      Package? userPackage});
}

/// @nodoc
class __$PremiumStateCopyWithImpl<$Res> extends _$PremiumStateCopyWithImpl<$Res>
    implements _$PremiumStateCopyWith<$Res> {
  __$PremiumStateCopyWithImpl(
      _PremiumState _value, $Res Function(_PremiumState) _then)
      : super(_value, (v) => _then(v as _PremiumState));

  @override
  _PremiumState get _value => super._value as _PremiumState;

  @override
  $Res call({
    Object? user = freezed,
    Object? futurePackages = freezed,
    Object? userPackage = freezed,
  }) {
    return _then(_PremiumState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      futurePackages: futurePackages == freezed
          ? _value.futurePackages
          : futurePackages // ignore: cast_nullable_to_non_nullable
              as Future<List<Package>>?,
      userPackage: userPackage == freezed
          ? _value.userPackage
          : userPackage // ignore: cast_nullable_to_non_nullable
              as Package?,
    ));
  }
}

/// @nodoc
class _$_PremiumState implements _PremiumState {
  const _$_PremiumState(
      {required this.user,
      required this.futurePackages,
      required this.userPackage});

  @override
  final User? user;
  @override
  final Future<List<Package>>? futurePackages;
  @override
  final Package? userPackage;

  @override
  String toString() {
    return 'PremiumState(user: $user, futurePackages: $futurePackages, userPackage: $userPackage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PremiumState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.futurePackages, futurePackages) ||
                const DeepCollectionEquality()
                    .equals(other.futurePackages, futurePackages)) &&
            (identical(other.userPackage, userPackage) ||
                const DeepCollectionEquality()
                    .equals(other.userPackage, userPackage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(futurePackages) ^
      const DeepCollectionEquality().hash(userPackage);

  @JsonKey(ignore: true)
  @override
  _$PremiumStateCopyWith<_PremiumState> get copyWith =>
      __$PremiumStateCopyWithImpl<_PremiumState>(this, _$identity);
}

abstract class _PremiumState implements PremiumState {
  const factory _PremiumState(
      {required User? user,
      required Future<List<Package>>? futurePackages,
      required Package? userPackage}) = _$_PremiumState;

  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  Future<List<Package>>? get futurePackages =>
      throw _privateConstructorUsedError;
  @override
  Package? get userPackage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PremiumStateCopyWith<_PremiumState> get copyWith =>
      throw _privateConstructorUsedError;
}
