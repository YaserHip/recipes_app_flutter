import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipes_app_flutter/features/recipes/data/models/model_meal_category.dart';

part 'model_meal_category_result.freezed.dart';
part 'model_meal_category_result.g.dart';

@freezed
class ModelMealCategoryResult with _$ModelMealCategoryResult {
  const factory ModelMealCategoryResult({List<ModelMealCategory>? categories}) =
      _ModelMealCategoryResult;

  factory ModelMealCategoryResult.fromJson(Map<String, dynamic> json) =>
      _$ModelMealCategoryResultFromJson(json);
}
