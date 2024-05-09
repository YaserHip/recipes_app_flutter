// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_meal_preview_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelMealPreviewResultImpl _$$ModelMealPreviewResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ModelMealPreviewResultImpl(
      meals: (json['meals'] as List<dynamic>?)
          ?.map((e) => ModelMealPreview.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ModelMealPreviewResultImplToJson(
        _$ModelMealPreviewResultImpl instance) =>
    <String, dynamic>{
      'meals': instance.meals,
    };
