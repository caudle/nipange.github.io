// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DetailEventTearOff {
  const _$DetailEventTearOff();

  _Started started({required String userId}) {
    return _Started(
      userId: userId,
    );
  }

  _SendPressed sendPressed(
      {required int star, required String comment, required String listingId}) {
    return _SendPressed(
      star: star,
      comment: comment,
      listingId: listingId,
    );
  }

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
}

/// @nodoc
const $DetailEvent = _$DetailEventTearOff();

/// @nodoc
mixin _$DetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) started,
    required TResult Function(int star, String comment, String listingId)
        sendPressed,
    required TResult Function(String listingId, String userId) deleteListing,
    required TResult Function(String listingId, String userId) addListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? started,
    TResult Function(int star, String comment, String listingId)? sendPressed,
    TResult Function(String listingId, String userId)? deleteListing,
    TResult Function(String listingId, String userId)? addListing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendPressed value) sendPressed,
    required TResult Function(_DeleteListing value) deleteListing,
    required TResult Function(_AddListing value) addListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendPressed value)? sendPressed,
    TResult Function(_DeleteListing value)? deleteListing,
    TResult Function(_AddListing value)? addListing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailEventCopyWith<$Res> {
  factory $DetailEventCopyWith(
          DetailEvent value, $Res Function(DetailEvent) then) =
      _$DetailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailEventCopyWithImpl<$Res> implements $DetailEventCopyWith<$Res> {
  _$DetailEventCopyWithImpl(this._value, this._then);

  final DetailEvent _value;
  // ignore: unused_field
  final $Res Function(DetailEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$DetailEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_Started(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started({required this.userId});

  @override
  final String userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailEvent.started(userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailEvent.started'))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) started,
    required TResult Function(int star, String comment, String listingId)
        sendPressed,
    required TResult Function(String listingId, String userId) deleteListing,
    required TResult Function(String listingId, String userId) addListing,
  }) {
    return started(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? started,
    TResult Function(int star, String comment, String listingId)? sendPressed,
    TResult Function(String listingId, String userId)? deleteListing,
    TResult Function(String listingId, String userId)? addListing,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendPressed value) sendPressed,
    required TResult Function(_DeleteListing value) deleteListing,
    required TResult Function(_AddListing value) addListing,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendPressed value)? sendPressed,
    TResult Function(_DeleteListing value)? deleteListing,
    TResult Function(_AddListing value)? addListing,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DetailEvent {
  const factory _Started({required String userId}) = _$_Started;

  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendPressedCopyWith<$Res> {
  factory _$SendPressedCopyWith(
          _SendPressed value, $Res Function(_SendPressed) then) =
      __$SendPressedCopyWithImpl<$Res>;
  $Res call({int star, String comment, String listingId});
}

/// @nodoc
class __$SendPressedCopyWithImpl<$Res> extends _$DetailEventCopyWithImpl<$Res>
    implements _$SendPressedCopyWith<$Res> {
  __$SendPressedCopyWithImpl(
      _SendPressed _value, $Res Function(_SendPressed) _then)
      : super(_value, (v) => _then(v as _SendPressed));

  @override
  _SendPressed get _value => super._value as _SendPressed;

  @override
  $Res call({
    Object? star = freezed,
    Object? comment = freezed,
    Object? listingId = freezed,
  }) {
    return _then(_SendPressed(
      star: star == freezed
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as int,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      listingId: listingId == freezed
          ? _value.listingId
          : listingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_SendPressed with DiagnosticableTreeMixin implements _SendPressed {
  const _$_SendPressed(
      {required this.star, required this.comment, required this.listingId});

  @override
  final int star;
  @override
  final String comment;
  @override
  final String listingId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailEvent.sendPressed(star: $star, comment: $comment, listingId: $listingId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailEvent.sendPressed'))
      ..add(DiagnosticsProperty('star', star))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('listingId', listingId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendPressed &&
            (identical(other.star, star) ||
                const DeepCollectionEquality().equals(other.star, star)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.listingId, listingId) ||
                const DeepCollectionEquality()
                    .equals(other.listingId, listingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(star) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(listingId);

  @JsonKey(ignore: true)
  @override
  _$SendPressedCopyWith<_SendPressed> get copyWith =>
      __$SendPressedCopyWithImpl<_SendPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) started,
    required TResult Function(int star, String comment, String listingId)
        sendPressed,
    required TResult Function(String listingId, String userId) deleteListing,
    required TResult Function(String listingId, String userId) addListing,
  }) {
    return sendPressed(star, comment, listingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? started,
    TResult Function(int star, String comment, String listingId)? sendPressed,
    TResult Function(String listingId, String userId)? deleteListing,
    TResult Function(String listingId, String userId)? addListing,
    required TResult orElse(),
  }) {
    if (sendPressed != null) {
      return sendPressed(star, comment, listingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendPressed value) sendPressed,
    required TResult Function(_DeleteListing value) deleteListing,
    required TResult Function(_AddListing value) addListing,
  }) {
    return sendPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendPressed value)? sendPressed,
    TResult Function(_DeleteListing value)? deleteListing,
    TResult Function(_AddListing value)? addListing,
    required TResult orElse(),
  }) {
    if (sendPressed != null) {
      return sendPressed(this);
    }
    return orElse();
  }
}

abstract class _SendPressed implements DetailEvent {
  const factory _SendPressed(
      {required int star,
      required String comment,
      required String listingId}) = _$_SendPressed;

  int get star => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  String get listingId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SendPressedCopyWith<_SendPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteListingCopyWith<$Res> {
  factory _$DeleteListingCopyWith(
          _DeleteListing value, $Res Function(_DeleteListing) then) =
      __$DeleteListingCopyWithImpl<$Res>;
  $Res call({String listingId, String userId});
}

/// @nodoc
class __$DeleteListingCopyWithImpl<$Res> extends _$DetailEventCopyWithImpl<$Res>
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
    return 'DetailEvent.deleteListing(listingId: $listingId, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailEvent.deleteListing'))
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
    required TResult Function(String userId) started,
    required TResult Function(int star, String comment, String listingId)
        sendPressed,
    required TResult Function(String listingId, String userId) deleteListing,
    required TResult Function(String listingId, String userId) addListing,
  }) {
    return deleteListing(listingId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? started,
    TResult Function(int star, String comment, String listingId)? sendPressed,
    TResult Function(String listingId, String userId)? deleteListing,
    TResult Function(String listingId, String userId)? addListing,
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
    required TResult Function(_Started value) started,
    required TResult Function(_SendPressed value) sendPressed,
    required TResult Function(_DeleteListing value) deleteListing,
    required TResult Function(_AddListing value) addListing,
  }) {
    return deleteListing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendPressed value)? sendPressed,
    TResult Function(_DeleteListing value)? deleteListing,
    TResult Function(_AddListing value)? addListing,
    required TResult orElse(),
  }) {
    if (deleteListing != null) {
      return deleteListing(this);
    }
    return orElse();
  }
}

