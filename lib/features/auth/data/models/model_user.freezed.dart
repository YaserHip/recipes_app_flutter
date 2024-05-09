// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModelUser _$ModelUserFromJson(Map<String, dynamic> json) {
  return _ModelUser.fromJson(json);
}

/// @nodoc
mixin _$ModelUser {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  List<ModelFavorite> get favorites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelUserCopyWith<ModelUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelUserCopyWith<$Res> {
  factory $ModelUserCopyWith(ModelUser value, $Res Function(ModelUser) then) =
      _$ModelUserCopyWithImpl<$Res, ModelUser>;
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String password,
      List<ModelFavorite> favorites});
}

/// @nodoc
class _$ModelUserCopyWithImpl<$Res, $Val extends ModelUser>
    implements $ModelUserCopyWith<$Res> {
  _$ModelUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? favorites = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<ModelFavorite>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelUserImplCopyWith<$Res>
    implements $ModelUserCopyWith<$Res> {
  factory _$$ModelUserImplCopyWith(
          _$ModelUserImpl value, $Res Function(_$ModelUserImpl) then) =
      __$$ModelUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String password,
      List<ModelFavorite> favorites});
}

/// @nodoc
class __$$ModelUserImplCopyWithImpl<$Res>
    extends _$ModelUserCopyWithImpl<$Res, _$ModelUserImpl>
    implements _$$ModelUserImplCopyWith<$Res> {
  __$$ModelUserImplCopyWithImpl(
      _$ModelUserImpl _value, $Res Function(_$ModelUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? favorites = null,
  }) {
    return _then(_$ModelUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<ModelFavorite>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelUserImpl extends _ModelUser {
  const _$ModelUserImpl(
      {this.id = Isar.autoIncrement,
      required this.name,
      required this.email,
      required this.password,
      final List<ModelFavorite> favorites = const <ModelFavorite>[]})
      : _favorites = favorites,
        super._();

  factory _$ModelUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelUserImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  final List<ModelFavorite> _favorites;
  @override
  @JsonKey()
  List<ModelFavorite> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  String toString() {
    return 'ModelUser(id: $id, name: $name, email: $email, password: $password, favorites: $favorites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, password,
      const DeepCollectionEquality().hash(_favorites));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelUserImplCopyWith<_$ModelUserImpl> get copyWith =>
      __$$ModelUserImplCopyWithImpl<_$ModelUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelUserImplToJson(
      this,
    );
  }
}

abstract class _ModelUser extends ModelUser {
  const factory _ModelUser(
      {final int id,
      required final String name,
      required final String email,
      required final String password,
      final List<ModelFavorite> favorites}) = _$ModelUserImpl;
  const _ModelUser._() : super._();

  factory _ModelUser.fromJson(Map<String, dynamic> json) =
      _$ModelUserImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  List<ModelFavorite> get favorites;
  @override
  @JsonKey(ignore: true)
  _$$ModelUserImplCopyWith<_$ModelUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
