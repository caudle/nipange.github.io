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

  _CountryChanged countryChanged(String? country) {
    return _CountryChanged(
      country,
    );
  }

  _RegionChanged regionChanged(String? region) {
    return _RegionChanged(
      region,
    );
  }

  _DistrictChanged districtChanged(String? district) {
    return _DistrictChanged(
      district,
    );
  }

  _WardChanged wardChanged(String? ward) {
    return _WardChanged(
      ward,
    );
  }

  _StreetChanged streetChanged(String? street) {
    return _StreetChanged(
      street,
    );
  }

  _RegionsAdded regionsAdded(List<Location>? regions) {
    return _RegionsAdded(
      regions,
    );
  }

  _DistrictsFetched districtsFetched(String regionId) {
    return _DistrictsFetched(
      regionId,
    );
  }

  _WardsAdded wardsAdded(List<Location>? wards) {
    return _WardsAdded(
      wards,
    );
  }

  _StreetsFetched streetsFetched(String wardId) {
    return _StreetsFetched(
      wardId,
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
    required TResult Function(String? country) countryChanged,
    required TResult Function(String? region) regionChanged,
    required TResult Function(String? district) districtChanged,
    required TResult Function(String? ward) wardChanged,
    required TResult Function(String? street) streetChanged,
    required TResult Function(List<Location>? regions) regionsAdded,
    required TResult Function(String regionId) districtsFetched,
    required TResult Function(List<Location>? wards) wardsAdded,
    required TResult Function(String wardId) streetsFetched,
    required TResult Function() save,
    required TResult Function() next,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String? country)? countryChanged,
    TResult Function(String? region)? regionChanged,
    TResult Function(String? district)? districtChanged,
    TResult Function(String? ward)? wardChanged,
    TResult Function(String? street)? streetChanged,
    TResult Function(List<Location>? regions)? regionsAdded,
    TResult Function(String regionId)? districtsFetched,
    TResult Function(List<Location>? wards)? wardsAdded,
    TResult Function(String wardId)? streetsFetched,
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
    required TResult Function(_WardChanged value) wardChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(_RegionsAdded value) regionsAdded,
    required TResult Function(_DistrictsFetched value) districtsFetched,
    required TResult Function(_WardsAdded value) wardsAdded,
    required TResult Function(_StreetsFetched value) streetsFetched,
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
    TResult Function(_WardChanged value)? wardChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_RegionsAdded value)? regionsAdded,
    TResult Function(_DistrictsFetched value)? districtsFetched,
    TResult Function(_WardsAdded value)? wardsAdded,
    TResult Function(_StreetsFetched value)? streetsFetched,
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
class _$_Add with DiagnosticableTreeMixin implements _Add {
  const _$_Add(this.listing);

  @override
  final Listing listing;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.add(listing: $listing)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationEvent.add'))
      ..add(DiagnosticsProperty('listing', listing));
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
    required TResult Function(String? country) countryChanged,
    required TResult Function(String? region) regionChanged,
    required TResult Function(String? district) districtChanged,
    required TResult Function(String? ward) wardChanged,
    required TResult Function(String? street) streetChanged,
    required TResult Function(List<Location>? regions) regionsAdded,
    required TResult Function(String regionId) districtsFetched,
    required TResult Function(List<Location>? wards) wardsAdded,
    required TResult Function(String wardId) streetsFetched,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return add(listing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String? country)? countryChanged,
    TResult Function(String? region)? regionChanged,
    TResult Function(String? district)? districtChanged,
    TResult Function(String? ward)? wardChanged,
    TResult Function(String? street)? streetChanged,
    TResult Function(List<Location>? regions)? regionsAdded,
    TResult Function(String regionId)? districtsFetched,
    TResult Function(List<Location>? wards)? wardsAdded,
    TResult Function(String wardId)? streetsFetched,
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
    required TResult Function(_WardChanged value) wardChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(_RegionsAdded value) regionsAdded,
    required TResult Function(_DistrictsFetched value) districtsFetched,
    required TResult Function(_WardsAdded value) wardsAdded,
    required TResult Function(_StreetsFetched value) streetsFetched,
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
    TResult Function(_WardChanged value)? wardChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_RegionsAdded value)? regionsAdded,
    TResult Function(_DistrictsFetched value)? districtsFetched,
    TResult Function(_WardsAdded value)? wardsAdded,
    TResult Function(_StreetsFetched value)? streetsFetched,
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
  $Res call({String? country});
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
              as String?,
    ));
  }
}

/// @nodoc
class _$_CountryChanged
    with DiagnosticableTreeMixin
    implements _CountryChanged {
  const _$_CountryChanged(this.country);

  @override
  final String? country;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.countryChanged(country: $country)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationEvent.countryChanged'))
      ..add(DiagnosticsProperty('country', country));
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
    required TResult Function(String? country) countryChanged,
    required TResult Function(String? region) regionChanged,
    required TResult Function(String? district) districtChanged,
    required TResult Function(String? ward) wardChanged,
    required TResult Function(String? street) streetChanged,
    required TResult Function(List<Location>? regions) regionsAdded,
    required TResult Function(String regionId) districtsFetched,
    required TResult Function(List<Location>? wards) wardsAdded,
    required TResult Function(String wardId) streetsFetched,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return countryChanged(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String? country)? countryChanged,
    TResult Function(String? region)? regionChanged,
    TResult Function(String? district)? districtChanged,
    TResult Function(String? ward)? wardChanged,
    TResult Function(String? street)? streetChanged,
    TResult Function(List<Location>? regions)? regionsAdded,
    TResult Function(String regionId)? districtsFetched,
    TResult Function(List<Location>? wards)? wardsAdded,
    TResult Function(String wardId)? streetsFetched,
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
    required TResult Function(_WardChanged value) wardChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(_RegionsAdded value) regionsAdded,
    required TResult Function(_DistrictsFetched value) districtsFetched,
    required TResult Function(_WardsAdded value) wardsAdded,
    required TResult Function(_StreetsFetched value) streetsFetched,
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
    TResult Function(_WardChanged value)? wardChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_RegionsAdded value)? regionsAdded,
    TResult Function(_DistrictsFetched value)? districtsFetched,
    TResult Function(_WardsAdded value)? wardsAdded,
    TResult Function(_StreetsFetched value)? streetsFetched,
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
  const factory _CountryChanged(String? country) = _$_CountryChanged;

  String? get country => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CountryChangedCopyWith<_CountryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegionChangedCopyWith<$Res> {
  factory _$RegionChangedCopyWith(
          _RegionChanged value, $Res Function(_RegionChanged) then) =
      __$RegionChangedCopyWithImpl<$Res>;
  $Res call({String? region});
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
              as String?,
    ));
  }
}

