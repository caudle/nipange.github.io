// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'property_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PropertyEventTearOff {
  const _$PropertyEventTearOff();

  _Add add(Listing listing) {
    return _Add(
      listing,
    );
  }

  _NameChanged nameChanged(String name) {
    return _NameChanged(
      name,
    );
  }

  _BuildingChanged buildingChanged(String building) {
    return _BuildingChanged(
      building,
    );
  }

  _SizeChanged sizeChanged(String size) {
    return _SizeChanged(
      size,
    );
  }

  _BedroomAdd bedroomAdd() {
    return const _BedroomAdd();
  }

  _BedroomMinus bedroomMinus() {
    return const _BedroomMinus();
  }

  _BathroomAdd bathroomAdd() {
    return const _BathroomAdd();
  }

  _BathroomMinus bathroomMinus() {
    return const _BathroomMinus();
  }

  _CategoryChanged categoryChanged(String value) {
    return _CategoryChanged(
      value,
    );
  }

  _DescChanged descChanged(String desc) {
    return _DescChanged(
      desc,
    );
  }

  _Next next() {
    return const _Next();
  }

  _Save save() {
    return const _Save();
  }
}

/// @nodoc
const $PropertyEvent = _$PropertyEventTearOff();

/// @nodoc
mixin _$PropertyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String name) nameChanged,
    required TResult Function(String building) buildingChanged,
    required TResult Function(String size) sizeChanged,
    required TResult Function() bedroomAdd,
    required TResult Function() bedroomMinus,
    required TResult Function() bathroomAdd,
    required TResult Function() bathroomMinus,
    required TResult Function(String value) categoryChanged,
    required TResult Function(String desc) descChanged,
    required TResult Function() next,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String name)? nameChanged,
    TResult Function(String building)? buildingChanged,
    TResult Function(String size)? sizeChanged,
    TResult Function()? bedroomAdd,
    TResult Function()? bedroomMinus,
    TResult Function()? bathroomAdd,
    TResult Function()? bathroomMinus,
    TResult Function(String value)? categoryChanged,
    TResult Function(String desc)? descChanged,
    TResult Function()? next,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_BuildingChanged value) buildingChanged,
    required TResult Function(_SizeChanged value) sizeChanged,
    required TResult Function(_BedroomAdd value) bedroomAdd,
    required TResult Function(_BedroomMinus value) bedroomMinus,
    required TResult Function(_BathroomAdd value) bathroomAdd,
    required TResult Function(_BathroomMinus value) bathroomMinus,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_BuildingChanged value)? buildingChanged,
    TResult Function(_SizeChanged value)? sizeChanged,
    TResult Function(_BedroomAdd value)? bedroomAdd,
    TResult Function(_BedroomMinus value)? bedroomMinus,
    TResult Function(_BathroomAdd value)? bathroomAdd,
    TResult Function(_BathroomMinus value)? bathroomMinus,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_Next value)? next,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyEventCopyWith<$Res> {
  factory $PropertyEventCopyWith(
          PropertyEvent value, $Res Function(PropertyEvent) then) =
      _$PropertyEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PropertyEventCopyWithImpl<$Res>
    implements $PropertyEventCopyWith<$Res> {
  _$PropertyEventCopyWithImpl(this._value, this._then);

  final PropertyEvent _value;
  // ignore: unused_field
  final $Res Function(PropertyEvent) _then;
}

/// @nodoc
abstract class _$AddCopyWith<$Res> {
  factory _$AddCopyWith(_Add value, $Res Function(_Add) then) =
      __$AddCopyWithImpl<$Res>;
  $Res call({Listing listing});
}

/// @nodoc
class __$AddCopyWithImpl<$Res> extends _$PropertyEventCopyWithImpl<$Res>
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
    return 'PropertyEvent.add(listing: $listing)';
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
    required TResult Function(String name) nameChanged,
    required TResult Function(String building) buildingChanged,
    required TResult Function(String size) sizeChanged,
    required TResult Function() bedroomAdd,
    required TResult Function() bedroomMinus,
    required TResult Function() bathroomAdd,
    required TResult Function() bathroomMinus,
    required TResult Function(String value) categoryChanged,
    required TResult Function(String desc) descChanged,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return add(listing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String name)? nameChanged,
    TResult Function(String building)? buildingChanged,
    TResult Function(String size)? sizeChanged,
    TResult Function()? bedroomAdd,
    TResult Function()? bedroomMinus,
    TResult Function()? bathroomAdd,
    TResult Function()? bathroomMinus,
    TResult Function(String value)? categoryChanged,
    TResult Function(String desc)? descChanged,
    TResult Function()? next,
    TResult Function()? save,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_BuildingChanged value) buildingChanged,
    required TResult Function(_SizeChanged value) sizeChanged,
    required TResult Function(_BedroomAdd value) bedroomAdd,
    required TResult Function(_BedroomMinus value) bedroomMinus,
    required TResult Function(_BathroomAdd value) bathroomAdd,
    required TResult Function(_BathroomMinus value) bathroomMinus,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_BuildingChanged value)? buildingChanged,
    TResult Function(_SizeChanged value)? sizeChanged,
    TResult Function(_BedroomAdd value)? bedroomAdd,
    TResult Function(_BedroomMinus value)? bedroomMinus,
    TResult Function(_BathroomAdd value)? bathroomAdd,
    TResult Function(_BathroomMinus value)? bathroomMinus,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_Next value)? next,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements PropertyEvent {
  const factory _Add(Listing listing) = _$_Add;

  Listing get listing => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddCopyWith<_Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res> extends _$PropertyEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_NameChanged(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'PropertyEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String name) nameChanged,
    required TResult Function(String building) buildingChanged,
    required TResult Function(String size) sizeChanged,
    required TResult Function() bedroomAdd,
    required TResult Function() bedroomMinus,
    required TResult Function() bathroomAdd,
    required TResult Function() bathroomMinus,
    required TResult Function(String value) categoryChanged,
    required TResult Function(String desc) descChanged,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String name)? nameChanged,
    TResult Function(String building)? buildingChanged,
    TResult Function(String size)? sizeChanged,
    TResult Function()? bedroomAdd,
    TResult Function()? bedroomMinus,
    TResult Function()? bathroomAdd,
    TResult Function()? bathroomMinus,
    TResult Function(String value)? categoryChanged,
    TResult Function(String desc)? descChanged,
    TResult Function()? next,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_BuildingChanged value) buildingChanged,
    required TResult Function(_SizeChanged value) sizeChanged,
    required TResult Function(_BedroomAdd value) bedroomAdd,
    required TResult Function(_BedroomMinus value) bedroomMinus,
    required TResult Function(_BathroomAdd value) bathroomAdd,
    required TResult Function(_BathroomMinus value) bathroomMinus,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_BuildingChanged value)? buildingChanged,
    TResult Function(_SizeChanged value)? sizeChanged,
    TResult Function(_BedroomAdd value)? bedroomAdd,
    TResult Function(_BedroomMinus value)? bedroomMinus,
    TResult Function(_BathroomAdd value)? bathroomAdd,
    TResult Function(_BathroomMinus value)? bathroomMinus,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_Next value)? next,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements PropertyEvent {
  const factory _NameChanged(String name) = _$_NameChanged;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BuildingChangedCopyWith<$Res> {
  factory _$BuildingChangedCopyWith(
          _BuildingChanged value, $Res Function(_BuildingChanged) then) =
      __$BuildingChangedCopyWithImpl<$Res>;
  $Res call({String building});
}

/// @nodoc
class __$BuildingChangedCopyWithImpl<$Res>
    extends _$PropertyEventCopyWithImpl<$Res>
    implements _$BuildingChangedCopyWith<$Res> {
  __$BuildingChangedCopyWithImpl(
      _BuildingChanged _value, $Res Function(_BuildingChanged) _then)
      : super(_value, (v) => _then(v as _BuildingChanged));

  @override
  _BuildingChanged get _value => super._value as _BuildingChanged;

  @override
  $Res call({
    Object? building = freezed,
  }) {
    return _then(_BuildingChanged(
      building == freezed
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_BuildingChanged implements _BuildingChanged {
  const _$_BuildingChanged(this.building);

  @override
  final String building;

  @override
  String toString() {
    return 'PropertyEvent.buildingChanged(building: $building)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BuildingChanged &&
            (identical(other.building, building) ||
                const DeepCollectionEquality()
                    .equals(other.building, building)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(building);

  @JsonKey(ignore: true)
  @override
  _$BuildingChangedCopyWith<_BuildingChanged> get copyWith =>
      __$BuildingChangedCopyWithImpl<_BuildingChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String name) nameChanged,
    required TResult Function(String building) buildingChanged,
    required TResult Function(String size) sizeChanged,
    required TResult Function() bedroomAdd,
    required TResult Function() bedroomMinus,
    required TResult Function() bathroomAdd,
    required TResult Function() bathroomMinus,
    required TResult Function(String value) categoryChanged,
    required TResult Function(String desc) descChanged,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return buildingChanged(building);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String name)? nameChanged,
    TResult Function(String building)? buildingChanged,
    TResult Function(String size)? sizeChanged,
    TResult Function()? bedroomAdd,
    TResult Function()? bedroomMinus,
    TResult Function()? bathroomAdd,
    TResult Function()? bathroomMinus,
    TResult Function(String value)? categoryChanged,
    TResult Function(String desc)? descChanged,
    TResult Function()? next,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (buildingChanged != null) {
      return buildingChanged(building);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_BuildingChanged value) buildingChanged,
    required TResult Function(_SizeChanged value) sizeChanged,
    required TResult Function(_BedroomAdd value) bedroomAdd,
    required TResult Function(_BedroomMinus value) bedroomMinus,
    required TResult Function(_BathroomAdd value) bathroomAdd,
    required TResult Function(_BathroomMinus value) bathroomMinus,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return buildingChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_BuildingChanged value)? buildingChanged,
    TResult Function(_SizeChanged value)? sizeChanged,
    TResult Function(_BedroomAdd value)? bedroomAdd,
    TResult Function(_BedroomMinus value)? bedroomMinus,
    TResult Function(_BathroomAdd value)? bathroomAdd,
    TResult Function(_BathroomMinus value)? bathroomMinus,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_Next value)? next,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (buildingChanged != null) {
      return buildingChanged(this);
    }
    return orElse();
  }
}

abstract class _BuildingChanged implements PropertyEvent {
  const factory _BuildingChanged(String building) = _$_BuildingChanged;

  String get building => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BuildingChangedCopyWith<_BuildingChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SizeChangedCopyWith<$Res> {
  factory _$SizeChangedCopyWith(
          _SizeChanged value, $Res Function(_SizeChanged) then) =
      __$SizeChangedCopyWithImpl<$Res>;
  $Res call({String size});
}

/// @nodoc
class __$SizeChangedCopyWithImpl<$Res> extends _$PropertyEventCopyWithImpl<$Res>
    implements _$SizeChangedCopyWith<$Res> {
  __$SizeChangedCopyWithImpl(
      _SizeChanged _value, $Res Function(_SizeChanged) _then)
      : super(_value, (v) => _then(v as _SizeChanged));

  @override
  _SizeChanged get _value => super._value as _SizeChanged;

  @override
  $Res call({
    Object? size = freezed,
  }) {
    return _then(_SizeChanged(
      size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_SizeChanged implements _SizeChanged {
  const _$_SizeChanged(this.size);

  @override
  final String size;

  @override
  String toString() {
    return 'PropertyEvent.sizeChanged(size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SizeChanged &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(size);

  @JsonKey(ignore: true)
  @override
  _$SizeChangedCopyWith<_SizeChanged> get copyWith =>
      __$SizeChangedCopyWithImpl<_SizeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String name) nameChanged,
    required TResult Function(String building) buildingChanged,
    required TResult Function(String size) sizeChanged,
    required TResult Function() bedroomAdd,
    required TResult Function() bedroomMinus,
    required TResult Function() bathroomAdd,
    required TResult Function() bathroomMinus,
    required TResult Function(String value) categoryChanged,
    required TResult Function(String desc) descChanged,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return sizeChanged(size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String name)? nameChanged,
    TResult Function(String building)? buildingChanged,
    TResult Function(String size)? sizeChanged,
    TResult Function()? bedroomAdd,
    TResult Function()? bedroomMinus,
    TResult Function()? bathroomAdd,
    TResult Function()? bathroomMinus,
    TResult Function(String value)? categoryChanged,
    TResult Function(String desc)? descChanged,
    TResult Function()? next,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (sizeChanged != null) {
      return sizeChanged(size);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_BuildingChanged value) buildingChanged,
    required TResult Function(_SizeChanged value) sizeChanged,
    required TResult Function(_BedroomAdd value) bedroomAdd,
    required TResult Function(_BedroomMinus value) bedroomMinus,
    required TResult Function(_BathroomAdd value) bathroomAdd,
    required TResult Function(_BathroomMinus value) bathroomMinus,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return sizeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_BuildingChanged value)? buildingChanged,
    TResult Function(_SizeChanged value)? sizeChanged,
    TResult Function(_BedroomAdd value)? bedroomAdd,
    TResult Function(_BedroomMinus value)? bedroomMinus,
    TResult Function(_BathroomAdd value)? bathroomAdd,
    TResult Function(_BathroomMinus value)? bathroomMinus,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_Next value)? next,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (sizeChanged != null) {
      return sizeChanged(this);
    }
    return orElse();
  }
}

abstract class _SizeChanged implements PropertyEvent {
  const factory _SizeChanged(String size) = _$_SizeChanged;

  String get size => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SizeChangedCopyWith<_SizeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BedroomAddCopyWith<$Res> {
  factory _$BedroomAddCopyWith(
          _BedroomAdd value, $Res Function(_BedroomAdd) then) =
      __$BedroomAddCopyWithImpl<$Res>;
}

/// @nodoc
class __$BedroomAddCopyWithImpl<$Res> extends _$PropertyEventCopyWithImpl<$Res>
    implements _$BedroomAddCopyWith<$Res> {
  __$BedroomAddCopyWithImpl(
      _BedroomAdd _value, $Res Function(_BedroomAdd) _then)
      : super(_value, (v) => _then(v as _BedroomAdd));

  @override
  _BedroomAdd get _value => super._value as _BedroomAdd;
}

/// @nodoc
class _$_BedroomAdd implements _BedroomAdd {
  const _$_BedroomAdd();

  @override
  String toString() {
    return 'PropertyEvent.bedroomAdd()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BedroomAdd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String name) nameChanged,
    required TResult Function(String building) buildingChanged,
    required TResult Function(String size) sizeChanged,
    required TResult Function() bedroomAdd,
    required TResult Function() bedroomMinus,
    required TResult Function() bathroomAdd,
    required TResult Function() bathroomMinus,
    required TResult Function(String value) categoryChanged,
    required TResult Function(String desc) descChanged,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return bedroomAdd();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String name)? nameChanged,
    TResult Function(String building)? buildingChanged,
    TResult Function(String size)? sizeChanged,
    TResult Function()? bedroomAdd,
    TResult Function()? bedroomMinus,
    TResult Function()? bathroomAdd,
    TResult Function()? bathroomMinus,
    TResult Function(String value)? categoryChanged,
    TResult Function(String desc)? descChanged,
    TResult Function()? next,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (bedroomAdd != null) {
      return bedroomAdd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_BuildingChanged value) buildingChanged,
    required TResult Function(_SizeChanged value) sizeChanged,
    required TResult Function(_BedroomAdd value) bedroomAdd,
    required TResult Function(_BedroomMinus value) bedroomMinus,
    required TResult Function(_BathroomAdd value) bathroomAdd,
    required TResult Function(_BathroomMinus value) bathroomMinus,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return bedroomAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_BuildingChanged value)? buildingChanged,
    TResult Function(_SizeChanged value)? sizeChanged,
    TResult Function(_BedroomAdd value)? bedroomAdd,
    TResult Function(_BedroomMinus value)? bedroomMinus,
    TResult Function(_BathroomAdd value)? bathroomAdd,
    TResult Function(_BathroomMinus value)? bathroomMinus,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_Next value)? next,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (bedroomAdd != null) {
      return bedroomAdd(this);
    }
    return orElse();
  }
}

abstract class _BedroomAdd implements PropertyEvent {
  const factory _BedroomAdd() = _$_BedroomAdd;
}

/// @nodoc
abstract class _$BedroomMinusCopyWith<$Res> {
  factory _$BedroomMinusCopyWith(
          _BedroomMinus value, $Res Function(_BedroomMinus) then) =
      __$BedroomMinusCopyWithImpl<$Res>;
}

/// @nodoc
class __$BedroomMinusCopyWithImpl<$Res>
    extends _$PropertyEventCopyWithImpl<$Res>
    implements _$BedroomMinusCopyWith<$Res> {
  __$BedroomMinusCopyWithImpl(
      _BedroomMinus _value, $Res Function(_BedroomMinus) _then)
      : super(_value, (v) => _then(v as _BedroomMinus));

  @override
  _BedroomMinus get _value => super._value as _BedroomMinus;
}

/// @nodoc
class _$_BedroomMinus implements _BedroomMinus {
  const _$_BedroomMinus();

  @override
  String toString() {
    return 'PropertyEvent.bedroomMinus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BedroomMinus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String name) nameChanged,
    required TResult Function(String building) buildingChanged,
    required TResult Function(String size) sizeChanged,
    required TResult Function() bedroomAdd,
    required TResult Function() bedroomMinus,
    required TResult Function() bathroomAdd,
    required TResult Function() bathroomMinus,
    required TResult Function(String value) categoryChanged,
    required TResult Function(String desc) descChanged,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return bedroomMinus();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String name)? nameChanged,
    TResult Function(String building)? buildingChanged,
    TResult Function(String size)? sizeChanged,
    TResult Function()? bedroomAdd,
    TResult Function()? bedroomMinus,
    TResult Function()? bathroomAdd,
    TResult Function()? bathroomMinus,
    TResult Function(String value)? categoryChanged,
    TResult Function(String desc)? descChanged,
    TResult Function()? next,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (bedroomMinus != null) {
      return bedroomMinus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_BuildingChanged value) buildingChanged,
    required TResult Function(_SizeChanged value) sizeChanged,
    required TResult Function(_BedroomAdd value) bedroomAdd,
    required TResult Function(_BedroomMinus value) bedroomMinus,
    required TResult Function(_BathroomAdd value) bathroomAdd,
    required TResult Function(_BathroomMinus value) bathroomMinus,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return bedroomMinus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_BuildingChanged value)? buildingChanged,
    TResult Function(_SizeChanged value)? sizeChanged,
    TResult Function(_BedroomAdd value)? bedroomAdd,
    TResult Function(_BedroomMinus value)? bedroomMinus,
    TResult Function(_BathroomAdd value)? bathroomAdd,
    TResult Function(_BathroomMinus value)? bathroomMinus,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_Next value)? next,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (bedroomMinus != null) {
      return bedroomMinus(this);
    }
    return orElse();
  }
}

