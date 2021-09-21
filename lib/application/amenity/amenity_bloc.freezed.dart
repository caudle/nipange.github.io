// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'amenity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AmenityEventTearOff {
  const _$AmenityEventTearOff();

  _Add add(Listing listing) {
    return _Add(
      listing,
    );
  }

  _AmenityAdded amenityAdded(String amenity) {
    return _AmenityAdded(
      amenity,
    );
  }

  _AmenityDeleted amenityDeleted(String amenity) {
    return _AmenityDeleted(
      amenity,
    );
  }

  _Save save() {
    return const _Save();
  }

  _Next next() {
    return const _Next();
  }
}

/// @nodoc
const $AmenityEvent = _$AmenityEventTearOff();

/// @nodoc
mixin _$AmenityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String amenity) amenityAdded,
    required TResult Function(String amenity) amenityDeleted,
    required TResult Function() save,
    required TResult Function() next,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String amenity)? amenityAdded,
    TResult Function(String amenity)? amenityDeleted,
    TResult Function()? save,
    TResult Function()? next,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_AmenityAdded value) amenityAdded,
    required TResult Function(_AmenityDeleted value) amenityDeleted,
    required TResult Function(_Save value) save,
    required TResult Function(_Next value) next,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_AmenityAdded value)? amenityAdded,
    TResult Function(_AmenityDeleted value)? amenityDeleted,
    TResult Function(_Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmenityEventCopyWith<$Res> {
  factory $AmenityEventCopyWith(
          AmenityEvent value, $Res Function(AmenityEvent) then) =
      _$AmenityEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AmenityEventCopyWithImpl<$Res> implements $AmenityEventCopyWith<$Res> {
  _$AmenityEventCopyWithImpl(this._value, this._then);

  final AmenityEvent _value;
  // ignore: unused_field
  final $Res Function(AmenityEvent) _then;
}

/// @nodoc
abstract class _$AddCopyWith<$Res> {
  factory _$AddCopyWith(_Add value, $Res Function(_Add) then) =
      __$AddCopyWithImpl<$Res>;
  $Res call({Listing listing});
}

/// @nodoc
class __$AddCopyWithImpl<$Res> extends _$AmenityEventCopyWithImpl<$Res>
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
    return 'AmenityEvent.add(listing: $listing)';
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
    required TResult Function(String amenity) amenityAdded,
    required TResult Function(String amenity) amenityDeleted,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return add(listing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String amenity)? amenityAdded,
    TResult Function(String amenity)? amenityDeleted,
    TResult Function()? save,
    TResult Function()? next,
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
    required TResult Function(_AmenityAdded value) amenityAdded,
    required TResult Function(_AmenityDeleted value) amenityDeleted,
    required TResult Function(_Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_AmenityAdded value)? amenityAdded,
    TResult Function(_AmenityDeleted value)? amenityDeleted,
    TResult Function(_Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements AmenityEvent {
  const factory _Add(Listing listing) = _$_Add;

  Listing get listing => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddCopyWith<_Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AmenityAddedCopyWith<$Res> {
  factory _$AmenityAddedCopyWith(
          _AmenityAdded value, $Res Function(_AmenityAdded) then) =
      __$AmenityAddedCopyWithImpl<$Res>;
  $Res call({String amenity});
}

/// @nodoc
class __$AmenityAddedCopyWithImpl<$Res> extends _$AmenityEventCopyWithImpl<$Res>
    implements _$AmenityAddedCopyWith<$Res> {
  __$AmenityAddedCopyWithImpl(
      _AmenityAdded _value, $Res Function(_AmenityAdded) _then)
      : super(_value, (v) => _then(v as _AmenityAdded));

  @override
  _AmenityAdded get _value => super._value as _AmenityAdded;

  @override
  $Res call({
    Object? amenity = freezed,
  }) {
    return _then(_AmenityAdded(
      amenity == freezed
          ? _value.amenity
          : amenity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_AmenityAdded implements _AmenityAdded {
  const _$_AmenityAdded(this.amenity);

  @override
  final String amenity;

  @override
  String toString() {
    return 'AmenityEvent.amenityAdded(amenity: $amenity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AmenityAdded &&
            (identical(other.amenity, amenity) ||
                const DeepCollectionEquality().equals(other.amenity, amenity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amenity);

  @JsonKey(ignore: true)
  @override
  _$AmenityAddedCopyWith<_AmenityAdded> get copyWith =>
      __$AmenityAddedCopyWithImpl<_AmenityAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String amenity) amenityAdded,
    required TResult Function(String amenity) amenityDeleted,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return amenityAdded(amenity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String amenity)? amenityAdded,
    TResult Function(String amenity)? amenityDeleted,
    TResult Function()? save,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (amenityAdded != null) {
      return amenityAdded(amenity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_AmenityAdded value) amenityAdded,
    required TResult Function(_AmenityDeleted value) amenityDeleted,
    required TResult Function(_Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return amenityAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_AmenityAdded value)? amenityAdded,
    TResult Function(_AmenityDeleted value)? amenityDeleted,
    TResult Function(_Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (amenityAdded != null) {
      return amenityAdded(this);
    }
    return orElse();
  }
}

abstract class _AmenityAdded implements AmenityEvent {
  const factory _AmenityAdded(String amenity) = _$_AmenityAdded;

  String get amenity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AmenityAddedCopyWith<_AmenityAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AmenityDeletedCopyWith<$Res> {
  factory _$AmenityDeletedCopyWith(
          _AmenityDeleted value, $Res Function(_AmenityDeleted) then) =
      __$AmenityDeletedCopyWithImpl<$Res>;
  $Res call({String amenity});
}

/// @nodoc
class __$AmenityDeletedCopyWithImpl<$Res>
    extends _$AmenityEventCopyWithImpl<$Res>
    implements _$AmenityDeletedCopyWith<$Res> {
  __$AmenityDeletedCopyWithImpl(
      _AmenityDeleted _value, $Res Function(_AmenityDeleted) _then)
      : super(_value, (v) => _then(v as _AmenityDeleted));

  @override
  _AmenityDeleted get _value => super._value as _AmenityDeleted;

  @override
  $Res call({
    Object? amenity = freezed,
  }) {
    return _then(_AmenityDeleted(
      amenity == freezed
          ? _value.amenity
          : amenity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_AmenityDeleted implements _AmenityDeleted {
  const _$_AmenityDeleted(this.amenity);

  @override
  final String amenity;

  @override
  String toString() {
    return 'AmenityEvent.amenityDeleted(amenity: $amenity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AmenityDeleted &&
            (identical(other.amenity, amenity) ||
                const DeepCollectionEquality().equals(other.amenity, amenity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amenity);

  @JsonKey(ignore: true)
  @override
  _$AmenityDeletedCopyWith<_AmenityDeleted> get copyWith =>
      __$AmenityDeletedCopyWithImpl<_AmenityDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String amenity) amenityAdded,
    required TResult Function(String amenity) amenityDeleted,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return amenityDeleted(amenity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String amenity)? amenityAdded,
    TResult Function(String amenity)? amenityDeleted,
    TResult Function()? save,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (amenityDeleted != null) {
      return amenityDeleted(amenity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_AmenityAdded value) amenityAdded,
    required TResult Function(_AmenityDeleted value) amenityDeleted,
    required TResult Function(_Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return amenityDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_AmenityAdded value)? amenityAdded,
    TResult Function(_AmenityDeleted value)? amenityDeleted,
    TResult Function(_Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (amenityDeleted != null) {
      return amenityDeleted(this);
    }
    return orElse();
  }
}

abstract class _AmenityDeleted implements AmenityEvent {
  const factory _AmenityDeleted(String amenity) = _$_AmenityDeleted;

  String get amenity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AmenityDeletedCopyWith<_AmenityDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SaveCopyWith<$Res> {
  factory _$SaveCopyWith(_Save value, $Res Function(_Save) then) =
      __$SaveCopyWithImpl<$Res>;
}

/// @nodoc
class __$SaveCopyWithImpl<$Res> extends _$AmenityEventCopyWithImpl<$Res>
    implements _$SaveCopyWith<$Res> {
  __$SaveCopyWithImpl(_Save _value, $Res Function(_Save) _then)
      : super(_value, (v) => _then(v as _Save));

  @override
  _Save get _value => super._value as _Save;
}

/// @nodoc
class _$_Save implements _Save {
  const _$_Save();

  @override
  String toString() {
    return 'AmenityEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Save);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String amenity) amenityAdded,
    required TResult Function(String amenity) amenityDeleted,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String amenity)? amenityAdded,
    TResult Function(String amenity)? amenityDeleted,
    TResult Function()? save,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_AmenityAdded value) amenityAdded,
    required TResult Function(_AmenityDeleted value) amenityDeleted,
    required TResult Function(_Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_AmenityAdded value)? amenityAdded,
    TResult Function(_AmenityDeleted value)? amenityDeleted,
    TResult Function(_Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements AmenityEvent {
  const factory _Save() = _$_Save;
}

/// @nodoc
abstract class _$NextCopyWith<$Res> {
  factory _$NextCopyWith(_Next value, $Res Function(_Next) then) =
      __$NextCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextCopyWithImpl<$Res> extends _$AmenityEventCopyWithImpl<$Res>
    implements _$NextCopyWith<$Res> {
  __$NextCopyWithImpl(_Next _value, $Res Function(_Next) _then)
      : super(_value, (v) => _then(v as _Next));

  @override
  _Next get _value => super._value as _Next;
}

/// @nodoc
class _$_Next implements _Next {
  const _$_Next();

  @override
  String toString() {
    return 'AmenityEvent.next()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Next);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String amenity) amenityAdded,
    required TResult Function(String amenity) amenityDeleted,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return next();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String amenity)? amenityAdded,
    TResult Function(String amenity)? amenityDeleted,
    TResult Function()? save,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_AmenityAdded value) amenityAdded,
    required TResult Function(_AmenityDeleted value) amenityDeleted,
    required TResult Function(_Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return next(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_AmenityAdded value)? amenityAdded,
    TResult Function(_AmenityDeleted value)? amenityDeleted,
    TResult Function(_Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(this);
    }
    return orElse();
  }
}

abstract class _Next implements AmenityEvent {
  const factory _Next() = _$_Next;
}

/// @nodoc
class _$AmenityStateTearOff {
  const _$AmenityStateTearOff();

  _AmenityState call(
      {required List<String> amenities,
      Future<List<String>>? amenitiesFuture,
      required bool isSubmitting,
      required bool isSuccess,
      required bool saved,
      required bool isedited,
      required String failureMessage,
      required Listing listing}) {
    return _AmenityState(
      amenities: amenities,
      amenitiesFuture: amenitiesFuture,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      saved: saved,
      isedited: isedited,
      failureMessage: failureMessage,
      listing: listing,
    );
  }
}

/// @nodoc
const $AmenityState = _$AmenityStateTearOff();

/// @nodoc
mixin _$AmenityState {
  List<String> get amenities => throw _privateConstructorUsedError;
  Future<List<String>>? get amenitiesFuture =>
      throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get saved => throw _privateConstructorUsedError;
  bool get isedited => throw _privateConstructorUsedError;
  String get failureMessage => throw _privateConstructorUsedError;
  Listing get listing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AmenityStateCopyWith<AmenityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmenityStateCopyWith<$Res> {
  factory $AmenityStateCopyWith(
          AmenityState value, $Res Function(AmenityState) then) =
      _$AmenityStateCopyWithImpl<$Res>;
  $Res call(
      {List<String> amenities,
      Future<List<String>>? amenitiesFuture,
      bool isSubmitting,
      bool isSuccess,
      bool saved,
      bool isedited,
      String failureMessage,
      Listing listing});
}

/// @nodoc
class _$AmenityStateCopyWithImpl<$Res> implements $AmenityStateCopyWith<$Res> {
  _$AmenityStateCopyWithImpl(this._value, this._then);

  final AmenityState _value;
  // ignore: unused_field
  final $Res Function(AmenityState) _then;

  @override
  $Res call({
    Object? amenities = freezed,
    Object? amenitiesFuture = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
    Object? saved = freezed,
    Object? isedited = freezed,
    Object? failureMessage = freezed,
    Object? listing = freezed,
  }) {
    return _then(_value.copyWith(
      amenities: amenities == freezed
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      amenitiesFuture: amenitiesFuture == freezed
          ? _value.amenitiesFuture
          : amenitiesFuture // ignore: cast_nullable_to_non_nullable
              as Future<List<String>>?,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
      isedited: isedited == freezed
          ? _value.isedited
          : isedited // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: failureMessage == freezed
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
      listing: listing == freezed
          ? _value.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as Listing,
    ));
  }
}

/// @nodoc
abstract class _$AmenityStateCopyWith<$Res>
    implements $AmenityStateCopyWith<$Res> {
  factory _$AmenityStateCopyWith(
          _AmenityState value, $Res Function(_AmenityState) then) =
      __$AmenityStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> amenities,
      Future<List<String>>? amenitiesFuture,
      bool isSubmitting,
      bool isSuccess,
      bool saved,
      bool isedited,
      String failureMessage,
      Listing listing});
}

/// @nodoc
class __$AmenityStateCopyWithImpl<$Res> extends _$AmenityStateCopyWithImpl<$Res>
    implements _$AmenityStateCopyWith<$Res> {
  __$AmenityStateCopyWithImpl(
      _AmenityState _value, $Res Function(_AmenityState) _then)
      : super(_value, (v) => _then(v as _AmenityState));

  @override
  _AmenityState get _value => super._value as _AmenityState;

  @override
  $Res call({
    Object? amenities = freezed,
    Object? amenitiesFuture = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
    Object? saved = freezed,
    Object? isedited = freezed,
    Object? failureMessage = freezed,
    Object? listing = freezed,
  }) {
    return _then(_AmenityState(
      amenities: amenities == freezed
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      amenitiesFuture: amenitiesFuture == freezed
          ? _value.amenitiesFuture
          : amenitiesFuture // ignore: cast_nullable_to_non_nullable
              as Future<List<String>>?,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
      isedited: isedited == freezed
          ? _value.isedited
          : isedited // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: failureMessage == freezed
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
      listing: listing == freezed
          ? _value.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as Listing,
    ));
  }
}

/// @nodoc
class _$_AmenityState implements _AmenityState {
  const _$_AmenityState(
      {required this.amenities,
      this.amenitiesFuture,
      required this.isSubmitting,
      required this.isSuccess,
      required this.saved,
      required this.isedited,
      required this.failureMessage,
      required this.listing});

  @override
  final List<String> amenities;
  @override
  final Future<List<String>>? amenitiesFuture;
  @override
  final bool isSubmitting;
  @override
  final bool isSuccess;
  @override
  final bool saved;
  @override
  final bool isedited;
  @override
  final String failureMessage;
  @override
  final Listing listing;

  @override
  String toString() {
    return 'AmenityState(amenities: $amenities, amenitiesFuture: $amenitiesFuture, isSubmitting: $isSubmitting, isSuccess: $isSuccess, saved: $saved, isedited: $isedited, failureMessage: $failureMessage, listing: $listing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AmenityState &&
            (identical(other.amenities, amenities) ||
                const DeepCollectionEquality()
                    .equals(other.amenities, amenities)) &&
            (identical(other.amenitiesFuture, amenitiesFuture) ||
                const DeepCollectionEquality()
                    .equals(other.amenitiesFuture, amenitiesFuture)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.saved, saved) ||
                const DeepCollectionEquality().equals(other.saved, saved)) &&
            (identical(other.isedited, isedited) ||
                const DeepCollectionEquality()
                    .equals(other.isedited, isedited)) &&
            (identical(other.failureMessage, failureMessage) ||
                const DeepCollectionEquality()
                    .equals(other.failureMessage, failureMessage)) &&
            (identical(other.listing, listing) ||
                const DeepCollectionEquality().equals(other.listing, listing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amenities) ^
      const DeepCollectionEquality().hash(amenitiesFuture) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(saved) ^
      const DeepCollectionEquality().hash(isedited) ^
      const DeepCollectionEquality().hash(failureMessage) ^
      const DeepCollectionEquality().hash(listing);

  @JsonKey(ignore: true)
  @override
  _$AmenityStateCopyWith<_AmenityState> get copyWith =>
      __$AmenityStateCopyWithImpl<_AmenityState>(this, _$identity);
}

abstract class _AmenityState implements AmenityState {
  const factory _AmenityState(
      {required List<String> amenities,
      Future<List<String>>? amenitiesFuture,
      required bool isSubmitting,
      required bool isSuccess,
      required bool saved,
      required bool isedited,
      required String failureMessage,
      required Listing listing}) = _$_AmenityState;

  @override
  List<String> get amenities => throw _privateConstructorUsedError;
  @override
  Future<List<String>>? get amenitiesFuture =>
      throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get isSuccess => throw _privateConstructorUsedError;
  @override
  bool get saved => throw _privateConstructorUsedError;
  @override
  bool get isedited => throw _privateConstructorUsedError;
  @override
  String get failureMessage => throw _privateConstructorUsedError;
  @override
  Listing get listing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AmenityStateCopyWith<_AmenityState> get copyWith =>
      throw _privateConstructorUsedError;
}
