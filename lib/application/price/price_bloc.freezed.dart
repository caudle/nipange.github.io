// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'price_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PriceEventTearOff {
  const _$PriceEventTearOff();

  _Add add(Listing listing) {
    return _Add(
      listing,
    );
  }

  _DescChanged descChanged(String desc) {
    return _DescChanged(
      desc,
    );
  }

  _TermsChanged termsChanged(String terms) {
    return _TermsChanged(
      terms,
    );
  }

  _FeeChanged feeChanged(String fee) {
    return _FeeChanged(
      fee,
    );
  }

  _PriceChanged priceChanged(String price) {
    return _PriceChanged(
      price,
    );
  }

  _PerChanged perChanged(String value) {
    return _PerChanged(
      value,
    );
  }

  Save save() {
    return const Save();
  }
}

/// @nodoc
const $PriceEvent = _$PriceEventTearOff();

/// @nodoc
mixin _$PriceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String desc) descChanged,
    required TResult Function(String terms) termsChanged,
    required TResult Function(String fee) feeChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function(String value) perChanged,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String desc)? descChanged,
    TResult Function(String terms)? termsChanged,
    TResult Function(String fee)? feeChanged,
    TResult Function(String price)? priceChanged,
    TResult Function(String value)? perChanged,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_TermsChanged value) termsChanged,
    required TResult Function(_FeeChanged value) feeChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_PerChanged value) perChanged,
    required TResult Function(Save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_TermsChanged value)? termsChanged,
    TResult Function(_FeeChanged value)? feeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_PerChanged value)? perChanged,
    TResult Function(Save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceEventCopyWith<$Res> {
  factory $PriceEventCopyWith(
          PriceEvent value, $Res Function(PriceEvent) then) =
      _$PriceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PriceEventCopyWithImpl<$Res> implements $PriceEventCopyWith<$Res> {
  _$PriceEventCopyWithImpl(this._value, this._then);

  final PriceEvent _value;
  // ignore: unused_field
  final $Res Function(PriceEvent) _then;
}

/// @nodoc
abstract class _$AddCopyWith<$Res> {
  factory _$AddCopyWith(_Add value, $Res Function(_Add) then) =
      __$AddCopyWithImpl<$Res>;
  $Res call({Listing listing});
}

/// @nodoc
class __$AddCopyWithImpl<$Res> extends _$PriceEventCopyWithImpl<$Res>
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
    return 'PriceEvent.add(listing: $listing)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PriceEvent.add'))
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
    required TResult Function(String desc) descChanged,
    required TResult Function(String terms) termsChanged,
    required TResult Function(String fee) feeChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function(String value) perChanged,
    required TResult Function() save,
  }) {
    return add(listing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String desc)? descChanged,
    TResult Function(String terms)? termsChanged,
    TResult Function(String fee)? feeChanged,
    TResult Function(String price)? priceChanged,
    TResult Function(String value)? perChanged,
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
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_TermsChanged value) termsChanged,
    required TResult Function(_FeeChanged value) feeChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_PerChanged value) perChanged,
    required TResult Function(Save value) save,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_TermsChanged value)? termsChanged,
    TResult Function(_FeeChanged value)? feeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_PerChanged value)? perChanged,
    TResult Function(Save value)? save,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements PriceEvent {
  const factory _Add(Listing listing) = _$_Add;

  Listing get listing => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddCopyWith<_Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DescChangedCopyWith<$Res> {
  factory _$DescChangedCopyWith(
          _DescChanged value, $Res Function(_DescChanged) then) =
      __$DescChangedCopyWithImpl<$Res>;
  $Res call({String desc});
}

/// @nodoc
class __$DescChangedCopyWithImpl<$Res> extends _$PriceEventCopyWithImpl<$Res>
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
class _$_DescChanged with DiagnosticableTreeMixin implements _DescChanged {
  const _$_DescChanged(this.desc);

  @override
  final String desc;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PriceEvent.descChanged(desc: $desc)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PriceEvent.descChanged'))
      ..add(DiagnosticsProperty('desc', desc));
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
    required TResult Function(String desc) descChanged,
    required TResult Function(String terms) termsChanged,
    required TResult Function(String fee) feeChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function(String value) perChanged,
    required TResult Function() save,
  }) {
    return descChanged(desc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String desc)? descChanged,
    TResult Function(String terms)? termsChanged,
    TResult Function(String fee)? feeChanged,
    TResult Function(String price)? priceChanged,
    TResult Function(String value)? perChanged,
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
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_TermsChanged value) termsChanged,
    required TResult Function(_FeeChanged value) feeChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_PerChanged value) perChanged,
    required TResult Function(Save value) save,
  }) {
    return descChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_TermsChanged value)? termsChanged,
    TResult Function(_FeeChanged value)? feeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_PerChanged value)? perChanged,
    TResult Function(Save value)? save,
    required TResult orElse(),
  }) {
    if (descChanged != null) {
      return descChanged(this);
    }
    return orElse();
  }
}

