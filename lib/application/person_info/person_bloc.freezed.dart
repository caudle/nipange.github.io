// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'person_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PersonEventTearOff {
  const _$PersonEventTearOff();

  _Started started(
      {required String phone,
      required String username,
      required String email,
      required String id}) {
    return _Started(
      phone: phone,
      username: username,
      email: email,
      id: id,
    );
  }

  _PhoneChanged phoneChanged(String phone) {
    return _PhoneChanged(
      phone,
    );
  }

  _UsernameChanged usernameChanged(String username) {
    return _UsernameChanged(
      username,
    );
  }

  _EmailChanged emailChanged(String email) {
    return _EmailChanged(
      email,
    );
  }

  _Edit edit(String id) {
    return _Edit(
      id,
    );
  }

  _Discard discard() {
    return const _Discard();
  }
}

/// @nodoc
const $PersonEvent = _$PersonEventTearOff();

/// @nodoc
mixin _$PersonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phone, String username, String email, String id)
        started,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String id) edit,
    required TResult Function() discard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String username, String email, String id)?
        started,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String id)? edit,
    TResult Function()? discard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Discard value) discard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_Edit value)? edit,
    TResult Function(_Discard value)? discard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonEventCopyWith<$Res> {
  factory $PersonEventCopyWith(
          PersonEvent value, $Res Function(PersonEvent) then) =
      _$PersonEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PersonEventCopyWithImpl<$Res> implements $PersonEventCopyWith<$Res> {
  _$PersonEventCopyWithImpl(this._value, this._then);

  final PersonEvent _value;
  // ignore: unused_field
  final $Res Function(PersonEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({String phone, String username, String email, String id});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$PersonEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? phone = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? id = freezed,
  }) {
    return _then(_Started(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started(
      {required this.phone,
      required this.username,
      required this.email,
      required this.id});

  @override
  final String phone;
  @override
  final String username;
  @override
  final String email;
  @override
  final String id;

  @override
  String toString() {
    return 'PersonEvent.started(phone: $phone, username: $username, email: $email, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phone, String username, String email, String id)
        started,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String id) edit,
    required TResult Function() discard,
  }) {
    return started(phone, username, email, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String username, String email, String id)?
        started,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String id)? edit,
    TResult Function()? discard,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(phone, username, email, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Discard value) discard,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_Edit value)? edit,
    TResult Function(_Discard value)? discard,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PersonEvent {
  const factory _Started(
      {required String phone,
      required String username,
      required String email,
      required String id}) = _$_Started;

  String get phone => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PhoneChangedCopyWith<$Res> {
  factory _$PhoneChangedCopyWith(
          _PhoneChanged value, $Res Function(_PhoneChanged) then) =
      __$PhoneChangedCopyWithImpl<$Res>;
  $Res call({String phone});
}

/// @nodoc
class __$PhoneChangedCopyWithImpl<$Res> extends _$PersonEventCopyWithImpl<$Res>
    implements _$PhoneChangedCopyWith<$Res> {
  __$PhoneChangedCopyWithImpl(
      _PhoneChanged _value, $Res Function(_PhoneChanged) _then)
      : super(_value, (v) => _then(v as _PhoneChanged));

  @override
  _PhoneChanged get _value => super._value as _PhoneChanged;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(_PhoneChanged(
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_PhoneChanged implements _PhoneChanged {
  const _$_PhoneChanged(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'PersonEvent.phoneChanged(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhoneChanged &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  _$PhoneChangedCopyWith<_PhoneChanged> get copyWith =>
      __$PhoneChangedCopyWithImpl<_PhoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phone, String username, String email, String id)
        started,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String id) edit,
    required TResult Function() discard,
  }) {
    return phoneChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String username, String email, String id)?
        started,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String id)? edit,
    TResult Function()? discard,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Discard value) discard,
  }) {
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_Edit value)? edit,
    TResult Function(_Discard value)? discard,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneChanged implements PersonEvent {
  const factory _PhoneChanged(String phone) = _$_PhoneChanged;

  String get phone => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PhoneChangedCopyWith<_PhoneChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UsernameChangedCopyWith<$Res> {
  factory _$UsernameChangedCopyWith(
          _UsernameChanged value, $Res Function(_UsernameChanged) then) =
      __$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$UsernameChangedCopyWithImpl<$Res>
    extends _$PersonEventCopyWithImpl<$Res>
    implements _$UsernameChangedCopyWith<$Res> {
  __$UsernameChangedCopyWithImpl(
      _UsernameChanged _value, $Res Function(_UsernameChanged) _then)
      : super(_value, (v) => _then(v as _UsernameChanged));

  @override
  _UsernameChanged get _value => super._value as _UsernameChanged;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_UsernameChanged(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_UsernameChanged implements _UsernameChanged {
  const _$_UsernameChanged(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'PersonEvent.usernameChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsernameChanged &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith =>
      __$UsernameChangedCopyWithImpl<_UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phone, String username, String email, String id)
        started,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String id) edit,
    required TResult Function() discard,
  }) {
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String username, String email, String id)?
        started,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String id)? edit,
    TResult Function()? discard,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Discard value) discard,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_Edit value)? edit,
    TResult Function(_Discard value)? discard,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements PersonEvent {
  const factory _UsernameChanged(String username) = _$_UsernameChanged;

  String get username => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res> extends _$PersonEventCopyWithImpl<$Res>
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
    return 'PersonEvent.emailChanged(email: $email)';
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
    required TResult Function(
            String phone, String username, String email, String id)
        started,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String id) edit,
    required TResult Function() discard,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String username, String email, String id)?
        started,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String id)? edit,
    TResult Function()? discard,
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
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Discard value) discard,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_Edit value)? edit,
    TResult Function(_Discard value)? discard,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements PersonEvent {
  const factory _EmailChanged(String email) = _$_EmailChanged;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EditCopyWith<$Res> {
  factory _$EditCopyWith(_Edit value, $Res Function(_Edit) then) =
      __$EditCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$EditCopyWithImpl<$Res> extends _$PersonEventCopyWithImpl<$Res>
    implements _$EditCopyWith<$Res> {
  __$EditCopyWithImpl(_Edit _value, $Res Function(_Edit) _then)
      : super(_value, (v) => _then(v as _Edit));

  @override
  _Edit get _value => super._value as _Edit;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Edit(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_Edit implements _Edit {
  const _$_Edit(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'PersonEvent.edit(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Edit &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$EditCopyWith<_Edit> get copyWith =>
      __$EditCopyWithImpl<_Edit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phone, String username, String email, String id)
        started,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String id) edit,
    required TResult Function() discard,
  }) {
    return edit(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String username, String email, String id)?
        started,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String id)? edit,
    TResult Function()? discard,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Discard value) discard,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_Edit value)? edit,
    TResult Function(_Discard value)? discard,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class _Edit implements PersonEvent {
  const factory _Edit(String id) = _$_Edit;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EditCopyWith<_Edit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DiscardCopyWith<$Res> {
  factory _$DiscardCopyWith(_Discard value, $Res Function(_Discard) then) =
      __$DiscardCopyWithImpl<$Res>;
}

/// @nodoc
class __$DiscardCopyWithImpl<$Res> extends _$PersonEventCopyWithImpl<$Res>
    implements _$DiscardCopyWith<$Res> {
  __$DiscardCopyWithImpl(_Discard _value, $Res Function(_Discard) _then)
      : super(_value, (v) => _then(v as _Discard));

  @override
  _Discard get _value => super._value as _Discard;
}

/// @nodoc
class _$_Discard implements _Discard {
  const _$_Discard();

  @override
  String toString() {
    return 'PersonEvent.discard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Discard);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phone, String username, String email, String id)
        started,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String id) edit,
    required TResult Function() discard,
  }) {
    return discard();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String username, String email, String id)?
        started,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String id)? edit,
    TResult Function()? discard,
    required TResult orElse(),
  }) {
    if (discard != null) {
      return discard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Discard value) discard,
  }) {
    return discard(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_Edit value)? edit,
    TResult Function(_Discard value)? discard,
    required TResult orElse(),
  }) {
    if (discard != null) {
      return discard(this);
    }
    return orElse();
  }
}

