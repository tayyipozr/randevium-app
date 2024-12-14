// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Params {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) id,
    required TResult Function(String name) name,
    required TResult Function(LoginModel login) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? id,
    TResult? Function(String name)? name,
    TResult? Function(LoginModel login)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? id,
    TResult Function(String name)? name,
    TResult Function(LoginModel login)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdParams value) id,
    required TResult Function(NameParams value) name,
    required TResult Function(LoginParams value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdParams value)? id,
    TResult? Function(NameParams value)? name,
    TResult? Function(LoginParams value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdParams value)? id,
    TResult Function(NameParams value)? name,
    TResult Function(LoginParams value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParamsCopyWith<$Res> {
  factory $ParamsCopyWith(Params value, $Res Function(Params) then) =
      _$ParamsCopyWithImpl<$Res, Params>;
}

/// @nodoc
class _$ParamsCopyWithImpl<$Res, $Val extends Params>
    implements $ParamsCopyWith<$Res> {
  _$ParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Params
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IdParamsImplCopyWith<$Res> {
  factory _$$IdParamsImplCopyWith(
          _$IdParamsImpl value, $Res Function(_$IdParamsImpl) then) =
      __$$IdParamsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$IdParamsImplCopyWithImpl<$Res>
    extends _$ParamsCopyWithImpl<$Res, _$IdParamsImpl>
    implements _$$IdParamsImplCopyWith<$Res> {
  __$$IdParamsImplCopyWithImpl(
      _$IdParamsImpl _value, $Res Function(_$IdParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Params
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$IdParamsImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IdParamsImpl implements IdParams {
  const _$IdParamsImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'Params.id(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdParamsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of Params
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdParamsImplCopyWith<_$IdParamsImpl> get copyWith =>
      __$$IdParamsImplCopyWithImpl<_$IdParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) id,
    required TResult Function(String name) name,
    required TResult Function(LoginModel login) login,
  }) {
    return id(this.id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? id,
    TResult? Function(String name)? name,
    TResult? Function(LoginModel login)? login,
  }) {
    return id?.call(this.id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? id,
    TResult Function(String name)? name,
    TResult Function(LoginModel login)? login,
    required TResult orElse(),
  }) {
    if (id != null) {
      return id(this.id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdParams value) id,
    required TResult Function(NameParams value) name,
    required TResult Function(LoginParams value) login,
  }) {
    return id(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdParams value)? id,
    TResult? Function(NameParams value)? name,
    TResult? Function(LoginParams value)? login,
  }) {
    return id?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdParams value)? id,
    TResult Function(NameParams value)? name,
    TResult Function(LoginParams value)? login,
    required TResult orElse(),
  }) {
    if (id != null) {
      return id(this);
    }
    return orElse();
  }
}

abstract class IdParams implements Params {
  const factory IdParams(final int id) = _$IdParamsImpl;

  int get id;

  /// Create a copy of Params
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdParamsImplCopyWith<_$IdParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameParamsImplCopyWith<$Res> {
  factory _$$NameParamsImplCopyWith(
          _$NameParamsImpl value, $Res Function(_$NameParamsImpl) then) =
      __$$NameParamsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameParamsImplCopyWithImpl<$Res>
    extends _$ParamsCopyWithImpl<$Res, _$NameParamsImpl>
    implements _$$NameParamsImplCopyWith<$Res> {
  __$$NameParamsImplCopyWithImpl(
      _$NameParamsImpl _value, $Res Function(_$NameParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Params
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NameParamsImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameParamsImpl implements NameParams {
  const _$NameParamsImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'Params.name(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameParamsImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of Params
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NameParamsImplCopyWith<_$NameParamsImpl> get copyWith =>
      __$$NameParamsImplCopyWithImpl<_$NameParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) id,
    required TResult Function(String name) name,
    required TResult Function(LoginModel login) login,
  }) {
    return name(this.name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? id,
    TResult? Function(String name)? name,
    TResult? Function(LoginModel login)? login,
  }) {
    return name?.call(this.name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? id,
    TResult Function(String name)? name,
    TResult Function(LoginModel login)? login,
    required TResult orElse(),
  }) {
    if (name != null) {
      return name(this.name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdParams value) id,
    required TResult Function(NameParams value) name,
    required TResult Function(LoginParams value) login,
  }) {
    return name(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdParams value)? id,
    TResult? Function(NameParams value)? name,
    TResult? Function(LoginParams value)? login,
  }) {
    return name?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdParams value)? id,
    TResult Function(NameParams value)? name,
    TResult Function(LoginParams value)? login,
    required TResult orElse(),
  }) {
    if (name != null) {
      return name(this);
    }
    return orElse();
  }
}

