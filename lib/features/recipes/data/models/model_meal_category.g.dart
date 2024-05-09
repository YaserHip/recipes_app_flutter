// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_meal_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelMealCategoryImpl _$$ModelMealCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$ModelMealCategoryImpl(
      id: json['idCategory'] as String,
      strCategory: json['strCategory'] as String,
      strCategoryThumb: json['strCategoryThumb'] as String,
      strCategoryDescription: json['strCategoryDescription'] as String,
    );

Map<String, dynamic> _$$ModelMealCategoryImplToJson(
        _$ModelMealCategoryImpl instance) =>
    <String, dynamic>{
      'idCategory': instance.id,
      'strCategory': instance.strCategory,
      'strCategoryThumb': instance.strCategoryThumb,
      'strCategoryDescription': instance.strCategoryDescription,
    };
