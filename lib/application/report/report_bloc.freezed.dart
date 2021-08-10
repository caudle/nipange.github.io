// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'report_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReportEventTearOff {
  const _$ReportEventTearOff();

  _Started started() {
    return const _Started();
  }

  _EmailChanged emailChanged(String email) {
    return _EmailChanged(
      email,
    );
  }

  _FlagChanged flagChanged(String flag) {
    return _FlagChanged(
      flag,
    );
  }

  _UserTypeChanged userTypeChanged(String type) {
    return _UserTypeChanged(
      type,
    );
  }

  _Send send() {
    return const _Send();
  }
}

/// @nodoc
const $ReportEvent = _$ReportEventTearOff();

/// @nodoc
mixin _$ReportEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChanged,
    required TResult Function(String flag) flagChanged,
    required TResult Function(String type) userTypeChanged,
    required TResult Function() send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String flag)? flagChanged,
    TResult Function(String type)? userTypeChanged,
    TResult Function()? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_FlagChanged value) flagChanged,
    required TResult Function(_UserTypeChanged value) userTypeChanged,
    required TResult Function(_Send value) send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_FlagChanged value)? flagChanged,
    TResult Function(_UserTypeChanged value)? userTypeChanged,
    TResult Function(_Send value)? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportEventCopyWith<$Res> {
  factory $ReportEventCopyWith(
          ReportEvent value, $Res Function(ReportEvent) then) =
      _$ReportEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReportEventCopyWithImpl<$Res> implements $ReportEventCopyWith<$Res> {
  _$ReportEventCopyWithImpl(this._value, this._then);

  final ReportEvent _value;
  // ignore: unused_field
  final $Res Function(ReportEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ReportEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ReportEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChanged,
    required TResult Function(String flag) flagChanged,
    required TResult Function(String type) userTypeChanged,
    required TResult Function() send,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String flag)? flagChanged,
    TResult Function(String type)? userTypeChanged,
    TResult Function()? send,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_FlagChanged value) flagChanged,
    required TResult Function(_UserTypeChanged value) userTypeChanged,
    required TResult Function(_Send value) send,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_FlagChanged value)? flagChanged,
    TResult Function(_UserTypeChanged value)? userTypeChanged,
    TResult Function(_Send value)? send,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ReportEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res> extends _$ReportEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'ReportEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChanged,
    required TResult Function(String flag) flagChanged,
    required TResult Function(String type) userTypeChanged,
    required TResult Function() send,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String flag)? flagChanged,
    TResult Function(String type)? userTypeChanged,
    TResult Function()? send,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_FlagChanged value) flagChanged,
    required TResult Function(_UserTypeChanged value) userTypeChanged,
    required TResult Function(_Send value) send,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_FlagChanged value)? flagChanged,
    TResult Function(_UserTypeChanged value)? userTypeChanged,
    TResult Function(_Send value)? send,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements ReportEvent {
  const factory _EmailChanged(String email) = _$_EmailChanged;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FlagChangedCopyWith<$Res> {
  factory _$FlagChangedCopyWith(
          _FlagChanged value, $Res Function(_FlagChanged) then) =
      __$FlagChangedCopyWithImpl<$Res>;
  $Res call({String flag});
}

/// @nodoc
class __$FlagChangedCopyWithImpl<$Res> extends _$ReportEventCopyWithImpl<$Res>
    implements _$FlagChangedCopyWith<$Res> {
  __$FlagChangedCopyWithImpl(
      _FlagChanged _value, $Res Function(_FlagChanged) _then)
      : super(_value, (v) => _then(v as _FlagChanged));

  @override
  _FlagChanged get _value => super._value as _FlagChanged;

  @override
  $Res call({
    Object? flag = freezed,
  }) {
    return _then(_FlagChanged(
      flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_FlagChanged implements _FlagChanged {
  const _$_FlagChanged(this.flag);

  @override
  final String flag;

  @override
  String toString() {
    return 'ReportEvent.flagChanged(flag: $flag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FlagChanged &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(flag);

  @JsonKey(ignore: true)
  @override
  _$FlagChangedCopyWith<_FlagChanged> get copyWith =>
      __$FlagChangedCopyWithImpl<_FlagChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChanged,
    required TResult Function(String flag) flagChanged,
    required TResult Function(String type) userTypeChanged,
    required TResult Function() send,
  }) {
    return flagChanged(flag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String flag)? flagChanged,
    TResult Function(String type)? userTypeChanged,
    TResult Function()? send,
    required TResult orElse(),
  }) {
    if (flagChanged != null) {
      return flagChanged(flag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_FlagChanged value) flagChanged,
    required TResult Function(_UserTypeChanged value) userTypeChanged,
    required TResult Function(_Send value) send,
  }) {
    return flagChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_FlagChanged value)? flagChanged,
    TResult Function(_UserTypeChanged value)? userTypeChanged,
    TResult Function(_Send value)? send,
    required TResult orElse(),
  }) {
    if (flagChanged != null) {
      return flagChanged(this);
    }
    return orElse();
  }
}

abstract class _FlagChanged implements ReportEvent {
  const factory _FlagChanged(String flag) = _$_FlagChanged;

  String get flag => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FlagChangedCopyWith<_FlagChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UserTypeChangedCopyWith<$Res> {
  factory _$UserTypeChangedCopyWith(
          _UserTypeChanged value, $Res Function(_UserTypeChanged) then) =
      __$UserTypeChangedCopyWithImpl<$Res>;
  $Res call({String type});
}

/// @nodoc
class __$UserTypeChangedCopyWithImpl<$Res>
    extends _$ReportEventCopyWithImpl<$Res>
    implements _$UserTypeChangedCopyWith<$Res> {
  __$UserTypeChangedCopyWithImpl(
      _UserTypeChanged _value, $Res Function(_UserTypeChanged) _then)
      : super(_value, (v) => _then(v as _UserTypeChanged));

  @override
  _UserTypeChanged get _value => super._value as _UserTypeChanged;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_UserTypeChanged(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_UserTypeChanged implements _UserTypeChanged {
  const _$_UserTypeChanged(this.type);

  @override
  final String type;

  @override
  String toString() {
    return 'ReportEvent.userTypeChanged(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserTypeChanged &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$UserTypeChangedCopyWith<_UserTypeChanged> get copyWith =>
      __$UserTypeChangedCopyWithImpl<_UserTypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChanged,
    required TResult Function(String flag) flagChanged,
    required TResult Function(String type) userTypeChanged,
    required TResult Function() send,
  }) {
    return userTypeChanged(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String flag)? flagChanged,
    TResult Function(String type)? userTypeChanged,
    TResult Function()? send,
    required TResult orElse(),
  }) {
    if (userTypeChanged != null) {
      return userTypeChanged(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_FlagChanged value) flagChanged,
    required TResult Function(_UserTypeChanged value) userTypeChanged,
    required TResult Function(_Send value) send,
  }) {
    return userTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_FlagChanged value)? flagChanged,
    TResult Function(_UserTypeChanged value)? userTypeChanged,
    TResult Function(_Send value)? send,
    required TResult orElse(),
  }) {
    if (userTypeChanged != null) {
      return userTypeChanged(this);
    }
    return orElse();
  }
}

