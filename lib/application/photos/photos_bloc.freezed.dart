// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'photos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhotosEventTearOff {
  const _$PhotosEventTearOff();

  _Add add(Listing listing) {
    return _Add(
      listing,
    );
  }

  _Image0Changed image0changed(File image0) {
    return _Image0Changed(
      image0,
    );
  }

  _Image1Changed image1changed(File image1) {
    return _Image1Changed(
      image1,
    );
  }

  _Image2Changed image2changed(File image2) {
    return _Image2Changed(
      image2,
    );
  }

  _Image3Changed image3changed(File image3) {
    return _Image3Changed(
      image3,
    );
  }

  _Image4Changed image4changed(File image4) {
    return _Image4Changed(
      image4,
    );
  }

  _Image5Changed image5changed(File image5) {
    return _Image5Changed(
      image5,
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
const $PhotosEvent = _$PhotosEventTearOff();

/// @nodoc
mixin _$PhotosEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(File image0) image0changed,
    required TResult Function(File image1) image1changed,
    required TResult Function(File image2) image2changed,
    required TResult Function(File image3) image3changed,
    required TResult Function(File image4) image4changed,
    required TResult Function(File image5) image5changed,
    required TResult Function() next,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(File image0)? image0changed,
    TResult Function(File image1)? image1changed,
    TResult Function(File image2)? image2changed,
    TResult Function(File image3)? image3changed,
    TResult Function(File image4)? image4changed,
    TResult Function(File image5)? image5changed,
    TResult Function()? next,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Image0Changed value) image0changed,
    required TResult Function(_Image1Changed value) image1changed,
    required TResult Function(_Image2Changed value) image2changed,
    required TResult Function(_Image3Changed value) image3changed,
    required TResult Function(_Image4Changed value) image4changed,
    required TResult Function(_Image5Changed value) image5changed,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Image0Changed value)? image0changed,
    TResult Function(_Image1Changed value)? image1changed,
    TResult Function(_Image2Changed value)? image2changed,
    TResult Function(_Image3Changed value)? image3changed,
    TResult Function(_Image4Changed value)? image4changed,
    TResult Function(_Image5Changed value)? image5changed,
    TResult Function(_Next value)? next,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosEventCopyWith<$Res> {
  factory $PhotosEventCopyWith(
          PhotosEvent value, $Res Function(PhotosEvent) then) =
      _$PhotosEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhotosEventCopyWithImpl<$Res> implements $PhotosEventCopyWith<$Res> {
  _$PhotosEventCopyWithImpl(this._value, this._then);

  final PhotosEvent _value;
  // ignore: unused_field
  final $Res Function(PhotosEvent) _then;
}

/// @nodoc
abstract class _$AddCopyWith<$Res> {
  factory _$AddCopyWith(_Add value, $Res Function(_Add) then) =
      __$AddCopyWithImpl<$Res>;
  $Res call({Listing listing});
}

/// @nodoc
class __$AddCopyWithImpl<$Res> extends _$PhotosEventCopyWithImpl<$Res>
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
    return 'PhotosEvent.add(listing: $listing)';
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
    required TResult Function(File image0) image0changed,
    required TResult Function(File image1) image1changed,
    required TResult Function(File image2) image2changed,
    required TResult Function(File image3) image3changed,
    required TResult Function(File image4) image4changed,
    required TResult Function(File image5) image5changed,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return add(listing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(File image0)? image0changed,
    TResult Function(File image1)? image1changed,
    TResult Function(File image2)? image2changed,
    TResult Function(File image3)? image3changed,
    TResult Function(File image4)? image4changed,
    TResult Function(File image5)? image5changed,
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
    required TResult Function(_Image0Changed value) image0changed,
    required TResult Function(_Image1Changed value) image1changed,
    required TResult Function(_Image2Changed value) image2changed,
    required TResult Function(_Image3Changed value) image3changed,
    required TResult Function(_Image4Changed value) image4changed,
    required TResult Function(_Image5Changed value) image5changed,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Image0Changed value)? image0changed,
    TResult Function(_Image1Changed value)? image1changed,
    TResult Function(_Image2Changed value)? image2changed,
    TResult Function(_Image3Changed value)? image3changed,
    TResult Function(_Image4Changed value)? image4changed,
    TResult Function(_Image5Changed value)? image5changed,
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

abstract class _Add implements PhotosEvent {
  const factory _Add(Listing listing) = _$_Add;

  Listing get listing => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddCopyWith<_Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$Image0ChangedCopyWith<$Res> {
  factory _$Image0ChangedCopyWith(
          _Image0Changed value, $Res Function(_Image0Changed) then) =
      __$Image0ChangedCopyWithImpl<$Res>;
  $Res call({File image0});
}

/// @nodoc
class __$Image0ChangedCopyWithImpl<$Res> extends _$PhotosEventCopyWithImpl<$Res>
    implements _$Image0ChangedCopyWith<$Res> {
  __$Image0ChangedCopyWithImpl(
      _Image0Changed _value, $Res Function(_Image0Changed) _then)
      : super(_value, (v) => _then(v as _Image0Changed));

  @override
  _Image0Changed get _value => super._value as _Image0Changed;

  @override
  $Res call({
    Object? image0 = freezed,
  }) {
    return _then(_Image0Changed(
      image0 == freezed
          ? _value.image0
          : image0 // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc
class _$_Image0Changed implements _Image0Changed {
  const _$_Image0Changed(this.image0);

  @override
  final File image0;

  @override
  String toString() {
    return 'PhotosEvent.image0changed(image0: $image0)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Image0Changed &&
            (identical(other.image0, image0) ||
                const DeepCollectionEquality().equals(other.image0, image0)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(image0);

  @JsonKey(ignore: true)
  @override
  _$Image0ChangedCopyWith<_Image0Changed> get copyWith =>
      __$Image0ChangedCopyWithImpl<_Image0Changed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(File image0) image0changed,
    required TResult Function(File image1) image1changed,
    required TResult Function(File image2) image2changed,
    required TResult Function(File image3) image3changed,
    required TResult Function(File image4) image4changed,
    required TResult Function(File image5) image5changed,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return image0changed(image0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(File image0)? image0changed,
    TResult Function(File image1)? image1changed,
    TResult Function(File image2)? image2changed,
    TResult Function(File image3)? image3changed,
    TResult Function(File image4)? image4changed,
    TResult Function(File image5)? image5changed,
    TResult Function()? next,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (image0changed != null) {
      return image0changed(image0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Image0Changed value) image0changed,
    required TResult Function(_Image1Changed value) image1changed,
    required TResult Function(_Image2Changed value) image2changed,
    required TResult Function(_Image3Changed value) image3changed,
    required TResult Function(_Image4Changed value) image4changed,
    required TResult Function(_Image5Changed value) image5changed,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return image0changed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Image0Changed value)? image0changed,
    TResult Function(_Image1Changed value)? image1changed,
    TResult Function(_Image2Changed value)? image2changed,
    TResult Function(_Image3Changed value)? image3changed,
    TResult Function(_Image4Changed value)? image4changed,
    TResult Function(_Image5Changed value)? image5changed,
    TResult Function(_Next value)? next,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (image0changed != null) {
      return image0changed(this);
    }
    return orElse();
  }
}

abstract class _Image0Changed implements PhotosEvent {
  const factory _Image0Changed(File image0) = _$_Image0Changed;

  File get image0 => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$Image0ChangedCopyWith<_Image0Changed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$Image1ChangedCopyWith<$Res> {
  factory _$Image1ChangedCopyWith(
          _Image1Changed value, $Res Function(_Image1Changed) then) =
      __$Image1ChangedCopyWithImpl<$Res>;
  $Res call({File image1});
}

/// @nodoc
class __$Image1ChangedCopyWithImpl<$Res> extends _$PhotosEventCopyWithImpl<$Res>
    implements _$Image1ChangedCopyWith<$Res> {
  __$Image1ChangedCopyWithImpl(
      _Image1Changed _value, $Res Function(_Image1Changed) _then)
      : super(_value, (v) => _then(v as _Image1Changed));

  @override
  _Image1Changed get _value => super._value as _Image1Changed;

  @override
  $Res call({
    Object? image1 = freezed,
  }) {
    return _then(_Image1Changed(
      image1 == freezed
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc
class _$_Image1Changed implements _Image1Changed {
  const _$_Image1Changed(this.image1);

  @override
  final File image1;

  @override
  String toString() {
    return 'PhotosEvent.image1changed(image1: $image1)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Image1Changed &&
            (identical(other.image1, image1) ||
                const DeepCollectionEquality().equals(other.image1, image1)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(image1);

  @JsonKey(ignore: true)
  @override
  _$Image1ChangedCopyWith<_Image1Changed> get copyWith =>
      __$Image1ChangedCopyWithImpl<_Image1Changed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(File image0) image0changed,
    required TResult Function(File image1) image1changed,
    required TResult Function(File image2) image2changed,
    required TResult Function(File image3) image3changed,
    required TResult Function(File image4) image4changed,
    required TResult Function(File image5) image5changed,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return image1changed(image1);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(File image0)? image0changed,
    TResult Function(File image1)? image1changed,
    TResult Function(File image2)? image2changed,
    TResult Function(File image3)? image3changed,
    TResult Function(File image4)? image4changed,
    TResult Function(File image5)? image5changed,
    TResult Function()? next,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (image1changed != null) {
      return image1changed(image1);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Image0Changed value) image0changed,
    required TResult Function(_Image1Changed value) image1changed,
    required TResult Function(_Image2Changed value) image2changed,
    required TResult Function(_Image3Changed value) image3changed,
    required TResult Function(_Image4Changed value) image4changed,
    required TResult Function(_Image5Changed value) image5changed,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return image1changed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Image0Changed value)? image0changed,
    TResult Function(_Image1Changed value)? image1changed,
    TResult Function(_Image2Changed value)? image2changed,
    TResult Function(_Image3Changed value)? image3changed,
    TResult Function(_Image4Changed value)? image4changed,
    TResult Function(_Image5Changed value)? image5changed,
    TResult Function(_Next value)? next,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (image1changed != null) {
      return image1changed(this);
    }
    return orElse();
  }
}

abstract class _Image1Changed implements PhotosEvent {
  const factory _Image1Changed(File image1) = _$_Image1Changed;

  File get image1 => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$Image1ChangedCopyWith<_Image1Changed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$Image2ChangedCopyWith<$Res> {
  factory _$Image2ChangedCopyWith(
          _Image2Changed value, $Res Function(_Image2Changed) then) =
      __$Image2ChangedCopyWithImpl<$Res>;
  $Res call({File image2});
}

/// @nodoc
class __$Image2ChangedCopyWithImpl<$Res> extends _$PhotosEventCopyWithImpl<$Res>
    implements _$Image2ChangedCopyWith<$Res> {
  __$Image2ChangedCopyWithImpl(
      _Image2Changed _value, $Res Function(_Image2Changed) _then)
      : super(_value, (v) => _then(v as _Image2Changed));

  @override
  _Image2Changed get _value => super._value as _Image2Changed;

  @override
  $Res call({
    Object? image2 = freezed,
  }) {
    return _then(_Image2Changed(
      image2 == freezed
          ? _value.image2
          : image2 // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc
class _$_Image2Changed implements _Image2Changed {
  const _$_Image2Changed(this.image2);

  @override
  final File image2;

  @override
  String toString() {
    return 'PhotosEvent.image2changed(image2: $image2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Image2Changed &&
            (identical(other.image2, image2) ||
                const DeepCollectionEquality().equals(other.image2, image2)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(image2);

  @JsonKey(ignore: true)
  @override
  _$Image2ChangedCopyWith<_Image2Changed> get copyWith =>
      __$Image2ChangedCopyWithImpl<_Image2Changed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(File image0) image0changed,
    required TResult Function(File image1) image1changed,
    required TResult Function(File image2) image2changed,
    required TResult Function(File image3) image3changed,
    required TResult Function(File image4) image4changed,
    required TResult Function(File image5) image5changed,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return image2changed(image2);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(File image0)? image0changed,
    TResult Function(File image1)? image1changed,
    TResult Function(File image2)? image2changed,
    TResult Function(File image3)? image3changed,
    TResult Function(File image4)? image4changed,
    TResult Function(File image5)? image5changed,
    TResult Function()? next,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (image2changed != null) {
      return image2changed(image2);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Image0Changed value) image0changed,
    required TResult Function(_Image1Changed value) image1changed,
    required TResult Function(_Image2Changed value) image2changed,
    required TResult Function(_Image3Changed value) image3changed,
    required TResult Function(_Image4Changed value) image4changed,
    required TResult Function(_Image5Changed value) image5changed,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return image2changed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Image0Changed value)? image0changed,
    TResult Function(_Image1Changed value)? image1changed,
    TResult Function(_Image2Changed value)? image2changed,
    TResult Function(_Image3Changed value)? image3changed,
    TResult Function(_Image4Changed value)? image4changed,
    TResult Function(_Image5Changed value)? image5changed,
    TResult Function(_Next value)? next,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (image2changed != null) {
      return image2changed(this);
    }
    return orElse();
  }
}

abstract class _Image2Changed implements PhotosEvent {
  const factory _Image2Changed(File image2) = _$_Image2Changed;

  File get image2 => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$Image2ChangedCopyWith<_Image2Changed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$Image3ChangedCopyWith<$Res> {
  factory _$Image3ChangedCopyWith(
          _Image3Changed value, $Res Function(_Image3Changed) then) =
      __$Image3ChangedCopyWithImpl<$Res>;
  $Res call({File image3});
}

/// @nodoc
class __$Image3ChangedCopyWithImpl<$Res> extends _$PhotosEventCopyWithImpl<$Res>
    implements _$Image3ChangedCopyWith<$Res> {
  __$Image3ChangedCopyWithImpl(
      _Image3Changed _value, $Res Function(_Image3Changed) _then)
      : super(_value, (v) => _then(v as _Image3Changed));

  @override
  _Image3Changed get _value => super._value as _Image3Changed;

  @override
  $Res call({
    Object? image3 = freezed,
  }) {
    return _then(_Image3Changed(
      image3 == freezed
          ? _value.image3
          : image3 // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc
class _$_Image3Changed implements _Image3Changed {
  const _$_Image3Changed(this.image3);

  @override
  final File image3;

  @override
  String toString() {
    return 'PhotosEvent.image3changed(image3: $image3)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Image3Changed &&
            (identical(other.image3, image3) ||
                const DeepCollectionEquality().equals(other.image3, image3)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(image3);

  @JsonKey(ignore: true)
  @override
  _$Image3ChangedCopyWith<_Image3Changed> get copyWith =>
      __$Image3ChangedCopyWithImpl<_Image3Changed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(File image0) image0changed,
    required TResult Function(File image1) image1changed,
    required TResult Function(File image2) image2changed,
    required TResult Function(File image3) image3changed,
    required TResult Function(File image4) image4changed,
    required TResult Function(File image5) image5changed,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return image3changed(image3);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(File image0)? image0changed,
    TResult Function(File image1)? image1changed,
    TResult Function(File image2)? image2changed,
    TResult Function(File image3)? image3changed,
    TResult Function(File image4)? image4changed,
    TResult Function(File image5)? image5changed,
    TResult Function()? next,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (image3changed != null) {
      return image3changed(image3);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Image0Changed value) image0changed,
    required TResult Function(_Image1Changed value) image1changed,
    required TResult Function(_Image2Changed value) image2changed,
    required TResult Function(_Image3Changed value) image3changed,
    required TResult Function(_Image4Changed value) image4changed,
    required TResult Function(_Image5Changed value) image5changed,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return image3changed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Image0Changed value)? image0changed,
    TResult Function(_Image1Changed value)? image1changed,
    TResult Function(_Image2Changed value)? image2changed,
    TResult Function(_Image3Changed value)? image3changed,
    TResult Function(_Image4Changed value)? image4changed,
    TResult Function(_Image5Changed value)? image5changed,
    TResult Function(_Next value)? next,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (image3changed != null) {
      return image3changed(this);
    }
    return orElse();
  }
}

abstract class _Image3Changed implements PhotosEvent {
  const factory _Image3Changed(File image3) = _$_Image3Changed;

  File get image3 => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$Image3ChangedCopyWith<_Image3Changed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$Image4ChangedCopyWith<$Res> {
  factory _$Image4ChangedCopyWith(
          _Image4Changed value, $Res Function(_Image4Changed) then) =
      __$Image4ChangedCopyWithImpl<$Res>;
  $Res call({File image4});
}

/// @nodoc
class __$Image4ChangedCopyWithImpl<$Res> extends _$PhotosEventCopyWithImpl<$Res>
    implements _$Image4ChangedCopyWith<$Res> {
  __$Image4ChangedCopyWithImpl(
      _Image4Changed _value, $Res Function(_Image4Changed) _then)
      : super(_value, (v) => _then(v as _Image4Changed));

  @override
  _Image4Changed get _value => super._value as _Image4Changed;

  @override
  $Res call({
    Object? image4 = freezed,
  }) {
    return _then(_Image4Changed(
      image4 == freezed
          ? _value.image4
          : image4 // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc
class _$_Image4Changed implements _Image4Changed {
  const _$_Image4Changed(this.image4);

  @override
  final File image4;

  @override
  String toString() {
    return 'PhotosEvent.image4changed(image4: $image4)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Image4Changed &&
            (identical(other.image4, image4) ||
                const DeepCollectionEquality().equals(other.image4, image4)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(image4);

  @JsonKey(ignore: true)
  @override
  _$Image4ChangedCopyWith<_Image4Changed> get copyWith =>
      __$Image4ChangedCopyWithImpl<_Image4Changed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(File image0) image0changed,
    required TResult Function(File image1) image1changed,
    required TResult Function(File image2) image2changed,
    required TResult Function(File image3) image3changed,
    required TResult Function(File image4) image4changed,
    required TResult Function(File image5) image5changed,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return image4changed(image4);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(File image0)? image0changed,
    TResult Function(File image1)? image1changed,
    TResult Function(File image2)? image2changed,
    TResult Function(File image3)? image3changed,
    TResult Function(File image4)? image4changed,
    TResult Function(File image5)? image5changed,
    TResult Function()? next,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (image4changed != null) {
      return image4changed(image4);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Image0Changed value) image0changed,
    required TResult Function(_Image1Changed value) image1changed,
    required TResult Function(_Image2Changed value) image2changed,
    required TResult Function(_Image3Changed value) image3changed,
    required TResult Function(_Image4Changed value) image4changed,
    required TResult Function(_Image5Changed value) image5changed,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return image4changed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Image0Changed value)? image0changed,
    TResult Function(_Image1Changed value)? image1changed,
    TResult Function(_Image2Changed value)? image2changed,
    TResult Function(_Image3Changed value)? image3changed,
    TResult Function(_Image4Changed value)? image4changed,
    TResult Function(_Image5Changed value)? image5changed,
    TResult Function(_Next value)? next,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (image4changed != null) {
      return image4changed(this);
    }
    return orElse();
  }
}

abstract class _Image4Changed implements PhotosEvent {
  const factory _Image4Changed(File image4) = _$_Image4Changed;

  File get image4 => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$Image4ChangedCopyWith<_Image4Changed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$Image5ChangedCopyWith<$Res> {
  factory _$Image5ChangedCopyWith(
          _Image5Changed value, $Res Function(_Image5Changed) then) =
      __$Image5ChangedCopyWithImpl<$Res>;
  $Res call({File image5});
}

/// @nodoc
class __$Image5ChangedCopyWithImpl<$Res> extends _$PhotosEventCopyWithImpl<$Res>
    implements _$Image5ChangedCopyWith<$Res> {
  __$Image5ChangedCopyWithImpl(
      _Image5Changed _value, $Res Function(_Image5Changed) _then)
      : super(_value, (v) => _then(v as _Image5Changed));

  @override
  _Image5Changed get _value => super._value as _Image5Changed;

  @override
  $Res call({
    Object? image5 = freezed,
  }) {
    return _then(_Image5Changed(
      image5 == freezed
          ? _value.image5
          : image5 // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc
class _$_Image5Changed implements _Image5Changed {
  const _$_Image5Changed(this.image5);

  @override
  final File image5;

  @override
  String toString() {
    return 'PhotosEvent.image5changed(image5: $image5)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Image5Changed &&
            (identical(other.image5, image5) ||
                const DeepCollectionEquality().equals(other.image5, image5)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(image5);

  @JsonKey(ignore: true)
  @override
  _$Image5ChangedCopyWith<_Image5Changed> get copyWith =>
      __$Image5ChangedCopyWithImpl<_Image5Changed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(File image0) image0changed,
    required TResult Function(File image1) image1changed,
    required TResult Function(File image2) image2changed,
    required TResult Function(File image3) image3changed,
    required TResult Function(File image4) image4changed,
    required TResult Function(File image5) image5changed,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return image5changed(image5);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(File image0)? image0changed,
    TResult Function(File image1)? image1changed,
    TResult Function(File image2)? image2changed,
    TResult Function(File image3)? image3changed,
    TResult Function(File image4)? image4changed,
    TResult Function(File image5)? image5changed,
    TResult Function()? next,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (image5changed != null) {
      return image5changed(image5);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Image0Changed value) image0changed,
    required TResult Function(_Image1Changed value) image1changed,
    required TResult Function(_Image2Changed value) image2changed,
    required TResult Function(_Image3Changed value) image3changed,
    required TResult Function(_Image4Changed value) image4changed,
    required TResult Function(_Image5Changed value) image5changed,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return image5changed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Image0Changed value)? image0changed,
    TResult Function(_Image1Changed value)? image1changed,
    TResult Function(_Image2Changed value)? image2changed,
    TResult Function(_Image3Changed value)? image3changed,
    TResult Function(_Image4Changed value)? image4changed,
    TResult Function(_Image5Changed value)? image5changed,
    TResult Function(_Next value)? next,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (image5changed != null) {
      return image5changed(this);
    }
    return orElse();
  }
}

abstract class _Image5Changed implements PhotosEvent {
  const factory _Image5Changed(File image5) = _$_Image5Changed;

  File get image5 => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$Image5ChangedCopyWith<_Image5Changed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NextCopyWith<$Res> {
  factory _$NextCopyWith(_Next value, $Res Function(_Next) then) =
      __$NextCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextCopyWithImpl<$Res> extends _$PhotosEventCopyWithImpl<$Res>
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
    return 'PhotosEvent.next()';
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
    required TResult Function(File image0) image0changed,
    required TResult Function(File image1) image1changed,
    required TResult Function(File image2) image2changed,
    required TResult Function(File image3) image3changed,
    required TResult Function(File image4) image4changed,
    required TResult Function(File image5) image5changed,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return next();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(File image0)? image0changed,
    TResult Function(File image1)? image1changed,
    TResult Function(File image2)? image2changed,
    TResult Function(File image3)? image3changed,
    TResult Function(File image4)? image4changed,
    TResult Function(File image5)? image5changed,
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
    required TResult Function(_Image0Changed value) image0changed,
    required TResult Function(_Image1Changed value) image1changed,
    required TResult Function(_Image2Changed value) image2changed,
    required TResult Function(_Image3Changed value) image3changed,
    required TResult Function(_Image4Changed value) image4changed,
    required TResult Function(_Image5Changed value) image5changed,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return next(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Image0Changed value)? image0changed,
    TResult Function(_Image1Changed value)? image1changed,
    TResult Function(_Image2Changed value)? image2changed,
    TResult Function(_Image3Changed value)? image3changed,
    TResult Function(_Image4Changed value)? image4changed,
    TResult Function(_Image5Changed value)? image5changed,
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

abstract class _Next implements PhotosEvent {
  const factory _Next() = _$_Next;
}

/// @nodoc
abstract class _$SaveCopyWith<$Res> {
  factory _$SaveCopyWith(_Save value, $Res Function(_Save) then) =
      __$SaveCopyWithImpl<$Res>;
}

/// @nodoc
class __$SaveCopyWithImpl<$Res> extends _$PhotosEventCopyWithImpl<$Res>
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
    return 'PhotosEvent.save()';
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
    required TResult Function(File image0) image0changed,
    required TResult Function(File image1) image1changed,
    required TResult Function(File image2) image2changed,
    required TResult Function(File image3) image3changed,
    required TResult Function(File image4) image4changed,
    required TResult Function(File image5) image5changed,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(File image0)? image0changed,
    TResult Function(File image1)? image1changed,
    TResult Function(File image2)? image2changed,
    TResult Function(File image3)? image3changed,
    TResult Function(File image4)? image4changed,
    TResult Function(File image5)? image5changed,
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
    required TResult Function(_Image0Changed value) image0changed,
    required TResult Function(_Image1Changed value) image1changed,
    required TResult Function(_Image2Changed value) image2changed,
    required TResult Function(_Image3Changed value) image3changed,
    required TResult Function(_Image4Changed value) image4changed,
    required TResult Function(_Image5Changed value) image5changed,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Image0Changed value)? image0changed,
    TResult Function(_Image1Changed value)? image1changed,
    TResult Function(_Image2Changed value)? image2changed,
    TResult Function(_Image3Changed value)? image3changed,
    TResult Function(_Image4Changed value)? image4changed,
    TResult Function(_Image5Changed value)? image5changed,
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

abstract class _Save implements PhotosEvent {
  const factory _Save() = _$_Save;
}

/// @nodoc
class _$PhotosStateTearOff {
  const _$PhotosStateTearOff();

  _PhotosState call(
      {required File? image0,
      required File? image1,
      required File? image2,
      required File? image3,
      required File? image4,
      required File? image5,
      required List<String>? images,
      double? complete,
      required bool isSubmitting,
      required bool isSuccess,
      required bool saved,
      required String failureMessage,
      required Listing listing}) {
    return _PhotosState(
      image0: image0,
      image1: image1,
      image2: image2,
      image3: image3,
      image4: image4,
      image5: image5,
      images: images,
      complete: complete,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      saved: saved,
      failureMessage: failureMessage,
      listing: listing,
    );
  }
}

/// @nodoc
const $PhotosState = _$PhotosStateTearOff();

/// @nodoc
mixin _$PhotosState {
  File? get image0 => throw _privateConstructorUsedError;
  File? get image1 => throw _privateConstructorUsedError;
  File? get image2 => throw _privateConstructorUsedError;
  File? get image3 => throw _privateConstructorUsedError;
  File? get image4 => throw _privateConstructorUsedError;
  File? get image5 => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  double? get complete => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get saved => throw _privateConstructorUsedError;
  String get failureMessage => throw _privateConstructorUsedError;
  Listing get listing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotosStateCopyWith<PhotosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosStateCopyWith<$Res> {
  factory $PhotosStateCopyWith(
          PhotosState value, $Res Function(PhotosState) then) =
      _$PhotosStateCopyWithImpl<$Res>;
  $Res call(
      {File? image0,
      File? image1,
      File? image2,
      File? image3,
      File? image4,
      File? image5,
      List<String>? images,
      double? complete,
      bool isSubmitting,
      bool isSuccess,
      bool saved,
      String failureMessage,
      Listing listing});
}

/// @nodoc
class _$PhotosStateCopyWithImpl<$Res> implements $PhotosStateCopyWith<$Res> {
  _$PhotosStateCopyWithImpl(this._value, this._then);

  final PhotosState _value;
  // ignore: unused_field
  final $Res Function(PhotosState) _then;

  @override
  $Res call({
    Object? image0 = freezed,
    Object? image1 = freezed,
    Object? image2 = freezed,
    Object? image3 = freezed,
    Object? image4 = freezed,
    Object? image5 = freezed,
    Object? images = freezed,
    Object? complete = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
    Object? saved = freezed,
    Object? failureMessage = freezed,
    Object? listing = freezed,
  }) {
    return _then(_value.copyWith(
      image0: image0 == freezed
          ? _value.image0
          : image0 // ignore: cast_nullable_to_non_nullable
              as File?,
      image1: image1 == freezed
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as File?,
      image2: image2 == freezed
          ? _value.image2
          : image2 // ignore: cast_nullable_to_non_nullable
              as File?,
      image3: image3 == freezed
          ? _value.image3
          : image3 // ignore: cast_nullable_to_non_nullable
              as File?,
      image4: image4 == freezed
          ? _value.image4
          : image4 // ignore: cast_nullable_to_non_nullable
              as File?,
      image5: image5 == freezed
          ? _value.image5
          : image5 // ignore: cast_nullable_to_non_nullable
              as File?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
abstract class _$PhotosStateCopyWith<$Res>
    implements $PhotosStateCopyWith<$Res> {
  factory _$PhotosStateCopyWith(
          _PhotosState value, $Res Function(_PhotosState) then) =
      __$PhotosStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {File? image0,
      File? image1,
      File? image2,
      File? image3,
      File? image4,
      File? image5,
      List<String>? images,
      double? complete,
      bool isSubmitting,
      bool isSuccess,
      bool saved,
      String failureMessage,
      Listing listing});
}

/// @nodoc
class __$PhotosStateCopyWithImpl<$Res> extends _$PhotosStateCopyWithImpl<$Res>
    implements _$PhotosStateCopyWith<$Res> {
  __$PhotosStateCopyWithImpl(
      _PhotosState _value, $Res Function(_PhotosState) _then)
      : super(_value, (v) => _then(v as _PhotosState));

  @override
  _PhotosState get _value => super._value as _PhotosState;

  @override
  $Res call({
    Object? image0 = freezed,
    Object? image1 = freezed,
    Object? image2 = freezed,
    Object? image3 = freezed,
    Object? image4 = freezed,
    Object? image5 = freezed,
    Object? images = freezed,
    Object? complete = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
    Object? saved = freezed,
    Object? failureMessage = freezed,
    Object? listing = freezed,
  }) {
    return _then(_PhotosState(
      image0: image0 == freezed
          ? _value.image0
          : image0 // ignore: cast_nullable_to_non_nullable
              as File?,
      image1: image1 == freezed
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as File?,
      image2: image2 == freezed
          ? _value.image2
          : image2 // ignore: cast_nullable_to_non_nullable
              as File?,
      image3: image3 == freezed
          ? _value.image3
          : image3 // ignore: cast_nullable_to_non_nullable
              as File?,
      image4: image4 == freezed
          ? _value.image4
          : image4 // ignore: cast_nullable_to_non_nullable
              as File?,
      image5: image5 == freezed
          ? _value.image5
          : image5 // ignore: cast_nullable_to_non_nullable
              as File?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
class _$_PhotosState implements _PhotosState {
  const _$_PhotosState(
      {required this.image0,
      required this.image1,
      required this.image2,
      required this.image3,
      required this.image4,
      required this.image5,
      required this.images,
      this.complete,
      required this.isSubmitting,
      required this.isSuccess,
      required this.saved,
      required this.failureMessage,
      required this.listing});

  @override
  final File? image0;
  @override
  final File? image1;
  @override
  final File? image2;
  @override
  final File? image3;
  @override
  final File? image4;
  @override
  final File? image5;
  @override
  final List<String>? images;
  @override
  final double? complete;
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
    return 'PhotosState(image0: $image0, image1: $image1, image2: $image2, image3: $image3, image4: $image4, image5: $image5, images: $images, complete: $complete, isSubmitting: $isSubmitting, isSuccess: $isSuccess, saved: $saved, failureMessage: $failureMessage, listing: $listing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhotosState &&
            (identical(other.image0, image0) ||
                const DeepCollectionEquality().equals(other.image0, image0)) &&
            (identical(other.image1, image1) ||
                const DeepCollectionEquality().equals(other.image1, image1)) &&
            (identical(other.image2, image2) ||
                const DeepCollectionEquality().equals(other.image2, image2)) &&
            (identical(other.image3, image3) ||
                const DeepCollectionEquality().equals(other.image3, image3)) &&
            (identical(other.image4, image4) ||
                const DeepCollectionEquality().equals(other.image4, image4)) &&
            (identical(other.image5, image5) ||
                const DeepCollectionEquality().equals(other.image5, image5)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.complete, complete) ||
                const DeepCollectionEquality()
                    .equals(other.complete, complete)) &&
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
      const DeepCollectionEquality().hash(image0) ^
      const DeepCollectionEquality().hash(image1) ^
      const DeepCollectionEquality().hash(image2) ^
      const DeepCollectionEquality().hash(image3) ^
      const DeepCollectionEquality().hash(image4) ^
      const DeepCollectionEquality().hash(image5) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(complete) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(saved) ^
      const DeepCollectionEquality().hash(failureMessage) ^
      const DeepCollectionEquality().hash(listing);

  @JsonKey(ignore: true)
  @override
  _$PhotosStateCopyWith<_PhotosState> get copyWith =>
      __$PhotosStateCopyWithImpl<_PhotosState>(this, _$identity);
}

abstract class _PhotosState implements PhotosState {
  const factory _PhotosState(
      {required File? image0,
      required File? image1,
      required File? image2,
      required File? image3,
      required File? image4,
      required File? image5,
      required List<String>? images,
      double? complete,
      required bool isSubmitting,
      required bool isSuccess,
      required bool saved,
      required String failureMessage,
      required Listing listing}) = _$_PhotosState;

  @override
  File? get image0 => throw _privateConstructorUsedError;
  @override
  File? get image1 => throw _privateConstructorUsedError;
  @override
  File? get image2 => throw _privateConstructorUsedError;
  @override
  File? get image3 => throw _privateConstructorUsedError;
  @override
  File? get image4 => throw _privateConstructorUsedError;
  @override
  File? get image5 => throw _privateConstructorUsedError;
  @override
  List<String>? get images => throw _privateConstructorUsedError;
  @override
  double? get complete => throw _privateConstructorUsedError;
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
  _$PhotosStateCopyWith<_PhotosState> get copyWith =>
      throw _privateConstructorUsedError;
}