abstract class _DescChanged implements PriceEvent {
  const factory _DescChanged(String desc) = _$_DescChanged;

  String get desc => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DescChangedCopyWith<_DescChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TermsChangedCopyWith<$Res> {
  factory _$TermsChangedCopyWith(
          _TermsChanged value, $Res Function(_TermsChanged) then) =
      __$TermsChangedCopyWithImpl<$Res>;
  $Res call({String terms});
}

/// @nodoc
class __$TermsChangedCopyWithImpl<$Res> extends _$PriceEventCopyWithImpl<$Res>
    implements _$TermsChangedCopyWith<$Res> {
  __$TermsChangedCopyWithImpl(
      _TermsChanged _value, $Res Function(_TermsChanged) _then)
      : super(_value, (v) => _then(v as _TermsChanged));

  @override
  _TermsChanged get _value => super._value as _TermsChanged;

  @override
  $Res call({
    Object? terms = freezed,
  }) {
    return _then(_TermsChanged(
      terms == freezed
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_TermsChanged with DiagnosticableTreeMixin implements _TermsChanged {
  const _$_TermsChanged(this.terms);

  @override
  final String terms;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PriceEvent.termsChanged(terms: $terms)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PriceEvent.termsChanged'))
      ..add(DiagnosticsProperty('terms', terms));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TermsChanged &&
            (identical(other.terms, terms) ||
                const DeepCollectionEquality().equals(other.terms, terms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(terms);

  @JsonKey(ignore: true)
  @override
  _$TermsChangedCopyWith<_TermsChanged> get copyWith =>
      __$TermsChangedCopyWithImpl<_TermsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String desc) descChanged,
    required TResult Function(String terms) termsChanged,
    required TResult Function(String fee) feeChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function(String value) perChanged,
    required TResult Function() save,
  }) {
    return termsChanged(terms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String desc)? descChanged,
    TResult Function(String terms)? termsChanged,
    TResult Function(String fee)? feeChanged,
    TResult Function(String price)? priceChanged,
    TResult Function(String value)? perChanged,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (termsChanged != null) {
      return termsChanged(terms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_TermsChanged value) termsChanged,
    required TResult Function(_FeeChanged value) feeChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_PerChanged value) perChanged,
    required TResult Function(Save value) save,
  }) {
    return termsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_TermsChanged value)? termsChanged,
    TResult Function(_FeeChanged value)? feeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_PerChanged value)? perChanged,
    TResult Function(Save value)? save,
    required TResult orElse(),
  }) {
    if (termsChanged != null) {
      return termsChanged(this);
    }
    return orElse();
  }
}

abstract class _TermsChanged implements PriceEvent {
  const factory _TermsChanged(String terms) = _$_TermsChanged;

