// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_meal_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModelMealCategory _$ModelMealCategoryFromJson(Map<String, dynamic> json) {
  return _ModelMealCategory.fromJson(json);
}

/// @nodoc
mixin _$ModelMealCategory {
  @JsonKey(name: 'idCategory')
  String get id => throw _privateConstructorUsedError;
  String get strCategory => throw _privateConstructorUsedError;
  String get strCategoryThumb => throw _privateConstructorUsedError;
  String get strCategoryDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelMealCategoryCopyWith<ModelMealCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelMealCategoryCopyWith<$Res> {
  factory $ModelMealCategoryCopyWith(
          ModelMealCategory value, $Res Function(ModelMealCategory) then) =
      _$ModelMealCategoryCopyWithImpl<$Res, ModelMealCategory>;
  @useResult
  $Res call(
      {@JsonKey(name: 'idCategory') String id,
      String strCategory,
      String strCategoryThumb,
      String strCategoryDescription});
}

/// @nodoc
class _$ModelMealCategoryCopyWithImpl<$Res, $Val extends ModelMealCategory>
    implements $ModelMealCategoryCopyWith<$Res> {
  _$ModelMealCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? strCategory = null,
    Object? strCategoryThumb = null,
    Object? strCategoryDescription = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      strCategory: null == strCategory
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String,
      strCategoryThumb: null == strCategoryThumb
          ? _value.strCategoryThumb
          : strCategoryThumb // ignore: cast_nullable_to_non_nullable
              as String,
      strCategoryDescription: null == strCategoryDescription
          ? _value.strCategoryDescription
          : strCategoryDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelMealCategoryImplCopyWith<$Res>
    implements $ModelMealCategoryCopyWith<$Res> {
  factory _$$ModelMealCategoryImplCopyWith(_$ModelMealCategoryImpl value,
          $Res Function(_$ModelMealCategoryImpl) then) =
      __$$ModelMealCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'idCategory') String id,
      String strCategory,
      String strCategoryThumb,
      String strCategoryDescription});
}

/// @nodoc
class __$$ModelMealCategoryImplCopyWithImpl<$Res>
    extends _$ModelMealCategoryCopyWithImpl<$Res, _$ModelMealCategoryImpl>
    implements _$$ModelMealCategoryImplCopyWith<$Res> {
  __$$ModelMealCategoryImplCopyWithImpl(_$ModelMealCategoryImpl _value,
      $Res Function(_$ModelMealCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? strCategory = null,
    Object? strCategoryThumb = null,
    Object? strCategoryDescription = null,
  }) {
    return _then(_$ModelMealCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      strCategory: null == strCategory
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String,
      strCategoryThumb: null == strCategoryThumb
          ? _value.strCategoryThumb
          : strCategoryThumb // ignore: cast_nullable_to_non_nullable
              as String,
      strCategoryDescription: null == strCategoryDescription
          ? _value.strCategoryDescription
          : strCategoryDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelMealCategoryImpl implements _ModelMealCategory {
  const _$ModelMealCategoryImpl(
      {@JsonKey(name: 'idCategory') required this.id,
      required this.strCategory,
      required this.strCategoryThumb,
      required this.strCategoryDescription});

  factory _$ModelMealCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelMealCategoryImplFromJson(json);

  @override
  @JsonKey(name: 'idCategory')
  final String id;
  @override
  final String strCategory;
  @override
  final String strCategoryThumb;
  @override
  final String strCategoryDescription;

  @override
  String toString() {
    return 'ModelMealCategory(id: $id, strCategory: $strCategory, strCategoryThumb: $strCategoryThumb, strCategoryDescription: $strCategoryDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelMealCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.strCategory, strCategory) ||
                other.strCategory == strCategory) &&
            (identical(other.strCategoryThumb, strCategoryThumb) ||
                other.strCategoryThumb == strCategoryThumb) &&
            (identical(other.strCategoryDescription, strCategoryDescription) ||
                other.strCategoryDescription == strCategoryDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, strCategory, strCategoryThumb, strCategoryDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelMealCategoryImplCopyWith<_$ModelMealCategoryImpl> get copyWith =>
      __$$ModelMealCategoryImplCopyWithImpl<_$ModelMealCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelMealCategoryImplToJson(
      this,
    );
  }
}

abstract class _ModelMealCategory implements ModelMealCategory {
  const factory _ModelMealCategory(
      {@JsonKey(name: 'idCategory') required final String id,
      required final String strCategory,
      required final String strCategoryThumb,
      required final String strCategoryDescription}) = _$ModelMealCategoryImpl;

  factory _ModelMealCategory.fromJson(Map<String, dynamic> json) =
      _$ModelMealCategoryImpl.fromJson;

  @override
  @JsonKey(name: 'idCategory')
  String get id;
  @override
  String get strCategory;
  @override
  String get strCategoryThumb;
  @override
  String get strCategoryDescription;
  @override
  @JsonKey(ignore: true)
  _$$ModelMealCategoryImplCopyWith<_$ModelMealCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