abstract class _BedroomMinus implements PropertyEvent {
  const factory _BedroomMinus() = _$_BedroomMinus;
}

/// @nodoc
abstract class _$BathroomAddCopyWith<$Res> {
  factory _$BathroomAddCopyWith(
          _BathroomAdd value, $Res Function(_BathroomAdd) then) =
      __$BathroomAddCopyWithImpl<$Res>;
}

/// @nodoc
class __$BathroomAddCopyWithImpl<$Res> extends _$PropertyEventCopyWithImpl<$Res>
    implements _$BathroomAddCopyWith<$Res> {
  __$BathroomAddCopyWithImpl(
      _BathroomAdd _value, $Res Function(_BathroomAdd) _then)
      : super(_value, (v) => _then(v as _BathroomAdd));

  @override
  _BathroomAdd get _value => super._value as _BathroomAdd;
}

/// @nodoc
class _$_BathroomAdd implements _BathroomAdd {
  const _$_BathroomAdd();

  @override
  String toString() {
    return 'PropertyEvent.bathroomAdd()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BathroomAdd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String name) nameChanged,
    required TResult Function(String building) buildingChanged,
    required TResult Function(String size) sizeChanged,
    required TResult Function() bedroomAdd,
    required TResult Function() bedroomMinus,
    required TResult Function() bathroomAdd,
    required TResult Function() bathroomMinus,
    required TResult Function(String value) categoryChanged,
    required TResult Function(String desc) descChanged,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return bathroomAdd();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String name)? nameChanged,
    TResult Function(String building)? buildingChanged,
    TResult Function(String size)? sizeChanged,
    TResult Function()? bedroomAdd,
    TResult Function()? bedroomMinus,
    TResult Function()? bathroomAdd,
    TResult Function()? bathroomMinus,
    TResult Function(String value)? categoryChanged,
    TResult Function(String desc)? descChanged,
    TResult Function()? next,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (bathroomAdd != null) {
      return bathroomAdd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_BuildingChanged value) buildingChanged,
    required TResult Function(_SizeChanged value) sizeChanged,
    required TResult Function(_BedroomAdd value) bedroomAdd,
    required TResult Function(_BedroomMinus value) bedroomMinus,
    required TResult Function(_BathroomAdd value) bathroomAdd,
    required TResult Function(_BathroomMinus value) bathroomMinus,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return bathroomAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_BuildingChanged value)? buildingChanged,
    TResult Function(_SizeChanged value)? sizeChanged,
    TResult Function(_BedroomAdd value)? bedroomAdd,
    TResult Function(_BedroomMinus value)? bedroomMinus,
    TResult Function(_BathroomAdd value)? bathroomAdd,
    TResult Function(_BathroomMinus value)? bathroomMinus,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_Next value)? next,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (bathroomAdd != null) {
      return bathroomAdd(this);
    }
    return orElse();
  }
}