  String get terms => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TermsChangedCopyWith<_TermsChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FeeChangedCopyWith<$Res> {
  factory _$FeeChangedCopyWith(
          _FeeChanged value, $Res Function(_FeeChanged) then) =
      __$FeeChangedCopyWithImpl<$Res>;
  $Res call({String fee});
}

/// @nodoc
class __$FeeChangedCopyWithImpl<$Res> extends _$PriceEventCopyWithImpl<$Res>
    implements _$FeeChangedCopyWith<$Res> {
  __$FeeChangedCopyWithImpl(
      _FeeChanged _value, $Res Function(_FeeChanged) _then)
      : super(_value, (v) => _then(v as _FeeChanged));

  @override
  _FeeChanged get _value => super._value as _FeeChanged;

  @override
  $Res call({
    Object? fee = freezed,
  }) {
    return _then(_FeeChanged(
      fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_FeeChanged with DiagnosticableTreeMixin implements _FeeChanged {
  const _$_FeeChanged(this.fee);

  @override
  final String fee;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PriceEvent.feeChanged(fee: $fee)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PriceEvent.feeChanged'))
      ..add(DiagnosticsProperty('fee', fee));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeeChanged &&
            (identical(other.fee, fee) ||
                const DeepCollectionEquality().equals(other.fee, fee)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fee);

  @JsonKey(ignore: true)
  @override
  _$FeeChangedCopyWith<_FeeChanged> get copyWith =>
      __$FeeChangedCopyWithImpl<_FeeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String desc) descChanged,
    required TResult Function(String terms) termsChanged,
    required TResult Function(String fee) feeChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function(String value) perChanged,
    required TResult Function() save,
  }) {
    return feeChanged(fee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String desc)? descChanged,
    TResult Function(String terms)? termsChanged,
    TResult Function(String fee)? feeChanged,
    TResult Function(String price)? priceChanged,
    TResult Function(String value)? perChanged,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (feeChanged != null) {
      return feeChanged(fee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_TermsChanged value) termsChanged,
    required TResult Function(_FeeChanged value) feeChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_PerChanged value) perChanged,
    required TResult Function(Save value) save,
  }) {
    return feeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_TermsChanged value)? termsChanged,
    TResult Function(_FeeChanged value)? feeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_PerChanged value)? perChanged,
    TResult Function(Save value)? save,
    required TResult orElse(),
  }) {
    if (feeChanged != null) {
      return feeChanged(this);
    }
    return orElse();
  }
}

abstract class _FeeChanged implements PriceEvent {
  const factory _FeeChanged(String fee) = _$_FeeChanged;

  String get fee => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FeeChangedCopyWith<_FeeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PriceChangedCopyWith<$Res> {
  factory _$PriceChangedCopyWith(
          _PriceChanged value, $Res Function(_PriceChanged) then) =
      __$PriceChangedCopyWithImpl<$Res>;
  $Res call({String price});
}

/// @nodoc
class __$PriceChangedCopyWithImpl<$Res> extends _$PriceEventCopyWithImpl<$Res>
    implements _$PriceChangedCopyWith<$Res> {
  __$PriceChangedCopyWithImpl(
      _PriceChanged _value, $Res Function(_PriceChanged) _then)
      : super(_value, (v) => _then(v as _PriceChanged));

  @override
  _PriceChanged get _value => super._value as _PriceChanged;

  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(_PriceChanged(
      price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_PriceChanged with DiagnosticableTreeMixin implements _PriceChanged {
  const _$_PriceChanged(this.price);

  @override
  final String price;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PriceEvent.priceChanged(price: $price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PriceEvent.priceChanged'))
      ..add(DiagnosticsProperty('price', price));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PriceChanged &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  _$PriceChangedCopyWith<_PriceChanged> get copyWith =>
      __$PriceChangedCopyWithImpl<_PriceChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String desc) descChanged,
    required TResult Function(String terms) termsChanged,
    required TResult Function(String fee) feeChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function(String value) perChanged,
    required TResult Function() save,
  }) {
    return priceChanged(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String desc)? descChanged,
    TResult Function(String terms)? termsChanged,
    TResult Function(String fee)? feeChanged,
    TResult Function(String price)? priceChanged,
    TResult Function(String value)? perChanged,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (priceChanged != null) {
      return priceChanged(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_TermsChanged value) termsChanged,
    required TResult Function(_FeeChanged value) feeChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_PerChanged value) perChanged,
    required TResult Function(Save value) save,
  }) {
    return priceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_TermsChanged value)? termsChanged,
    TResult Function(_FeeChanged value)? feeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_PerChanged value)? perChanged,
    TResult Function(Save value)? save,
    required TResult orElse(),
  }) {
    if (priceChanged != null) {
      return priceChanged(this);
    }
    return orElse();
  }
}

