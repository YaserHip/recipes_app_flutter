// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_meal_category_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelMealCategoryResultImpl _$$ModelMealCategoryResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ModelMealCategoryResultImpl(
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => ModelMealCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ModelMealCategoryResultImplToJson(
        _$ModelMealCategoryResultImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };
