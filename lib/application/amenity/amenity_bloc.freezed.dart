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

  _ElevatorChanged elevatorChanged(bool elevator) {
    return _ElevatorChanged(
      elevator,
    );
  }

  _FenceChanged fenceChanged(bool fence) {
    return _FenceChanged(
      fence,
    );
  }

  _ParkingChanged parkingChanged(bool parking) {
    return _ParkingChanged(
      parking,
    );
  }

  _ElectricFenceChanged electricFenceChanged(bool electricFence) {
    return _ElectricFenceChanged(
      electricFence,
    );
  }

  _AcChanged acChanged(bool ac) {
    return _AcChanged(
      ac,
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
    required TResult Function(bool elevator) elevatorChanged,
    required TResult Function(bool fence) fenceChanged,
    required TResult Function(bool parking) parkingChanged,
    required TResult Function(bool electricFence) electricFenceChanged,
    required TResult Function(bool ac) acChanged,
    required TResult Function() save,
    required TResult Function() next,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(bool elevator)? elevatorChanged,
    TResult Function(bool fence)? fenceChanged,
    TResult Function(bool parking)? parkingChanged,
    TResult Function(bool electricFence)? electricFenceChanged,
    TResult Function(bool ac)? acChanged,
    TResult Function()? save,
    TResult Function()? next,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_ElevatorChanged value) elevatorChanged,
    required TResult Function(_FenceChanged value) fenceChanged,
    required TResult Function(_ParkingChanged value) parkingChanged,
    required TResult Function(_ElectricFenceChanged value) electricFenceChanged,
    required TResult Function(_AcChanged value) acChanged,
    required TResult Function(_Save value) save,
    required TResult Function(_Next value) next,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_ElevatorChanged value)? elevatorChanged,
    TResult Function(_FenceChanged value)? fenceChanged,
    TResult Function(_ParkingChanged value)? parkingChanged,
    TResult Function(_ElectricFenceChanged value)? electricFenceChanged,
    TResult Function(_AcChanged value)? acChanged,
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
    required TResult Function(bool elevator) elevatorChanged,
    required TResult Function(bool fence) fenceChanged,
    required TResult Function(bool parking) parkingChanged,
    required TResult Function(bool electricFence) electricFenceChanged,
    required TResult Function(bool ac) acChanged,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return add(listing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(bool elevator)? elevatorChanged,
    TResult Function(bool fence)? fenceChanged,
    TResult Function(bool parking)? parkingChanged,
    TResult Function(bool electricFence)? electricFenceChanged,
    TResult Function(bool ac)? acChanged,
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
    required TResult Function(_ElevatorChanged value) elevatorChanged,
    required TResult Function(_FenceChanged value) fenceChanged,
    required TResult Function(_ParkingChanged value) parkingChanged,
    required TResult Function(_ElectricFenceChanged value) electricFenceChanged,
    required TResult Function(_AcChanged value) acChanged,
    required TResult Function(_Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_ElevatorChanged value)? elevatorChanged,
    TResult Function(_FenceChanged value)? fenceChanged,
    TResult Function(_ParkingChanged value)? parkingChanged,
    TResult Function(_ElectricFenceChanged value)? electricFenceChanged,
    TResult Function(_AcChanged value)? acChanged,
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
abstract class _$ElevatorChangedCopyWith<$Res> {
  factory _$ElevatorChangedCopyWith(
          _ElevatorChanged value, $Res Function(_ElevatorChanged) then) =
      __$ElevatorChangedCopyWithImpl<$Res>;
  $Res call({bool elevator});
}

/// @nodoc
class __$ElevatorChangedCopyWithImpl<$Res>
    extends _$AmenityEventCopyWithImpl<$Res>
    implements _$ElevatorChangedCopyWith<$Res> {
  __$ElevatorChangedCopyWithImpl(
      _ElevatorChanged _value, $Res Function(_ElevatorChanged) _then)
      : super(_value, (v) => _then(v as _ElevatorChanged));

  @override
  _ElevatorChanged get _value => super._value as _ElevatorChanged;

  @override
  $Res call({
    Object? elevator = freezed,
  }) {
    return _then(_ElevatorChanged(
      elevator == freezed
          ? _value.elevator
          : elevator // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_ElevatorChanged implements _ElevatorChanged {
  const _$_ElevatorChanged(this.elevator);

  @override
  final bool elevator;

  @override
  String toString() {
    return 'AmenityEvent.elevatorChanged(elevator: $elevator)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ElevatorChanged &&
            (identical(other.elevator, elevator) ||
                const DeepCollectionEquality()
                    .equals(other.elevator, elevator)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(elevator);

  @JsonKey(ignore: true)
  @override
  _$ElevatorChangedCopyWith<_ElevatorChanged> get copyWith =>
      __$ElevatorChangedCopyWithImpl<_ElevatorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(bool elevator) elevatorChanged,
    required TResult Function(bool fence) fenceChanged,
    required TResult Function(bool parking) parkingChanged,
    required TResult Function(bool electricFence) electricFenceChanged,
    required TResult Function(bool ac) acChanged,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return elevatorChanged(elevator);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(bool elevator)? elevatorChanged,
    TResult Function(bool fence)? fenceChanged,
    TResult Function(bool parking)? parkingChanged,
    TResult Function(bool electricFence)? electricFenceChanged,
    TResult Function(bool ac)? acChanged,
    TResult Function()? save,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (elevatorChanged != null) {
      return elevatorChanged(elevator);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_ElevatorChanged value) elevatorChanged,
    required TResult Function(_FenceChanged value) fenceChanged,
    required TResult Function(_ParkingChanged value) parkingChanged,
    required TResult Function(_ElectricFenceChanged value) electricFenceChanged,
    required TResult Function(_AcChanged value) acChanged,
    required TResult Function(_Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return elevatorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_ElevatorChanged value)? elevatorChanged,
    TResult Function(_FenceChanged value)? fenceChanged,
    TResult Function(_ParkingChanged value)? parkingChanged,
    TResult Function(_ElectricFenceChanged value)? electricFenceChanged,
    TResult Function(_AcChanged value)? acChanged,
    TResult Function(_Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (elevatorChanged != null) {
      return elevatorChanged(this);
    }
    return orElse();
  }
}

abstract class _ElevatorChanged implements AmenityEvent {
  const factory _ElevatorChanged(bool elevator) = _$_ElevatorChanged;

  bool get elevator => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ElevatorChangedCopyWith<_ElevatorChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FenceChangedCopyWith<$Res> {
  factory _$FenceChangedCopyWith(
          _FenceChanged value, $Res Function(_FenceChanged) then) =
      __$FenceChangedCopyWithImpl<$Res>;
  $Res call({bool fence});
}

/// @nodoc
class __$FenceChangedCopyWithImpl<$Res> extends _$AmenityEventCopyWithImpl<$Res>
    implements _$FenceChangedCopyWith<$Res> {
  __$FenceChangedCopyWithImpl(
      _FenceChanged _value, $Res Function(_FenceChanged) _then)
      : super(_value, (v) => _then(v as _FenceChanged));

  @override
  _FenceChanged get _value => super._value as _FenceChanged;

  @override
  $Res call({
    Object? fence = freezed,
  }) {
    return _then(_FenceChanged(
      fence == freezed
          ? _value.fence
          : fence // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_FenceChanged implements _FenceChanged {
  const _$_FenceChanged(this.fence);

  @override
  final bool fence;

  @override
  String toString() {
    return 'AmenityEvent.fenceChanged(fence: $fence)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FenceChanged &&
            (identical(other.fence, fence) ||
                const DeepCollectionEquality().equals(other.fence, fence)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fence);

  @JsonKey(ignore: true)
  @override
  _$FenceChangedCopyWith<_FenceChanged> get copyWith =>
      __$FenceChangedCopyWithImpl<_FenceChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(bool elevator) elevatorChanged,
    required TResult Function(bool fence) fenceChanged,
    required TResult Function(bool parking) parkingChanged,
    required TResult Function(bool electricFence) electricFenceChanged,
    required TResult Function(bool ac) acChanged,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return fenceChanged(fence);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(bool elevator)? elevatorChanged,
    TResult Function(bool fence)? fenceChanged,
    TResult Function(bool parking)? parkingChanged,
    TResult Function(bool electricFence)? electricFenceChanged,
    TResult Function(bool ac)? acChanged,
    TResult Function()? save,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (fenceChanged != null) {
      return fenceChanged(fence);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_ElevatorChanged value) elevatorChanged,
    required TResult Function(_FenceChanged value) fenceChanged,
    required TResult Function(_ParkingChanged value) parkingChanged,
    required TResult Function(_ElectricFenceChanged value) electricFenceChanged,
    required TResult Function(_AcChanged value) acChanged,
    required TResult Function(_Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return fenceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_ElevatorChanged value)? elevatorChanged,
    TResult Function(_FenceChanged value)? fenceChanged,
    TResult Function(_ParkingChanged value)? parkingChanged,
    TResult Function(_ElectricFenceChanged value)? electricFenceChanged,
    TResult Function(_AcChanged value)? acChanged,
    TResult Function(_Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (fenceChanged != null) {
      return fenceChanged(this);
    }
    return orElse();
  }
}

abstract class _FenceChanged implements AmenityEvent {
  const factory _FenceChanged(bool fence) = _$_FenceChanged;

  bool get fence => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FenceChangedCopyWith<_FenceChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ParkingChangedCopyWith<$Res> {
  factory _$ParkingChangedCopyWith(
          _ParkingChanged value, $Res Function(_ParkingChanged) then) =
      __$ParkingChangedCopyWithImpl<$Res>;
  $Res call({bool parking});
}

/// @nodoc
class __$ParkingChangedCopyWithImpl<$Res>
    extends _$AmenityEventCopyWithImpl<$Res>
    implements _$ParkingChangedCopyWith<$Res> {
  __$ParkingChangedCopyWithImpl(
      _ParkingChanged _value, $Res Function(_ParkingChanged) _then)
      : super(_value, (v) => _then(v as _ParkingChanged));

  @override
  _ParkingChanged get _value => super._value as _ParkingChanged;

  @override
  $Res call({
    Object? parking = freezed,
  }) {
    return _then(_ParkingChanged(
      parking == freezed
          ? _value.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_ParkingChanged implements _ParkingChanged {
  const _$_ParkingChanged(this.parking);

  @override
  final bool parking;

  @override
  String toString() {
    return 'AmenityEvent.parkingChanged(parking: $parking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ParkingChanged &&
            (identical(other.parking, parking) ||
                const DeepCollectionEquality().equals(other.parking, parking)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(parking);

  @JsonKey(ignore: true)
  @override
  _$ParkingChangedCopyWith<_ParkingChanged> get copyWith =>
      __$ParkingChangedCopyWithImpl<_ParkingChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(bool elevator) elevatorChanged,
    required TResult Function(bool fence) fenceChanged,
    required TResult Function(bool parking) parkingChanged,
    required TResult Function(bool electricFence) electricFenceChanged,
    required TResult Function(bool ac) acChanged,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return parkingChanged(parking);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(bool elevator)? elevatorChanged,
    TResult Function(bool fence)? fenceChanged,
    TResult Function(bool parking)? parkingChanged,
    TResult Function(bool electricFence)? electricFenceChanged,
    TResult Function(bool ac)? acChanged,
    TResult Function()? save,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (parkingChanged != null) {
      return parkingChanged(parking);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_ElevatorChanged value) elevatorChanged,
    required TResult Function(_FenceChanged value) fenceChanged,
    required TResult Function(_ParkingChanged value) parkingChanged,
    required TResult Function(_ElectricFenceChanged value) electricFenceChanged,
    required TResult Function(_AcChanged value) acChanged,
    required TResult Function(_Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return parkingChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_ElevatorChanged value)? elevatorChanged,
    TResult Function(_FenceChanged value)? fenceChanged,
    TResult Function(_ParkingChanged value)? parkingChanged,
    TResult Function(_ElectricFenceChanged value)? electricFenceChanged,
    TResult Function(_AcChanged value)? acChanged,
    TResult Function(_Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (parkingChanged != null) {
      return parkingChanged(this);
    }
    return orElse();
  }
}

abstract class _ParkingChanged implements AmenityEvent {
  const factory _ParkingChanged(bool parking) = _$_ParkingChanged;

  bool get parking => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ParkingChangedCopyWith<_ParkingChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ElectricFenceChangedCopyWith<$Res> {
  factory _$ElectricFenceChangedCopyWith(_ElectricFenceChanged value,
          $Res Function(_ElectricFenceChanged) then) =
      __$ElectricFenceChangedCopyWithImpl<$Res>;
  $Res call({bool electricFence});
}

/// @nodoc
class __$ElectricFenceChangedCopyWithImpl<$Res>
    extends _$AmenityEventCopyWithImpl<$Res>
    implements _$ElectricFenceChangedCopyWith<$Res> {
  __$ElectricFenceChangedCopyWithImpl(
      _ElectricFenceChanged _value, $Res Function(_ElectricFenceChanged) _then)
      : super(_value, (v) => _then(v as _ElectricFenceChanged));

  @override
  _ElectricFenceChanged get _value => super._value as _ElectricFenceChanged;

  @override
  $Res call({
    Object? electricFence = freezed,
  }) {
    return _then(_ElectricFenceChanged(
      electricFence == freezed
          ? _value.electricFence
          : electricFence // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_ElectricFenceChanged implements _ElectricFenceChanged {
  const _$_ElectricFenceChanged(this.electricFence);

  @override
  final bool electricFence;

  @override
  String toString() {
    return 'AmenityEvent.electricFenceChanged(electricFence: $electricFence)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ElectricFenceChanged &&
            (identical(other.electricFence, electricFence) ||
                const DeepCollectionEquality()
                    .equals(other.electricFence, electricFence)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(electricFence);

  @JsonKey(ignore: true)
  @override
  _$ElectricFenceChangedCopyWith<_ElectricFenceChanged> get copyWith =>
      __$ElectricFenceChangedCopyWithImpl<_ElectricFenceChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(bool elevator) elevatorChanged,
    required TResult Function(bool fence) fenceChanged,
    required TResult Function(bool parking) parkingChanged,
    required TResult Function(bool electricFence) electricFenceChanged,
    required TResult Function(bool ac) acChanged,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return electricFenceChanged(electricFence);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(bool elevator)? elevatorChanged,
    TResult Function(bool fence)? fenceChanged,
    TResult Function(bool parking)? parkingChanged,
    TResult Function(bool electricFence)? electricFenceChanged,
    TResult Function(bool ac)? acChanged,
    TResult Function()? save,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (electricFenceChanged != null) {
      return electricFenceChanged(electricFence);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_ElevatorChanged value) elevatorChanged,
    required TResult Function(_FenceChanged value) fenceChanged,
    required TResult Function(_ParkingChanged value) parkingChanged,
    required TResult Function(_ElectricFenceChanged value) electricFenceChanged,
    required TResult Function(_AcChanged value) acChanged,
    required TResult Function(_Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return electricFenceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_ElevatorChanged value)? elevatorChanged,
    TResult Function(_FenceChanged value)? fenceChanged,
    TResult Function(_ParkingChanged value)? parkingChanged,
    TResult Function(_ElectricFenceChanged value)? electricFenceChanged,
    TResult Function(_AcChanged value)? acChanged,
    TResult Function(_Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (electricFenceChanged != null) {
      return electricFenceChanged(this);
    }
    return orElse();
  }
}

abstract class _ElectricFenceChanged implements AmenityEvent {
  const factory _ElectricFenceChanged(bool electricFence) =
      _$_ElectricFenceChanged;

  bool get electricFence => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ElectricFenceChangedCopyWith<_ElectricFenceChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AcChangedCopyWith<$Res> {
  factory _$AcChangedCopyWith(
          _AcChanged value, $Res Function(_AcChanged) then) =
      __$AcChangedCopyWithImpl<$Res>;
  $Res call({bool ac});
}

/// @nodoc
class __$AcChangedCopyWithImpl<$Res> extends _$AmenityEventCopyWithImpl<$Res>
    implements _$AcChangedCopyWith<$Res> {
  __$AcChangedCopyWithImpl(_AcChanged _value, $Res Function(_AcChanged) _then)
      : super(_value, (v) => _then(v as _AcChanged));

  @override
  _AcChanged get _value => super._value as _AcChanged;

  @override
  $Res call({
    Object? ac = freezed,
  }) {
    return _then(_AcChanged(
      ac == freezed
          ? _value.ac
          : ac // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_AcChanged implements _AcChanged {
  const _$_AcChanged(this.ac);

  @override
  final bool ac;

  @override
  String toString() {
    return 'AmenityEvent.acChanged(ac: $ac)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AcChanged &&
            (identical(other.ac, ac) ||
                const DeepCollectionEquality().equals(other.ac, ac)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ac);

  @JsonKey(ignore: true)
  @override
  _$AcChangedCopyWith<_AcChanged> get copyWith =>
      __$AcChangedCopyWithImpl<_AcChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(bool elevator) elevatorChanged,
    required TResult Function(bool fence) fenceChanged,
    required TResult Function(bool parking) parkingChanged,
    required TResult Function(bool electricFence) electricFenceChanged,
    required TResult Function(bool ac) acChanged,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return acChanged(ac);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(bool elevator)? elevatorChanged,
    TResult Function(bool fence)? fenceChanged,
    TResult Function(bool parking)? parkingChanged,
    TResult Function(bool electricFence)? electricFenceChanged,
    TResult Function(bool ac)? acChanged,
    TResult Function()? save,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (acChanged != null) {
      return acChanged(ac);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_ElevatorChanged value) elevatorChanged,
    required TResult Function(_FenceChanged value) fenceChanged,
    required TResult Function(_ParkingChanged value) parkingChanged,
    required TResult Function(_ElectricFenceChanged value) electricFenceChanged,
    required TResult Function(_AcChanged value) acChanged,
    required TResult Function(_Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return acChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_ElevatorChanged value)? elevatorChanged,
    TResult Function(_FenceChanged value)? fenceChanged,
    TResult Function(_ParkingChanged value)? parkingChanged,
    TResult Function(_ElectricFenceChanged value)? electricFenceChanged,
    TResult Function(_AcChanged value)? acChanged,
    TResult Function(_Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (acChanged != null) {
      return acChanged(this);
    }
    return orElse();
  }
}

abstract class _AcChanged implements AmenityEvent {
  const factory _AcChanged(bool ac) = _$_AcChanged;

  bool get ac => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AcChangedCopyWith<_AcChanged> get copyWith =>
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
    required TResult Function(bool elevator) elevatorChanged,
    required TResult Function(bool fence) fenceChanged,
    required TResult Function(bool parking) parkingChanged,
    required TResult Function(bool electricFence) electricFenceChanged,
    required TResult Function(bool ac) acChanged,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(bool elevator)? elevatorChanged,
    TResult Function(bool fence)? fenceChanged,
    TResult Function(bool parking)? parkingChanged,
    TResult Function(bool electricFence)? electricFenceChanged,
    TResult Function(bool ac)? acChanged,
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
    required TResult Function(_ElevatorChanged value) elevatorChanged,
    required TResult Function(_FenceChanged value) fenceChanged,
    required TResult Function(_ParkingChanged value) parkingChanged,
    required TResult Function(_ElectricFenceChanged value) electricFenceChanged,
    required TResult Function(_AcChanged value) acChanged,
    required TResult Function(_Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_ElevatorChanged value)? elevatorChanged,
    TResult Function(_FenceChanged value)? fenceChanged,
    TResult Function(_ParkingChanged value)? parkingChanged,
    TResult Function(_ElectricFenceChanged value)? electricFenceChanged,
    TResult Function(_AcChanged value)? acChanged,
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
    required TResult Function(bool elevator) elevatorChanged,
    required TResult Function(bool fence) fenceChanged,
    required TResult Function(bool parking) parkingChanged,
    required TResult Function(bool electricFence) electricFenceChanged,
    required TResult Function(bool ac) acChanged,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return next();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(bool elevator)? elevatorChanged,
    TResult Function(bool fence)? fenceChanged,
    TResult Function(bool parking)? parkingChanged,
    TResult Function(bool electricFence)? electricFenceChanged,
    TResult Function(bool ac)? acChanged,
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
    required TResult Function(_ElevatorChanged value) elevatorChanged,
    required TResult Function(_FenceChanged value) fenceChanged,
    required TResult Function(_ParkingChanged value) parkingChanged,
    required TResult Function(_ElectricFenceChanged value) electricFenceChanged,
    required TResult Function(_AcChanged value) acChanged,
    required TResult Function(_Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return next(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_ElevatorChanged value)? elevatorChanged,
    TResult Function(_FenceChanged value)? fenceChanged,
    TResult Function(_ParkingChanged value)? parkingChanged,
    TResult Function(_ElectricFenceChanged value)? electricFenceChanged,
    TResult Function(_AcChanged value)? acChanged,
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
      {required bool elevator,
      required bool parking,
      required bool electricFence,
      required bool fence,
      required bool ac,
      double? complete,
      List<String>? amenities,
      required bool isSubmitting,
      required bool isSuccess,
      required bool saved,
      required String failureMessage,
      required Listing listing}) {
    return _AmenityState(
      elevator: elevator,
      parking: parking,
      electricFence: electricFence,
      fence: fence,
      ac: ac,
      complete: complete,
      amenities: amenities,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      saved: saved,
      failureMessage: failureMessage,
      listing: listing,
    );
  }
}

/// @nodoc
const $AmenityState = _$AmenityStateTearOff();

/// @nodoc
mixin _$AmenityState {
  bool get elevator => throw _privateConstructorUsedError;
  bool get parking => throw _privateConstructorUsedError;
  bool get electricFence => throw _privateConstructorUsedError;
  bool get fence => throw _privateConstructorUsedError;
  bool get ac => throw _privateConstructorUsedError;
  double? get complete => throw _privateConstructorUsedError;
  List<String>? get amenities => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get saved => throw _privateConstructorUsedError;
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
      {bool elevator,
      bool parking,
      bool electricFence,
      bool fence,
      bool ac,
      double? complete,
      List<String>? amenities,
      bool isSubmitting,
      bool isSuccess,
      bool saved,
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
    Object? elevator = freezed,
    Object? parking = freezed,
    Object? electricFence = freezed,
    Object? fence = freezed,
    Object? ac = freezed,
    Object? complete = freezed,
    Object? amenities = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
    Object? saved = freezed,
    Object? failureMessage = freezed,
    Object? listing = freezed,
  }) {
    return _then(_value.copyWith(
      elevator: elevator == freezed
          ? _value.elevator
          : elevator // ignore: cast_nullable_to_non_nullable
              as bool,
      parking: parking == freezed
          ? _value.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as bool,
      electricFence: electricFence == freezed
          ? _value.electricFence
          : electricFence // ignore: cast_nullable_to_non_nullable
              as bool,
      fence: fence == freezed
          ? _value.fence
          : fence // ignore: cast_nullable_to_non_nullable
              as bool,
      ac: ac == freezed
          ? _value.ac
          : ac // ignore: cast_nullable_to_non_nullable
              as bool,
      complete: complete == freezed
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as double?,
      amenities: amenities == freezed
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      {bool elevator,
      bool parking,
      bool electricFence,
      bool fence,
      bool ac,
      double? complete,
      List<String>? amenities,
      bool isSubmitting,
      bool isSuccess,
      bool saved,
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
    Object? elevator = freezed,
    Object? parking = freezed,
    Object? electricFence = freezed,
    Object? fence = freezed,
    Object? ac = freezed,
    Object? complete = freezed,
    Object? amenities = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
    Object? saved = freezed,
    Object? failureMessage = freezed,
    Object? listing = freezed,
  }) {
    return _then(_AmenityState(
      elevator: elevator == freezed
          ? _value.elevator
          : elevator // ignore: cast_nullable_to_non_nullable
              as bool,
      parking: parking == freezed
          ? _value.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as bool,
      electricFence: electricFence == freezed
          ? _value.electricFence
          : electricFence // ignore: cast_nullable_to_non_nullable
              as bool,
      fence: fence == freezed
          ? _value.fence
          : fence // ignore: cast_nullable_to_non_nullable
              as bool,
      ac: ac == freezed
          ? _value.ac
          : ac // ignore: cast_nullable_to_non_nullable
              as bool,
      complete: complete == freezed
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as double?,
      amenities: amenities == freezed
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      {required this.elevator,
      required this.parking,
      required this.electricFence,
      required this.fence,
      required this.ac,
      this.complete,
      this.amenities,
      required this.isSubmitting,
      required this.isSuccess,
      required this.saved,
      required this.failureMessage,
      required this.listing});

  @override
  final bool elevator;
  @override
  final bool parking;
  @override
  final bool electricFence;
  @override
  final bool fence;
  @override
  final bool ac;
  @override
  final double? complete;
  @override
  final List<String>? amenities;
  @override
  final bool isSubmitting;
  @override
  final bool isSuccess;
  @override
  final bool saved;
  @override
  final String failureMessage;
  @override
  final Listing listing;

  @override
  String toString() {
    return 'AmenityState(elevator: $elevator, parking: $parking, electricFence: $electricFence, fence: $fence, ac: $ac, complete: $complete, amenities: $amenities, isSubmitting: $isSubmitting, isSuccess: $isSuccess, saved: $saved, failureMessage: $failureMessage, listing: $listing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AmenityState &&
            (identical(other.elevator, elevator) ||
                const DeepCollectionEquality()
                    .equals(other.elevator, elevator)) &&
            (identical(other.parking, parking) ||
                const DeepCollectionEquality()
                    .equals(other.parking, parking)) &&
            (identical(other.electricFence, electricFence) ||
                const DeepCollectionEquality()
                    .equals(other.electricFence, electricFence)) &&
            (identical(other.fence, fence) ||
                const DeepCollectionEquality().equals(other.fence, fence)) &&
            (identical(other.ac, ac) ||
                const DeepCollectionEquality().equals(other.ac, ac)) &&
            (identical(other.complete, complete) ||
                const DeepCollectionEquality()
                    .equals(other.complete, complete)) &&
            (identical(other.amenities, amenities) ||
                const DeepCollectionEquality()
                    .equals(other.amenities, amenities)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.saved, saved) ||
                const DeepCollectionEquality().equals(other.saved, saved)) &&
            (identical(other.failureMessage, failureMessage) ||
                const DeepCollectionEquality()
                    .equals(other.failureMessage, failureMessage)) &&
            (identical(other.listing, listing) ||
                const DeepCollectionEquality().equals(other.listing, listing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(elevator) ^
      const DeepCollectionEquality().hash(parking) ^
      const DeepCollectionEquality().hash(electricFence) ^
      const DeepCollectionEquality().hash(fence) ^
      const DeepCollectionEquality().hash(ac) ^
      const DeepCollectionEquality().hash(complete) ^
      const DeepCollectionEquality().hash(amenities) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(saved) ^
      const DeepCollectionEquality().hash(failureMessage) ^
      const DeepCollectionEquality().hash(listing);

  @JsonKey(ignore: true)
  @override
  _$AmenityStateCopyWith<_AmenityState> get copyWith =>
      __$AmenityStateCopyWithImpl<_AmenityState>(this, _$identity);
}

abstract class _AmenityState implements AmenityState {
  const factory _AmenityState(
      {required bool elevator,
      required bool parking,
      required bool electricFence,
      required bool fence,
      required bool ac,
      double? complete,
      List<String>? amenities,
      required bool isSubmitting,
      required bool isSuccess,
      required bool saved,
      required String failureMessage,
      required Listing listing}) = _$_AmenityState;

  @override
  bool get elevator => throw _privateConstructorUsedError;
  @override
  bool get parking => throw _privateConstructorUsedError;
  @override
  bool get electricFence => throw _privateConstructorUsedError;
  @override
  bool get fence => throw _privateConstructorUsedError;
  @override
  bool get ac => throw _privateConstructorUsedError;
  @override
  double? get complete => throw _privateConstructorUsedError;
  @override
  List<String>? get amenities => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get isSuccess => throw _privateConstructorUsedError;
  @override
  bool get saved => throw _privateConstructorUsedError;
  @override
  String get failureMessage => throw _privateConstructorUsedError;
  @override
  Listing get listing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AmenityStateCopyWith<_AmenityState> get copyWith =>
      throw _privateConstructorUsedError;
}
