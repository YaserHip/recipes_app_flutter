import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_meal_ingredients.freezed.dart';

@freezed
class ModelMealIngredients with _$ModelMealIngredients {
  const factory ModelMealIngredients({
    required String strIngredient,
    required String strMeasure,
  }) = _ModelMealIngredients;
}