/// @nodoc
class _$_RegionChanged with DiagnosticableTreeMixin implements _RegionChanged {
  const _$_RegionChanged(this.region);

  @override
  final String? region;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.regionChanged(region: $region)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationEvent.regionChanged'))
      ..add(DiagnosticsProperty('region', region));
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
    required TResult Function(String? country) countryChanged,
    required TResult Function(String? region) regionChanged,
    required TResult Function(String? district) districtChanged,
    required TResult Function(String? ward) wardChanged,
    required TResult Function(String? street) streetChanged,
    required TResult Function(List<Location>? regions) regionsAdded,
    required TResult Function(String regionId) districtsFetched,
    required TResult Function(List<Location>? wards) wardsAdded,
    required TResult Function(String wardId) streetsFetched,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return regionChanged(region);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String? country)? countryChanged,
    TResult Function(String? region)? regionChanged,
    TResult Function(String? district)? districtChanged,
    TResult Function(String? ward)? wardChanged,
    TResult Function(String? street)? streetChanged,
    TResult Function(List<Location>? regions)? regionsAdded,
    TResult Function(String regionId)? districtsFetched,
    TResult Function(List<Location>? wards)? wardsAdded,
    TResult Function(String wardId)? streetsFetched,
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
    required TResult Function(_WardChanged value) wardChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(_RegionsAdded value) regionsAdded,
    required TResult Function(_DistrictsFetched value) districtsFetched,
    required TResult Function(_WardsAdded value) wardsAdded,
    required TResult Function(_StreetsFetched value) streetsFetched,
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
    TResult Function(_WardChanged value)? wardChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_RegionsAdded value)? regionsAdded,
    TResult Function(_DistrictsFetched value)? districtsFetched,
    TResult Function(_WardsAdded value)? wardsAdded,
    TResult Function(_StreetsFetched value)? streetsFetched,
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
  const factory _RegionChanged(String? region) = _$_RegionChanged;

  String? get region => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RegionChangedCopyWith<_RegionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DistrictChangedCopyWith<$Res> {
  factory _$DistrictChangedCopyWith(
          _DistrictChanged value, $Res Function(_DistrictChanged) then) =
      __$DistrictChangedCopyWithImpl<$Res>;
  $Res call({String? district});
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
              as String?,
    ));
  }
}

/// @nodoc
class _$_DistrictChanged
    with DiagnosticableTreeMixin
    implements _DistrictChanged {
  const _$_DistrictChanged(this.district);

  @override
  final String? district;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.districtChanged(district: $district)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationEvent.districtChanged'))
      ..add(DiagnosticsProperty('district', district));
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
    required TResult Function(String? country) countryChanged,
    required TResult Function(String? region) regionChanged,
    required TResult Function(String? district) districtChanged,
    required TResult Function(String? ward) wardChanged,
    required TResult Function(String? street) streetChanged,
    required TResult Function(List<Location>? regions) regionsAdded,
    required TResult Function(String regionId) districtsFetched,
    required TResult Function(List<Location>? wards) wardsAdded,
    required TResult Function(String wardId) streetsFetched,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return districtChanged(district);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String? country)? countryChanged,
    TResult Function(String? region)? regionChanged,
    TResult Function(String? district)? districtChanged,
    TResult Function(String? ward)? wardChanged,
    TResult Function(String? street)? streetChanged,
    TResult Function(List<Location>? regions)? regionsAdded,
    TResult Function(String regionId)? districtsFetched,
    TResult Function(List<Location>? wards)? wardsAdded,
    TResult Function(String wardId)? streetsFetched,
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
    required TResult Function(_WardChanged value) wardChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(_RegionsAdded value) regionsAdded,
    required TResult Function(_DistrictsFetched value) districtsFetched,
    required TResult Function(_WardsAdded value) wardsAdded,
    required TResult Function(_StreetsFetched value) streetsFetched,
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
    TResult Function(_WardChanged value)? wardChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_RegionsAdded value)? regionsAdded,
    TResult Function(_DistrictsFetched value)? districtsFetched,
    TResult Function(_WardsAdded value)? wardsAdded,
    TResult Function(_StreetsFetched value)? streetsFetched,
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
  const factory _DistrictChanged(String? district) = _$_DistrictChanged;

  String? get district => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DistrictChangedCopyWith<_DistrictChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WardChangedCopyWith<$Res> {
  factory _$WardChangedCopyWith(
          _WardChanged value, $Res Function(_WardChanged) then) =
      __$WardChangedCopyWithImpl<$Res>;
  $Res call({String? ward});
}

