// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_meal_ingredients.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ModelMealIngredients {
  String get strIngredient => throw _privateConstructorUsedError;
  String get strMeasure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ModelMealIngredientsCopyWith<ModelMealIngredients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelMealIngredientsCopyWith<$Res> {
  factory $ModelMealIngredientsCopyWith(ModelMealIngredients value,
          $Res Function(ModelMealIngredients) then) =
      _$ModelMealIngredientsCopyWithImpl<$Res, ModelMealIngredients>;
  @useResult
  $Res call({String strIngredient, String strMeasure});
}

/// @nodoc
class _$ModelMealIngredientsCopyWithImpl<$Res,
        $Val extends ModelMealIngredients>
    implements $ModelMealIngredientsCopyWith<$Res> {
  _$ModelMealIngredientsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strIngredient = null,
    Object? strMeasure = null,
  }) {
    return _then(_value.copyWith(
      strIngredient: null == strIngredient
          ? _value.strIngredient
          : strIngredient // ignore: cast_nullable_to_non_nullable
              as String,
      strMeasure: null == strMeasure
          ? _value.strMeasure
          : strMeasure // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelMealIngredientsImplCopyWith<$Res>
    implements $ModelMealIngredientsCopyWith<$Res> {
  factory _$$ModelMealIngredientsImplCopyWith(_$ModelMealIngredientsImpl value,
          $Res Function(_$ModelMealIngredientsImpl) then) =
      __$$ModelMealIngredientsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String strIngredient, String strMeasure});
}

/// @nodoc
class __$$ModelMealIngredientsImplCopyWithImpl<$Res>
    extends _$ModelMealIngredientsCopyWithImpl<$Res, _$ModelMealIngredientsImpl>
    implements _$$ModelMealIngredientsImplCopyWith<$Res> {
  __$$ModelMealIngredientsImplCopyWithImpl(_$ModelMealIngredientsImpl _value,
      $Res Function(_$ModelMealIngredientsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strIngredient = null,
    Object? strMeasure = null,
  }) {
    return _then(_$ModelMealIngredientsImpl(
      strIngredient: null == strIngredient
          ? _value.strIngredient
          : strIngredient // ignore: cast_nullable_to_non_nullable
              as String,
      strMeasure: null == strMeasure
          ? _value.strMeasure
          : strMeasure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ModelMealIngredientsImpl implements _ModelMealIngredients {
  const _$ModelMealIngredientsImpl(
      {required this.strIngredient, required this.strMeasure});

  @override
  final String strIngredient;
  @override
  final String strMeasure;

  @override
  String toString() {
    return 'ModelMealIngredients(strIngredient: $strIngredient, strMeasure: $strMeasure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelMealIngredientsImpl &&
            (identical(other.strIngredient, strIngredient) ||
                other.strIngredient == strIngredient) &&
            (identical(other.strMeasure, strMeasure) ||
                other.strMeasure == strMeasure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, strIngredient, strMeasure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelMealIngredientsImplCopyWith<_$ModelMealIngredientsImpl>
      get copyWith =>
          __$$ModelMealIngredientsImplCopyWithImpl<_$ModelMealIngredientsImpl>(
              this, _$identity);
}

abstract class _ModelMealIngredients implements ModelMealIngredients {
  const factory _ModelMealIngredients(
      {required final String strIngredient,
      required final String strMeasure}) = _$ModelMealIngredientsImpl;

  @override
  String get strIngredient;
  @override
  String get strMeasure;
  @override
  @JsonKey(ignore: true)
  _$$ModelMealIngredientsImplCopyWith<_$ModelMealIngredientsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
