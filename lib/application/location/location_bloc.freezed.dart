// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationEventTearOff {
  const _$LocationEventTearOff();

  _Add add(Listing listing) {
    return _Add(
      listing,
    );
  }

  _CountryChanged countryChanged(String country) {
    return _CountryChanged(
      country,
    );
  }

  _RegionChanged regionChanged(String region) {
    return _RegionChanged(
      region,
    );
  }

  _DistrictChanged districtChanged(String district) {
    return _DistrictChanged(
      district,
    );
  }

  _StreetChanged streetChanged(String street) {
    return _StreetChanged(
      street,
    );
  }

  Save save() {
    return const Save();
  }

  _Next next() {
    return const _Next();
  }
}

/// @nodoc
const $LocationEvent = _$LocationEventTearOff();

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String country) countryChanged,
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetChanged,
    required TResult Function() save,
    required TResult Function() next,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String country)? countryChanged,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetChanged,
    TResult Function()? save,
    TResult Function()? next,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(Save value) save,
    required TResult Function(_Next value) next,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  final LocationEvent _value;
  // ignore: unused_field
  final $Res Function(LocationEvent) _then;
}

/// @nodoc
abstract class _$AddCopyWith<$Res> {
  factory _$AddCopyWith(_Add value, $Res Function(_Add) then) =
      __$AddCopyWithImpl<$Res>;
  $Res call({Listing listing});
}

