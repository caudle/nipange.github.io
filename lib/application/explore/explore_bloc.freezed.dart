// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'explore_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExploreEventTearOff {
  const _$ExploreEventTearOff();

  _Started started() {
    return const _Started();
  }

  _Fetched fetched(String type) {
    return _Fetched(
      type,
    );
  }
}

/// @nodoc
const $ExploreEvent = _$ExploreEventTearOff();

/// @nodoc
mixin _$ExploreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String type) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String type)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Fetched value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExploreEventCopyWith<$Res> {
  factory $ExploreEventCopyWith(
          ExploreEvent value, $Res Function(ExploreEvent) then) =
      _$ExploreEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExploreEventCopyWithImpl<$Res> implements $ExploreEventCopyWith<$Res> {
  _$ExploreEventCopyWithImpl(this._value, this._then);

  final ExploreEvent _value;
  // ignore: unused_field
  final $Res Function(ExploreEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ExploreEventCopyWithImpl<$Res>
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
    return 'ExploreEvent.started()';
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
    required TResult Function(String type) fetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String type)? fetched,
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
    required TResult Function(_Fetched value) fetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ExploreEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$FetchedCopyWith<$Res> {
  factory _$FetchedCopyWith(_Fetched value, $Res Function(_Fetched) then) =
      __$FetchedCopyWithImpl<$Res>;
  $Res call({String type});
}

/// @nodoc
class __$FetchedCopyWithImpl<$Res> extends _$ExploreEventCopyWithImpl<$Res>
    implements _$FetchedCopyWith<$Res> {
  __$FetchedCopyWithImpl(_Fetched _value, $Res Function(_Fetched) _then)
      : super(_value, (v) => _then(v as _Fetched));

  @override
  _Fetched get _value => super._value as _Fetched;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_Fetched(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_Fetched implements _Fetched {
  const _$_Fetched(this.type);

  @override
  final String type;

  @override
  String toString() {
    return 'ExploreEvent.fetched(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Fetched &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$FetchedCopyWith<_Fetched> get copyWith =>
      __$FetchedCopyWithImpl<_Fetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String type) fetched,
  }) {
    return fetched(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String type)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Fetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _Fetched implements ExploreEvent {
  const factory _Fetched(String type) = _$_Fetched;

  String get type => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchedCopyWith<_Fetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ExploreStateTearOff {
  const _$ExploreStateTearOff();

  _ExploreState call(
      {required Future<List<Category>>? categories,
      required Future<List<Listing>>? listings,
      required String property}) {
    return _ExploreState(
      categories: categories,
      listings: listings,
      property: property,
    );
  }
}

/// @nodoc
const $ExploreState = _$ExploreStateTearOff();

/// @nodoc
mixin _$ExploreState {
  Future<List<Category>>? get categories => throw _privateConstructorUsedError;
  Future<List<Listing>>? get listings => throw _privateConstructorUsedError;
  String get property => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExploreStateCopyWith<ExploreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExploreStateCopyWith<$Res> {
  factory $ExploreStateCopyWith(
          ExploreState value, $Res Function(ExploreState) then) =
      _$ExploreStateCopyWithImpl<$Res>;
  $Res call(
      {Future<List<Category>>? categories,
      Future<List<Listing>>? listings,
      String property});
}

/// @nodoc
class _$ExploreStateCopyWithImpl<$Res> implements $ExploreStateCopyWith<$Res> {
  _$ExploreStateCopyWithImpl(this._value, this._then);

  final ExploreState _value;
  // ignore: unused_field
  final $Res Function(ExploreState) _then;

  @override
  $Res call({
    Object? categories = freezed,
    Object? listings = freezed,
    Object? property = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Future<List<Category>>?,
      listings: listings == freezed
          ? _value.listings
          : listings // ignore: cast_nullable_to_non_nullable
              as Future<List<Listing>>?,
      property: property == freezed
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ExploreStateCopyWith<$Res>
    implements $ExploreStateCopyWith<$Res> {
  factory _$ExploreStateCopyWith(
          _ExploreState value, $Res Function(_ExploreState) then) =
      __$ExploreStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Future<List<Category>>? categories,
      Future<List<Listing>>? listings,
      String property});
}

/// @nodoc
class __$ExploreStateCopyWithImpl<$Res> extends _$ExploreStateCopyWithImpl<$Res>
    implements _$ExploreStateCopyWith<$Res> {
  __$ExploreStateCopyWithImpl(
      _ExploreState _value, $Res Function(_ExploreState) _then)
      : super(_value, (v) => _then(v as _ExploreState));

  @override
  _ExploreState get _value => super._value as _ExploreState;

  @override
  $Res call({
    Object? categories = freezed,
    Object? listings = freezed,
    Object? property = freezed,
  }) {
    return _then(_ExploreState(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Future<List<Category>>?,
      listings: listings == freezed
          ? _value.listings
          : listings // ignore: cast_nullable_to_non_nullable
              as Future<List<Listing>>?,
      property: property == freezed
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_ExploreState implements _ExploreState {
  const _$_ExploreState(
      {required this.categories,
      required this.listings,
      required this.property});

  @override
  final Future<List<Category>>? categories;
  @override
  final Future<List<Listing>>? listings;
  @override
  final String property;

  @override
  String toString() {
    return 'ExploreState(categories: $categories, listings: $listings, property: $property)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExploreState &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.listings, listings) ||
                const DeepCollectionEquality()
                    .equals(other.listings, listings)) &&
            (identical(other.property, property) ||
                const DeepCollectionEquality()
                    .equals(other.property, property)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(listings) ^
      const DeepCollectionEquality().hash(property);

  @JsonKey(ignore: true)
  @override
  _$ExploreStateCopyWith<_ExploreState> get copyWith =>
      __$ExploreStateCopyWithImpl<_ExploreState>(this, _$identity);
}

abstract class _ExploreState implements ExploreState {
  const factory _ExploreState(
      {required Future<List<Category>>? categories,
      required Future<List<Listing>>? listings,
      required String property}) = _$_ExploreState;

  @override
  Future<List<Category>>? get categories => throw _privateConstructorUsedError;
  @override
  Future<List<Listing>>? get listings => throw _privateConstructorUsedError;
  @override
  String get property => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExploreStateCopyWith<_ExploreState> get copyWith =>
      throw _privateConstructorUsedError;
}
