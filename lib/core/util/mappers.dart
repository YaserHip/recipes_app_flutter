import 'package:recipes_app_flutter/features/recipes/data/models/models.dart';
import 'package:recipes_app_flutter/features/recipes/domain/entities/entities.dart';

extension MapperCategory on ModelMealCategory {
  EntityMealCategory toEntity() => EntityMealCategory(
        id: id,
        strCategory: strCategory,
        strCategoryThumb: strCategoryThumb,
        strCategoryDescription: strCategoryDescription,
      );
}

extension MapperIngredients on ModelMealIngredients {
  EntityMealIngredients toEntity() => EntityMealIngredients(
        strIngredients: strIngredient,
        strMeasure: strMeasure,
      );
}

extension MapperPreview on ModelMealPreview {
  EntityMealPreview toEntity() =>
      EntityMealPreview(id: id, strMeal: strMeal, strMealThumb: strMealThumb);
}

extension MapperMealDetails on ModelMealDetails {
  EntityMealDetails toEntity() => EntityMealDetails(
      idMeal: idMeal,
      strMeal: strMeal,
      strInstructions: strInstructions,
      strCategory: strCategory,
      strArea: strArea,
      strTags: strTags,
      strYoutube: strYoutube,
      listIngredients: listIngredients.map((e) => e.toEntity()).toList(),
      strMealThumb: strMealThumb);
}
