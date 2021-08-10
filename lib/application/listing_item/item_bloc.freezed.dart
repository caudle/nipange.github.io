// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ItemEventTearOff {
  const _$ItemEventTearOff();

  _DeleteListing deleteListing(
      {required String listingId, required String userId}) {
    return _DeleteListing(
      listingId: listingId,
      userId: userId,
    );
  }

  _AddListing addListing({required String listingId, required String userId}) {
    return _AddListing(
      listingId: listingId,
      userId: userId,
    );
  }

  _PageChanged pageChanged(int index) {
    return _PageChanged(
      index,
    );
  }
}

/// @nodoc
const $ItemEvent = _$ItemEventTearOff();

/// @nodoc
mixin _$ItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String listingId, String userId) deleteListing,
    required TResult Function(String listingId, String userId) addListing,
    required TResult Function(int index) pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String listingId, String userId)? deleteListing,
    TResult Function(String listingId, String userId)? addListing,
    TResult Function(int index)? pageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteListing value) deleteListing,
    required TResult Function(_AddListing value) addListing,
    required TResult Function(_PageChanged value) pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteListing value)? deleteListing,
    TResult Function(_AddListing value)? addListing,
    TResult Function(_PageChanged value)? pageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemEventCopyWith<$Res> {
  factory $ItemEventCopyWith(ItemEvent value, $Res Function(ItemEvent) then) =
      _$ItemEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ItemEventCopyWithImpl<$Res> implements $ItemEventCopyWith<$Res> {
  _$ItemEventCopyWithImpl(this._value, this._then);

  final ItemEvent _value;
  // ignore: unused_field
  final $Res Function(ItemEvent) _then;
}

/// @nodoc
abstract class _$DeleteListingCopyWith<$Res> {
  factory _$DeleteListingCopyWith(
          _DeleteListing value, $Res Function(_DeleteListing) then) =
      __$DeleteListingCopyWithImpl<$Res>;
  $Res call({String listingId, String userId});
}

/// @nodoc
class __$DeleteListingCopyWithImpl<$Res> extends _$ItemEventCopyWithImpl<$Res>
    implements _$DeleteListingCopyWith<$Res> {
  __$DeleteListingCopyWithImpl(
      _DeleteListing _value, $Res Function(_DeleteListing) _then)
      : super(_value, (v) => _then(v as _DeleteListing));

  @override
  _DeleteListing get _value => super._value as _DeleteListing;

  @override
  $Res call({
    Object? listingId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_DeleteListing(
      listingId: listingId == freezed
          ? _value.listingId
          : listingId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_DeleteListing with DiagnosticableTreeMixin implements _DeleteListing {
  const _$_DeleteListing({required this.listingId, required this.userId});

  @override
  final String listingId;
  @override
  final String userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemEvent.deleteListing(listingId: $listingId, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemEvent.deleteListing'))
      ..add(DiagnosticsProperty('listingId', listingId))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteListing &&
            (identical(other.listingId, listingId) ||
                const DeepCollectionEquality()
                    .equals(other.listingId, listingId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listingId) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$DeleteListingCopyWith<_DeleteListing> get copyWith =>
      __$DeleteListingCopyWithImpl<_DeleteListing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String listingId, String userId) deleteListing,
    required TResult Function(String listingId, String userId) addListing,
    required TResult Function(int index) pageChanged,
  }) {
    return deleteListing(listingId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String listingId, String userId)? deleteListing,
    TResult Function(String listingId, String userId)? addListing,
    TResult Function(int index)? pageChanged,
    required TResult orElse(),
  }) {
    if (deleteListing != null) {
      return deleteListing(listingId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteListing value) deleteListing,
    required TResult Function(_AddListing value) addListing,
    required TResult Function(_PageChanged value) pageChanged,
  }) {
    return deleteListing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteListing value)? deleteListing,
    TResult Function(_AddListing value)? addListing,
    TResult Function(_PageChanged value)? pageChanged,
    required TResult orElse(),
  }) {
    if (deleteListing != null) {
      return deleteListing(this);
    }
    return orElse();
  }
}

abstract class _DeleteListing implements ItemEvent {
  const factory _DeleteListing(
      {required String listingId, required String userId}) = _$_DeleteListing;

  String get listingId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteListingCopyWith<_DeleteListing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddListingCopyWith<$Res> {
  factory _$AddListingCopyWith(
          _AddListing value, $Res Function(_AddListing) then) =
      __$AddListingCopyWithImpl<$Res>;
  $Res call({String listingId, String userId});
}

/// @nodoc
class __$AddListingCopyWithImpl<$Res> extends _$ItemEventCopyWithImpl<$Res>
    implements _$AddListingCopyWith<$Res> {
  __$AddListingCopyWithImpl(
      _AddListing _value, $Res Function(_AddListing) _then)
      : super(_value, (v) => _then(v as _AddListing));

  @override
  _AddListing get _value => super._value as _AddListing;

  @override
  $Res call({
    Object? listingId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_AddListing(
      listingId: listingId == freezed
          ? _value.listingId
          : listingId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_AddListing with DiagnosticableTreeMixin implements _AddListing {
  const _$_AddListing({required this.listingId, required this.userId});

  @override
  final String listingId;
  @override
  final String userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemEvent.addListing(listingId: $listingId, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemEvent.addListing'))
      ..add(DiagnosticsProperty('listingId', listingId))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddListing &&
            (identical(other.listingId, listingId) ||
                const DeepCollectionEquality()
                    .equals(other.listingId, listingId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listingId) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$AddListingCopyWith<_AddListing> get copyWith =>
      __$AddListingCopyWithImpl<_AddListing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String listingId, String userId) deleteListing,
    required TResult Function(String listingId, String userId) addListing,
    required TResult Function(int index) pageChanged,
  }) {
    return addListing(listingId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String listingId, String userId)? deleteListing,
    TResult Function(String listingId, String userId)? addListing,
    TResult Function(int index)? pageChanged,
    required TResult orElse(),
  }) {
    if (addListing != null) {
      return addListing(listingId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteListing value) deleteListing,
    required TResult Function(_AddListing value) addListing,
    required TResult Function(_PageChanged value) pageChanged,
  }) {
    return addListing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteListing value)? deleteListing,
    TResult Function(_AddListing value)? addListing,
    TResult Function(_PageChanged value)? pageChanged,
    required TResult orElse(),
  }) {
    if (addListing != null) {
      return addListing(this);
    }
    return orElse();
  }
}

abstract class _AddListing implements ItemEvent {
  const factory _AddListing(
      {required String listingId, required String userId}) = _$_AddListing;

  String get listingId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddListingCopyWith<_AddListing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PageChangedCopyWith<$Res> {
  factory _$PageChangedCopyWith(
          _PageChanged value, $Res Function(_PageChanged) then) =
      __$PageChangedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$PageChangedCopyWithImpl<$Res> extends _$ItemEventCopyWithImpl<$Res>
    implements _$PageChangedCopyWith<$Res> {
  __$PageChangedCopyWithImpl(
      _PageChanged _value, $Res Function(_PageChanged) _then)
      : super(_value, (v) => _then(v as _PageChanged));

  @override
  _PageChanged get _value => super._value as _PageChanged;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_PageChanged(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_PageChanged with DiagnosticableTreeMixin implements _PageChanged {
  const _$_PageChanged(this.index);

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemEvent.pageChanged(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemEvent.pageChanged'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageChanged &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$PageChangedCopyWith<_PageChanged> get copyWith =>
      __$PageChangedCopyWithImpl<_PageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String listingId, String userId) deleteListing,
    required TResult Function(String listingId, String userId) addListing,
    required TResult Function(int index) pageChanged,
  }) {
    return pageChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String listingId, String userId)? deleteListing,
    TResult Function(String listingId, String userId)? addListing,
    TResult Function(int index)? pageChanged,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteListing value) deleteListing,
    required TResult Function(_AddListing value) addListing,
    required TResult Function(_PageChanged value) pageChanged,
  }) {
    return pageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteListing value)? deleteListing,
    TResult Function(_AddListing value)? addListing,
    TResult Function(_PageChanged value)? pageChanged,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(this);
    }
    return orElse();
  }
}