abstract class _UserTypeChanged implements ReportEvent {
  const factory _UserTypeChanged(String type) = _$_UserTypeChanged;

  String get type => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UserTypeChangedCopyWith<_UserTypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendCopyWith<$Res> {
  factory _$SendCopyWith(_Send value, $Res Function(_Send) then) =
      __$SendCopyWithImpl<$Res>;
}

/// @nodoc
class __$SendCopyWithImpl<$Res> extends _$ReportEventCopyWithImpl<$Res>
    implements _$SendCopyWith<$Res> {
  __$SendCopyWithImpl(_Send _value, $Res Function(_Send) _then)
      : super(_value, (v) => _then(v as _Send));

  @override
  _Send get _value => super._value as _Send;
}

/// @nodoc
class _$_Send implements _Send {
  const _$_Send();

  @override
  String toString() {
    return 'ReportEvent.send()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Send);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChanged,
    required TResult Function(String flag) flagChanged,
    required TResult Function(String type) userTypeChanged,
    required TResult Function() send,
  }) {
    return send();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChanged,
    TResult Function(String flag)? flagChanged,
    TResult Function(String type)? userTypeChanged,
    TResult Function()? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_FlagChanged value) flagChanged,
    required TResult Function(_UserTypeChanged value) userTypeChanged,
    required TResult Function(_Send value) send,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_FlagChanged value)? flagChanged,
    TResult Function(_UserTypeChanged value)? userTypeChanged,
    TResult Function(_Send value)? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }
}

