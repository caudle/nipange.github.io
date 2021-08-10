// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'videos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VideosEventTearOff {
  const _$VideosEventTearOff();

  _Add add(Listing listing) {
    return _Add(
      listing,
    );
  }

  _Video0Changed video0changed(File video0) {
    return _Video0Changed(
      video0,
    );
  }

  _Video1Changed video1changed(File video1) {
    return _Video1Changed(
      video1,
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
const $VideosEvent = _$VideosEventTearOff();

/// @nodoc
mixin _$VideosEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(File video0) video0changed,
    required TResult Function(File video1) video1changed,
    required TResult Function() next,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(File video0)? video0changed,
    TResult Function(File video1)? video1changed,
    TResult Function()? next,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Video0Changed value) video0changed,
    required TResult Function(_Video1Changed value) video1changed,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Video0Changed value)? video0changed,
    TResult Function(_Video1Changed value)? video1changed,
    TResult Function(_Next value)? next,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideosEventCopyWith<$Res> {
  factory $VideosEventCopyWith(
          VideosEvent value, $Res Function(VideosEvent) then) =
      _$VideosEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VideosEventCopyWithImpl<$Res> implements $VideosEventCopyWith<$Res> {
  _$VideosEventCopyWithImpl(this._value, this._then);

  final VideosEvent _value;
  // ignore: unused_field
  final $Res Function(VideosEvent) _then;
}

/// @nodoc
abstract class _$AddCopyWith<$Res> {
  factory _$AddCopyWith(_Add value, $Res Function(_Add) then) =
      __$AddCopyWithImpl<$Res>;
  $Res call({Listing listing});
}

/// @nodoc
class __$AddCopyWithImpl<$Res> extends _$VideosEventCopyWithImpl<$Res>
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
    return 'VideosEvent.add(listing: $listing)';
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
    required TResult Function(File video0) video0changed,
    required TResult Function(File video1) video1changed,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return add(listing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(File video0)? video0changed,
    TResult Function(File video1)? video1changed,
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
    required TResult Function(_Video0Changed value) video0changed,
    required TResult Function(_Video1Changed value) video1changed,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Video0Changed value)? video0changed,
    TResult Function(_Video1Changed value)? video1changed,
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

abstract class _Add implements VideosEvent {
  const factory _Add(Listing listing) = _$_Add;

  Listing get listing => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddCopyWith<_Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$Video0ChangedCopyWith<$Res> {
  factory _$Video0ChangedCopyWith(
          _Video0Changed value, $Res Function(_Video0Changed) then) =
      __$Video0ChangedCopyWithImpl<$Res>;
  $Res call({File video0});
}

/// @nodoc
class __$Video0ChangedCopyWithImpl<$Res> extends _$VideosEventCopyWithImpl<$Res>
    implements _$Video0ChangedCopyWith<$Res> {
  __$Video0ChangedCopyWithImpl(
      _Video0Changed _value, $Res Function(_Video0Changed) _then)
      : super(_value, (v) => _then(v as _Video0Changed));

  @override
  _Video0Changed get _value => super._value as _Video0Changed;

  @override
  $Res call({
    Object? video0 = freezed,
  }) {
    return _then(_Video0Changed(
      video0 == freezed
          ? _value.video0
          : video0 // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc
class _$_Video0Changed implements _Video0Changed {
  const _$_Video0Changed(this.video0);

  @override
  final File video0;

  @override
  String toString() {
    return 'VideosEvent.video0changed(video0: $video0)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Video0Changed &&
            (identical(other.video0, video0) ||
                const DeepCollectionEquality().equals(other.video0, video0)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(video0);

  @JsonKey(ignore: true)
  @override
  _$Video0ChangedCopyWith<_Video0Changed> get copyWith =>
      __$Video0ChangedCopyWithImpl<_Video0Changed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(File video0) video0changed,
    required TResult Function(File video1) video1changed,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return video0changed(video0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(File video0)? video0changed,
    TResult Function(File video1)? video1changed,
    TResult Function()? next,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (video0changed != null) {
      return video0changed(video0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Video0Changed value) video0changed,
    required TResult Function(_Video1Changed value) video1changed,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return video0changed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Video0Changed value)? video0changed,
    TResult Function(_Video1Changed value)? video1changed,
    TResult Function(_Next value)? next,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (video0changed != null) {
      return video0changed(this);
    }
    return orElse();
  }
}

abstract class _Video0Changed implements VideosEvent {
  const factory _Video0Changed(File video0) = _$_Video0Changed;

  File get video0 => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$Video0ChangedCopyWith<_Video0Changed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$Video1ChangedCopyWith<$Res> {
  factory _$Video1ChangedCopyWith(
          _Video1Changed value, $Res Function(_Video1Changed) then) =
      __$Video1ChangedCopyWithImpl<$Res>;
  $Res call({File video1});
}

/// @nodoc
class __$Video1ChangedCopyWithImpl<$Res> extends _$VideosEventCopyWithImpl<$Res>
    implements _$Video1ChangedCopyWith<$Res> {
  __$Video1ChangedCopyWithImpl(
      _Video1Changed _value, $Res Function(_Video1Changed) _then)
      : super(_value, (v) => _then(v as _Video1Changed));

  @override
  _Video1Changed get _value => super._value as _Video1Changed;

  @override
  $Res call({
    Object? video1 = freezed,
  }) {
    return _then(_Video1Changed(
      video1 == freezed
          ? _value.video1
          : video1 // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc
class _$_Video1Changed implements _Video1Changed {
  const _$_Video1Changed(this.video1);

  @override
  final File video1;

  @override
  String toString() {
    return 'VideosEvent.video1changed(video1: $video1)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Video1Changed &&
            (identical(other.video1, video1) ||
                const DeepCollectionEquality().equals(other.video1, video1)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(video1);

  @JsonKey(ignore: true)
  @override
  _$Video1ChangedCopyWith<_Video1Changed> get copyWith =>
      __$Video1ChangedCopyWithImpl<_Video1Changed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) add,
    required TResult Function(File video0) video0changed,
    required TResult Function(File video1) video1changed,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return video1changed(video1);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(File video0)? video0changed,
    TResult Function(File video1)? video1changed,
    TResult Function()? next,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (video1changed != null) {
      return video1changed(video1);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Video0Changed value) video0changed,
    required TResult Function(_Video1Changed value) video1changed,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return video1changed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Video0Changed value)? video0changed,
    TResult Function(_Video1Changed value)? video1changed,
    TResult Function(_Next value)? next,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (video1changed != null) {
      return video1changed(this);
    }
    return orElse();
  }
}

abstract class _Video1Changed implements VideosEvent {
  const factory _Video1Changed(File video1) = _$_Video1Changed;

  File get video1 => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$Video1ChangedCopyWith<_Video1Changed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NextCopyWith<$Res> {
  factory _$NextCopyWith(_Next value, $Res Function(_Next) then) =
      __$NextCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextCopyWithImpl<$Res> extends _$VideosEventCopyWithImpl<$Res>
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
    return 'VideosEvent.next()';
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
    required TResult Function(File video0) video0changed,
    required TResult Function(File video1) video1changed,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return next();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(File video0)? video0changed,
    TResult Function(File video1)? video1changed,
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
    required TResult Function(_Video0Changed value) video0changed,
    required TResult Function(_Video1Changed value) video1changed,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return next(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Video0Changed value)? video0changed,
    TResult Function(_Video1Changed value)? video1changed,
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

abstract class _Next implements VideosEvent {
  const factory _Next() = _$_Next;
}

/// @nodoc
abstract class _$SaveCopyWith<$Res> {
  factory _$SaveCopyWith(_Save value, $Res Function(_Save) then) =
      __$SaveCopyWithImpl<$Res>;
}

/// @nodoc
class __$SaveCopyWithImpl<$Res> extends _$VideosEventCopyWithImpl<$Res>
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
    return 'VideosEvent.save()';
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
    required TResult Function(File video0) video0changed,
    required TResult Function(File video1) video1changed,
    required TResult Function() next,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? add,
    TResult Function(File video0)? video0changed,
    TResult Function(File video1)? video1changed,
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
    required TResult Function(_Video0Changed value) video0changed,
    required TResult Function(_Video1Changed value) video1changed,
    required TResult Function(_Next value) next,
    required TResult Function(_Save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Video0Changed value)? video0changed,
    TResult Function(_Video1Changed value)? video1changed,
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

abstract class _Save implements VideosEvent {
  const factory _Save() = _$_Save;
}

/// @nodoc
class _$VideosStateTearOff {
  const _$VideosStateTearOff();

  _VideosState call(
      {required File? video0,
      required File? video1,
      required List<String>? videos,
      double? complete,
      required bool isSubmitting,
      required bool isSuccess,
      required bool saved,
      required String failureMessage,
      required Listing listing}) {
    return _VideosState(
      video0: video0,
      video1: video1,
      videos: videos,
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
const $VideosState = _$VideosStateTearOff();

/// @nodoc
mixin _$VideosState {
  File? get video0 => throw _privateConstructorUsedError;
  File? get video1 => throw _privateConstructorUsedError;
  List<String>? get videos => throw _privateConstructorUsedError;
  double? get complete => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get saved => throw _privateConstructorUsedError;
  String get failureMessage => throw _privateConstructorUsedError;
  Listing get listing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideosStateCopyWith<VideosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideosStateCopyWith<$Res> {
  factory $VideosStateCopyWith(
          VideosState value, $Res Function(VideosState) then) =
      _$VideosStateCopyWithImpl<$Res>;
  $Res call(
      {File? video0,
      File? video1,
      List<String>? videos,
      double? complete,
      bool isSubmitting,
      bool isSuccess,
      bool saved,
      String failureMessage,
      Listing listing});
}

/// @nodoc
class _$VideosStateCopyWithImpl<$Res> implements $VideosStateCopyWith<$Res> {
  _$VideosStateCopyWithImpl(this._value, this._then);

  final VideosState _value;
  // ignore: unused_field
  final $Res Function(VideosState) _then;

  @override
  $Res call({
    Object? video0 = freezed,
    Object? video1 = freezed,
    Object? videos = freezed,
    Object? complete = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
    Object? saved = freezed,
    Object? failureMessage = freezed,
    Object? listing = freezed,
  }) {
    return _then(_value.copyWith(
      video0: video0 == freezed
          ? _value.video0
          : video0 // ignore: cast_nullable_to_non_nullable
              as File?,
      video1: video1 == freezed
          ? _value.video1
          : video1 // ignore: cast_nullable_to_non_nullable
              as File?,
      videos: videos == freezed
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
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
abstract class _$VideosStateCopyWith<$Res>
    implements $VideosStateCopyWith<$Res> {
  factory _$VideosStateCopyWith(
          _VideosState value, $Res Function(_VideosState) then) =
      __$VideosStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {File? video0,
      File? video1,
      List<String>? videos,
      double? complete,
      bool isSubmitting,
      bool isSuccess,
      bool saved,
      String failureMessage,
      Listing listing});
}

/// @nodoc
class __$VideosStateCopyWithImpl<$Res> extends _$VideosStateCopyWithImpl<$Res>
    implements _$VideosStateCopyWith<$Res> {
  __$VideosStateCopyWithImpl(
      _VideosState _value, $Res Function(_VideosState) _then)
      : super(_value, (v) => _then(v as _VideosState));

  @override
  _VideosState get _value => super._value as _VideosState;

  @override
  $Res call({
    Object? video0 = freezed,
    Object? video1 = freezed,
    Object? videos = freezed,
    Object? complete = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
    Object? saved = freezed,
    Object? failureMessage = freezed,
    Object? listing = freezed,
  }) {
    return _then(_VideosState(
      video0: video0 == freezed
          ? _value.video0
          : video0 // ignore: cast_nullable_to_non_nullable
              as File?,
      video1: video1 == freezed
          ? _value.video1
          : video1 // ignore: cast_nullable_to_non_nullable
              as File?,
      videos: videos == freezed
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
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
class _$_VideosState implements _VideosState {
  const _$_VideosState(
      {required this.video0,
      required this.video1,
      required this.videos,
      this.complete,
      required this.isSubmitting,
      required this.isSuccess,
      required this.saved,
      required this.failureMessage,
      required this.listing});

  @override
  final File? video0;
  @override
  final File? video1;
  @override
  final List<String>? videos;
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
    return 'VideosState(video0: $video0, video1: $video1, videos: $videos, complete: $complete, isSubmitting: $isSubmitting, isSuccess: $isSuccess, saved: $saved, failureMessage: $failureMessage, listing: $listing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideosState &&
            (identical(other.video0, video0) ||
                const DeepCollectionEquality().equals(other.video0, video0)) &&
            (identical(other.video1, video1) ||
                const DeepCollectionEquality().equals(other.video1, video1)) &&
            (identical(other.videos, videos) ||
                const DeepCollectionEquality().equals(other.videos, videos)) &&
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
      const DeepCollectionEquality().hash(video0) ^
      const DeepCollectionEquality().hash(video1) ^
      const DeepCollectionEquality().hash(videos) ^
      const DeepCollectionEquality().hash(complete) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(saved) ^
      const DeepCollectionEquality().hash(failureMessage) ^
      const DeepCollectionEquality().hash(listing);

  @JsonKey(ignore: true)
  @override
  _$VideosStateCopyWith<_VideosState> get copyWith =>
      __$VideosStateCopyWithImpl<_VideosState>(this, _$identity);
}

abstract class _VideosState implements VideosState {
  const factory _VideosState(
      {required File? video0,
      required File? video1,
      required List<String>? videos,
      double? complete,
      required bool isSubmitting,
      required bool isSuccess,
      required bool saved,
      required String failureMessage,
      required Listing listing}) = _$_VideosState;

  @override
  File? get video0 => throw _privateConstructorUsedError;
  @override
  File? get video1 => throw _privateConstructorUsedError;
  @override
  List<String>? get videos => throw _privateConstructorUsedError;
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
  _$VideosStateCopyWith<_VideosState> get copyWith =>
      throw _privateConstructorUsedError;
}
