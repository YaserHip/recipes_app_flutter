// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_meal_category_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModelMealCategoryResult _$ModelMealCategoryResultFromJson(
    Map<String, dynamic> json) {
  return _ModelMealCategoryResult.fromJson(json);
}

/// @nodoc
mixin _$ModelMealCategoryResult {
  List<ModelMealCategory>? get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelMealCategoryResultCopyWith<ModelMealCategoryResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelMealCategoryResultCopyWith<$Res> {
  factory $ModelMealCategoryResultCopyWith(ModelMealCategoryResult value,
          $Res Function(ModelMealCategoryResult) then) =
      _$ModelMealCategoryResultCopyWithImpl<$Res, ModelMealCategoryResult>;
  @useResult
  $Res call({List<ModelMealCategory>? categories});
}

/// @nodoc
class _$ModelMealCategoryResultCopyWithImpl<$Res,
        $Val extends ModelMealCategoryResult>
    implements $ModelMealCategoryResultCopyWith<$Res> {
  _$ModelMealCategoryResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ModelMealCategory>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelMealCategoryResultImplCopyWith<$Res>
    implements $ModelMealCategoryResultCopyWith<$Res> {
  factory _$$ModelMealCategoryResultImplCopyWith(
          _$ModelMealCategoryResultImpl value,
          $Res Function(_$ModelMealCategoryResultImpl) then) =
      __$$ModelMealCategoryResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ModelMealCategory>? categories});
}

/// @nodoc
class __$$ModelMealCategoryResultImplCopyWithImpl<$Res>
    extends _$ModelMealCategoryResultCopyWithImpl<$Res,
        _$ModelMealCategoryResultImpl>
    implements _$$ModelMealCategoryResultImplCopyWith<$Res> {
  __$$ModelMealCategoryResultImplCopyWithImpl(
      _$ModelMealCategoryResultImpl _value,
      $Res Function(_$ModelMealCategoryResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_$ModelMealCategoryResultImpl(
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ModelMealCategory>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelMealCategoryResultImpl implements _ModelMealCategoryResult {
  const _$ModelMealCategoryResultImpl(
      {final List<ModelMealCategory>? categories})
      : _categories = categories;

  factory _$ModelMealCategoryResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelMealCategoryResultImplFromJson(json);

  final List<ModelMealCategory>? _categories;
  @override
  List<ModelMealCategory>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ModelMealCategoryResult(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelMealCategoryResultImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelMealCategoryResultImplCopyWith<_$ModelMealCategoryResultImpl>
      get copyWith => __$$ModelMealCategoryResultImplCopyWithImpl<
          _$ModelMealCategoryResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelMealCategoryResultImplToJson(
      this,
    );
  }
}

abstract class _ModelMealCategoryResult implements ModelMealCategoryResult {
  const factory _ModelMealCategoryResult(
          {final List<ModelMealCategory>? categories}) =
      _$ModelMealCategoryResultImpl;

  factory _ModelMealCategoryResult.fromJson(Map<String, dynamic> json) =
      _$ModelMealCategoryResultImpl.fromJson;

  @override
  List<ModelMealCategory>? get categories;
  @override
  @JsonKey(ignore: true)
  _$$ModelMealCategoryResultImplCopyWith<_$ModelMealCategoryResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