abstract class _Send implements ReportEvent {
  const factory _Send() = _$_Send;
}

/// @nodoc
class _$ReportStateTearOff {
  const _$ReportStateTearOff();

  _ReportState call(
      {required TextEditingController emailController,
      required String? email,
      required String flagDropdownValue,
      required Future<List<String>?> flags,
      required String userTypeDropdownValue,
      required List<String> userTypes,
      required TextEditingController commentController,
      required bool isSuccess,
      required bool isError,
      required bool isloading}) {
    return _ReportState(
      emailController: emailController,
      email: email,
      flagDropdownValue: flagDropdownValue,
      flags: flags,
      userTypeDropdownValue: userTypeDropdownValue,
      userTypes: userTypes,
      commentController: commentController,
      isSuccess: isSuccess,
      isError: isError,
      isloading: isloading,
    );
  }
}

/// @nodoc
const $ReportState = _$ReportStateTearOff();

/// @nodoc
mixin _$ReportState {
  TextEditingController get emailController =>
      throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String get flagDropdownValue => throw _privateConstructorUsedError;
  Future<List<String>?> get flags => throw _privateConstructorUsedError;
  String get userTypeDropdownValue => throw _privateConstructorUsedError;
  List<String> get userTypes => throw _privateConstructorUsedError;
  TextEditingController get commentController =>
      throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isloading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReportStateCopyWith<ReportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportStateCopyWith<$Res> {
  factory $ReportStateCopyWith(
          ReportState value, $Res Function(ReportState) then) =
      _$ReportStateCopyWithImpl<$Res>;
  $Res call(
      {TextEditingController emailController,
      String? email,
      String flagDropdownValue,
      Future<List<String>?> flags,
      String userTypeDropdownValue,
      List<String> userTypes,
      TextEditingController commentController,
      bool isSuccess,
      bool isError,
      bool isloading});
}

/// @nodoc
class _$ReportStateCopyWithImpl<$Res> implements $ReportStateCopyWith<$Res> {
  _$ReportStateCopyWithImpl(this._value, this._then);

  final ReportState _value;
  // ignore: unused_field
  final $Res Function(ReportState) _then;

  @override
  $Res call({
    Object? emailController = freezed,
    Object? email = freezed,
    Object? flagDropdownValue = freezed,
    Object? flags = freezed,
    Object? userTypeDropdownValue = freezed,
    Object? userTypes = freezed,
    Object? commentController = freezed,
    Object? isSuccess = freezed,
    Object? isError = freezed,
    Object? isloading = freezed,
  }) {
    return _then(_value.copyWith(
      emailController: emailController == freezed
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      flagDropdownValue: flagDropdownValue == freezed
          ? _value.flagDropdownValue
          : flagDropdownValue // ignore: cast_nullable_to_non_nullable
              as String,
      flags: flags == freezed
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as Future<List<String>?>,
      userTypeDropdownValue: userTypeDropdownValue == freezed
          ? _value.userTypeDropdownValue
          : userTypeDropdownValue // ignore: cast_nullable_to_non_nullable
              as String,
      userTypes: userTypes == freezed
          ? _value.userTypes
          : userTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      commentController: commentController == freezed
          ? _value.commentController
          : commentController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isloading: isloading == freezed
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ReportStateCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory _$ReportStateCopyWith(
          _ReportState value, $Res Function(_ReportState) then) =
      __$ReportStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TextEditingController emailController,
      String? email,
      String flagDropdownValue,
      Future<List<String>?> flags,
      String userTypeDropdownValue,
      List<String> userTypes,
      TextEditingController commentController,
      bool isSuccess,
      bool isError,
      bool isloading});
}

/// @nodoc
class __$ReportStateCopyWithImpl<$Res> extends _$ReportStateCopyWithImpl<$Res>
    implements _$ReportStateCopyWith<$Res> {
  __$ReportStateCopyWithImpl(
      _ReportState _value, $Res Function(_ReportState) _then)
      : super(_value, (v) => _then(v as _ReportState));

  @override
  _ReportState get _value => super._value as _ReportState;

  @override
  $Res call({
    Object? emailController = freezed,
    Object? email = freezed,
    Object? flagDropdownValue = freezed,
    Object? flags = freezed,
    Object? userTypeDropdownValue = freezed,
    Object? userTypes = freezed,
    Object? commentController = freezed,
    Object? isSuccess = freezed,
    Object? isError = freezed,
    Object? isloading = freezed,
  }) {
    return _then(_ReportState(
      emailController: emailController == freezed
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      flagDropdownValue: flagDropdownValue == freezed
          ? _value.flagDropdownValue
          : flagDropdownValue // ignore: cast_nullable_to_non_nullable
              as String,
      flags: flags == freezed
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as Future<List<String>?>,
      userTypeDropdownValue: userTypeDropdownValue == freezed
          ? _value.userTypeDropdownValue
          : userTypeDropdownValue // ignore: cast_nullable_to_non_nullable
              as String,
      userTypes: userTypes == freezed
          ? _value.userTypes
          : userTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      commentController: commentController == freezed
          ? _value.commentController
          : commentController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isloading: isloading == freezed
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_ReportState implements _ReportState {
  const _$_ReportState(
      {required this.emailController,
      required this.email,
      required this.flagDropdownValue,
      required this.flags,
      required this.userTypeDropdownValue,
      required this.userTypes,
      required this.commentController,
      required this.isSuccess,
      required this.isError,
      required this.isloading});

  @override
  final TextEditingController emailController;
  @override
  final String? email;
  @override
  final String flagDropdownValue;
  @override
  final Future<List<String>?> flags;
  @override
  final String userTypeDropdownValue;
  @override
  final List<String> userTypes;
  @override
  final TextEditingController commentController;
  @override
  final bool isSuccess;
  @override
  final bool isError;
  @override
  final bool isloading;

  @override
  String toString() {
    return 'ReportState(emailController: $emailController, email: $email, flagDropdownValue: $flagDropdownValue, flags: $flags, userTypeDropdownValue: $userTypeDropdownValue, userTypes: $userTypes, commentController: $commentController, isSuccess: $isSuccess, isError: $isError, isloading: $isloading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReportState &&
            (identical(other.emailController, emailController) ||
                const DeepCollectionEquality()
                    .equals(other.emailController, emailController)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.flagDropdownValue, flagDropdownValue) ||
                const DeepCollectionEquality()
                    .equals(other.flagDropdownValue, flagDropdownValue)) &&
            (identical(other.flags, flags) ||
                const DeepCollectionEquality().equals(other.flags, flags)) &&
            (identical(other.userTypeDropdownValue, userTypeDropdownValue) ||
                const DeepCollectionEquality().equals(
                    other.userTypeDropdownValue, userTypeDropdownValue)) &&
            (identical(other.userTypes, userTypes) ||
                const DeepCollectionEquality()
                    .equals(other.userTypes, userTypes)) &&
            (identical(other.commentController, commentController) ||
                const DeepCollectionEquality()
                    .equals(other.commentController, commentController)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.isError, isError) ||
                const DeepCollectionEquality()
                    .equals(other.isError, isError)) &&
            (identical(other.isloading, isloading) ||
                const DeepCollectionEquality()
                    .equals(other.isloading, isloading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailController) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(flagDropdownValue) ^
      const DeepCollectionEquality().hash(flags) ^
      const DeepCollectionEquality().hash(userTypeDropdownValue) ^
      const DeepCollectionEquality().hash(userTypes) ^
      const DeepCollectionEquality().hash(commentController) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isError) ^
      const DeepCollectionEquality().hash(isloading);

  @JsonKey(ignore: true)
  @override
  _$ReportStateCopyWith<_ReportState> get copyWith =>
      __$ReportStateCopyWithImpl<_ReportState>(this, _$identity);
}

abstract class _ReportState implements ReportState {
  const factory _ReportState(
      {required TextEditingController emailController,
      required String? email,
      required String flagDropdownValue,
      required Future<List<String>?> flags,
      required String userTypeDropdownValue,
      required List<String> userTypes,
      required TextEditingController commentController,
      required bool isSuccess,
      required bool isError,
      required bool isloading}) = _$_ReportState;

  @override
  TextEditingController get emailController =>
      throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String get flagDropdownValue => throw _privateConstructorUsedError;
  @override
  Future<List<String>?> get flags => throw _privateConstructorUsedError;
  @override
  String get userTypeDropdownValue => throw _privateConstructorUsedError;
  @override
  List<String> get userTypes => throw _privateConstructorUsedError;
  @override
  TextEditingController get commentController =>
      throw _privateConstructorUsedError;
  @override
  bool get isSuccess => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  bool get isloading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReportStateCopyWith<_ReportState> get copyWith =>
      throw _privateConstructorUsedError;
}