abstract class _BathroomAdd implements PropertyEvent {
  const factory _BathroomAdd() = _$_BathroomAdd;
}

/// @nodoc
abstract class _$BathroomMinusCopyWith<$Res> {
  factory _$BathroomMinusCopyWith(
          _BathroomMinus value, $Res Function(_BathroomMinus) then) =
      __$BathroomMinusCopyWithImpl<$Res>;
}

/// @nodoc
class __$BathroomMinusCopyWithImpl<$Res>
    extends _$PropertyEventCopyWithImpl<$Res>
    implements _$BathroomMinusCopyWith<$Res> {
  __$BathroomMinusCopyWithImpl(
      _BathroomMinus _value, $Res Function(_BathroomMinus) _then)
      : super(_value, (v) => _then(v as _BathroomMinus));

  @override
  _BathroomMinus get _value => super._value as _BathroomMinus;
}

/// @nodoc
class _$_BathroomMinus implements _BathroomMinus {
  const _$_BathroomMinus();

  @override
  String toString() {
    return 'PropertyEvent.bathroomMinus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BathroomMinus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String name) nameChanged,
    required TResult Function(String building) buildingChanged,
    required TResult Function(String size) sizeChanged,
    required TResult Function() bedroomAdd,
    required TResult Function() bedroomMinus,
    required TResult Function() bathroomAdd,
    required TResult Function() bathroomMinus,
    required TResult Function(String value) categoryChanged,
    required TResult Function(String desc) descChanged,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return bathroomMinus();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String name)? nameChanged,
    TResult Function(String building)? buildingChanged,
    TResult Function(String size)? sizeChanged,
    TResult Function()? bedroomAdd,
    TResult Function()? bedroomMinus,
    TResult Function()? bathroomAdd,
    TResult Function()? bathroomMinus,
    TResult Function(String value)? categoryChanged,
    TResult Function(String desc)? descChanged,
    TResult Function()? next,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (bathroomMinus != null) {
      return bathroomMinus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_BuildingChanged value) buildingChanged,
    required TResult Function(_SizeChanged value) sizeChanged,
    required TResult Function(_BedroomAdd value) bedroomAdd,
    required TResult Function(_BedroomMinus value) bedroomMinus,
    required TResult Function(_BathroomAdd value) bathroomAdd,
    required TResult Function(_BathroomMinus value) bathroomMinus,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return bathroomMinus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_BuildingChanged value)? buildingChanged,
    TResult Function(_SizeChanged value)? sizeChanged,
    TResult Function(_BedroomAdd value)? bedroomAdd,
    TResult Function(_BedroomMinus value)? bedroomMinus,
    TResult Function(_BathroomAdd value)? bathroomAdd,
    TResult Function(_BathroomMinus value)? bathroomMinus,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_Next value)? next,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (bathroomMinus != null) {
      return bathroomMinus(this);
    }
    return orElse();
  }
}

