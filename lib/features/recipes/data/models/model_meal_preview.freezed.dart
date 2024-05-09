// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_meal_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModelMealPreview _$ModelMealPreviewFromJson(Map<String, dynamic> json) {
  return _ModelMealPreview.fromJson(json);
}

/// @nodoc
mixin _$ModelMealPreview {
  @JsonKey(name: 'idMeal')
  String get id => throw _privateConstructorUsedError;
  String get strMeal => throw _privateConstructorUsedError;
  String get strMealThumb => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelMealPreviewCopyWith<ModelMealPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelMealPreviewCopyWith<$Res> {
  factory $ModelMealPreviewCopyWith(
          ModelMealPreview value, $Res Function(ModelMealPreview) then) =
      _$ModelMealPreviewCopyWithImpl<$Res, ModelMealPreview>;
  @useResult
  $Res call(
      {@JsonKey(name: 'idMeal') String id,
      String strMeal,
      String strMealThumb});
}

/// @nodoc
class _$ModelMealPreviewCopyWithImpl<$Res, $Val extends ModelMealPreview>
    implements $ModelMealPreviewCopyWith<$Res> {
  _$ModelMealPreviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? strMeal = null,
    Object? strMealThumb = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      strMeal: null == strMeal
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: null == strMealThumb
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelMealPreviewImplCopyWith<$Res>
    implements $ModelMealPreviewCopyWith<$Res> {
  factory _$$ModelMealPreviewImplCopyWith(_$ModelMealPreviewImpl value,
          $Res Function(_$ModelMealPreviewImpl) then) =
      __$$ModelMealPreviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'idMeal') String id,
      String strMeal,
      String strMealThumb});
}

/// @nodoc
class __$$ModelMealPreviewImplCopyWithImpl<$Res>
    extends _$ModelMealPreviewCopyWithImpl<$Res, _$ModelMealPreviewImpl>
    implements _$$ModelMealPreviewImplCopyWith<$Res> {
  __$$ModelMealPreviewImplCopyWithImpl(_$ModelMealPreviewImpl _value,
      $Res Function(_$ModelMealPreviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? strMeal = null,
    Object? strMealThumb = null,
  }) {
    return _then(_$ModelMealPreviewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      strMeal: null == strMeal
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: null == strMealThumb
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelMealPreviewImpl implements _ModelMealPreview {
  const _$ModelMealPreviewImpl(
      {@JsonKey(name: 'idMeal') required this.id,
      required this.strMeal,
      required this.strMealThumb});

  factory _$ModelMealPreviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelMealPreviewImplFromJson(json);

  @override
  @JsonKey(name: 'idMeal')
  final String id;
  @override
  final String strMeal;
  @override
  final String strMealThumb;

  @override
  String toString() {
    return 'ModelMealPreview(id: $id, strMeal: $strMeal, strMealThumb: $strMealThumb)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelMealPreviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.strMeal, strMeal) || other.strMeal == strMeal) &&
            (identical(other.strMealThumb, strMealThumb) ||
                other.strMealThumb == strMealThumb));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, strMeal, strMealThumb);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelMealPreviewImplCopyWith<_$ModelMealPreviewImpl> get copyWith =>
      __$$ModelMealPreviewImplCopyWithImpl<_$ModelMealPreviewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelMealPreviewImplToJson(
      this,
    );
  }
}

abstract class _ModelMealPreview implements ModelMealPreview {
  const factory _ModelMealPreview(
      {@JsonKey(name: 'idMeal') required final String id,
      required final String strMeal,
      required final String strMealThumb}) = _$ModelMealPreviewImpl;

  factory _ModelMealPreview.fromJson(Map<String, dynamic> json) =
      _$ModelMealPreviewImpl.fromJson;

  @override
  @JsonKey(name: 'idMeal')
  String get id;
  @override
  String get strMeal;
  @override
  String get strMealThumb;
  @override
  @JsonKey(ignore: true)
  _$$ModelMealPreviewImplCopyWith<_$ModelMealPreviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