abstract class NameParams implements Params {
  const factory NameParams(final String name) = _$NameParamsImpl;

  String get name;

  /// Create a copy of Params
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NameParamsImplCopyWith<_$NameParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginParamsImplCopyWith<$Res> {
  factory _$$LoginParamsImplCopyWith(
          _$LoginParamsImpl value, $Res Function(_$LoginParamsImpl) then) =
      __$$LoginParamsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginModel login});

  $LoginModelCopyWith<$Res> get login;
}

/// @nodoc
class __$$LoginParamsImplCopyWithImpl<$Res>
    extends _$ParamsCopyWithImpl<$Res, _$LoginParamsImpl>
    implements _$$LoginParamsImplCopyWith<$Res> {
  __$$LoginParamsImplCopyWithImpl(
      _$LoginParamsImpl _value, $Res Function(_$LoginParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Params
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
  }) {
    return _then(_$LoginParamsImpl(
      null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as LoginModel,
    ));
  }

  /// Create a copy of Params
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginModelCopyWith<$Res> get login {
    return $LoginModelCopyWith<$Res>(_value.login, (value) {
      return _then(_value.copyWith(login: value));
    });
  }
}

/// @nodoc

class _$LoginParamsImpl implements LoginParams {
  const _$LoginParamsImpl(this.login);

  @override
  final LoginModel login;

  @override
  String toString() {
    return 'Params.login(login: $login)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginParamsImpl &&
            (identical(other.login, login) || other.login == login));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login);

  /// Create a copy of Params
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginParamsImplCopyWith<_$LoginParamsImpl> get copyWith =>
      __$$LoginParamsImplCopyWithImpl<_$LoginParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) id,
    required TResult Function(String name) name,
    required TResult Function(LoginModel login) login,
  }) {
    return login(this.login);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? id,
    TResult? Function(String name)? name,
    TResult? Function(LoginModel login)? login,
  }) {
    return login?.call(this.login);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? id,
    TResult Function(String name)? name,
    TResult Function(LoginModel login)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this.login);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdParams value) id,
    required TResult Function(NameParams value) name,
    required TResult Function(LoginParams value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdParams value)? id,
    TResult? Function(NameParams value)? name,
    TResult? Function(LoginParams value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdParams value)? id,
    TResult Function(NameParams value)? name,
    TResult Function(LoginParams value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginParams implements Params {
  const factory LoginParams(final LoginModel login) = _$LoginParamsImpl;

  LoginModel get login;

  /// Create a copy of Params
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginParamsImplCopyWith<_$LoginParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoParams {}

/// @nodoc
abstract class $NoParamsCopyWith<$Res> {
  factory $NoParamsCopyWith(NoParams value, $Res Function(NoParams) then) =
      _$NoParamsCopyWithImpl<$Res, NoParams>;
}

/// @nodoc
class _$NoParamsCopyWithImpl<$Res, $Val extends NoParams>
    implements $NoParamsCopyWith<$Res> {
  _$NoParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoParams
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NoParamsImplCopyWith<$Res> {
  factory _$$NoParamsImplCopyWith(
          _$NoParamsImpl value, $Res Function(_$NoParamsImpl) then) =
      __$$NoParamsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoParamsImplCopyWithImpl<$Res>
    extends _$NoParamsCopyWithImpl<$Res, _$NoParamsImpl>
    implements _$$NoParamsImplCopyWith<$Res> {
  __$$NoParamsImplCopyWithImpl(
      _$NoParamsImpl _value, $Res Function(_$NoParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoParams
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoParamsImpl implements _NoParams {
  const _$NoParamsImpl();

  @override
  String toString() {
    return 'NoParams()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoParamsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _NoParams implements NoParams {
  const factory _NoParams() = _$NoParamsImpl;
}
