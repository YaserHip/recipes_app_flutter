// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_meal_preview_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModelMealPreviewResult _$ModelMealPreviewResultFromJson(
    Map<String, dynamic> json) {
  return _ModelMealPreviewResult.fromJson(json);
}

/// @nodoc
mixin _$ModelMealPreviewResult {
  List<ModelMealPreview>? get meals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelMealPreviewResultCopyWith<ModelMealPreviewResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelMealPreviewResultCopyWith<$Res> {
  factory $ModelMealPreviewResultCopyWith(ModelMealPreviewResult value,
          $Res Function(ModelMealPreviewResult) then) =
      _$ModelMealPreviewResultCopyWithImpl<$Res, ModelMealPreviewResult>;
  @useResult
  $Res call({List<ModelMealPreview>? meals});
}

/// @nodoc
class _$ModelMealPreviewResultCopyWithImpl<$Res,
        $Val extends ModelMealPreviewResult>
    implements $ModelMealPreviewResultCopyWith<$Res> {
  _$ModelMealPreviewResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = freezed,
  }) {
    return _then(_value.copyWith(
      meals: freezed == meals
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<ModelMealPreview>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelMealPreviewResultImplCopyWith<$Res>
    implements $ModelMealPreviewResultCopyWith<$Res> {
  factory _$$ModelMealPreviewResultImplCopyWith(
          _$ModelMealPreviewResultImpl value,
          $Res Function(_$ModelMealPreviewResultImpl) then) =
      __$$ModelMealPreviewResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ModelMealPreview>? meals});
}

/// @nodoc
class __$$ModelMealPreviewResultImplCopyWithImpl<$Res>
    extends _$ModelMealPreviewResultCopyWithImpl<$Res,
        _$ModelMealPreviewResultImpl>
    implements _$$ModelMealPreviewResultImplCopyWith<$Res> {
  __$$ModelMealPreviewResultImplCopyWithImpl(
      _$ModelMealPreviewResultImpl _value,
      $Res Function(_$ModelMealPreviewResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = freezed,
  }) {
    return _then(_$ModelMealPreviewResultImpl(
      meals: freezed == meals
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<ModelMealPreview>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelMealPreviewResultImpl implements _ModelMealPreviewResult {
  const _$ModelMealPreviewResultImpl({final List<ModelMealPreview>? meals})
      : _meals = meals;

  factory _$ModelMealPreviewResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelMealPreviewResultImplFromJson(json);

  final List<ModelMealPreview>? _meals;
  @override
  List<ModelMealPreview>? get meals {
    final value = _meals;
    if (value == null) return null;
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ModelMealPreviewResult(meals: $meals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelMealPreviewResultImpl &&
            const DeepCollectionEquality().equals(other._meals, _meals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_meals));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelMealPreviewResultImplCopyWith<_$ModelMealPreviewResultImpl>
      get copyWith => __$$ModelMealPreviewResultImplCopyWithImpl<
          _$ModelMealPreviewResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelMealPreviewResultImplToJson(
      this,
    );
  }
}

abstract class _ModelMealPreviewResult implements ModelMealPreviewResult {
  const factory _ModelMealPreviewResult({final List<ModelMealPreview>? meals}) =
      _$ModelMealPreviewResultImpl;

  factory _ModelMealPreviewResult.fromJson(Map<String, dynamic> json) =
      _$ModelMealPreviewResultImpl.fromJson;

  @override
  List<ModelMealPreview>? get meals;
  @override
  @JsonKey(ignore: true)
  _$$ModelMealPreviewResultImplCopyWith<_$ModelMealPreviewResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