abstract class _BathroomMinus implements PropertyEvent {
  const factory _BathroomMinus() = _$_BathroomMinus;
}

/// @nodoc
abstract class _$CategoryChangedCopyWith<$Res> {
  factory _$CategoryChangedCopyWith(
          _CategoryChanged value, $Res Function(_CategoryChanged) then) =
      __$CategoryChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$CategoryChangedCopyWithImpl<$Res>
    extends _$PropertyEventCopyWithImpl<$Res>
    implements _$CategoryChangedCopyWith<$Res> {
  __$CategoryChangedCopyWithImpl(
      _CategoryChanged _value, $Res Function(_CategoryChanged) _then)
      : super(_value, (v) => _then(v as _CategoryChanged));

  @override
  _CategoryChanged get _value => super._value as _CategoryChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_CategoryChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_CategoryChanged implements _CategoryChanged {
  const _$_CategoryChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'PropertyEvent.categoryChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$CategoryChangedCopyWith<_CategoryChanged> get copyWith =>
      __$CategoryChangedCopyWithImpl<_CategoryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String name) nameChanged,
    required TResult Function(String building) buildingChanged,
    required TResult Function(String size) sizeChanged,
    required TResult Function() bedroomAdd,
    required TResult Function() bedroomMinus,
    required TResult Function() bathroomAdd,
    required TResult Function() bathroomMinus,
    required TResult Function(String value) categoryChanged,
    required TResult Function(String desc) descChanged,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return categoryChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String name)? nameChanged,
    TResult Function(String building)? buildingChanged,
    TResult Function(String size)? sizeChanged,
    TResult Function()? bedroomAdd,
    TResult Function()? bedroomMinus,
    TResult Function()? bathroomAdd,
    TResult Function()? bathroomMinus,
    TResult Function(String value)? categoryChanged,
    TResult Function(String desc)? descChanged,
    TResult Function()? next,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_BuildingChanged value) buildingChanged,
    required TResult Function(_SizeChanged value) sizeChanged,
    required TResult Function(_BedroomAdd value) bedroomAdd,
    required TResult Function(_BedroomMinus value) bedroomMinus,
    required TResult Function(_BathroomAdd value) bathroomAdd,
    required TResult Function(_BathroomMinus value) bathroomMinus,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_BuildingChanged value)? buildingChanged,
    TResult Function(_SizeChanged value)? sizeChanged,
    TResult Function(_BedroomAdd value)? bedroomAdd,
    TResult Function(_BedroomMinus value)? bedroomMinus,
    TResult Function(_BathroomAdd value)? bathroomAdd,
    TResult Function(_BathroomMinus value)? bathroomMinus,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_Next value)? next,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class _CategoryChanged implements PropertyEvent {
  const factory _CategoryChanged(String value) = _$_CategoryChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CategoryChangedCopyWith<_CategoryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DescChangedCopyWith<$Res> {
  factory _$DescChangedCopyWith(
          _DescChanged value, $Res Function(_DescChanged) then) =
      __$DescChangedCopyWithImpl<$Res>;
  $Res call({String desc});
}

/// @nodoc
class __$DescChangedCopyWithImpl<$Res> extends _$PropertyEventCopyWithImpl<$Res>
    implements _$DescChangedCopyWith<$Res> {
  __$DescChangedCopyWithImpl(
      _DescChanged _value, $Res Function(_DescChanged) _then)
      : super(_value, (v) => _then(v as _DescChanged));

  @override
  _DescChanged get _value => super._value as _DescChanged;

  @override
  $Res call({
    Object? desc = freezed,
  }) {
    return _then(_DescChanged(
      desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_DescChanged implements _DescChanged {
  const _$_DescChanged(this.desc);

  @override
  final String desc;

  @override
  String toString() {
    return 'PropertyEvent.descChanged(desc: $desc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DescChanged &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(desc);

  @JsonKey(ignore: true)
  @override
  _$DescChangedCopyWith<_DescChanged> get copyWith =>
      __$DescChangedCopyWithImpl<_DescChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String name) nameChanged,
    required TResult Function(String building) buildingChanged,
    required TResult Function(String size) sizeChanged,
    required TResult Function() bedroomAdd,
    required TResult Function() bedroomMinus,
    required TResult Function() bathroomAdd,
    required TResult Function() bathroomMinus,
    required TResult Function(String value) categoryChanged,
    required TResult Function(String desc) descChanged,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return descChanged(desc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String name)? nameChanged,
    TResult Function(String building)? buildingChanged,
    TResult Function(String size)? sizeChanged,
    TResult Function()? bedroomAdd,
    TResult Function()? bedroomMinus,
    TResult Function()? bathroomAdd,
    TResult Function()? bathroomMinus,
    TResult Function(String value)? categoryChanged,
    TResult Function(String desc)? descChanged,
    TResult Function()? next,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (descChanged != null) {
      return descChanged(desc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_BuildingChanged value) buildingChanged,
    required TResult Function(_SizeChanged value) sizeChanged,
    required TResult Function(_BedroomAdd value) bedroomAdd,
    required TResult Function(_BedroomMinus value) bedroomMinus,
    required TResult Function(_BathroomAdd value) bathroomAdd,
    required TResult Function(_BathroomMinus value) bathroomMinus,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return descChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_BuildingChanged value)? buildingChanged,
    TResult Function(_SizeChanged value)? sizeChanged,
    TResult Function(_BedroomAdd value)? bedroomAdd,
    TResult Function(_BedroomMinus value)? bedroomMinus,
    TResult Function(_BathroomAdd value)? bathroomAdd,
    TResult Function(_BathroomMinus value)? bathroomMinus,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_Next value)? next,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (descChanged != null) {
      return descChanged(this);
    }
    return orElse();
  }
}

abstract class _DescChanged implements PropertyEvent {
  const factory _DescChanged(String desc) = _$_DescChanged;

  String get desc => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DescChangedCopyWith<_DescChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NextCopyWith<$Res> {
  factory _$NextCopyWith(_Next value, $Res Function(_Next) then) =
      __$NextCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextCopyWithImpl<$Res> extends _$PropertyEventCopyWithImpl<$Res>
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
    return 'PropertyEvent.next()';
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
    required TResult Function(String name) nameChanged,
    required TResult Function(String building) buildingChanged,
    required TResult Function(String size) sizeChanged,
    required TResult Function() bedroomAdd,
    required TResult Function() bedroomMinus,
    required TResult Function() bathroomAdd,
    required TResult Function() bathroomMinus,
    required TResult Function(String value) categoryChanged,
    required TResult Function(String desc) descChanged,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return next();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String name)? nameChanged,
    TResult Function(String building)? buildingChanged,
    TResult Function(String size)? sizeChanged,
    TResult Function()? bedroomAdd,
    TResult Function()? bedroomMinus,
    TResult Function()? bathroomAdd,
    TResult Function()? bathroomMinus,
    TResult Function(String value)? categoryChanged,
    TResult Function(String desc)? descChanged,
    TResult Function()? next,
    TResult Function()? save,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_BuildingChanged value) buildingChanged,
    required TResult Function(_SizeChanged value) sizeChanged,
    required TResult Function(_BedroomAdd value) bedroomAdd,
    required TResult Function(_BedroomMinus value) bedroomMinus,
    required TResult Function(_BathroomAdd value) bathroomAdd,
    required TResult Function(_BathroomMinus value) bathroomMinus,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return next(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_BuildingChanged value)? buildingChanged,
    TResult Function(_SizeChanged value)? sizeChanged,
    TResult Function(_BedroomAdd value)? bedroomAdd,
    TResult Function(_BedroomMinus value)? bedroomMinus,
    TResult Function(_BathroomAdd value)? bathroomAdd,
    TResult Function(_BathroomMinus value)? bathroomMinus,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_Next value)? next,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(this);
    }
    return orElse();
  }
}

