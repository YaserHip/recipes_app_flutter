import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipes_app_flutter/features/recipes/data/models/model_meal_ingredients.dart';

part 'model_meal_details.freezed.dart';

@freezed
class ModelMealDetails with _$ModelMealDetails {
  const factory ModelMealDetails({
    required String idMeal,
    required String strMeal,
    required String? strCategory,
    required String? strArea,
    required String? strInstructions,
    required String strMealThumb,
    required String? strTags,
    required String? strYoutube,
    required List<ModelMealIngredients> listIngredients,
  }) = _ModelMealDetails;

  factory ModelMealDetails.fromJson(Map<String, dynamic> json) {
    json = json['meals'][0];

    List<ModelMealIngredients> listIngredients = [];

    for (var i = 1; i <= 20; i++) {
      if ((json['strIngredient$i'] != null && json['strMeasure$i'] != null) &&
          (json['strIngredient$i'] != '' && json['strMeasure$i'] != '')) {
        listIngredients.add(ModelMealIngredients(
            strIngredient: json['strIngredient$i'],
            strMeasure: json['strMeasure$i']));
      }
    }
    return ModelMealDetails(
      idMeal: json['idMeal'],
      strMeal: json['strMeal'],
      strCategory: json['strCategory'],
      strArea: json['strArea'],
      strInstructions: json['strInstructions'],
      strMealThumb: json['strMealThumb'],
      strTags: json['strTags'],
      strYoutube: json['strYoutube'],
      listIngredients: listIngredients,
    );
  }
}
