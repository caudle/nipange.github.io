// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'listing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListingEventTearOff {
  const _$ListingEventTearOff();

  _Fetching fetching(String userId) {
    return _Fetching(
      userId,
    );
  }
}

/// @nodoc
const $ListingEvent = _$ListingEventTearOff();

/// @nodoc
mixin _$ListingEvent {
  String get userId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) fetching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? fetching,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetching value) fetching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetching value)? fetching,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListingEventCopyWith<ListingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingEventCopyWith<$Res> {
  factory $ListingEventCopyWith(
          ListingEvent value, $Res Function(ListingEvent) then) =
      _$ListingEventCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class _$ListingEventCopyWithImpl<$Res> implements $ListingEventCopyWith<$Res> {
  _$ListingEventCopyWithImpl(this._value, this._then);

  final ListingEvent _value;
  // ignore: unused_field
  final $Res Function(ListingEvent) _then;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FetchingCopyWith<$Res> implements $ListingEventCopyWith<$Res> {
  factory _$FetchingCopyWith(_Fetching value, $Res Function(_Fetching) then) =
      __$FetchingCopyWithImpl<$Res>;
  @override
  $Res call({String userId});
}

/// @nodoc
class __$FetchingCopyWithImpl<$Res> extends _$ListingEventCopyWithImpl<$Res>
    implements _$FetchingCopyWith<$Res> {
  __$FetchingCopyWithImpl(_Fetching _value, $Res Function(_Fetching) _then)
      : super(_value, (v) => _then(v as _Fetching));

  @override
  _Fetching get _value => super._value as _Fetching;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_Fetching(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_Fetching implements _Fetching {
  const _$_Fetching(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'ListingEvent.fetching(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Fetching &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$FetchingCopyWith<_Fetching> get copyWith =>
      __$FetchingCopyWithImpl<_Fetching>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) fetching,
  }) {
    return fetching(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? fetching,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetching value) fetching,
  }) {
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetching value)? fetching,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }
}

abstract class _Fetching implements ListingEvent {
  const factory _Fetching(String userId) = _$_Fetching;

  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FetchingCopyWith<_Fetching> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ListingStateTearOff {
  const _$ListingStateTearOff();

  _ListingState call({required Future<List<Listing>>? listings}) {
    return _ListingState(
      listings: listings,
    );
  }
}

/// @nodoc
const $ListingState = _$ListingStateTearOff();

/// @nodoc
mixin _$ListingState {
  Future<List<Listing>>? get listings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListingStateCopyWith<ListingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingStateCopyWith<$Res> {
  factory $ListingStateCopyWith(
          ListingState value, $Res Function(ListingState) then) =
      _$ListingStateCopyWithImpl<$Res>;
  $Res call({Future<List<Listing>>? listings});
}

/// @nodoc
class _$ListingStateCopyWithImpl<$Res> implements $ListingStateCopyWith<$Res> {
  _$ListingStateCopyWithImpl(this._value, this._then);

  final ListingState _value;
  // ignore: unused_field
  final $Res Function(ListingState) _then;

  @override
  $Res call({
    Object? listings = freezed,
  }) {
    return _then(_value.copyWith(
      listings: listings == freezed
          ? _value.listings
          : listings // ignore: cast_nullable_to_non_nullable
              as Future<List<Listing>>?,
    ));
  }
}

/// @nodoc
abstract class _$ListingStateCopyWith<$Res>
    implements $ListingStateCopyWith<$Res> {
  factory _$ListingStateCopyWith(
          _ListingState value, $Res Function(_ListingState) then) =
      __$ListingStateCopyWithImpl<$Res>;
  @override
  $Res call({Future<List<Listing>>? listings});
}

/// @nodoc
class __$ListingStateCopyWithImpl<$Res> extends _$ListingStateCopyWithImpl<$Res>
    implements _$ListingStateCopyWith<$Res> {
  __$ListingStateCopyWithImpl(
      _ListingState _value, $Res Function(_ListingState) _then)
      : super(_value, (v) => _then(v as _ListingState));

  @override
  _ListingState get _value => super._value as _ListingState;

  @override
  $Res call({
    Object? listings = freezed,
  }) {
    return _then(_ListingState(
      listings: listings == freezed
          ? _value.listings
          : listings // ignore: cast_nullable_to_non_nullable
              as Future<List<Listing>>?,
    ));
  }
}

/// @nodoc
class _$_ListingState implements _ListingState {
  const _$_ListingState({required this.listings});

  @override
  final Future<List<Listing>>? listings;

  @override
  String toString() {
    return 'ListingState(listings: $listings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListingState &&
            (identical(other.listings, listings) ||
                const DeepCollectionEquality()
                    .equals(other.listings, listings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listings);

  @JsonKey(ignore: true)
  @override
  _$ListingStateCopyWith<_ListingState> get copyWith =>
      __$ListingStateCopyWithImpl<_ListingState>(this, _$identity);
}

abstract class _ListingState implements ListingState {
  const factory _ListingState({required Future<List<Listing>>? listings}) =
      _$_ListingState;

  @override
  Future<List<Listing>>? get listings => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListingStateCopyWith<_ListingState> get copyWith =>
      throw _privateConstructorUsedError;
}