abstract class _Next implements PropertyEvent {
  const factory _Next() = _$_Next;
}

/// @nodoc
abstract class _$SaveCopyWith<$Res> {
  factory _$SaveCopyWith(_Save value, $Res Function(_Save) then) =
      __$SaveCopyWithImpl<$Res>;
}

/// @nodoc
class __$SaveCopyWithImpl<$Res> extends _$PropertyEventCopyWithImpl<$Res>
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
    return 'PropertyEvent.save()';
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
    required TResult Function(String name) nameChanged,
    required TResult Function(String building) buildingChanged,
    required TResult Function(String size) sizeChanged,
    required TResult Function() bedroomAdd,
    required TResult Function() bedroomMinus,
    required TResult Function() bathroomAdd,
    required TResult Function() bathroomMinus,
    required TResult Function(String value) categoryChanged,
    required TResult Function(String desc) descChanged,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String name)? nameChanged,
    TResult Function(String building)? buildingChanged,
    TResult Function(String size)? sizeChanged,
    TResult Function()? bedroomAdd,
    TResult Function()? bedroomMinus,
    TResult Function()? bathroomAdd,
    TResult Function()? bathroomMinus,
    TResult Function(String value)? categoryChanged,
    TResult Function(String desc)? descChanged,
    TResult Function()? next,
    TResult Function()? save,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_BuildingChanged value) buildingChanged,
    required TResult Function(_SizeChanged value) sizeChanged,
    required TResult Function(_BedroomAdd value) bedroomAdd,
    required TResult Function(_BedroomMinus value) bedroomMinus,
    required TResult Function(_BathroomAdd value) bathroomAdd,
    required TResult Function(_BathroomMinus value) bathroomMinus,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_BuildingChanged value)? buildingChanged,
    TResult Function(_SizeChanged value)? sizeChanged,
    TResult Function(_BedroomAdd value)? bedroomAdd,
    TResult Function(_BedroomMinus value)? bedroomMinus,
    TResult Function(_BathroomAdd value)? bathroomAdd,
    TResult Function(_BathroomMinus value)? bathroomMinus,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_Next value)? next,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements PropertyEvent {
  const factory _Save() = _$_Save;
}