abstract class _DeleteListing implements DetailEvent {
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
class __$AddListingCopyWithImpl<$Res> extends _$DetailEventCopyWithImpl<$Res>
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
    return 'DetailEvent.addListing(listingId: $listingId, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailEvent.addListing'))
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
    required TResult Function(String userId) started,
    required TResult Function(int star, String comment, String listingId)
        sendPressed,
    required TResult Function(String listingId, String userId) deleteListing,
    required TResult Function(String listingId, String userId) addListing,
  }) {
    return addListing(listingId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? started,
    TResult Function(int star, String comment, String listingId)? sendPressed,
    TResult Function(String listingId, String userId)? deleteListing,
    TResult Function(String listingId, String userId)? addListing,
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
    required TResult Function(_Started value) started,
    required TResult Function(_SendPressed value) sendPressed,
    required TResult Function(_DeleteListing value) deleteListing,
    required TResult Function(_AddListing value) addListing,
  }) {
    return addListing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendPressed value)? sendPressed,
    TResult Function(_DeleteListing value)? deleteListing,
    TResult Function(_AddListing value)? addListing,
    required TResult orElse(),
  }) {
    if (addListing != null) {
      return addListing(this);
    }
    return orElse();
  }
}

abstract class _AddListing implements DetailEvent {
  const factory _AddListing(
      {required String listingId, required String userId}) = _$_AddListing;