/// @nodoc
class __$WardChangedCopyWithImpl<$Res> extends _$LocationEventCopyWithImpl<$Res>
    implements _$WardChangedCopyWith<$Res> {
  __$WardChangedCopyWithImpl(
      _WardChanged _value, $Res Function(_WardChanged) _then)
      : super(_value, (v) => _then(v as _WardChanged));

  @override
  _WardChanged get _value => super._value as _WardChanged;

  @override
  $Res call({
    Object? ward = freezed,
  }) {
    return _then(_WardChanged(
      ward == freezed
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_WardChanged with DiagnosticableTreeMixin implements _WardChanged {
  const _$_WardChanged(this.ward);

  @override
  final String? ward;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.wardChanged(ward: $ward)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationEvent.wardChanged'))
      ..add(DiagnosticsProperty('ward', ward));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WardChanged &&
            (identical(other.ward, ward) ||
                const DeepCollectionEquality().equals(other.ward, ward)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ward);

  @JsonKey(ignore: true)
  @override
  _$WardChangedCopyWith<_WardChanged> get copyWith =>
      __$WardChangedCopyWithImpl<_WardChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String? country) countryChanged,
    required TResult Function(String? region) regionChanged,
    required TResult Function(String? district) districtChanged,
    required TResult Function(String? ward) wardChanged,
    required TResult Function(String? street) streetChanged,
    required TResult Function(List<Location>? regions) regionsAdded,
    required TResult Function(String regionId) districtsFetched,
    required TResult Function(List<Location>? wards) wardsAdded,
    required TResult Function(String wardId) streetsFetched,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return wardChanged(ward);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String? country)? countryChanged,
    TResult Function(String? region)? regionChanged,
    TResult Function(String? district)? districtChanged,
    TResult Function(String? ward)? wardChanged,
    TResult Function(String? street)? streetChanged,
    TResult Function(List<Location>? regions)? regionsAdded,
    TResult Function(String regionId)? districtsFetched,
    TResult Function(List<Location>? wards)? wardsAdded,
    TResult Function(String wardId)? streetsFetched,
    TResult Function()? save,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (wardChanged != null) {
      return wardChanged(ward);
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
    required TResult Function(_WardChanged value) wardChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(_RegionsAdded value) regionsAdded,
    required TResult Function(_DistrictsFetched value) districtsFetched,
    required TResult Function(_WardsAdded value) wardsAdded,
    required TResult Function(_StreetsFetched value) streetsFetched,
    required TResult Function(Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return wardChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_WardChanged value)? wardChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_RegionsAdded value)? regionsAdded,
    TResult Function(_DistrictsFetched value)? districtsFetched,
    TResult Function(_WardsAdded value)? wardsAdded,
    TResult Function(_StreetsFetched value)? streetsFetched,
    TResult Function(Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (wardChanged != null) {
      return wardChanged(this);
    }
    return orElse();
  }
}

abstract class _WardChanged implements LocationEvent {
  const factory _WardChanged(String? ward) = _$_WardChanged;

  String? get ward => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WardChangedCopyWith<_WardChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StreetChangedCopyWith<$Res> {
  factory _$StreetChangedCopyWith(
          _StreetChanged value, $Res Function(_StreetChanged) then) =
      __$StreetChangedCopyWithImpl<$Res>;
  $Res call({String? street});
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
              as String?,
    ));
  }
}

/// @nodoc
class _$_StreetChanged with DiagnosticableTreeMixin implements _StreetChanged {
  const _$_StreetChanged(this.street);

  @override
  final String? street;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.streetChanged(street: $street)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationEvent.streetChanged'))
      ..add(DiagnosticsProperty('street', street));
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
    required TResult Function(String? country) countryChanged,
    required TResult Function(String? region) regionChanged,
    required TResult Function(String? district) districtChanged,
    required TResult Function(String? ward) wardChanged,
    required TResult Function(String? street) streetChanged,
    required TResult Function(List<Location>? regions) regionsAdded,
    required TResult Function(String regionId) districtsFetched,
    required TResult Function(List<Location>? wards) wardsAdded,
    required TResult Function(String wardId) streetsFetched,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return streetChanged(street);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String? country)? countryChanged,
    TResult Function(String? region)? regionChanged,
    TResult Function(String? district)? districtChanged,
    TResult Function(String? ward)? wardChanged,
    TResult Function(String? street)? streetChanged,
    TResult Function(List<Location>? regions)? regionsAdded,
    TResult Function(String regionId)? districtsFetched,
    TResult Function(List<Location>? wards)? wardsAdded,
    TResult Function(String wardId)? streetsFetched,
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
    required TResult Function(_WardChanged value) wardChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(_RegionsAdded value) regionsAdded,
    required TResult Function(_DistrictsFetched value) districtsFetched,
    required TResult Function(_WardsAdded value) wardsAdded,
    required TResult Function(_StreetsFetched value) streetsFetched,
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
    TResult Function(_WardChanged value)? wardChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_RegionsAdded value)? regionsAdded,
    TResult Function(_DistrictsFetched value)? districtsFetched,
    TResult Function(_WardsAdded value)? wardsAdded,
    TResult Function(_StreetsFetched value)? streetsFetched,
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
  const factory _StreetChanged(String? street) = _$_StreetChanged;

  String? get street => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StreetChangedCopyWith<_StreetChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegionsAddedCopyWith<$Res> {
  factory _$RegionsAddedCopyWith(
          _RegionsAdded value, $Res Function(_RegionsAdded) then) =
      __$RegionsAddedCopyWithImpl<$Res>;
  $Res call({List<Location>? regions});
}