abstract class _PageChanged implements ItemEvent {
  const factory _PageChanged(int index) = _$_PageChanged;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PageChangedCopyWith<_PageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ItemStateTearOff {
  const _$ItemStateTearOff();

  _ItemState call(
      {required WebSocketChannel existsChannel,
      required WebSocketChannel reviewChannel,
      required int currentIndex}) {
    return _ItemState(
      existsChannel: existsChannel,
      reviewChannel: reviewChannel,
      currentIndex: currentIndex,
    );
  }
}

/// @nodoc
const $ItemState = _$ItemStateTearOff();

/// @nodoc
mixin _$ItemState {
  WebSocketChannel get existsChannel => throw _privateConstructorUsedError;
  WebSocketChannel get reviewChannel => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemStateCopyWith<ItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemStateCopyWith<$Res> {
  factory $ItemStateCopyWith(ItemState value, $Res Function(ItemState) then) =
      _$ItemStateCopyWithImpl<$Res>;
  $Res call(
      {WebSocketChannel existsChannel,
      WebSocketChannel reviewChannel,
      int currentIndex});
}

/// @nodoc
class _$ItemStateCopyWithImpl<$Res> implements $ItemStateCopyWith<$Res> {
  _$ItemStateCopyWithImpl(this._value, this._then);

  final ItemState _value;
  // ignore: unused_field
  final $Res Function(ItemState) _then;

  @override
  $Res call({
    Object? existsChannel = freezed,
    Object? reviewChannel = freezed,
    Object? currentIndex = freezed,
  }) {
    return _then(_value.copyWith(
      existsChannel: existsChannel == freezed
          ? _value.existsChannel
          : existsChannel // ignore: cast_nullable_to_non_nullable
              as WebSocketChannel,
      reviewChannel: reviewChannel == freezed
          ? _value.reviewChannel
          : reviewChannel // ignore: cast_nullable_to_non_nullable
              as WebSocketChannel,
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ItemStateCopyWith<$Res> implements $ItemStateCopyWith<$Res> {
  factory _$ItemStateCopyWith(
          _ItemState value, $Res Function(_ItemState) then) =
      __$ItemStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {WebSocketChannel existsChannel,
      WebSocketChannel reviewChannel,
      int currentIndex});
}

/// @nodoc
class __$ItemStateCopyWithImpl<$Res> extends _$ItemStateCopyWithImpl<$Res>
    implements _$ItemStateCopyWith<$Res> {
  __$ItemStateCopyWithImpl(_ItemState _value, $Res Function(_ItemState) _then)
      : super(_value, (v) => _then(v as _ItemState));

  @override
  _ItemState get _value => super._value as _ItemState;

  @override
  $Res call({
    Object? existsChannel = freezed,
    Object? reviewChannel = freezed,
    Object? currentIndex = freezed,
  }) {
    return _then(_ItemState(
      existsChannel: existsChannel == freezed
          ? _value.existsChannel
          : existsChannel // ignore: cast_nullable_to_non_nullable
              as WebSocketChannel,
      reviewChannel: reviewChannel == freezed
          ? _value.reviewChannel
          : reviewChannel // ignore: cast_nullable_to_non_nullable
              as WebSocketChannel,
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_ItemState with DiagnosticableTreeMixin implements _ItemState {
  const _$_ItemState(
      {required this.existsChannel,
      required this.reviewChannel,
      required this.currentIndex});

  @override
  final WebSocketChannel existsChannel;
  @override
  final WebSocketChannel reviewChannel;
  @override
  final int currentIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemState(existsChannel: $existsChannel, reviewChannel: $reviewChannel, currentIndex: $currentIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemState'))
      ..add(DiagnosticsProperty('existsChannel', existsChannel))
      ..add(DiagnosticsProperty('reviewChannel', reviewChannel))
      ..add(DiagnosticsProperty('currentIndex', currentIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemState &&
            (identical(other.existsChannel, existsChannel) ||
                const DeepCollectionEquality()
                    .equals(other.existsChannel, existsChannel)) &&
            (identical(other.reviewChannel, reviewChannel) ||
                const DeepCollectionEquality()
                    .equals(other.reviewChannel, reviewChannel)) &&
            (identical(other.currentIndex, currentIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentIndex, currentIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(existsChannel) ^
      const DeepCollectionEquality().hash(reviewChannel) ^
      const DeepCollectionEquality().hash(currentIndex);

  @JsonKey(ignore: true)
  @override
  _$ItemStateCopyWith<_ItemState> get copyWith =>
      __$ItemStateCopyWithImpl<_ItemState>(this, _$identity);
}

abstract class _ItemState implements ItemState {
  const factory _ItemState(
      {required WebSocketChannel existsChannel,
      required WebSocketChannel reviewChannel,
      required int currentIndex}) = _$_ItemState;

  @override
  WebSocketChannel get existsChannel => throw _privateConstructorUsedError;
  @override
  WebSocketChannel get reviewChannel => throw _privateConstructorUsedError;
  @override
  int get currentIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemStateCopyWith<_ItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