  String get listingId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddListingCopyWith<_AddListing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DetailStateTearOff {
  const _$DetailStateTearOff();

  _DetailState call(
      {required User? hostUser,
      required TextEditingController reviewController,
      required IOWebSocketChannel reviewListChannel,
      required IOWebSocketChannel reviewChannel,
      required IOWebSocketChannel existsChannel,
      required User? currentUser,
      required bool isLoading,
      required bool isError,
      required bool issuccess}) {
    return _DetailState(
      hostUser: hostUser,
      reviewController: reviewController,
      reviewListChannel: reviewListChannel,
      reviewChannel: reviewChannel,
      existsChannel: existsChannel,
      currentUser: currentUser,
      isLoading: isLoading,
      isError: isError,
      issuccess: issuccess,
    );
  }
}

/// @nodoc
const $DetailState = _$DetailStateTearOff();

/// @nodoc
mixin _$DetailState {
  User? get hostUser => throw _privateConstructorUsedError;
  TextEditingController get reviewController =>
      throw _privateConstructorUsedError;
  IOWebSocketChannel get reviewListChannel =>
      throw _privateConstructorUsedError;
  IOWebSocketChannel get reviewChannel => throw _privateConstructorUsedError;
  IOWebSocketChannel get existsChannel => throw _privateConstructorUsedError;
  User? get currentUser => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get issuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailStateCopyWith<DetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res>;
  $Res call(
      {User? hostUser,
      TextEditingController reviewController,
      IOWebSocketChannel reviewListChannel,
      IOWebSocketChannel reviewChannel,
      IOWebSocketChannel existsChannel,
      User? currentUser,
      bool isLoading,
      bool isError,
      bool issuccess});
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res> implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  final DetailState _value;
  // ignore: unused_field
  final $Res Function(DetailState) _then;

  @override
  $Res call({
    Object? hostUser = freezed,
    Object? reviewController = freezed,
    Object? reviewListChannel = freezed,
    Object? reviewChannel = freezed,
    Object? existsChannel = freezed,
    Object? currentUser = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? issuccess = freezed,
  }) {
    return _then(_value.copyWith(
      hostUser: hostUser == freezed
          ? _value.hostUser
          : hostUser // ignore: cast_nullable_to_non_nullable
              as User?,
      reviewController: reviewController == freezed
          ? _value.reviewController
          : reviewController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      reviewListChannel: reviewListChannel == freezed
          ? _value.reviewListChannel
          : reviewListChannel // ignore: cast_nullable_to_non_nullable
              as IOWebSocketChannel,
      reviewChannel: reviewChannel == freezed
          ? _value.reviewChannel
          : reviewChannel // ignore: cast_nullable_to_non_nullable
              as IOWebSocketChannel,
      existsChannel: existsChannel == freezed
          ? _value.existsChannel
          : existsChannel // ignore: cast_nullable_to_non_nullable
              as IOWebSocketChannel,
      currentUser: currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      issuccess: issuccess == freezed
          ? _value.issuccess
          : issuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$DetailStateCopyWith<$Res>
    implements $DetailStateCopyWith<$Res> {
  factory _$DetailStateCopyWith(
          _DetailState value, $Res Function(_DetailState) then) =
      __$DetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {User? hostUser,
      TextEditingController reviewController,
      IOWebSocketChannel reviewListChannel,
      IOWebSocketChannel reviewChannel,
      IOWebSocketChannel existsChannel,
      User? currentUser,
      bool isLoading,
      bool isError,
      bool issuccess});
}

/// @nodoc
class __$DetailStateCopyWithImpl<$Res> extends _$DetailStateCopyWithImpl<$Res>
    implements _$DetailStateCopyWith<$Res> {
  __$DetailStateCopyWithImpl(
      _DetailState _value, $Res Function(_DetailState) _then)
      : super(_value, (v) => _then(v as _DetailState));

  @override
  _DetailState get _value => super._value as _DetailState;

  @override
  $Res call({
    Object? hostUser = freezed,
    Object? reviewController = freezed,
    Object? reviewListChannel = freezed,
    Object? reviewChannel = freezed,
    Object? existsChannel = freezed,
    Object? currentUser = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? issuccess = freezed,
  }) {
    return _then(_DetailState(
      hostUser: hostUser == freezed
          ? _value.hostUser
          : hostUser // ignore: cast_nullable_to_non_nullable
              as User?,
      reviewController: reviewController == freezed
          ? _value.reviewController
          : reviewController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      reviewListChannel: reviewListChannel == freezed
          ? _value.reviewListChannel
          : reviewListChannel // ignore: cast_nullable_to_non_nullable
              as IOWebSocketChannel,
      reviewChannel: reviewChannel == freezed
          ? _value.reviewChannel
          : reviewChannel // ignore: cast_nullable_to_non_nullable
              as IOWebSocketChannel,
      existsChannel: existsChannel == freezed
          ? _value.existsChannel
          : existsChannel // ignore: cast_nullable_to_non_nullable
              as IOWebSocketChannel,
      currentUser: currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      issuccess: issuccess == freezed
          ? _value.issuccess
          : issuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_DetailState with DiagnosticableTreeMixin implements _DetailState {
  const _$_DetailState(
      {required this.hostUser,
      required this.reviewController,
      required this.reviewListChannel,
      required this.reviewChannel,
      required this.existsChannel,
      required this.currentUser,
      required this.isLoading,
      required this.isError,
      required this.issuccess});

  @override
  final User? hostUser;
  @override
  final TextEditingController reviewController;
  @override
  final IOWebSocketChannel reviewListChannel;
  @override
  final IOWebSocketChannel reviewChannel;
  @override
  final IOWebSocketChannel existsChannel;
  @override
  final User? currentUser;
  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final bool issuccess;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailState(hostUser: $hostUser, reviewController: $reviewController, reviewListChannel: $reviewListChannel, reviewChannel: $reviewChannel, existsChannel: $existsChannel, currentUser: $currentUser, isLoading: $isLoading, isError: $isError, issuccess: $issuccess)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailState'))
      ..add(DiagnosticsProperty('hostUser', hostUser))
      ..add(DiagnosticsProperty('reviewController', reviewController))
      ..add(DiagnosticsProperty('reviewListChannel', reviewListChannel))
      ..add(DiagnosticsProperty('reviewChannel', reviewChannel))
      ..add(DiagnosticsProperty('existsChannel', existsChannel))
      ..add(DiagnosticsProperty('currentUser', currentUser))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isError', isError))
      ..add(DiagnosticsProperty('issuccess', issuccess));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailState &&
            (identical(other.hostUser, hostUser) ||
                const DeepCollectionEquality()
                    .equals(other.hostUser, hostUser)) &&
            (identical(other.reviewController, reviewController) ||
                const DeepCollectionEquality()
                    .equals(other.reviewController, reviewController)) &&
            (identical(other.reviewListChannel, reviewListChannel) ||
                const DeepCollectionEquality()
                    .equals(other.reviewListChannel, reviewListChannel)) &&
            (identical(other.reviewChannel, reviewChannel) ||
                const DeepCollectionEquality()
                    .equals(other.reviewChannel, reviewChannel)) &&
            (identical(other.existsChannel, existsChannel) ||
                const DeepCollectionEquality()
                    .equals(other.existsChannel, existsChannel)) &&
            (identical(other.currentUser, currentUser) ||
                const DeepCollectionEquality()
                    .equals(other.currentUser, currentUser)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isError, isError) ||
                const DeepCollectionEquality()
                    .equals(other.isError, isError)) &&
            (identical(other.issuccess, issuccess) ||
                const DeepCollectionEquality()
                    .equals(other.issuccess, issuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hostUser) ^
      const DeepCollectionEquality().hash(reviewController) ^
      const DeepCollectionEquality().hash(reviewListChannel) ^
      const DeepCollectionEquality().hash(reviewChannel) ^
      const DeepCollectionEquality().hash(existsChannel) ^
      const DeepCollectionEquality().hash(currentUser) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isError) ^
      const DeepCollectionEquality().hash(issuccess);

  @JsonKey(ignore: true)
  @override
  _$DetailStateCopyWith<_DetailState> get copyWith =>
      __$DetailStateCopyWithImpl<_DetailState>(this, _$identity);
}

abstract class _DetailState implements DetailState {
  const factory _DetailState(
      {required User? hostUser,
      required TextEditingController reviewController,
      required IOWebSocketChannel reviewListChannel,
      required IOWebSocketChannel reviewChannel,
      required IOWebSocketChannel existsChannel,
      required User? currentUser,
      required bool isLoading,
      required bool isError,
      required bool issuccess}) = _$_DetailState;

  @override
  User? get hostUser => throw _privateConstructorUsedError;
  @override
  TextEditingController get reviewController =>
      throw _privateConstructorUsedError;
  @override
  IOWebSocketChannel get reviewListChannel =>
      throw _privateConstructorUsedError;
  @override
  IOWebSocketChannel get reviewChannel => throw _privateConstructorUsedError;
  @override
  IOWebSocketChannel get existsChannel => throw _privateConstructorUsedError;
  @override
  User? get currentUser => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  bool get issuccess => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DetailStateCopyWith<_DetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