/// @nodoc
class __$RegionsAddedCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements _$RegionsAddedCopyWith<$Res> {
  __$RegionsAddedCopyWithImpl(
      _RegionsAdded _value, $Res Function(_RegionsAdded) _then)
      : super(_value, (v) => _then(v as _RegionsAdded));

  @override
  _RegionsAdded get _value => super._value as _RegionsAdded;

  @override
  $Res call({
    Object? regions = freezed,
  }) {
    return _then(_RegionsAdded(
      regions == freezed
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<Location>?,
    ));
  }
}

/// @nodoc
class _$_RegionsAdded with DiagnosticableTreeMixin implements _RegionsAdded {
  const _$_RegionsAdded(this.regions);

  @override
  final List<Location>? regions;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.regionsAdded(regions: $regions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationEvent.regionsAdded'))
      ..add(DiagnosticsProperty('regions', regions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegionsAdded &&
            (identical(other.regions, regions) ||
                const DeepCollectionEquality().equals(other.regions, regions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(regions);

  @JsonKey(ignore: true)
  @override
  _$RegionsAddedCopyWith<_RegionsAdded> get copyWith =>
      __$RegionsAddedCopyWithImpl<_RegionsAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String? country) countryChanged,
    required TResult Function(String? region) regionChanged,
    required TResult Function(String? district) districtChanged,
    required TResult Function(String? ward) wardChanged,
    required TResult Function(String? street) streetChanged,
    required TResult Function(List<Location>? regions) regionsAdded,
    required TResult Function(String regionId) districtsFetched,
    required TResult Function(List<Location>? wards) wardsAdded,
    required TResult Function(String wardId) streetsFetched,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return regionsAdded(regions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String? country)? countryChanged,
    TResult Function(String? region)? regionChanged,
    TResult Function(String? district)? districtChanged,
    TResult Function(String? ward)? wardChanged,
    TResult Function(String? street)? streetChanged,
    TResult Function(List<Location>? regions)? regionsAdded,
    TResult Function(String regionId)? districtsFetched,
    TResult Function(List<Location>? wards)? wardsAdded,
    TResult Function(String wardId)? streetsFetched,
    TResult Function()? save,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (regionsAdded != null) {
      return regionsAdded(regions);
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
    required TResult Function(_WardChanged value) wardChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(_RegionsAdded value) regionsAdded,
    required TResult Function(_DistrictsFetched value) districtsFetched,
    required TResult Function(_WardsAdded value) wardsAdded,
    required TResult Function(_StreetsFetched value) streetsFetched,
    required TResult Function(Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return regionsAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_WardChanged value)? wardChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_RegionsAdded value)? regionsAdded,
    TResult Function(_DistrictsFetched value)? districtsFetched,
    TResult Function(_WardsAdded value)? wardsAdded,
    TResult Function(_StreetsFetched value)? streetsFetched,
    TResult Function(Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (regionsAdded != null) {
      return regionsAdded(this);
    }
    return orElse();
  }
}

abstract class _RegionsAdded implements LocationEvent {
  const factory _RegionsAdded(List<Location>? regions) = _$_RegionsAdded;

  List<Location>? get regions => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RegionsAddedCopyWith<_RegionsAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DistrictsFetchedCopyWith<$Res> {
  factory _$DistrictsFetchedCopyWith(
          _DistrictsFetched value, $Res Function(_DistrictsFetched) then) =
      __$DistrictsFetchedCopyWithImpl<$Res>;
  $Res call({String regionId});
}

/// @nodoc
class __$DistrictsFetchedCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements _$DistrictsFetchedCopyWith<$Res> {
  __$DistrictsFetchedCopyWithImpl(
      _DistrictsFetched _value, $Res Function(_DistrictsFetched) _then)
      : super(_value, (v) => _then(v as _DistrictsFetched));

  @override
  _DistrictsFetched get _value => super._value as _DistrictsFetched;

  @override
  $Res call({
    Object? regionId = freezed,
  }) {
    return _then(_DistrictsFetched(
      regionId == freezed
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_DistrictsFetched
    with DiagnosticableTreeMixin
    implements _DistrictsFetched {
  const _$_DistrictsFetched(this.regionId);

  @override
  final String regionId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.districtsFetched(regionId: $regionId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationEvent.districtsFetched'))
      ..add(DiagnosticsProperty('regionId', regionId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DistrictsFetched &&
            (identical(other.regionId, regionId) ||
                const DeepCollectionEquality()
                    .equals(other.regionId, regionId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(regionId);

  @JsonKey(ignore: true)
  @override
  _$DistrictsFetchedCopyWith<_DistrictsFetched> get copyWith =>
      __$DistrictsFetchedCopyWithImpl<_DistrictsFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String? country) countryChanged,
    required TResult Function(String? region) regionChanged,
    required TResult Function(String? district) districtChanged,
    required TResult Function(String? ward) wardChanged,
    required TResult Function(String? street) streetChanged,
    required TResult Function(List<Location>? regions) regionsAdded,
    required TResult Function(String regionId) districtsFetched,
    required TResult Function(List<Location>? wards) wardsAdded,
    required TResult Function(String wardId) streetsFetched,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return districtsFetched(regionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String? country)? countryChanged,
    TResult Function(String? region)? regionChanged,
    TResult Function(String? district)? districtChanged,
    TResult Function(String? ward)? wardChanged,
    TResult Function(String? street)? streetChanged,
    TResult Function(List<Location>? regions)? regionsAdded,
    TResult Function(String regionId)? districtsFetched,
    TResult Function(List<Location>? wards)? wardsAdded,
    TResult Function(String wardId)? streetsFetched,
    TResult Function()? save,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (districtsFetched != null) {
      return districtsFetched(regionId);
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
    required TResult Function(_WardChanged value) wardChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(_RegionsAdded value) regionsAdded,
    required TResult Function(_DistrictsFetched value) districtsFetched,
    required TResult Function(_WardsAdded value) wardsAdded,
    required TResult Function(_StreetsFetched value) streetsFetched,
    required TResult Function(Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return districtsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_WardChanged value)? wardChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_RegionsAdded value)? regionsAdded,
    TResult Function(_DistrictsFetched value)? districtsFetched,
    TResult Function(_WardsAdded value)? wardsAdded,
    TResult Function(_StreetsFetched value)? streetsFetched,
    TResult Function(Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (districtsFetched != null) {
      return districtsFetched(this);
    }
    return orElse();
  }
}

abstract class _DistrictsFetched implements LocationEvent {
  const factory _DistrictsFetched(String regionId) = _$_DistrictsFetched;

  String get regionId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DistrictsFetchedCopyWith<_DistrictsFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WardsAddedCopyWith<$Res> {
  factory _$WardsAddedCopyWith(
          _WardsAdded value, $Res Function(_WardsAdded) then) =
      __$WardsAddedCopyWithImpl<$Res>;
  $Res call({List<Location>? wards});
}

/// @nodoc
class __$WardsAddedCopyWithImpl<$Res> extends _$LocationEventCopyWithImpl<$Res>
    implements _$WardsAddedCopyWith<$Res> {
  __$WardsAddedCopyWithImpl(
      _WardsAdded _value, $Res Function(_WardsAdded) _then)
      : super(_value, (v) => _then(v as _WardsAdded));

  @override
  _WardsAdded get _value => super._value as _WardsAdded;

  @override
  $Res call({
    Object? wards = freezed,
  }) {
    return _then(_WardsAdded(
      wards == freezed
          ? _value.wards
          : wards // ignore: cast_nullable_to_non_nullable
              as List<Location>?,
    ));
  }
}

/// @nodoc
class _$_WardsAdded with DiagnosticableTreeMixin implements _WardsAdded {
  const _$_WardsAdded(this.wards);

  @override
  final List<Location>? wards;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.wardsAdded(wards: $wards)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationEvent.wardsAdded'))
      ..add(DiagnosticsProperty('wards', wards));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WardsAdded &&
            (identical(other.wards, wards) ||
                const DeepCollectionEquality().equals(other.wards, wards)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(wards);

  @JsonKey(ignore: true)
  @override
  _$WardsAddedCopyWith<_WardsAdded> get copyWith =>
      __$WardsAddedCopyWithImpl<_WardsAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String? country) countryChanged,
    required TResult Function(String? region) regionChanged,
    required TResult Function(String? district) districtChanged,
    required TResult Function(String? ward) wardChanged,
    required TResult Function(String? street) streetChanged,
    required TResult Function(List<Location>? regions) regionsAdded,
    required TResult Function(String regionId) districtsFetched,
    required TResult Function(List<Location>? wards) wardsAdded,
    required TResult Function(String wardId) streetsFetched,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return wardsAdded(wards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String? country)? countryChanged,
    TResult Function(String? region)? regionChanged,
    TResult Function(String? district)? districtChanged,
    TResult Function(String? ward)? wardChanged,
    TResult Function(String? street)? streetChanged,
    TResult Function(List<Location>? regions)? regionsAdded,
    TResult Function(String regionId)? districtsFetched,
    TResult Function(List<Location>? wards)? wardsAdded,
    TResult Function(String wardId)? streetsFetched,
    TResult Function()? save,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (wardsAdded != null) {
      return wardsAdded(wards);
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
    required TResult Function(_WardChanged value) wardChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(_RegionsAdded value) regionsAdded,
    required TResult Function(_DistrictsFetched value) districtsFetched,
    required TResult Function(_WardsAdded value) wardsAdded,
    required TResult Function(_StreetsFetched value) streetsFetched,
    required TResult Function(Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return wardsAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_WardChanged value)? wardChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_RegionsAdded value)? regionsAdded,
    TResult Function(_DistrictsFetched value)? districtsFetched,
    TResult Function(_WardsAdded value)? wardsAdded,
    TResult Function(_StreetsFetched value)? streetsFetched,
    TResult Function(Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (wardsAdded != null) {
      return wardsAdded(this);
    }
    return orElse();
  }
}

abstract class _WardsAdded implements LocationEvent {
  const factory _WardsAdded(List<Location>? wards) = _$_WardsAdded;

  List<Location>? get wards => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WardsAddedCopyWith<_WardsAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StreetsFetchedCopyWith<$Res> {
  factory _$StreetsFetchedCopyWith(
          _StreetsFetched value, $Res Function(_StreetsFetched) then) =
      __$StreetsFetchedCopyWithImpl<$Res>;
  $Res call({String wardId});
}

/// @nodoc
class __$StreetsFetchedCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements _$StreetsFetchedCopyWith<$Res> {
  __$StreetsFetchedCopyWithImpl(
      _StreetsFetched _value, $Res Function(_StreetsFetched) _then)
      : super(_value, (v) => _then(v as _StreetsFetched));

  @override
  _StreetsFetched get _value => super._value as _StreetsFetched;

  @override
  $Res call({
    Object? wardId = freezed,
  }) {
    return _then(_StreetsFetched(
      wardId == freezed
          ? _value.wardId
          : wardId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_StreetsFetched
    with DiagnosticableTreeMixin
    implements _StreetsFetched {
  const _$_StreetsFetched(this.wardId);

  @override
  final String wardId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.streetsFetched(wardId: $wardId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationEvent.streetsFetched'))
      ..add(DiagnosticsProperty('wardId', wardId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StreetsFetched &&
            (identical(other.wardId, wardId) ||
                const DeepCollectionEquality().equals(other.wardId, wardId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(wardId);

  @JsonKey(ignore: true)
  @override
  _$StreetsFetchedCopyWith<_StreetsFetched> get copyWith =>
      __$StreetsFetchedCopyWithImpl<_StreetsFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String? country) countryChanged,
    required TResult Function(String? region) regionChanged,
    required TResult Function(String? district) districtChanged,
    required TResult Function(String? ward) wardChanged,
    required TResult Function(String? street) streetChanged,
    required TResult Function(List<Location>? regions) regionsAdded,
    required TResult Function(String regionId) districtsFetched,
    required TResult Function(List<Location>? wards) wardsAdded,
    required TResult Function(String wardId) streetsFetched,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return streetsFetched(wardId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String? country)? countryChanged,
    TResult Function(String? region)? regionChanged,
    TResult Function(String? district)? districtChanged,
    TResult Function(String? ward)? wardChanged,
    TResult Function(String? street)? streetChanged,
    TResult Function(List<Location>? regions)? regionsAdded,
    TResult Function(String regionId)? districtsFetched,
    TResult Function(List<Location>? wards)? wardsAdded,
    TResult Function(String wardId)? streetsFetched,
    TResult Function()? save,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (streetsFetched != null) {
      return streetsFetched(wardId);
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
    required TResult Function(_WardChanged value) wardChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(_RegionsAdded value) regionsAdded,
    required TResult Function(_DistrictsFetched value) districtsFetched,
    required TResult Function(_WardsAdded value) wardsAdded,
    required TResult Function(_StreetsFetched value) streetsFetched,
    required TResult Function(Save value) save,
    required TResult Function(_Next value) next,
  }) {
    return streetsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_WardChanged value)? wardChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_RegionsAdded value)? regionsAdded,
    TResult Function(_DistrictsFetched value)? districtsFetched,
    TResult Function(_WardsAdded value)? wardsAdded,
    TResult Function(_StreetsFetched value)? streetsFetched,
    TResult Function(Save value)? save,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (streetsFetched != null) {
      return streetsFetched(this);
    }
    return orElse();
  }
}

abstract class _StreetsFetched implements LocationEvent {
  const factory _StreetsFetched(String wardId) = _$_StreetsFetched;

  String get wardId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StreetsFetchedCopyWith<_StreetsFetched> get copyWith =>
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
class _$Save with DiagnosticableTreeMixin implements Save {
  const _$Save();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.save()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LocationEvent.save'));
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
    required TResult Function(String? country) countryChanged,
    required TResult Function(String? region) regionChanged,
    required TResult Function(String? district) districtChanged,
    required TResult Function(String? ward) wardChanged,
    required TResult Function(String? street) streetChanged,
    required TResult Function(List<Location>? regions) regionsAdded,
    required TResult Function(String regionId) districtsFetched,
    required TResult Function(List<Location>? wards) wardsAdded,
    required TResult Function(String wardId) streetsFetched,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String? country)? countryChanged,
    TResult Function(String? region)? regionChanged,
    TResult Function(String? district)? districtChanged,
    TResult Function(String? ward)? wardChanged,
    TResult Function(String? street)? streetChanged,
    TResult Function(List<Location>? regions)? regionsAdded,
    TResult Function(String regionId)? districtsFetched,
    TResult Function(List<Location>? wards)? wardsAdded,
    TResult Function(String wardId)? streetsFetched,
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
    required TResult Function(_WardChanged value) wardChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(_RegionsAdded value) regionsAdded,
    required TResult Function(_DistrictsFetched value) districtsFetched,
    required TResult Function(_WardsAdded value) wardsAdded,
    required TResult Function(_StreetsFetched value) streetsFetched,
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
    TResult Function(_WardChanged value)? wardChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_RegionsAdded value)? regionsAdded,
    TResult Function(_DistrictsFetched value)? districtsFetched,
    TResult Function(_WardsAdded value)? wardsAdded,
    TResult Function(_StreetsFetched value)? streetsFetched,
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
class _$_Next with DiagnosticableTreeMixin implements _Next {
  const _$_Next();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.next()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LocationEvent.next'));
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
    required TResult Function(String? country) countryChanged,
    required TResult Function(String? region) regionChanged,
    required TResult Function(String? district) districtChanged,
    required TResult Function(String? ward) wardChanged,
    required TResult Function(String? street) streetChanged,
    required TResult Function(List<Location>? regions) regionsAdded,
    required TResult Function(String regionId) districtsFetched,
    required TResult Function(List<Location>? wards) wardsAdded,
    required TResult Function(String wardId) streetsFetched,
    required TResult Function() save,
    required TResult Function() next,
  }) {
    return next();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String? country)? countryChanged,
    TResult Function(String? region)? regionChanged,
    TResult Function(String? district)? districtChanged,
    TResult Function(String? ward)? wardChanged,
    TResult Function(String? street)? streetChanged,
    TResult Function(List<Location>? regions)? regionsAdded,
    TResult Function(String regionId)? districtsFetched,
    TResult Function(List<Location>? wards)? wardsAdded,
    TResult Function(String wardId)? streetsFetched,
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
    required TResult Function(_WardChanged value) wardChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(_RegionsAdded value) regionsAdded,
    required TResult Function(_DistrictsFetched value) districtsFetched,
    required TResult Function(_WardsAdded value) wardsAdded,
    required TResult Function(_StreetsFetched value) streetsFetched,
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
    TResult Function(_WardChanged value)? wardChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_RegionsAdded value)? regionsAdded,
    TResult Function(_DistrictsFetched value)? districtsFetched,
    TResult Function(_WardsAdded value)? wardsAdded,
    TResult Function(_StreetsFetched value)? streetsFetched,
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
      {Future<List<Location>>? countriesFuture,
      String? country,
      List<Location>? regions,
      String? region,
      Future<List<Location>>? districtsFuture,
      String? district,
      List<Location>? wards,
      String? ward,
      Future<List<Location>>? streetsFuture,
      String? street,
      required Map<dynamic, dynamic>? location,
      double? complete,
      required Listing listing,
      required bool isSubmitting,
      required bool isSuccess,
      required bool saved,
      required bool isedited,
      required String failureMessage}) {
    return _LocationState(
      countriesFuture: countriesFuture,
      country: country,
      regions: regions,
      region: region,
      districtsFuture: districtsFuture,
      district: district,
      wards: wards,
      ward: ward,
      streetsFuture: streetsFuture,
      street: street,
      location: location,
      complete: complete,
      listing: listing,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      saved: saved,
      isedited: isedited,
      failureMessage: failureMessage,
    );
  }
}

/// @nodoc
const $LocationState = _$LocationStateTearOff();

/// @nodoc
mixin _$LocationState {
  Future<List<Location>>? get countriesFuture =>
      throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  List<Location>? get regions => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  Future<List<Location>>? get districtsFuture =>
      throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  List<Location>? get wards => throw _privateConstructorUsedError;
  String? get ward => throw _privateConstructorUsedError;
  Future<List<Location>>? get streetsFuture =>
      throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  Map<dynamic, dynamic>? get location => throw _privateConstructorUsedError;
  double? get complete => throw _privateConstructorUsedError;
  Listing get listing => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get saved => throw _privateConstructorUsedError;
  bool get isedited => throw _privateConstructorUsedError;
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
      {Future<List<Location>>? countriesFuture,
      String? country,
      List<Location>? regions,
      String? region,
      Future<List<Location>>? districtsFuture,
      String? district,
      List<Location>? wards,
      String? ward,
      Future<List<Location>>? streetsFuture,
      String? street,
      Map<dynamic, dynamic>? location,
      double? complete,
      Listing listing,
      bool isSubmitting,
      bool isSuccess,
      bool saved,
      bool isedited,
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
    Object? countriesFuture = freezed,
    Object? country = freezed,
    Object? regions = freezed,
    Object? region = freezed,
    Object? districtsFuture = freezed,
    Object? district = freezed,
    Object? wards = freezed,
    Object? ward = freezed,
    Object? streetsFuture = freezed,
    Object? street = freezed,
    Object? location = freezed,
    Object? complete = freezed,
    Object? listing = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
    Object? saved = freezed,
    Object? isedited = freezed,
    Object? failureMessage = freezed,
  }) {
    return _then(_value.copyWith(
      countriesFuture: countriesFuture == freezed
          ? _value.countriesFuture
          : countriesFuture // ignore: cast_nullable_to_non_nullable
              as Future<List<Location>>?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      regions: regions == freezed
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<Location>?,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      districtsFuture: districtsFuture == freezed
          ? _value.districtsFuture
          : districtsFuture // ignore: cast_nullable_to_non_nullable
              as Future<List<Location>>?,
      district: district == freezed
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      wards: wards == freezed
          ? _value.wards
          : wards // ignore: cast_nullable_to_non_nullable
              as List<Location>?,
      ward: ward == freezed
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as String?,
      streetsFuture: streetsFuture == freezed
          ? _value.streetsFuture
          : streetsFuture // ignore: cast_nullable_to_non_nullable
              as Future<List<Location>>?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
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
      isedited: isedited == freezed
          ? _value.isedited
          : isedited // ignore: cast_nullable_to_non_nullable
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
      {Future<List<Location>>? countriesFuture,
      String? country,
      List<Location>? regions,
      String? region,
      Future<List<Location>>? districtsFuture,
      String? district,
      List<Location>? wards,
      String? ward,
      Future<List<Location>>? streetsFuture,
      String? street,
      Map<dynamic, dynamic>? location,
      double? complete,
      Listing listing,
      bool isSubmitting,
      bool isSuccess,
      bool saved,
      bool isedited,
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
    Object? countriesFuture = freezed,
    Object? country = freezed,
    Object? regions = freezed,
    Object? region = freezed,
    Object? districtsFuture = freezed,
    Object? district = freezed,
    Object? wards = freezed,
    Object? ward = freezed,
    Object? streetsFuture = freezed,
    Object? street = freezed,
    Object? location = freezed,
    Object? complete = freezed,
    Object? listing = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
    Object? saved = freezed,
    Object? isedited = freezed,
    Object? failureMessage = freezed,
  }) {
    return _then(_LocationState(
      countriesFuture: countriesFuture == freezed
          ? _value.countriesFuture
          : countriesFuture // ignore: cast_nullable_to_non_nullable
              as Future<List<Location>>?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      regions: regions == freezed
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<Location>?,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      districtsFuture: districtsFuture == freezed
          ? _value.districtsFuture
          : districtsFuture // ignore: cast_nullable_to_non_nullable
              as Future<List<Location>>?,
      district: district == freezed
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      wards: wards == freezed
          ? _value.wards
          : wards // ignore: cast_nullable_to_non_nullable
              as List<Location>?,
      ward: ward == freezed
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as String?,
      streetsFuture: streetsFuture == freezed
          ? _value.streetsFuture
          : streetsFuture // ignore: cast_nullable_to_non_nullable
              as Future<List<Location>>?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
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
      isedited: isedited == freezed
          ? _value.isedited
          : isedited // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: failureMessage == freezed
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_LocationState with DiagnosticableTreeMixin implements _LocationState {
  const _$_LocationState(
      {this.countriesFuture,
      this.country,
      this.regions,
      this.region,
      this.districtsFuture,
      this.district,
      this.wards,
      this.ward,
      this.streetsFuture,
      this.street,
      required this.location,
      this.complete,
      required this.listing,
      required this.isSubmitting,
      required this.isSuccess,
      required this.saved,
      required this.isedited,
      required this.failureMessage});

  @override
  final Future<List<Location>>? countriesFuture;
  @override
  final String? country;
  @override
  final List<Location>? regions;
  @override
  final String? region;
  @override
  final Future<List<Location>>? districtsFuture;
  @override
  final String? district;
  @override
  final List<Location>? wards;
  @override
  final String? ward;
  @override
  final Future<List<Location>>? streetsFuture;
  @override
  final String? street;
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
  final bool isedited;
  @override
  final String failureMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationState(countriesFuture: $countriesFuture, country: $country, regions: $regions, region: $region, districtsFuture: $districtsFuture, district: $district, wards: $wards, ward: $ward, streetsFuture: $streetsFuture, street: $street, location: $location, complete: $complete, listing: $listing, isSubmitting: $isSubmitting, isSuccess: $isSuccess, saved: $saved, isedited: $isedited, failureMessage: $failureMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationState'))
      ..add(DiagnosticsProperty('countriesFuture', countriesFuture))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('regions', regions))
      ..add(DiagnosticsProperty('region', region))
      ..add(DiagnosticsProperty('districtsFuture', districtsFuture))
      ..add(DiagnosticsProperty('district', district))
      ..add(DiagnosticsProperty('wards', wards))
      ..add(DiagnosticsProperty('ward', ward))
      ..add(DiagnosticsProperty('streetsFuture', streetsFuture))
      ..add(DiagnosticsProperty('street', street))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('complete', complete))
      ..add(DiagnosticsProperty('listing', listing))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('isSuccess', isSuccess))
      ..add(DiagnosticsProperty('saved', saved))
      ..add(DiagnosticsProperty('isedited', isedited))
      ..add(DiagnosticsProperty('failureMessage', failureMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationState &&
            (identical(other.countriesFuture, countriesFuture) ||
                const DeepCollectionEquality()
                    .equals(other.countriesFuture, countriesFuture)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.regions, regions) ||
                const DeepCollectionEquality()
                    .equals(other.regions, regions)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)) &&
            (identical(other.districtsFuture, districtsFuture) ||
                const DeepCollectionEquality()
                    .equals(other.districtsFuture, districtsFuture)) &&
            (identical(other.district, district) ||
                const DeepCollectionEquality()
                    .equals(other.district, district)) &&
            (identical(other.wards, wards) ||
                const DeepCollectionEquality().equals(other.wards, wards)) &&
            (identical(other.ward, ward) ||
                const DeepCollectionEquality().equals(other.ward, ward)) &&
            (identical(other.streetsFuture, streetsFuture) ||
                const DeepCollectionEquality()
                    .equals(other.streetsFuture, streetsFuture)) &&
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
            (identical(other.isedited, isedited) ||
                const DeepCollectionEquality()
                    .equals(other.isedited, isedited)) &&
            (identical(other.failureMessage, failureMessage) ||
                const DeepCollectionEquality()
                    .equals(other.failureMessage, failureMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(countriesFuture) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(regions) ^
      const DeepCollectionEquality().hash(region) ^
      const DeepCollectionEquality().hash(districtsFuture) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(wards) ^
      const DeepCollectionEquality().hash(ward) ^
      const DeepCollectionEquality().hash(streetsFuture) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(complete) ^
      const DeepCollectionEquality().hash(listing) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(saved) ^
      const DeepCollectionEquality().hash(isedited) ^
      const DeepCollectionEquality().hash(failureMessage);

  @JsonKey(ignore: true)
  @override
  _$LocationStateCopyWith<_LocationState> get copyWith =>
      __$LocationStateCopyWithImpl<_LocationState>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  const factory _LocationState(
      {Future<List<Location>>? countriesFuture,
      String? country,
      List<Location>? regions,
      String? region,
      Future<List<Location>>? districtsFuture,
      String? district,
      List<Location>? wards,
      String? ward,
      Future<List<Location>>? streetsFuture,
      String? street,
      required Map<dynamic, dynamic>? location,
      double? complete,
      required Listing listing,
      required bool isSubmitting,
      required bool isSuccess,
      required bool saved,
      required bool isedited,
      required String failureMessage}) = _$_LocationState;

  @override
  Future<List<Location>>? get countriesFuture =>
      throw _privateConstructorUsedError;
  @override
  String? get country => throw _privateConstructorUsedError;
  @override
  List<Location>? get regions => throw _privateConstructorUsedError;
  @override
  String? get region => throw _privateConstructorUsedError;
  @override
  Future<List<Location>>? get districtsFuture =>
      throw _privateConstructorUsedError;
  @override
  String? get district => throw _privateConstructorUsedError;
  @override
  List<Location>? get wards => throw _privateConstructorUsedError;
  @override
  String? get ward => throw _privateConstructorUsedError;
  @override
  Future<List<Location>>? get streetsFuture =>
      throw _privateConstructorUsedError;
  @override
  String? get street => throw _privateConstructorUsedError;
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
  bool get isedited => throw _privateConstructorUsedError;
  @override
  String get failureMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocationStateCopyWith<_LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}