/// @nodoc
class __$AddCopyWithImpl<$Res> extends _$LocationEventCopyWithImpl<$Res>
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
    return 'LocationEvent.add(listing: $listing)';
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
    required TResult Function(String country) countryChanged,
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetChanged,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return add(listing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String country)? countryChanged,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetChanged,
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
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements LocationEvent {
  const factory _Add(Listing listing) = _$_Add;

  Listing get listing => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddCopyWith<_Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CountryChangedCopyWith<$Res> {
  factory _$CountryChangedCopyWith(
          _CountryChanged value, $Res Function(_CountryChanged) then) =
      __$CountryChangedCopyWithImpl<$Res>;
  $Res call({String country});
}

/// @nodoc
class __$CountryChangedCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements _$CountryChangedCopyWith<$Res> {
  __$CountryChangedCopyWithImpl(
      _CountryChanged _value, $Res Function(_CountryChanged) _then)
      : super(_value, (v) => _then(v as _CountryChanged));

  @override
  _CountryChanged get _value => super._value as _CountryChanged;

  @override
  $Res call({
    Object? country = freezed,
  }) {
    return _then(_CountryChanged(
      country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_CountryChanged implements _CountryChanged {
  const _$_CountryChanged(this.country);

  @override
  final String country;

  @override
  String toString() {
    return 'LocationEvent.countryChanged(country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountryChanged &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(other.country, country)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(country);

  @JsonKey(ignore: true)
  @override
  _$CountryChangedCopyWith<_CountryChanged> get copyWith =>
      __$CountryChangedCopyWithImpl<_CountryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String country) countryChanged,
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetChanged,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return countryChanged(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String country)? countryChanged,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetChanged,
    TResult Function()? save,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (countryChanged != null) {
      return countryChanged(country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return countryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (countryChanged != null) {
      return countryChanged(this);
    }
    return orElse();
  }
}

abstract class _CountryChanged implements LocationEvent {
  const factory _CountryChanged(String country) = _$_CountryChanged;

  String get country => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CountryChangedCopyWith<_CountryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegionChangedCopyWith<$Res> {
  factory _$RegionChangedCopyWith(
          _RegionChanged value, $Res Function(_RegionChanged) then) =
      __$RegionChangedCopyWithImpl<$Res>;
  $Res call({String region});
}

/// @nodoc
class __$RegionChangedCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements _$RegionChangedCopyWith<$Res> {
  __$RegionChangedCopyWithImpl(
      _RegionChanged _value, $Res Function(_RegionChanged) _then)
      : super(_value, (v) => _then(v as _RegionChanged));

  @override
  _RegionChanged get _value => super._value as _RegionChanged;

  @override
  $Res call({
    Object? region = freezed,
  }) {
    return _then(_RegionChanged(
      region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_RegionChanged implements _RegionChanged {
  const _$_RegionChanged(this.region);

  @override
  final String region;

  @override
  String toString() {
    return 'LocationEvent.regionChanged(region: $region)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegionChanged &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(region);

  @JsonKey(ignore: true)
  @override
  _$RegionChangedCopyWith<_RegionChanged> get copyWith =>
      __$RegionChangedCopyWithImpl<_RegionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String country) countryChanged,
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetChanged,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return regionChanged(region);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String country)? countryChanged,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetChanged,
    TResult Function()? save,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (regionChanged != null) {
      return regionChanged(region);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return regionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (regionChanged != null) {
      return regionChanged(this);
    }
    return orElse();
  }
}

abstract class _RegionChanged implements LocationEvent {
  const factory _RegionChanged(String region) = _$_RegionChanged;

  String get region => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RegionChangedCopyWith<_RegionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DistrictChangedCopyWith<$Res> {
  factory _$DistrictChangedCopyWith(
          _DistrictChanged value, $Res Function(_DistrictChanged) then) =
      __$DistrictChangedCopyWithImpl<$Res>;
  $Res call({String district});
}

/// @nodoc
class __$DistrictChangedCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements _$DistrictChangedCopyWith<$Res> {
  __$DistrictChangedCopyWithImpl(
      _DistrictChanged _value, $Res Function(_DistrictChanged) _then)
      : super(_value, (v) => _then(v as _DistrictChanged));

  @override
  _DistrictChanged get _value => super._value as _DistrictChanged;

  @override
  $Res call({
    Object? district = freezed,
  }) {
    return _then(_DistrictChanged(
      district == freezed
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_DistrictChanged implements _DistrictChanged {
  const _$_DistrictChanged(this.district);

  @override
  final String district;

  @override
  String toString() {
    return 'LocationEvent.districtChanged(district: $district)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DistrictChanged &&
            (identical(other.district, district) ||
                const DeepCollectionEquality()
                    .equals(other.district, district)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(district);

  @JsonKey(ignore: true)
  @override
  _$DistrictChangedCopyWith<_DistrictChanged> get copyWith =>
      __$DistrictChangedCopyWithImpl<_DistrictChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String country) countryChanged,
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetChanged,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return districtChanged(district);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String country)? countryChanged,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetChanged,
    TResult Function()? save,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (districtChanged != null) {
      return districtChanged(district);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return districtChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (districtChanged != null) {
      return districtChanged(this);
    }
    return orElse();
  }
}

abstract class _DistrictChanged implements LocationEvent {
  const factory _DistrictChanged(String district) = _$_DistrictChanged;

  String get district => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DistrictChangedCopyWith<_DistrictChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StreetChangedCopyWith<$Res> {
  factory _$StreetChangedCopyWith(
          _StreetChanged value, $Res Function(_StreetChanged) then) =
      __$StreetChangedCopyWithImpl<$Res>;
  $Res call({String street});
}

/// @nodoc
class __$StreetChangedCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements _$StreetChangedCopyWith<$Res> {
  __$StreetChangedCopyWithImpl(
      _StreetChanged _value, $Res Function(_StreetChanged) _then)
      : super(_value, (v) => _then(v as _StreetChanged));

  @override
  _StreetChanged get _value => super._value as _StreetChanged;

  @override
  $Res call({
    Object? street = freezed,
  }) {
    return _then(_StreetChanged(
      street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_StreetChanged implements _StreetChanged {
  const _$_StreetChanged(this.street);

  @override
  final String street;

  @override
  String toString() {
    return 'LocationEvent.streetChanged(street: $street)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StreetChanged &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(street);

  @JsonKey(ignore: true)
  @override
  _$StreetChangedCopyWith<_StreetChanged> get copyWith =>
      __$StreetChangedCopyWithImpl<_StreetChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String country) countryChanged,
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetChanged,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return streetChanged(street);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String country)? countryChanged,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetChanged,
    TResult Function()? save,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (streetChanged != null) {
      return streetChanged(street);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return streetChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (streetChanged != null) {
      return streetChanged(this);
    }
    return orElse();
  }
}

abstract class _StreetChanged implements LocationEvent {
  const factory _StreetChanged(String street) = _$_StreetChanged;

  String get street => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StreetChangedCopyWith<_StreetChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveCopyWith<$Res> {
  factory $SaveCopyWith(Save value, $Res Function(Save) then) =
      _$SaveCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveCopyWithImpl<$Res> extends _$LocationEventCopyWithImpl<$Res>
    implements $SaveCopyWith<$Res> {
  _$SaveCopyWithImpl(Save _value, $Res Function(Save) _then)
      : super(_value, (v) => _then(v as Save));

  @override
  Save get _value => super._value as Save;
}

/// @nodoc
class _$Save implements Save {
  const _$Save();

  @override
  String toString() {
    return 'LocationEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Save);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String country) countryChanged,
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetChanged,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String country)? countryChanged,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetChanged,
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
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class Save implements LocationEvent {
  const factory Save() = _$Save;
}

/// @nodoc
abstract class _$NextCopyWith<$Res> {
  factory _$NextCopyWith(_Next value, $Res Function(_Next) then) =
      __$NextCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextCopyWithImpl<$Res> extends _$LocationEventCopyWithImpl<$Res>
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
    return 'LocationEvent.next()';
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
    required TResult Function(String country) countryChanged,
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetChanged,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return next();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String country)? countryChanged,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetChanged,
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
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return next(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(this);
    }
    return orElse();
  }
}

abstract class _Next implements LocationEvent {
  const factory _Next() = _$_Next;
}

/// @nodoc
class _$LocationStateTearOff {
  const _$LocationStateTearOff();

  _LocationState call(
      {required TextEditingController countryController,
      required String country,
      required TextEditingController regionController,
      required String region,
      required TextEditingController districtController,
      required String district,
      required TextEditingController streetController,
      required String street,
      required Map<dynamic, dynamic>? location,
      double? complete,
      required Listing listing,
      required bool isSubmitting,
      required bool isSuccess,
      required bool saved,
      required String failureMessage}) {
    return _LocationState(
      countryController: countryController,
      country: country,
      regionController: regionController,
      region: region,
      districtController: districtController,
      district: district,
      streetController: streetController,
      street: street,
      location: location,
      complete: complete,
      listing: listing,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      saved: saved,
      failureMessage: failureMessage,
    );
  }
}

/// @nodoc
const $LocationState = _$LocationStateTearOff();

/// @nodoc
mixin _$LocationState {
  TextEditingController get countryController =>
      throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  TextEditingController get regionController =>
      throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  TextEditingController get districtController =>
      throw _privateConstructorUsedError;
  String get district => throw _privateConstructorUsedError;
  TextEditingController get streetController =>
      throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  Map<dynamic, dynamic>? get location => throw _privateConstructorUsedError;
  double? get complete => throw _privateConstructorUsedError;
  Listing get listing => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get saved => throw _privateConstructorUsedError;
  String get failureMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
  $Res call(
      {TextEditingController countryController,
      String country,
      TextEditingController regionController,
      String region,
      TextEditingController districtController,
      String district,
      TextEditingController streetController,
      String street,
      Map<dynamic, dynamic>? location,
      double? complete,
      Listing listing,
      bool isSubmitting,
      bool isSuccess,
      bool saved,
      String failureMessage});
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;

  @override
  $Res call({
    Object? countryController = freezed,
    Object? country = freezed,
    Object? regionController = freezed,
    Object? region = freezed,
    Object? districtController = freezed,
    Object? district = freezed,
    Object? streetController = freezed,
    Object? street = freezed,
    Object? location = freezed,
    Object? complete = freezed,
    Object? listing = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
    Object? saved = freezed,
    Object? failureMessage = freezed,
  }) {
    return _then(_value.copyWith(
      countryController: countryController == freezed
          ? _value.countryController
          : countryController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      regionController: regionController == freezed
          ? _value.regionController
          : regionController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      districtController: districtController == freezed
          ? _value.districtController
          : districtController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      district: district == freezed
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      streetController: streetController == freezed
          ? _value.streetController
          : streetController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
      complete: complete == freezed
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as double?,
      listing: listing == freezed
          ? _value.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as Listing,
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
    ));
  }
}

/// @nodoc
abstract class _$LocationStateCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$LocationStateCopyWith(
          _LocationState value, $Res Function(_LocationState) then) =
      __$LocationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TextEditingController countryController,
      String country,
      TextEditingController regionController,
      String region,
      TextEditingController districtController,
      String district,
      TextEditingController streetController,
      String street,
      Map<dynamic, dynamic>? location,
      double? complete,
      Listing listing,
      bool isSubmitting,
      bool isSuccess,
      bool saved,
      String failureMessage});
}

/// @nodoc
class __$LocationStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$LocationStateCopyWith<$Res> {
  __$LocationStateCopyWithImpl(
      _LocationState _value, $Res Function(_LocationState) _then)
      : super(_value, (v) => _then(v as _LocationState));

  @override
  _LocationState get _value => super._value as _LocationState;

  @override
  $Res call({
    Object? countryController = freezed,
    Object? country = freezed,
    Object? regionController = freezed,
    Object? region = freezed,
    Object? districtController = freezed,
    Object? district = freezed,
    Object? streetController = freezed,
    Object? street = freezed,
    Object? location = freezed,
    Object? complete = freezed,
    Object? listing = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
    Object? saved = freezed,
    Object? failureMessage = freezed,
  }) {
    return _then(_LocationState(
      countryController: countryController == freezed
          ? _value.countryController
          : countryController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      regionController: regionController == freezed
          ? _value.regionController
          : regionController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      districtController: districtController == freezed
          ? _value.districtController
          : districtController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      district: district == freezed
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      streetController: streetController == freezed
          ? _value.streetController
          : streetController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
      complete: complete == freezed
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as double?,
      listing: listing == freezed
          ? _value.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as Listing,
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
    ));
  }
}

/// @nodoc
class _$_LocationState implements _LocationState {
  const _$_LocationState(
      {required this.countryController,
      required this.country,
      required this.regionController,
      required this.region,
      required this.districtController,
      required this.district,
      required this.streetController,
      required this.street,
      required this.location,
      this.complete,
      required this.listing,
      required this.isSubmitting,
      required this.isSuccess,
      required this.saved,
      required this.failureMessage});

  @override
  final TextEditingController countryController;
  @override
  final String country;
  @override
  final TextEditingController regionController;
  @override
  final String region;
  @override
  final TextEditingController districtController;
  @override
  final String district;
  @override
  final TextEditingController streetController;
  @override
  final String street;
  @override
  final Map<dynamic, dynamic>? location;
  @override
  final double? complete;
  @override
  final Listing listing;
  @override
  final bool isSubmitting;
  @override
  final bool isSuccess;
  @override
  final bool saved;
  @override
  final String failureMessage;

  @override
  String toString() {
    return 'LocationState(countryController: $countryController, country: $country, regionController: $regionController, region: $region, districtController: $districtController, district: $district, streetController: $streetController, street: $street, location: $location, complete: $complete, listing: $listing, isSubmitting: $isSubmitting, isSuccess: $isSuccess, saved: $saved, failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationState &&
            (identical(other.countryController, countryController) ||
                const DeepCollectionEquality()
                    .equals(other.countryController, countryController)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.regionController, regionController) ||
                const DeepCollectionEquality()
                    .equals(other.regionController, regionController)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)) &&
            (identical(other.districtController, districtController) ||
                const DeepCollectionEquality()
                    .equals(other.districtController, districtController)) &&
            (identical(other.district, district) ||
                const DeepCollectionEquality()
                    .equals(other.district, district)) &&
            (identical(other.streetController, streetController) ||
                const DeepCollectionEquality()
                    .equals(other.streetController, streetController)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.complete, complete) ||
                const DeepCollectionEquality()
                    .equals(other.complete, complete)) &&
            (identical(other.listing, listing) ||
                const DeepCollectionEquality()
                    .equals(other.listing, listing)) &&
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
                    .equals(other.failureMessage, failureMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(countryController) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(regionController) ^
      const DeepCollectionEquality().hash(region) ^
      const DeepCollectionEquality().hash(districtController) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(streetController) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(complete) ^
      const DeepCollectionEquality().hash(listing) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(saved) ^
      const DeepCollectionEquality().hash(failureMessage);

  @JsonKey(ignore: true)
  @override
  _$LocationStateCopyWith<_LocationState> get copyWith =>
      __$LocationStateCopyWithImpl<_LocationState>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  const factory _LocationState(
      {required TextEditingController countryController,
      required String country,
      required TextEditingController regionController,
      required String region,
      required TextEditingController districtController,
      required String district,
      required TextEditingController streetController,
      required String street,
      required Map<dynamic, dynamic>? location,
      double? complete,
      required Listing listing,
      required bool isSubmitting,
      required bool isSuccess,
      required bool saved,
      required String failureMessage}) = _$_LocationState;

  @override
  TextEditingController get countryController =>
      throw _privateConstructorUsedError;
  @override
  String get country => throw _privateConstructorUsedError;
  @override
  TextEditingController get regionController =>
      throw _privateConstructorUsedError;
  @override
  String get region => throw _privateConstructorUsedError;
  @override
  TextEditingController get districtController =>
      throw _privateConstructorUsedError;
  @override
  String get district => throw _privateConstructorUsedError;
  @override
  TextEditingController get streetController =>
      throw _privateConstructorUsedError;
  @override
  String get street => throw _privateConstructorUsedError;
  @override
  Map<dynamic, dynamic>? get location => throw _privateConstructorUsedError;
  @override
  double? get complete => throw _privateConstructorUsedError;
  @override
  Listing get listing => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get isSuccess => throw _privateConstructorUsedError;
  @override
  bool get saved => throw _privateConstructorUsedError;
  @override
  String get failureMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocationStateCopyWith<_LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}