abstract class _PriceChanged implements PriceEvent {
  const factory _PriceChanged(String price) = _$_PriceChanged;

  String get price => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PriceChangedCopyWith<_PriceChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PerChangedCopyWith<$Res> {
  factory _$PerChangedCopyWith(
          _PerChanged value, $Res Function(_PerChanged) then) =
      __$PerChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$PerChangedCopyWithImpl<$Res> extends _$PriceEventCopyWithImpl<$Res>
    implements _$PerChangedCopyWith<$Res> {
  __$PerChangedCopyWithImpl(
      _PerChanged _value, $Res Function(_PerChanged) _then)
      : super(_value, (v) => _then(v as _PerChanged));

  @override
  _PerChanged get _value => super._value as _PerChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_PerChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_PerChanged with DiagnosticableTreeMixin implements _PerChanged {
  const _$_PerChanged(this.value);

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PriceEvent.perChanged(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PriceEvent.perChanged'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PerChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$PerChangedCopyWith<_PerChanged> get copyWith =>
      __$PerChangedCopyWithImpl<_PerChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(String desc) descChanged,
    required TResult Function(String terms) termsChanged,
    required TResult Function(String fee) feeChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function(String value) perChanged,
    required TResult Function() save,
  }) {
    return perChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String desc)? descChanged,
    TResult Function(String terms)? termsChanged,
    TResult Function(String fee)? feeChanged,
    TResult Function(String price)? priceChanged,
    TResult Function(String value)? perChanged,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (perChanged != null) {
      return perChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_TermsChanged value) termsChanged,
    required TResult Function(_FeeChanged value) feeChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_PerChanged value) perChanged,
    required TResult Function(Save value) save,
  }) {
    return perChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_TermsChanged value)? termsChanged,
    TResult Function(_FeeChanged value)? feeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_PerChanged value)? perChanged,
    TResult Function(Save value)? save,
    required TResult orElse(),
  }) {
    if (perChanged != null) {
      return perChanged(this);
    }
    return orElse();
  }
}