abstract class _Discard implements PersonEvent {
  const factory _Discard() = _$_Discard;
}

/// @nodoc
class _$PersonStateTearOff {
  const _$PersonStateTearOff();

  _PersonState call(
      {required TextEditingController phoneController,
      required String phone,
      required TextEditingController usernameController,
      required String username,
      required TextEditingController emailController,
      required String email,
      required String id,
      required bool isSubmit,
      required bool isSuccess,
      required bool saved,
      required String failure}) {
    return _PersonState(
      phoneController: phoneController,
      phone: phone,
      usernameController: usernameController,
      username: username,
      emailController: emailController,
      email: email,
      id: id,
      isSubmit: isSubmit,
      isSuccess: isSuccess,
      saved: saved,
      failure: failure,
    );
  }
}

/// @nodoc
const $PersonState = _$PersonStateTearOff();

/// @nodoc
mixin _$PersonState {
  TextEditingController get phoneController =>
      throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  TextEditingController get usernameController =>
      throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  TextEditingController get emailController =>
      throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  bool get isSubmit => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get saved => throw _privateConstructorUsedError;
  String get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonStateCopyWith<PersonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonStateCopyWith<$Res> {
  factory $PersonStateCopyWith(
          PersonState value, $Res Function(PersonState) then) =
      _$PersonStateCopyWithImpl<$Res>;
  $Res call(
      {TextEditingController phoneController,
      String phone,
      TextEditingController usernameController,
      String username,
      TextEditingController emailController,
      String email,
      String id,
      bool isSubmit,
      bool isSuccess,
      bool saved,
      String failure});
}

/// @nodoc
class _$PersonStateCopyWithImpl<$Res> implements $PersonStateCopyWith<$Res> {
  _$PersonStateCopyWithImpl(this._value, this._then);

  final PersonState _value;
  // ignore: unused_field
  final $Res Function(PersonState) _then;

  @override
  $Res call({
    Object? phoneController = freezed,
    Object? phone = freezed,
    Object? usernameController = freezed,
    Object? username = freezed,
    Object? emailController = freezed,
    Object? email = freezed,
    Object? id = freezed,
    Object? isSubmit = freezed,
    Object? isSuccess = freezed,
    Object? saved = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      phoneController: phoneController == freezed
          ? _value.phoneController
          : phoneController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      usernameController: usernameController == freezed
          ? _value.usernameController
          : usernameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      emailController: emailController == freezed
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmit: isSubmit == freezed
          ? _value.isSubmit
          : isSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PersonStateCopyWith<$Res>
    implements $PersonStateCopyWith<$Res> {
  factory _$PersonStateCopyWith(
          _PersonState value, $Res Function(_PersonState) then) =
      __$PersonStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TextEditingController phoneController,
      String phone,
      TextEditingController usernameController,
      String username,
      TextEditingController emailController,
      String email,
      String id,
      bool isSubmit,
      bool isSuccess,
      bool saved,
      String failure});
}

/// @nodoc
class __$PersonStateCopyWithImpl<$Res> extends _$PersonStateCopyWithImpl<$Res>
    implements _$PersonStateCopyWith<$Res> {
  __$PersonStateCopyWithImpl(
      _PersonState _value, $Res Function(_PersonState) _then)
      : super(_value, (v) => _then(v as _PersonState));

  @override
  _PersonState get _value => super._value as _PersonState;

  @override
  $Res call({
    Object? phoneController = freezed,
    Object? phone = freezed,
    Object? usernameController = freezed,
    Object? username = freezed,
    Object? emailController = freezed,
    Object? email = freezed,
    Object? id = freezed,
    Object? isSubmit = freezed,
    Object? isSuccess = freezed,
    Object? saved = freezed,
    Object? failure = freezed,
  }) {
    return _then(_PersonState(
      phoneController: phoneController == freezed
          ? _value.phoneController
          : phoneController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      usernameController: usernameController == freezed
          ? _value.usernameController
          : usernameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      emailController: emailController == freezed
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmit: isSubmit == freezed
          ? _value.isSubmit
          : isSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_PersonState implements _PersonState {
  const _$_PersonState(
      {required this.phoneController,
      required this.phone,
      required this.usernameController,
      required this.username,
      required this.emailController,
      required this.email,
      required this.id,
      required this.isSubmit,
      required this.isSuccess,
      required this.saved,
      required this.failure});

  @override
  final TextEditingController phoneController;
  @override
  final String phone;
  @override
  final TextEditingController usernameController;
  @override
  final String username;
  @override
  final TextEditingController emailController;
  @override
  final String email;
  @override
  final String id;
  @override
  final bool isSubmit;
  @override
  final bool isSuccess;
  @override
  final bool saved;
  @override
  final String failure;

  @override
  String toString() {
    return 'PersonState(phoneController: $phoneController, phone: $phone, usernameController: $usernameController, username: $username, emailController: $emailController, email: $email, id: $id, isSubmit: $isSubmit, isSuccess: $isSuccess, saved: $saved, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonState &&
            (identical(other.phoneController, phoneController) ||
                const DeepCollectionEquality()
                    .equals(other.phoneController, phoneController)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.usernameController, usernameController) ||
                const DeepCollectionEquality()
                    .equals(other.usernameController, usernameController)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.emailController, emailController) ||
                const DeepCollectionEquality()
                    .equals(other.emailController, emailController)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isSubmit, isSubmit) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmit, isSubmit)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.saved, saved) ||
                const DeepCollectionEquality().equals(other.saved, saved)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneController) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(usernameController) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(emailController) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isSubmit) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(saved) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$PersonStateCopyWith<_PersonState> get copyWith =>
      __$PersonStateCopyWithImpl<_PersonState>(this, _$identity);
}

abstract class _PersonState implements PersonState {
  const factory _PersonState(
      {required TextEditingController phoneController,
      required String phone,
      required TextEditingController usernameController,
      required String username,
      required TextEditingController emailController,
      required String email,
      required String id,
      required bool isSubmit,
      required bool isSuccess,
      required bool saved,
      required String failure}) = _$_PersonState;

  @override
  TextEditingController get phoneController =>
      throw _privateConstructorUsedError;
  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  TextEditingController get usernameController =>
      throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  TextEditingController get emailController =>
      throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  bool get isSubmit => throw _privateConstructorUsedError;
  @override
  bool get isSuccess => throw _privateConstructorUsedError;
  @override
  bool get saved => throw _privateConstructorUsedError;
  @override
  String get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PersonStateCopyWith<_PersonState> get copyWith =>
      throw _privateConstructorUsedError;
}