/// @nodoc
class _$PropertyStateTearOff {
  const _$PropertyStateTearOff();

  _PropertyState call(
      {required TextEditingController nameController,
      required String name,
      required TextEditingController buildingController,
      required String building,
      required int? bedroom,
      required int? bathroom,
      required TextEditingController sizeController,
      Future<List<Category>>? categories,
      required String categoryValue,
      required String desc,
      required String size,
      required String hostId,
      required bool isSubmitting,
      required bool isSuccess,
      required String failureMessage,
      required double complete,
      required Listing listing,
      required String listingId,
      required bool saved,
      required bool isedited}) {
    return _PropertyState(
      nameController: nameController,
      name: name,
      buildingController: buildingController,
      building: building,
      bedroom: bedroom,
      bathroom: bathroom,
      sizeController: sizeController,
      categories: categories,
      categoryValue: categoryValue,
      desc: desc,
      size: size,
      hostId: hostId,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      failureMessage: failureMessage,
      complete: complete,
      listing: listing,
      listingId: listingId,
      saved: saved,
      isedited: isedited,
    );
  }
}

/// @nodoc
const $PropertyState = _$PropertyStateTearOff();

/// @nodoc
mixin _$PropertyState {
  TextEditingController get nameController =>
      throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  TextEditingController get buildingController =>
      throw _privateConstructorUsedError;
  String get building => throw _privateConstructorUsedError;
  int? get bedroom => throw _privateConstructorUsedError;
  int? get bathroom => throw _privateConstructorUsedError;
  TextEditingController get sizeController =>
      throw _privateConstructorUsedError;
  Future<List<Category>>? get categories => throw _privateConstructorUsedError;
  String get categoryValue => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError; // cat desc
  String get size => throw _privateConstructorUsedError;
  String get hostId => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  String get failureMessage => throw _privateConstructorUsedError;
  double get complete => throw _privateConstructorUsedError;
  Listing get listing =>
      throw _privateConstructorUsedError; // listing from addlisting page
  String get listingId =>
      throw _privateConstructorUsedError; // listing id aftr save
  bool get saved => throw _privateConstructorUsedError;
  bool get isedited => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PropertyStateCopyWith<PropertyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyStateCopyWith<$Res> {
  factory $PropertyStateCopyWith(
          PropertyState value, $Res Function(PropertyState) then) =
      _$PropertyStateCopyWithImpl<$Res>;
  $Res call(
      {TextEditingController nameController,
      String name,
      TextEditingController buildingController,
      String building,
      int? bedroom,
      int? bathroom,
      TextEditingController sizeController,
      Future<List<Category>>? categories,
      String categoryValue,
      String desc,
      String size,
      String hostId,
      bool isSubmitting,
      bool isSuccess,
      String failureMessage,
      double complete,
      Listing listing,
      String listingId,
      bool saved,
      bool isedited});
}

/// @nodoc
class _$PropertyStateCopyWithImpl<$Res>
    implements $PropertyStateCopyWith<$Res> {
  _$PropertyStateCopyWithImpl(this._value, this._then);

  final PropertyState _value;
  // ignore: unused_field
  final $Res Function(PropertyState) _then;

  @override
  $Res call({
    Object? nameController = freezed,
    Object? name = freezed,
    Object? buildingController = freezed,
    Object? building = freezed,
    Object? bedroom = freezed,
    Object? bathroom = freezed,
    Object? sizeController = freezed,
    Object? categories = freezed,
    Object? categoryValue = freezed,
    Object? desc = freezed,
    Object? size = freezed,
    Object? hostId = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
    Object? failureMessage = freezed,
    Object? complete = freezed,
    Object? listing = freezed,
    Object? listingId = freezed,
    Object? saved = freezed,
    Object? isedited = freezed,
  }) {
    return _then(_value.copyWith(
      nameController: nameController == freezed
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      buildingController: buildingController == freezed
          ? _value.buildingController
          : buildingController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      building: building == freezed
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String,
      bedroom: bedroom == freezed
          ? _value.bedroom
          : bedroom // ignore: cast_nullable_to_non_nullable
              as int?,
      bathroom: bathroom == freezed
          ? _value.bathroom
          : bathroom // ignore: cast_nullable_to_non_nullable
              as int?,
      sizeController: sizeController == freezed
          ? _value.sizeController
          : sizeController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Future<List<Category>>?,
      categoryValue: categoryValue == freezed
          ? _value.categoryValue
          : categoryValue // ignore: cast_nullable_to_non_nullable
              as String,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      hostId: hostId == freezed
          ? _value.hostId
          : hostId // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: failureMessage == freezed
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
      complete: complete == freezed
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as double,
      listing: listing == freezed
          ? _value.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as Listing,
      listingId: listingId == freezed
          ? _value.listingId
          : listingId // ignore: cast_nullable_to_non_nullable
              as String,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
      isedited: isedited == freezed
          ? _value.isedited
          : isedited // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PropertyStateCopyWith<$Res>
    implements $PropertyStateCopyWith<$Res> {
  factory _$PropertyStateCopyWith(
          _PropertyState value, $Res Function(_PropertyState) then) =
      __$PropertyStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TextEditingController nameController,
      String name,
      TextEditingController buildingController,
      String building,
      int? bedroom,
      int? bathroom,
      TextEditingController sizeController,
      Future<List<Category>>? categories,
      String categoryValue,
      String desc,
      String size,
      String hostId,
      bool isSubmitting,
      bool isSuccess,
      String failureMessage,
      double complete,
      Listing listing,
      String listingId,
      bool saved,
      bool isedited});
}

/// @nodoc
class __$PropertyStateCopyWithImpl<$Res>
    extends _$PropertyStateCopyWithImpl<$Res>
    implements _$PropertyStateCopyWith<$Res> {
  __$PropertyStateCopyWithImpl(
      _PropertyState _value, $Res Function(_PropertyState) _then)
      : super(_value, (v) => _then(v as _PropertyState));

  @override
  _PropertyState get _value => super._value as _PropertyState;

  @override
  $Res call({
    Object? nameController = freezed,
    Object? name = freezed,
    Object? buildingController = freezed,
    Object? building = freezed,
    Object? bedroom = freezed,
    Object? bathroom = freezed,
    Object? sizeController = freezed,
    Object? categories = freezed,
    Object? categoryValue = freezed,
    Object? desc = freezed,
    Object? size = freezed,
    Object? hostId = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
    Object? failureMessage = freezed,
    Object? complete = freezed,
    Object? listing = freezed,
    Object? listingId = freezed,
    Object? saved = freezed,
    Object? isedited = freezed,
  }) {
    return _then(_PropertyState(
      nameController: nameController == freezed
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      buildingController: buildingController == freezed
          ? _value.buildingController
          : buildingController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      building: building == freezed
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String,
      bedroom: bedroom == freezed
          ? _value.bedroom
          : bedroom // ignore: cast_nullable_to_non_nullable
              as int?,
      bathroom: bathroom == freezed
          ? _value.bathroom
          : bathroom // ignore: cast_nullable_to_non_nullable
              as int?,
      sizeController: sizeController == freezed
          ? _value.sizeController
          : sizeController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Future<List<Category>>?,
      categoryValue: categoryValue == freezed
          ? _value.categoryValue
          : categoryValue // ignore: cast_nullable_to_non_nullable
              as String,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      hostId: hostId == freezed
          ? _value.hostId
          : hostId // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: failureMessage == freezed
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
      complete: complete == freezed
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as double,
      listing: listing == freezed
          ? _value.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as Listing,
      listingId: listingId == freezed
          ? _value.listingId
          : listingId // ignore: cast_nullable_to_non_nullable
              as String,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
      isedited: isedited == freezed
          ? _value.isedited
          : isedited // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_PropertyState implements _PropertyState {
  const _$_PropertyState(
      {required this.nameController,
      required this.name,
      required this.buildingController,
      required this.building,
      required this.bedroom,
      required this.bathroom,
      required this.sizeController,
      this.categories,
      required this.categoryValue,
      required this.desc,
      required this.size,
      required this.hostId,
      required this.isSubmitting,
      required this.isSuccess,
      required this.failureMessage,
      required this.complete,
      required this.listing,
      required this.listingId,
      required this.saved,
      required this.isedited});

  @override
  final TextEditingController nameController;
  @override
  final String name;
  @override
  final TextEditingController buildingController;
  @override
  final String building;
  @override
  final int? bedroom;
  @override
  final int? bathroom;
  @override
  final TextEditingController sizeController;
  @override
  final Future<List<Category>>? categories;
  @override
  final String categoryValue;
  @override
  final String desc;
  @override // cat desc
  final String size;
  @override
  final String hostId;
  @override
  final bool isSubmitting;
  @override
  final bool isSuccess;
  @override
  final String failureMessage;
  @override
  final double complete;
  @override
  final Listing listing;
  @override // listing from addlisting page
  final String listingId;
  @override // listing id aftr save
  final bool saved;
  @override
  final bool isedited;

  @override
  String toString() {
    return 'PropertyState(nameController: $nameController, name: $name, buildingController: $buildingController, building: $building, bedroom: $bedroom, bathroom: $bathroom, sizeController: $sizeController, categories: $categories, categoryValue: $categoryValue, desc: $desc, size: $size, hostId: $hostId, isSubmitting: $isSubmitting, isSuccess: $isSuccess, failureMessage: $failureMessage, complete: $complete, listing: $listing, listingId: $listingId, saved: $saved, isedited: $isedited)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PropertyState &&
            (identical(other.nameController, nameController) ||
                const DeepCollectionEquality()
                    .equals(other.nameController, nameController)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.buildingController, buildingController) ||
                const DeepCollectionEquality()
                    .equals(other.buildingController, buildingController)) &&
            (identical(other.building, building) ||
                const DeepCollectionEquality()
                    .equals(other.building, building)) &&
            (identical(other.bedroom, bedroom) ||
                const DeepCollectionEquality()
                    .equals(other.bedroom, bedroom)) &&
            (identical(other.bathroom, bathroom) ||
                const DeepCollectionEquality()
                    .equals(other.bathroom, bathroom)) &&
            (identical(other.sizeController, sizeController) ||
                const DeepCollectionEquality()
                    .equals(other.sizeController, sizeController)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.categoryValue, categoryValue) ||
                const DeepCollectionEquality()
                    .equals(other.categoryValue, categoryValue)) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.hostId, hostId) ||
                const DeepCollectionEquality().equals(other.hostId, hostId)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.failureMessage, failureMessage) ||
                const DeepCollectionEquality()
                    .equals(other.failureMessage, failureMessage)) &&
            (identical(other.complete, complete) ||
                const DeepCollectionEquality()
                    .equals(other.complete, complete)) &&
            (identical(other.listing, listing) ||
                const DeepCollectionEquality()
                    .equals(other.listing, listing)) &&
            (identical(other.listingId, listingId) ||
                const DeepCollectionEquality()
                    .equals(other.listingId, listingId)) &&
            (identical(other.saved, saved) ||
                const DeepCollectionEquality().equals(other.saved, saved)) &&
            (identical(other.isedited, isedited) ||
                const DeepCollectionEquality()
                    .equals(other.isedited, isedited)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nameController) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(buildingController) ^
      const DeepCollectionEquality().hash(building) ^
      const DeepCollectionEquality().hash(bedroom) ^
      const DeepCollectionEquality().hash(bathroom) ^
      const DeepCollectionEquality().hash(sizeController) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(categoryValue) ^
      const DeepCollectionEquality().hash(desc) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(hostId) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(failureMessage) ^
      const DeepCollectionEquality().hash(complete) ^
      const DeepCollectionEquality().hash(listing) ^
      const DeepCollectionEquality().hash(listingId) ^
      const DeepCollectionEquality().hash(saved) ^
      const DeepCollectionEquality().hash(isedited);

  @JsonKey(ignore: true)
  @override
  _$PropertyStateCopyWith<_PropertyState> get copyWith =>
      __$PropertyStateCopyWithImpl<_PropertyState>(this, _$identity);
}

abstract class _PropertyState implements PropertyState {
  const factory _PropertyState(
      {required TextEditingController nameController,
      required String name,
      required TextEditingController buildingController,
      required String building,
      required int? bedroom,
      required int? bathroom,
      required TextEditingController sizeController,
      Future<List<Category>>? categories,
      required String categoryValue,
      required String desc,
      required String size,
      required String hostId,
      required bool isSubmitting,
      required bool isSuccess,
      required String failureMessage,
      required double complete,
      required Listing listing,
      required String listingId,
      required bool saved,
      required bool isedited}) = _$_PropertyState;

  @override
  TextEditingController get nameController =>
      throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  TextEditingController get buildingController =>
      throw _privateConstructorUsedError;
  @override
  String get building => throw _privateConstructorUsedError;
  @override
  int? get bedroom => throw _privateConstructorUsedError;
  @override
  int? get bathroom => throw _privateConstructorUsedError;
  @override
  TextEditingController get sizeController =>
      throw _privateConstructorUsedError;
  @override
  Future<List<Category>>? get categories => throw _privateConstructorUsedError;
  @override
  String get categoryValue => throw _privateConstructorUsedError;
  @override
  String get desc => throw _privateConstructorUsedError;
  @override // cat desc
  String get size => throw _privateConstructorUsedError;
  @override
  String get hostId => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get isSuccess => throw _privateConstructorUsedError;
  @override
  String get failureMessage => throw _privateConstructorUsedError;
  @override
  double get complete => throw _privateConstructorUsedError;
  @override
  Listing get listing => throw _privateConstructorUsedError;
  @override // listing from addlisting page
  String get listingId => throw _privateConstructorUsedError;
  @override // listing id aftr save
  bool get saved => throw _privateConstructorUsedError;
  @override
  bool get isedited => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PropertyStateCopyWith<_PropertyState> get copyWith =>
      throw _privateConstructorUsedError;
}
