// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_listing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddListingEventTearOff {
  const _$AddListingEventTearOff();

  _Add add(Listing listing) {
    return _Add(
      listing,
    );
  }
}

/// @nodoc
const $AddListingEvent = _$AddListingEventTearOff();

/// @nodoc
mixin _$AddListingEvent {
  Listing get listing => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddListingEventCopyWith<AddListingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddListingEventCopyWith<$Res> {
  factory $AddListingEventCopyWith(
          AddListingEvent value, $Res Function(AddListingEvent) then) =
      _$AddListingEventCopyWithImpl<$Res>;
  $Res call({Listing listing});
}

/// @nodoc
class _$AddListingEventCopyWithImpl<$Res>
    implements $AddListingEventCopyWith<$Res> {
  _$AddListingEventCopyWithImpl(this._value, this._then);

  final AddListingEvent _value;
  // ignore: unused_field
  final $Res Function(AddListingEvent) _then;

  @override
  $Res call({
    Object? listing = freezed,
  }) {
    return _then(_value.copyWith(
      listing: listing == freezed
          ? _value.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as Listing,
    ));
  }
}

/// @nodoc
abstract class _$AddCopyWith<$Res> implements $AddListingEventCopyWith<$Res> {
  factory _$AddCopyWith(_Add value, $Res Function(_Add) then) =
      __$AddCopyWithImpl<$Res>;
  @override
  $Res call({Listing listing});
}

/// @nodoc
class __$AddCopyWithImpl<$Res> extends _$AddListingEventCopyWithImpl<$Res>
    implements _$AddCopyWith<$Res> {
  __$AddCopyWithImpl(_Add _value, $Res Function(_Add) _then)
      : super(_value, (v) => _then(v as _Add));

  @override
  _Add get _value => super._value as _Add;

  @override
  $Res call({
    Object? listing = freezed,
  }) {
    return _then(_Add(
      listing == freezed
          ? _value.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as Listing,
    ));
  }
}

/// @nodoc
class _$_Add implements _Add {
  const _$_Add(this.listing);

  @override
  final Listing listing;

  @override
  String toString() {
    return 'AddListingEvent.add(listing: $listing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Add &&
            (identical(other.listing, listing) ||
                const DeepCollectionEquality().equals(other.listing, listing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listing);

  @JsonKey(ignore: true)
  @override
  _$AddCopyWith<_Add> get copyWith =>
      __$AddCopyWithImpl<_Add>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
  }) {
    return add(listing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(listing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements AddListingEvent {
  const factory _Add(Listing listing) = _$_Add;

  @override
  Listing get listing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddCopyWith<_Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddListingStateTearOff {
  const _$AddListingStateTearOff();

  _AddListingState call({required Listing listing}) {
    return _AddListingState(
      listing: listing,
    );
  }
}

/// @nodoc
const $AddListingState = _$AddListingStateTearOff();

/// @nodoc
mixin _$AddListingState {
  Listing get listing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddListingStateCopyWith<AddListingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddListingStateCopyWith<$Res> {
  factory $AddListingStateCopyWith(
          AddListingState value, $Res Function(AddListingState) then) =
      _$AddListingStateCopyWithImpl<$Res>;
  $Res call({Listing listing});
}

/// @nodoc
class _$AddListingStateCopyWithImpl<$Res>
    implements $AddListingStateCopyWith<$Res> {
  _$AddListingStateCopyWithImpl(this._value, this._then);

  final AddListingState _value;
  // ignore: unused_field
  final $Res Function(AddListingState) _then;

  @override
  $Res call({
    Object? listing = freezed,
  }) {
    return _then(_value.copyWith(
      listing: listing == freezed
          ? _value.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as Listing,
    ));
  }
}

/// @nodoc
abstract class _$AddListingStateCopyWith<$Res>
    implements $AddListingStateCopyWith<$Res> {
  factory _$AddListingStateCopyWith(
          _AddListingState value, $Res Function(_AddListingState) then) =
      __$AddListingStateCopyWithImpl<$Res>;
  @override
  $Res call({Listing listing});
}

/// @nodoc
class __$AddListingStateCopyWithImpl<$Res>
    extends _$AddListingStateCopyWithImpl<$Res>
    implements _$AddListingStateCopyWith<$Res> {
  __$AddListingStateCopyWithImpl(
      _AddListingState _value, $Res Function(_AddListingState) _then)
      : super(_value, (v) => _then(v as _AddListingState));

  @override
  _AddListingState get _value => super._value as _AddListingState;

  @override
  $Res call({
    Object? listing = freezed,
  }) {
    return _then(_AddListingState(
      listing: listing == freezed
          ? _value.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as Listing,
    ));
  }
}

/// @nodoc
class _$_AddListingState implements _AddListingState {
  const _$_AddListingState({required this.listing});

  @override
  final Listing listing;

  @override
  String toString() {
    return 'AddListingState(listing: $listing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddListingState &&
            (identical(other.listing, listing) ||
                const DeepCollectionEquality().equals(other.listing, listing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listing);

  @JsonKey(ignore: true)
  @override
  _$AddListingStateCopyWith<_AddListingState> get copyWith =>
      __$AddListingStateCopyWithImpl<_AddListingState>(this, _$identity);
}

abstract class _AddListingState implements AddListingState {
  const factory _AddListingState({required Listing listing}) =
      _$_AddListingState;

  @override
  Listing get listing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddListingStateCopyWith<_AddListingState> get copyWith =>
      throw _privateConstructorUsedError;
}