abstract class _PerChanged implements PriceEvent {
  const factory _PerChanged(String value) = _$_PerChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PerChangedCopyWith<_PerChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveCopyWith<$Res> {
  factory $SaveCopyWith(Save value, $Res Function(Save) then) =
      _$SaveCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveCopyWithImpl<$Res> extends _$PriceEventCopyWithImpl<$Res>
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
    return 'PriceEvent.save()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PriceEvent.save'));
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
    required TResult Function(String desc) descChanged,
    required TResult Function(String terms) termsChanged,
    required TResult Function(String fee) feeChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function(String value) perChanged,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(String desc)? descChanged,
    TResult Function(String terms)? termsChanged,
    TResult Function(String fee)? feeChanged,
    TResult Function(String price)? priceChanged,
    TResult Function(String value)? perChanged,
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
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_TermsChanged value) termsChanged,
    required TResult Function(_FeeChanged value) feeChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_PerChanged value) perChanged,
    required TResult Function(Save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_TermsChanged value)? termsChanged,
    TResult Function(_FeeChanged value)? feeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_PerChanged value)? perChanged,
    TResult Function(Save value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class Save implements PriceEvent {
  const factory Save() = _$Save;
}

/// @nodoc
class _$PriceStateTearOff {
  const _$PriceStateTearOff();

  _PriceState call(
      {required TextEditingController descController,
      required String desc,
      required TextEditingController termsDurationController,
      required String termsDuration,
      required List<String> perValues,
      required String perValue,
      required TextEditingController feeController,
      required String fee,
      required TextEditingController priceController,
      required String price,
      double? complete,
      required bool isSubmitting,
      required bool isSuccess,
      required bool isedited,
      required String failureMessage,
      required Listing listing}) {
    return _PriceState(
      descController: descController,
      desc: desc,
      termsDurationController: termsDurationController,
      termsDuration: termsDuration,
      perValues: perValues,
      perValue: perValue,
      feeController: feeController,
      fee: fee,
      priceController: priceController,
      price: price,
      complete: complete,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isedited: isedited,
      failureMessage: failureMessage,
      listing: listing,
    );
  }
}

/// @nodoc
const $PriceState = _$PriceStateTearOff();

/// @nodoc
mixin _$PriceState {
  TextEditingController get descController =>
      throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;
  TextEditingController get termsDurationController =>
      throw _privateConstructorUsedError;
  String get termsDuration => throw _privateConstructorUsedError; // 6 months
  List<String> get perValues =>
      throw _privateConstructorUsedError; // per night or per month
  String get perValue => throw _privateConstructorUsedError;
  TextEditingController get feeController => throw _privateConstructorUsedError;
  String get fee => throw _privateConstructorUsedError;
  TextEditingController get priceController =>
      throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  double? get complete => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get isedited => throw _privateConstructorUsedError;
  String get failureMessage => throw _privateConstructorUsedError;
  Listing get listing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PriceStateCopyWith<PriceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceStateCopyWith<$Res> {
  factory $PriceStateCopyWith(
          PriceState value, $Res Function(PriceState) then) =
      _$PriceStateCopyWithImpl<$Res>;
  $Res call(
      {TextEditingController descController,
      String desc,
      TextEditingController termsDurationController,
      String termsDuration,
      List<String> perValues,
      String perValue,
      TextEditingController feeController,
      String fee,
      TextEditingController priceController,
      String price,
      double? complete,
      bool isSubmitting,
      bool isSuccess,
      bool isedited,
      String failureMessage,
      Listing listing});
}

/// @nodoc
class _$PriceStateCopyWithImpl<$Res> implements $PriceStateCopyWith<$Res> {
  _$PriceStateCopyWithImpl(this._value, this._then);

  final PriceState _value;
  // ignore: unused_field
  final $Res Function(PriceState) _then;

  @override
  $Res call({
    Object? descController = freezed,
    Object? desc = freezed,
    Object? termsDurationController = freezed,
    Object? termsDuration = freezed,
    Object? perValues = freezed,
    Object? perValue = freezed,
    Object? feeController = freezed,
    Object? fee = freezed,
    Object? priceController = freezed,
    Object? price = freezed,
    Object? complete = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
    Object? isedited = freezed,
    Object? failureMessage = freezed,
    Object? listing = freezed,
  }) {
    return _then(_value.copyWith(
      descController: descController == freezed
          ? _value.descController
          : descController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      termsDurationController: termsDurationController == freezed
          ? _value.termsDurationController
          : termsDurationController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      termsDuration: termsDuration == freezed
          ? _value.termsDuration
          : termsDuration // ignore: cast_nullable_to_non_nullable
              as String,
      perValues: perValues == freezed
          ? _value.perValues
          : perValues // ignore: cast_nullable_to_non_nullable
              as List<String>,
      perValue: perValue == freezed
          ? _value.perValue
          : perValue // ignore: cast_nullable_to_non_nullable
              as String,
      feeController: feeController == freezed
          ? _value.feeController
          : feeController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String,
      priceController: priceController == freezed
          ? _value.priceController
          : priceController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      complete: complete == freezed
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as double?,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
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
abstract class _$PriceStateCopyWith<$Res> implements $PriceStateCopyWith<$Res> {
  factory _$PriceStateCopyWith(
          _PriceState value, $Res Function(_PriceState) then) =
      __$PriceStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TextEditingController descController,
      String desc,
      TextEditingController termsDurationController,
      String termsDuration,
      List<String> perValues,
      String perValue,
      TextEditingController feeController,
      String fee,
      TextEditingController priceController,
      String price,
      double? complete,
      bool isSubmitting,
      bool isSuccess,
      bool isedited,
      String failureMessage,
      Listing listing});
}

/// @nodoc
class __$PriceStateCopyWithImpl<$Res> extends _$PriceStateCopyWithImpl<$Res>
    implements _$PriceStateCopyWith<$Res> {
  __$PriceStateCopyWithImpl(
      _PriceState _value, $Res Function(_PriceState) _then)
      : super(_value, (v) => _then(v as _PriceState));

  @override
  _PriceState get _value => super._value as _PriceState;

  @override
  $Res call({
    Object? descController = freezed,
    Object? desc = freezed,
    Object? termsDurationController = freezed,
    Object? termsDuration = freezed,
    Object? perValues = freezed,
    Object? perValue = freezed,
    Object? feeController = freezed,
    Object? fee = freezed,
    Object? priceController = freezed,
    Object? price = freezed,
    Object? complete = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
    Object? isedited = freezed,
    Object? failureMessage = freezed,
    Object? listing = freezed,
  }) {
    return _then(_PriceState(
      descController: descController == freezed
          ? _value.descController
          : descController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      termsDurationController: termsDurationController == freezed
          ? _value.termsDurationController
          : termsDurationController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      termsDuration: termsDuration == freezed
          ? _value.termsDuration
          : termsDuration // ignore: cast_nullable_to_non_nullable
              as String,
      perValues: perValues == freezed
          ? _value.perValues
          : perValues // ignore: cast_nullable_to_non_nullable
              as List<String>,
      perValue: perValue == freezed
          ? _value.perValue
          : perValue // ignore: cast_nullable_to_non_nullable
              as String,
      feeController: feeController == freezed
          ? _value.feeController
          : feeController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String,
      priceController: priceController == freezed
          ? _value.priceController
          : priceController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      complete: complete == freezed
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as double?,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
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
class _$_PriceState with DiagnosticableTreeMixin implements _PriceState {
  const _$_PriceState(
      {required this.descController,
      required this.desc,
      required this.termsDurationController,
      required this.termsDuration,
      required this.perValues,
      required this.perValue,
      required this.feeController,
      required this.fee,
      required this.priceController,
      required this.price,
      this.complete,
      required this.isSubmitting,
      required this.isSuccess,
      required this.isedited,
      required this.failureMessage,
      required this.listing});

  @override
  final TextEditingController descController;
  @override
  final String desc;
  @override
  final TextEditingController termsDurationController;
  @override
  final String termsDuration;
  @override // 6 months
  final List<String> perValues;
  @override // per night or per month
  final String perValue;
  @override
  final TextEditingController feeController;
  @override
  final String fee;
  @override
  final TextEditingController priceController;
  @override
  final String price;
  @override
  final double? complete;
  @override
  final bool isSubmitting;
  @override
  final bool isSuccess;
  @override
  final bool isedited;
  @override
  final String failureMessage;
  @override
  final Listing listing;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PriceState(descController: $descController, desc: $desc, termsDurationController: $termsDurationController, termsDuration: $termsDuration, perValues: $perValues, perValue: $perValue, feeController: $feeController, fee: $fee, priceController: $priceController, price: $price, complete: $complete, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isedited: $isedited, failureMessage: $failureMessage, listing: $listing)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PriceState'))
      ..add(DiagnosticsProperty('descController', descController))
      ..add(DiagnosticsProperty('desc', desc))
      ..add(DiagnosticsProperty(
          'termsDurationController', termsDurationController))
      ..add(DiagnosticsProperty('termsDuration', termsDuration))
      ..add(DiagnosticsProperty('perValues', perValues))
      ..add(DiagnosticsProperty('perValue', perValue))
      ..add(DiagnosticsProperty('feeController', feeController))
      ..add(DiagnosticsProperty('fee', fee))
      ..add(DiagnosticsProperty('priceController', priceController))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('complete', complete))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('isSuccess', isSuccess))
      ..add(DiagnosticsProperty('isedited', isedited))
      ..add(DiagnosticsProperty('failureMessage', failureMessage))
      ..add(DiagnosticsProperty('listing', listing));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PriceState &&
            (identical(other.descController, descController) ||
                const DeepCollectionEquality()
                    .equals(other.descController, descController)) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)) &&
            (identical(
                    other.termsDurationController, termsDurationController) ||
                const DeepCollectionEquality().equals(
                    other.termsDurationController, termsDurationController)) &&
            (identical(other.termsDuration, termsDuration) ||
                const DeepCollectionEquality()
                    .equals(other.termsDuration, termsDuration)) &&
            (identical(other.perValues, perValues) ||
                const DeepCollectionEquality()
                    .equals(other.perValues, perValues)) &&
            (identical(other.perValue, perValue) ||
                const DeepCollectionEquality()
                    .equals(other.perValue, perValue)) &&
            (identical(other.feeController, feeController) ||
                const DeepCollectionEquality()
                    .equals(other.feeController, feeController)) &&
            (identical(other.fee, fee) ||
                const DeepCollectionEquality().equals(other.fee, fee)) &&
            (identical(other.priceController, priceController) ||
                const DeepCollectionEquality()
                    .equals(other.priceController, priceController)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.complete, complete) ||
                const DeepCollectionEquality()
                    .equals(other.complete, complete)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
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
      const DeepCollectionEquality().hash(descController) ^
      const DeepCollectionEquality().hash(desc) ^
      const DeepCollectionEquality().hash(termsDurationController) ^
      const DeepCollectionEquality().hash(termsDuration) ^
      const DeepCollectionEquality().hash(perValues) ^
      const DeepCollectionEquality().hash(perValue) ^
      const DeepCollectionEquality().hash(feeController) ^
      const DeepCollectionEquality().hash(fee) ^
      const DeepCollectionEquality().hash(priceController) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(complete) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isedited) ^
      const DeepCollectionEquality().hash(failureMessage) ^
      const DeepCollectionEquality().hash(listing);

  @JsonKey(ignore: true)
  @override
  _$PriceStateCopyWith<_PriceState> get copyWith =>
      __$PriceStateCopyWithImpl<_PriceState>(this, _$identity);
}

abstract class _PriceState implements PriceState {
  const factory _PriceState(
      {required TextEditingController descController,
      required String desc,
      required TextEditingController termsDurationController,
      required String termsDuration,
      required List<String> perValues,
      required String perValue,
      required TextEditingController feeController,
      required String fee,
      required TextEditingController priceController,
      required String price,
      double? complete,
      required bool isSubmitting,
      required bool isSuccess,
      required bool isedited,
      required String failureMessage,
      required Listing listing}) = _$_PriceState;

  @override
  TextEditingController get descController =>
      throw _privateConstructorUsedError;
  @override
  String get desc => throw _privateConstructorUsedError;
  @override
  TextEditingController get termsDurationController =>
      throw _privateConstructorUsedError;
  @override
  String get termsDuration => throw _privateConstructorUsedError;
  @override // 6 months
  List<String> get perValues => throw _privateConstructorUsedError;
  @override // per night or per month
  String get perValue => throw _privateConstructorUsedError;
  @override
  TextEditingController get feeController => throw _privateConstructorUsedError;
  @override
  String get fee => throw _privateConstructorUsedError;
  @override
  TextEditingController get priceController =>
      throw _privateConstructorUsedError;
  @override
  String get price => throw _privateConstructorUsedError;
  @override
  double? get complete => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get isSuccess => throw _privateConstructorUsedError;
  @override
  bool get isedited => throw _privateConstructorUsedError;
  @override
  String get failureMessage => throw _privateConstructorUsedError;
  @override
  Listing get listing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PriceStateCopyWith<_PriceState> get copyWith =>
      throw _privateConstructorUsedError;
}
